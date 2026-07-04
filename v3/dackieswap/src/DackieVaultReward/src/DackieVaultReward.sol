// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title DackieVaultReward
 * @notice Multi-token reward distributor for DackieVault using weight = normalLiquidity + lockedLiquidity * vaultLockMultiplier
 * - Uses vault's built-in lock multiplier system (Q1e18, configurable by vault)
 * - Supports multiple reward tokens, each with independent emission schedule
 * - Lazy accounting: user weights are synchronized on claim; no hooks from the vault are required
 */
interface IDackieVaultLite {
    function userInfo(
        address user
    )
        external
        view
        returns (
            uint128 normalLiquidity,
            uint128 lockedLiquidity,
            uint64 lockedUntil,
            uint256 pendingWETH,
            uint256 pendingDACKIE
        );

    function userLockMultiplier(address user) external view returns (uint256);
}

contract DackieVaultReward is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;

    uint256 public constant SCALE = 1e18;

    /// @notice Address of the DackieVault
    IDackieVaultLite public immutable vault;
    address public immutable vaultAddress;

    /// @notice Tracked total weight = sum(userWeight[user])
    uint256 public totalWeight;

    /// @notice Snapshot of user weight used for rewards accounting
    mapping(address => uint256) public userWeight;

    /// @notice Per-reward-token emission state
    struct RewardState {
        uint256 accPerWeight; // Q1e18 accumulator
        uint256 rewardPerSec; // tokens per second
        uint256 periodEnd; // timestamp when current emission ends
        uint256 lastUpdate; // last timestamp we updated accPerWeight
        bool exists; // whether this token has been configured
    }

    /// @notice token => reward state
    mapping(address => RewardState) public rewardState;

    /// @notice user => token => rewardDebt (userWeight[user] * accPerWeight / 1e18)
    mapping(address => mapping(address => uint256)) public rewardDebt;

    /// @notice List of all reward tokens configured
    address[] public rewardTokens;
    /// @notice Quick existence map for reward token list management
    mapping(address => bool) public isRewardToken;

    /// @notice Registered users for keeper-based batch sync
    address[] public registeredUsers;
    mapping(address => bool) public isRegistered;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event Funded(address indexed token, uint256 amount, uint256 duration, uint256 rewardPerSec, uint256 periodEnd);
    event Claimed(address indexed user, address indexed token, uint256 amount);
    event WeightSynced(address indexed user, uint256 oldWeight, uint256 newWeight);

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address _vault) Ownable(msg.sender) {
        require(_vault != address(0), "vault=0");
        vault = IDackieVaultLite(_vault);
        vaultAddress = _vault;
    }

    /*//////////////////////////////////////////////////////////////
                              OWNER ACTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Configure or top-up rewards for a token with linear emission
     * @param token Reward token address
     * @param amount Amount of tokens to fund
     * @param duration Emission duration in seconds
     */
    function fund(address token, uint256 amount, uint256 duration) external onlyOwner {
        require(token != address(0), "token=0");
        require(amount > 0 && duration > 0, "bad params");

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

        RewardState storage rs = rewardState[token];
        if (!rs.exists) {
            rs.exists = true;
            rs.lastUpdate = block.timestamp;
            if (!isRewardToken[token]) {
                isRewardToken[token] = true;
                rewardTokens.push(token);
            }
        }

        _update(token);

        uint256 leftover = 0;
        if (block.timestamp < rs.periodEnd) {
            uint256 remaining = rs.periodEnd - block.timestamp;
            leftover = remaining * rs.rewardPerSec;
        }

        uint256 total = leftover + amount;
        rs.rewardPerSec = total / duration;
        require(rs.rewardPerSec <= type(uint256).max / SCALE, "rps*1e18 overflow");
        rs.periodEnd = block.timestamp + duration;

        emit Funded(token, amount, duration, rs.rewardPerSec, rs.periodEnd);
    }

    /**
     * @notice Rescue tokens mistakenly sent to this contract
     */
    function rescueTokens(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0), "to=0");
        IERC20(token).safeTransfer(to, amount);
    }

    /*//////////////////////////////////////////////////////////////
                                USER FLOW
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Claim rewards for the provided token list and synchronize user weight with current vault state
     */
    function claim(address[] calldata tokens) external nonReentrant {
        require(isRegistered[msg.sender], "not registered");
        _claimAndSync(msg.sender, tokens);
    }

    /**
     * @notice Claim rewards for all configured tokens
     */
    function claimAll() external nonReentrant {
        require(isRegistered[msg.sender], "not registered");
        _claimAndSync(msg.sender, rewardTokens);
    }

    /**
     * @notice Manually synchronize the caller's weight to the current vault state without claiming
     */
    function poke() external {
        require(isRegistered[msg.sender], "not registered");
        _syncWeight(msg.sender);
    }

    /**
     * @notice Sync a user's weight, callable only by the vault
     */
    function syncFromVault(address user) external nonReentrant {
        require(msg.sender == vaultAddress, "only vault");
        if (!isRegistered[user]) return;

        // 1) Update all reward token accumulators BEFORE changing denominator
        _updateAll();

        // 2) Settle rewards using the OLD stored weight snapshot
        uint256 oldW = userWeight[user];
        uint256 len = rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            address tk = rewardTokens[i];
            RewardState storage rs = rewardState[tk];
            if (!rs.exists) continue;
            uint256 acc = rs.accPerWeight;
            uint256 accrued = Math.mulDiv(oldW, acc, SCALE);
            uint256 debt = rewardDebt[user][tk];
            uint256 pay = accrued > debt ? accrued - debt : 0;
            if (pay > 0) {
                IERC20(tk).safeTransfer(user, pay);
                emit Claimed(user, tk, pay);
            }
        }

        // 3) Sync to NEW weight from the vault state (no extra _updateAll here)
        uint256 newW = _currentWeight(user);
        if (oldW != newW) {
            totalWeight = totalWeight - oldW + newW;
            userWeight[user] = newW;
            emit WeightSynced(user, oldW, newW);
        }

        // 4) Fix rewardDebt for all configured tokens at the current accumulator
        for (uint256 j = 0; j < len; j++) {
            address tk2 = rewardTokens[j];
            RewardState storage rs2 = rewardState[tk2];
            if (!rs2.exists) continue;
            rewardDebt[user][tk2] = Math.mulDiv(newW, rs2.accPerWeight, SCALE);
        }
    }

    /**
     * @notice Keeper function: batch sync all registered users without passing user list
     * @dev Iterates over registeredUsers; consider gas limits when the list is large.
     */
    function pokeBatch(address[] calldata tokens) external {
        for (uint256 i = 0; i < tokens.length; i++) {
            _update(tokens[i]);
        }
        uint256 n = registeredUsers.length;
        for (uint256 u = 0; u < n; u++) {
            address user = registeredUsers[u];
            uint256 oldW = userWeight[user];
            uint256 newW = _currentWeight(user);
            if (oldW != newW) {
                totalWeight = totalWeight - oldW + newW;
                userWeight[user] = newW;
                emit WeightSynced(user, oldW, newW);
                // Only reset rewardDebt for users whose weight changed
                for (uint256 t = 0; t < tokens.length; t++) {
                    address tk = tokens[t];
                    RewardState storage rs = rewardState[tk];
                    if (!rs.exists) continue;
                    rewardDebt[user][tk] = Math.mulDiv(newW, rs.accPerWeight, SCALE);
                }
            }
        }
    }

    /**
     * @notice Register caller to participate in rewards; requires caller has liquidity in vault
     * @dev Initializes user weight and rewardDebt across all current reward tokens
     */
    function register() external {
        require(!isRegistered[msg.sender], "registered");
        (uint128 normalLiquidity, uint128 lockedLiquidity, , , ) = vault.userInfo(msg.sender);
        require(normalLiquidity > 0 || lockedLiquidity > 0, "no liq");

        // Update all tokens before changing denominator and debts
        _updateAll();

        uint256 newW = _currentWeight(msg.sender);
        totalWeight += newW;
        userWeight[msg.sender] = newW;

        // Initialize rewardDebt for all configured tokens
        uint256 len = rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            address tk = rewardTokens[i];
            RewardState storage rs = rewardState[tk];
            if (!rs.exists) continue;
            rewardDebt[msg.sender][tk] = Math.mulDiv(newW, rs.accPerWeight, SCALE);
        }

        // Track as registered
        isRegistered[msg.sender] = true;
        registeredUsers.push(msg.sender);
        emit WeightSynced(msg.sender, 0, newW);
    }

    /**
     * @notice View pending rewards for a user and token based on stored snapshot weight
     */
    function pending(address user, address token) external view returns (uint256 amount) {
        RewardState memory rs = rewardState[token];
        if (!rs.exists) return 0;

        uint256 acc = rs.accPerWeight;
        uint256 tw = totalWeight;
        uint256 t0 = rs.lastUpdate;
        uint256 t1 = block.timestamp < rs.periodEnd ? block.timestamp : rs.periodEnd;
        if (t1 > t0 && rs.rewardPerSec > 0 && tw > 0) {
            uint256 dt = t1 - t0;
            acc += Math.mulDiv(dt, rs.rewardPerSec * SCALE, tw);
        }

        uint256 w = userWeight[user];
        uint256 accrued = Math.mulDiv(w, acc, SCALE);
        uint256 debt = rewardDebt[user][token];
        amount = accrued > debt ? accrued - debt : 0;
    }

    /*//////////////////////////////////////////////////////////////
                             INTERNAL LOGIC
    //////////////////////////////////////////////////////////////*/

    function _claimAndSync(address user, address[] memory tokens) internal {
        // 1) Update accumulators for requested tokens
        for (uint256 i = 0; i < tokens.length; i++) {
            _update(tokens[i]);
        }

        // 2) Compute payout using OLD stored weight
        uint256 oldW = userWeight[user];
        for (uint256 i = 0; i < tokens.length; i++) {
            address tk = tokens[i];
            RewardState storage rs = rewardState[tk];
            if (!rs.exists) continue;
            uint256 acc = rs.accPerWeight;
            uint256 accrued = Math.mulDiv(oldW, acc, SCALE);
            uint256 debt = rewardDebt[user][tk];
            uint256 pay = accrued > debt ? accrued - debt : 0;
            if (pay > 0) {
                IERC20(tk).safeTransfer(user, pay);
                emit Claimed(user, tk, pay);
            }
        }

        // 3) Sync user weight to current vault state and fix debts
        _syncWeight(user);

        // 4) After syncing, set rewardDebt to newW * acc for the touched tokens
        uint256 newW = userWeight[user];
        for (uint256 i = 0; i < tokens.length; i++) {
            address tk = tokens[i];
            RewardState storage rs2 = rewardState[tk];
            if (!rs2.exists) continue;
            rewardDebt[user][tk] = Math.mulDiv(newW, rs2.accPerWeight, SCALE);
        }
    }

    function _syncWeight(address user) internal {
        uint256 oldW = userWeight[user];
        uint256 newW = _currentWeight(user);
        if (oldW != newW) {
            // Update all tokens before changing the denominator
            _updateAll();
            totalWeight = totalWeight - oldW + newW;
            userWeight[user] = newW;
            emit WeightSynced(user, oldW, newW);
        }
    }

    function _currentWeight(address user) internal view returns (uint256 w) {
        (uint128 normalLiquidity, uint128 lockedLiquidity, , , ) = vault.userInfo(user);
        uint256 mult = vault.userLockMultiplier(user);
        // weight = normal + locked * multiplier / 1e18
        w = normalLiquidity;
        if (lockedLiquidity > 0) {
            w += Math.mulDiv(uint256(lockedLiquidity), mult, SCALE);
        }
    }

    function _update(address token) internal {
        RewardState storage rs = rewardState[token];
        if (!rs.exists) return;

        uint256 t0 = rs.lastUpdate;
        uint256 t1 = block.timestamp < rs.periodEnd ? block.timestamp : rs.periodEnd;
        rs.lastUpdate = block.timestamp;

        if (t1 > t0 && rs.rewardPerSec > 0 && totalWeight > 0) {
            uint256 dt = t1 - t0;
            uint256 scaledRps = rs.rewardPerSec * SCALE; // safe by fund guard
            rs.accPerWeight += Math.mulDiv(dt, scaledRps, totalWeight);
        }
    }

    function _updateAll() internal {
        uint256 len = rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            _update(rewardTokens[i]);
        }
    }

    /*//////////////////////////////////////////////////////////////
                                 VIEWS
    //////////////////////////////////////////////////////////////*/

    function rewardTokensLength() external view returns (uint256) {
        return rewardTokens.length;
    }

    function registeredUsersLength() external view returns (uint256) {
        return registeredUsers.length;
    }
}
