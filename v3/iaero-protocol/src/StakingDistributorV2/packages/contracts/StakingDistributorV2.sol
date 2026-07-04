// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title StakingDistributor
/// @notice Stake iAERO to earn streamed rewards across multiple tokens (ERC20 + ETH).
/// @dev - OZ v5 compatible; ethers v6 friendly ABI
///      - Per-share accumulator with PRECISION=1e18
///      - ERC20 notify uses balance-delta to handle fee-on-transfer tokens
///      - Only allowlisted funders (or owner) may call notifyRewardAmount
///      - ETH rewards use address(0) sentinel
contract StakingDistributorV2 is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ============================ Errors ============================
    error ZeroAddress();
    error InvalidAmount();
    error NotEnoughStaked();
    error BadETHValue();
    error IndexOutOfBounds();

    // ===================== Immutable / Const ========================
    address public immutable iAERO;
    uint256 public constant PRECISION = 1e18;

    // Optional safety cap to avoid gas blowups from too many reward tokens
    uint256 public constant MAX_REWARD_TOKENS = 64;

    // ======================= Staking Storage =======================
    uint256 public totalStaked;
    mapping(address => uint256) public balanceOf;

    // ===================== Rewards Accounting ======================
    address[] private _rewardTokens;                // ordered set (address(0) = ETH)
    mapping(address => bool) public tokenExists;    // membership guard
    mapping(address => uint256) public accRewardPerShare; // per-token accumulator
    mapping(address => uint256) public queuedRewards;     // rewards queued when no stakers
    mapping(address => mapping(address => uint256)) public rewardDebt; // user->token->acc snapshot

    // ===================== Funder Allowlist ========================
    mapping(address => bool) public allowedFunders;
    event AllowedFunderSet(address indexed funder, bool allowed);

    // ========================= Events ==============================
    event Staked(address indexed user, uint256 amount);
    event StakedFor(address indexed funder, address indexed user, uint256 amount);
    event Unstaked(address indexed user, uint256 amount);
    event RewardNotified(address indexed token, uint256 amount, uint256 distributedPerShare);
    event RewardClaimed(address indexed user, address indexed token, uint256 amount);
    event Exit(address indexed user, uint256 unstaked, uint256 rewardsCount);
    event RewardTokenAdded(address indexed token);

    // ======================== Constructor ==========================
    constructor(address _iAERO) Ownable(msg.sender) {
        if (_iAERO == address(0)) revert ZeroAddress();
        iAERO = _iAERO;
    }

    // ======================== Admin (owner) ========================
    /// @notice Allow or revoke an address to fund rewards.
    function setAllowedFunder(address funder, bool allowed) external onlyOwner {
        if (funder == address(0)) revert ZeroAddress();
        allowedFunders[funder] = allowed;
        emit AllowedFunderSet(funder, allowed);
    }

    // =========================== Views =============================
    function getRewardTokens() external view returns (address[] memory tokens) {
        return _rewardTokens;
    }

    function rewardTokensLength() external view returns (uint256) {
        return _rewardTokens.length;
    }

    function rewardTokens(uint256 index) external view returns (address token) {
        if (index >= _rewardTokens.length) revert IndexOutOfBounds();
        return _rewardTokens[index];
    }

    function accRewardsPerShare(address token) external view returns (uint256 acc) {
        return accRewardPerShare[token];
    }

    /// @notice Pending rewards for account across all reward tokens (address(0)=ETH)
    function getPendingRewards(address account)
        external
        view
        returns (address[] memory tokens, uint256[] memory amounts)
    {
        uint256 len = _rewardTokens.length;
        tokens = new address[](len);
        amounts = new uint256[](len);

        uint256 staked = balanceOf[account];
        for (uint256 i = 0; i < len; i++) {
            address t = _rewardTokens[i];
            tokens[i] = t;

            if (staked == 0) {
                amounts[i] = 0;
                continue;
            }

            uint256 acc = accRewardPerShare[t];
            uint256 debt = rewardDebt[account][t];
            amounts[i] = Math.mulDiv(staked, acc - debt, PRECISION);
        }
    }

    // =======================================
    // Batch funders (admin helper, optional)
    // =======================================
    event AllowedFundersBatchSet(uint256 count);

    function setAllowedFundersBatch(address[] calldata funders, bool[] calldata allowed)
        external
        onlyOwner
    {
        require(funders.length == allowed.length, "len mismatch");
        for (uint256 i = 0; i < funders.length; ) {
            address f = funders[i];
            if (f == address(0)) revert ZeroAddress();
            allowedFunders[f] = allowed[i];
            emit AllowedFunderSet(f, allowed[i]);
            unchecked { ++i; }
        }
        emit AllowedFundersBatchSet(funders.length);
    }

    // =======================================
    // Batch notify (ERC20 + ETH)
    // =======================================
    event BatchRewardNotified(uint256 count);

    function notifyRewardAmountsBatch(address[] calldata tokens, uint256[] calldata amounts)
        external
        payable
        nonReentrant
    {
        require(allowedFunders[msg.sender] || msg.sender == owner(), "not allowed");
        require(tokens.length == amounts.length && tokens.length > 0, "len");
        require(tokens.length <= 50, "too many"); // gas guard; tune to taste

        // Sum ETH required and verify once
        uint256 ethRequired = 0;
        for (uint256 i = 0; i < tokens.length; ) {
            if (tokens[i] == address(0)) ethRequired += amounts[i];
            unchecked { ++i; }
        }
        if (ethRequired > 0) {
            if (msg.value != ethRequired) revert BadETHValue();
        } else {
            require(msg.value == 0, "no eth expected");
        }

        // Cache to avoid repeated SLOAD in the loop
        uint256 _totalStaked = totalStaked;

        for (uint256 i = 0; i < tokens.length; ) {
            address token = tokens[i];
            uint256 amount = amounts[i];

            // Compute "received" for this leg
            uint256 received;
            if (token == address(0)) {
                received = amount; // already validated against msg.value
            } else {
                if (amount == 0) revert InvalidAmount();
                IERC20 erc = IERC20(token);
                uint256 beforeBal = erc.balanceOf(address(this));
                erc.safeTransferFrom(msg.sender, address(this), amount);
                unchecked { received = erc.balanceOf(address(this)) - beforeBal; }
                if (received == 0) revert InvalidAmount();
            }

            // Register token if needed (keeps MAX_REWARD_TOKENS guard)
            if (!tokenExists[token]) {
                require(_rewardTokens.length < MAX_REWARD_TOKENS, "too many reward tokens");
                tokenExists[token] = true;
                _rewardTokens.push(token);
                emit RewardTokenAdded(token);
            }

            if (_totalStaked == 0) {
                // Queue when no stakers; flushes on first stake
                queuedRewards[token] += received;
                emit RewardNotified(token, received, 0);
            } else {
                // Distribute immediately: acc += received * PRECISION / totalStaked
                uint256 inc = Math.mulDiv(received, PRECISION, _totalStaked);
                accRewardPerShare[token] += inc;
                emit RewardNotified(token, received, inc);
            }

            unchecked { ++i; }
        }

        emit BatchRewardNotified(tokens.length);
    }


    // ======================= Staking Interface =====================
    function stake(uint256 amount) external nonReentrant {
        _stakeFor(msg.sender, msg.sender, amount);
    }

    function stakeFor(address user, uint256 amount) external nonReentrant {
        _stakeFor(msg.sender, user, amount);
    }

    function _stakeFor(address funder, address user, uint256 amount) internal {
        if (user == address(0)) revert ZeroAddress();
        if (amount == 0) revert InvalidAmount();

        // 1) Harvest at current accumulators
        _harvest(user);

        // 2) Pull stake and update state
        IERC20(iAERO).safeTransferFrom(funder, address(this), amount);
        balanceOf[user] += amount;
        totalStaked += amount;

        // 3) Align reward debts to current accumulators
        _writeRewardDebts(user);

        emit StakedFor(funder, user, amount);
        if (funder == user) emit Staked(user, amount);

        // 4) If we now have stakers, flush any queued rewards
        if (totalStaked > 0) _flushQueuedRewards();
    }

    function unstake(uint256 amount) external nonReentrant {
        if (amount == 0) revert InvalidAmount();
        if (balanceOf[msg.sender] < amount) revert NotEnoughStaked();

        _harvest(msg.sender);

        balanceOf[msg.sender] -= amount;
        totalStaked -= amount;

        _writeRewardDebts(msg.sender);

        IERC20(iAERO).safeTransfer(msg.sender, amount);
        emit Unstaked(msg.sender, amount);
    }

    function exit() external nonReentrant {
        _harvest(msg.sender);

        uint256 amt = balanceOf[msg.sender];
        if (amt > 0) {
            balanceOf[msg.sender] = 0;
            totalStaked -= amt;
            IERC20(iAERO).safeTransfer(msg.sender, amt);
        }

        _writeRewardDebts(msg.sender);
        emit Exit(msg.sender, amt, _rewardTokens.length);
    }

    // ======================== Claiming =============================
    function claimRewards() external nonReentrant {
        _harvest(msg.sender);
        _writeRewardDebts(msg.sender);
    }

    function claimReward(address token) external nonReentrant {
        _harvestOne(msg.sender, token);
        // _harvestOne already updates rewardDebt for this token
        // (no need to call _writeOneRewardDebt again)
    }

    // ==================== Funding / Notification ===================
    /// @notice Notify new rewards (ERC-20 pull or ETH via msg.value).
    /// @dev Only allowlisted funders or owner may call; ERC20 uses balance-delta.
    function notifyRewardAmount(address token, uint256 amount)
        external
        payable
        nonReentrant
    {
        require(allowedFunders[msg.sender] || msg.sender == owner(), "not allowed");

        uint256 received;
        if (token == address(0)) {
            // ETH path
            if (msg.value != amount) revert BadETHValue();
            received = amount;
        } else {
            if (amount == 0) revert InvalidAmount();
            IERC20 erc = IERC20(token);
            uint256 beforeBal = erc.balanceOf(address(this));
            erc.safeTransferFrom(msg.sender, address(this), amount);
            unchecked {
                received = erc.balanceOf(address(this)) - beforeBal; // handles fee-on-transfer
            }
            if (received == 0) revert InvalidAmount();
        }

        _addRewardTokenIfNeeded(token);

        if (totalStaked == 0) {
            queuedRewards[token] += received;
            emit RewardNotified(token, received, 0);
            return;
        }

        // Distribute: acc += received * PRECISION / totalStaked
        uint256 inc = Math.mulDiv(received, PRECISION, totalStaked);
        accRewardPerShare[token] += inc;

        emit RewardNotified(token, received, inc);
    }

    // =================== Internal reward logic =====================
    function _harvest(address user) internal {
        uint256 staked = balanceOf[user];
        if (staked == 0) return;

        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            _harvestOne(user, _rewardTokens[i]);
        }
    }

    function _harvestOne(address user, address token) internal {
        uint256 staked = balanceOf[user];

        // If nothing staked, just sync debt to current accumulator
        if (staked == 0) {
            rewardDebt[user][token] = accRewardPerShare[token];
            return;
        }

        uint256 acc = accRewardPerShare[token];
        uint256 debt = rewardDebt[user][token];

        if (acc > debt) {
            uint256 pending = Math.mulDiv(staked, acc - debt, PRECISION);
            if (pending > 0) {
                if (token == address(0)) {
                    (bool ok, ) = payable(user).call{value: pending}("");
                    require(ok, "ETH transfer failed");
                } else {
                    IERC20(token).safeTransfer(user, pending);
                }
                emit RewardClaimed(user, token, pending);
            }
        }

        // Update user debt to latest accumulator after harvest
        rewardDebt[user][token] = acc;
    }

    function _writeRewardDebts(address user) internal {
        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            address t = _rewardTokens[i];
            rewardDebt[user][t] = accRewardPerShare[t];
        }
    }

    function _addRewardTokenIfNeeded(address token) internal {
        if (!tokenExists[token]) {
            require(_rewardTokens.length < MAX_REWARD_TOKENS, "too many reward tokens");
            tokenExists[token] = true;
            _rewardTokens.push(token);
            emit RewardTokenAdded(token);
        }
    }

    function _flushQueuedRewards() internal {
        if (totalStaked == 0) return;

        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            address t = _rewardTokens[i];
            uint256 q = queuedRewards[t];
            if (q == 0) continue;

            queuedRewards[t] = 0;
            uint256 inc = Math.mulDiv(q, PRECISION, totalStaked);
            accRewardPerShare[t] += inc;

            emit RewardNotified(t, q, inc);
        }
    }

    // ========================= ETH receive =========================
    /// @notice Accepts plain ETH transfers; not considered rewards unless notified.
    receive() external payable {}
}
