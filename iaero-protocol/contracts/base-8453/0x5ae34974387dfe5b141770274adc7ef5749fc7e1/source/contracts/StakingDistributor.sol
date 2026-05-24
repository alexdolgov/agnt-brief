// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title StakingDistributor
/// @notice Stake iAERO to earn streamed rewards across multiple tokens (ERC20 + ETH).
/// @dev
/// - Compatible with OpenZeppelin v5.
/// - Rewards are distributed using a per-share accumulator model with PRECISION = 1e18.
/// - Uses full-precision Math.mulDiv to avoid overflow in reward calculations.
/// - Supports `stake`, `stakeFor`, `unstake`, `exit`, `claimRewards`, `claimReward`,
///   `notifyRewardAmount`, as well as view helpers used by the app.
/// - ETH rewards use `address(0)` as the token sentinel.
contract StakingDistributor is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ========================================================================
    //                                Errors
    // ========================================================================

    /// @dev Thrown when a zero address is provided where non-zero is required.
    error ZeroAddress();

    /// @dev Thrown when an amount is zero or otherwise invalid.
    error InvalidAmount();

    /// @dev Thrown when a user attempts to unstake more than staked.
    error NotEnoughStaked();

    /// @dev Thrown when msg.value does not match the notified ETH reward amount.
    error BadETHValue();

    /// @dev Thrown on out-of-bounds index access.
    error IndexOutOfBounds();

    // ========================================================================
    //                             Immutable / Const
    // ========================================================================

    /// @notice The iAERO token that is staked in this contract.
    address public immutable iAERO;

    /// @notice Precision used for the per-share accumulator math.
    uint256 public constant PRECISION = 1e18;

    // ========================================================================
    //                              Staking Storage
    // ========================================================================

    /// @notice Total iAERO staked across all users.
    uint256 public totalStaked;

    /// @notice User staked balances.
    mapping(address => uint256) public balanceOf;

    // ========================================================================
    //                              Rewards Storage
    // ========================================================================
    //  - _rewardTokens: ordered set of reward tokens (ERC20 or address(0) for ETH)
    //  - tokenExists[token] prevents duplicates
    //  - accRewardPerShare[token] is the global accumulator
    //  - queuedRewards[token] holds rewards notified before any staker exists
    //  - rewardDebt[user][token] tracks user’s checkpoint (acc snapshot at last update)

    /// @dev Ordered list of reward tokens (address(0) represents ETH).
    address[] private _rewardTokens;

    /// @dev Guard to prevent duplicate reward-token registration.
    mapping(address => bool) public tokenExists;

    /// @dev Global reward-per-share accumulator for each reward token.
    mapping(address => uint256) public accRewardPerShare;

    /// @dev Rewards notified when no one is staking; flushed on the next stake.
    mapping(address => uint256) public queuedRewards;

    /// @dev User reward-debt per token, i.e., accumulator snapshot at last user action.
    mapping(address => mapping(address => uint256)) public rewardDebt;

    // ========================================================================
    //                                  Events
    // ========================================================================

    /// @notice Emitted when a user stakes iAERO for themselves.
    event Staked(address indexed user, uint256 amount);

    /// @notice Emitted when `funder` stakes iAERO on behalf of `user`.
    event StakedFor(address indexed funder, address indexed user, uint256 amount);

    /// @notice Emitted when a user unstakes iAERO.
    event Unstaked(address indexed user, uint256 amount);

    /// @notice Emitted when new rewards are added.
    /// @param token Reward token address (address(0) for ETH)
    /// @param amount Amount notified
    /// @param distributedPerShare Accumulator increment applied (0 if queued)
    event RewardNotified(address indexed token, uint256 amount, uint256 distributedPerShare);

    /// @notice Emitted when a user claims rewards.
    event RewardClaimed(address indexed user, address indexed token, uint256 amount);

    /// @notice Emitted when a user exits (unstakes all and claims).
    event Exit(address indexed user, uint256 unstaked, uint256 rewardsCount);

    /// @notice Emitted when a new reward token is registered.
    event RewardTokenAdded(address indexed token);

    // ========================================================================
    //                                Constructor
    // ========================================================================

    /// @param _iAERO The iAERO token to be staked.
    constructor(address _iAERO) Ownable(msg.sender) {
        if (_iAERO == address(0)) revert ZeroAddress();
        iAERO = _iAERO;
    }

    // ========================================================================
    //                              View Functions
    // ========================================================================

    /// @notice Returns the list of reward tokens (address(0) = ETH).
    /// @return tokens The current reward token set.
    function getRewardTokens() external view returns (address[] memory tokens) {
        return _rewardTokens;
    }

    /// @notice Returns the number of reward tokens.
    function rewardTokensLength() external view returns (uint256) {
        return _rewardTokens.length;
    }

    /// @notice Returns the reward token at index.
    /// @param index Index into the reward token list.
    /// @return token Address of the reward token (address(0) for ETH).
    function rewardTokens(uint256 index) external view returns (address token) {
        if (index >= _rewardTokens.length) revert IndexOutOfBounds();
        return _rewardTokens[index];
    }

    /// @notice Returns the accumulator for a given reward token.
    /// @param token Reward token address (address(0) for ETH).
    /// @return acc The global reward-per-share accumulator for `token`.
    function accRewardsPerShare(address token) external view returns (uint256 acc) {
        return accRewardPerShare[token];
    }

    /// @notice Computes pending rewards for an account across all reward tokens.
    /// @param account The user address to query.
    /// @return tokens Reward-token addresses (address(0) for ETH).
    /// @return amounts Amounts pending for each token in `tokens`.
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

            // Full-precision multiplication to avoid overflow.
            amounts[i] = Math.mulDiv(staked, acc - debt, PRECISION);
        }
    }

    // ========================================================================
    //                              Staking Logic
    // ========================================================================

    /// @notice Stake iAERO for the caller.
    /// @dev Harvests rewards before updating balances and debts.
    /// @param amount Amount of iAERO to stake (must be > 0).
    function stake(uint256 amount) external nonReentrant {
        _stakeFor(msg.sender, msg.sender, amount);
    }

    /// @notice Stake iAERO on behalf of another user.
    /// @dev Harvests rewards for `user` before updating balances and debts.
    /// @param user The beneficiary of the stake.
    /// @param amount Amount of iAERO to stake (must be > 0).
    function stakeFor(address user, uint256 amount) external nonReentrant {
        _stakeFor(msg.sender, user, amount);
    }

    /// @dev Internal stake implementation shared by `stake` and `stakeFor`.
    /// @param funder The address providing the iAERO (pull source for transferFrom).
    /// @param user The beneficiary whose balance increases.
    /// @param amount Amount of iAERO to stake.
    function _stakeFor(address funder, address user, uint256 amount) internal {
        if (user == address(0)) revert ZeroAddress();
        if (amount == 0) revert InvalidAmount();

        // 1) Settle outstanding rewards at current accumulator(s).
        _harvest(user);

        // 2) Pull tokens and update balances.
        IERC20(iAERO).safeTransferFrom(funder, address(this), amount);
        balanceOf[user] += amount;
        totalStaked += amount;

        // 3) Align user’s debt to the latest accumulators.
        _writeRewardDebts(user);

        emit StakedFor(funder, user, amount);
        if (funder == user) emit Staked(user, amount);

        // 4) If this is the first staker, flush any queued rewards to the accumulator.
        if (totalStaked > 0) _flushQueuedRewards();
    }

    /// @notice Unstake iAERO for the caller.
    /// @dev Harvests rewards before decreasing balances and updating debts.
    /// @param amount Amount of iAERO to unstake (must be > 0 and <= staked).
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

    /// @notice Exit fully: claim all rewards and unstake all iAERO.
    /// @dev Updates debts to the latest accumulators after exit.
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

    // ========================================================================
    //                            Claiming Functions
    // ========================================================================

    /// @notice Claim all pending rewards across every registered reward token.
    /// @dev Also syncs rewardDebt to current accumulators.
    function claimRewards() external nonReentrant {
        _harvest(msg.sender);
        _writeRewardDebts(msg.sender);
    }

    /// @notice Claim rewards for a single token.
    /// @dev Use `address(0)` for ETH rewards.
    /// @param token Reward token to claim (address(0) for ETH).
    function claimReward(address token) external nonReentrant {
        _harvestOne(msg.sender, token);
        _writeOneRewardDebt(msg.sender, token);
    }

    // ========================================================================
    //                        Rewards Supply / Notification
    // ========================================================================

    /// @notice Notify newly available rewards. Pulls ERC20 from sender; accepts ETH via msg.value.
    /// @dev If there are no stakers, rewards are queued and pushed to the accumulator on first stake.
    /// @param token Reward token address (use address(0) for ETH).
    /// @param amount Amount of rewards to add.
    function notifyRewardAmount(address token, uint256 amount) external payable nonReentrant {
        if (token == address(0)) {
            // ETH rewards must arrive as msg.value
            if (msg.value != amount) revert BadETHValue();
        } else {
            if (amount == 0) revert InvalidAmount();
            IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        }

        _addRewardTokenIfNeeded(token);

        if (totalStaked == 0) {
            // Queue rewards to be distributed when the first stake happens.
            queuedRewards[token] += amount;
            emit RewardNotified(token, amount, 0);
            return;
        }

        // Distribute immediately to the accumulator: acc += amount * PRECISION / totalStaked
        uint256 inc = Math.mulDiv(amount, PRECISION, totalStaked);
        accRewardPerShare[token] += inc;

        emit RewardNotified(token, amount, inc);
    }

    // ========================================================================
    //                        Internal Reward Bookkeeping
    // ========================================================================

    /// @dev Harvest all reward tokens for `user`. No-op if user has no stake.
    /// @param user The account to harvest for.
    function _harvest(address user) internal {
        uint256 staked = balanceOf[user];
        if (staked == 0) return;

        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            _harvestOne(user, _rewardTokens[i]);
        }
    }

    /// @dev Harvest a single reward token for `user`.
    /// @param user The account to harvest for.
    /// @param token The reward token (address(0) for ETH).
    function _harvestOne(address user, address token) internal {
        uint256 staked = balanceOf[user];

        // If nothing is staked, just sync debt to current accumulator.
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
                    (bool ok, ) = user.call{value: pending}("");
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

    /// @dev Set rewardDebt for all tokens to current accumulator values for `user`.
    function _writeRewardDebts(address user) internal {
        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            address t = _rewardTokens[i];
            rewardDebt[user][t] = accRewardPerShare[t];
        }
    }

    /// @dev Set rewardDebt for one token to current accumulator value for `user`.
    function _writeOneRewardDebt(address user, address token) internal {
        rewardDebt[user][token] = accRewardPerShare[token];
    }

    /// @dev Register a new reward token if not seen before.
    /// @param token Address of the reward token (address(0) for ETH).
    function _addRewardTokenIfNeeded(address token) internal {
        if (!tokenExists[token]) {
            tokenExists[token] = true;
            _rewardTokens.push(token);
            emit RewardTokenAdded(token);
        }
    }

    /// @dev Push any queued rewards into the accumulator once stakers exist.
    function _flushQueuedRewards() internal {
        if (totalStaked == 0) return;

        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            address t = _rewardTokens[i];
            uint256 q = queuedRewards[t];
            if (q == 0) continue;

            queuedRewards[t] = 0;

            // acc += q * PRECISION / totalStaked
            uint256 inc = Math.mulDiv(q, PRECISION, totalStaked);
            accRewardPerShare[t] += inc;

            emit RewardNotified(t, q, inc);
        }
    }

    // ========================================================================
    //                              ETH Reception
    // ========================================================================

    /// @notice Accepts plain ETH transfers (e.g., if a helper sends ETH here).
    /// @dev Only affects the contract’s balance; not counted as rewards unless
    ///      explicitly notified via `notifyRewardAmount(address(0), amount)`.
    receive() external payable {}
}
