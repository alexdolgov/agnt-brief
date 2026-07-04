// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./IBIFKNChefV2.sol";
import "./IBIFKNRewarder.sol";

/**
 * @title BIFKNRewarder
 * @dev This contract implements the BIFKNRewarder functionality.
 * It is used to distribute rewards to users who participate in the BIFKN ecosystem.
 * The contract inherits from AccessControl, IBIFKNRewarder, and ReentrancyGuard.
 */
contract BIFKNRewarder is AccessControl, IBIFKNRewarder, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    /**
     * @dev Struct representing user information.
     * It includes the amount of tokens staked by the user,
     * the amount of reward debt accumulated by the user,
     * and the amount of unclaimed rewards available to the user.
     */
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
    }

    /**
     * @dev Struct representing the information of a pool.
     * It includes the last reward timestamp and the reward token per share.
     */
    struct PoolInfo {
        uint256 lastRewardTimestamp;
        uint256 rewardTokenPerShare;
    }

    // Holds a reference to the IBIFKNChefV2 contract.
    IBIFKNChefV2 public bifknChef;

    // Represents the staking token contract.
    IERC20 public stakingToken;

    // Represents the reward token contract.
    IERC20 public rewardToken;

    // Represents the amount of reward tokens distributed per second.
    uint256 public rewardTokenPerSecond;

    // Represents the ID of the staking pool.
    uint256 public poolId;

    // Indicates whether the pool ID has been set.
    bool public poolIdSet;

    // Represents the available rewards for distribution.
    uint256 public availableRewards;

    // The timestamp when the contract starts.
    uint256 public startTimestamp;

    //  A boolean variable indicating whether the rewards have been initialized or not.
    bool public rewardsInitialized;

    /**
     * @dev The precision used for calculating the accumulated token value.
     * It is set to 1e36, which means that the token value is represented with 36 decimal places.
     */
    uint256 private constant ACC_TOKEN_PRECISION = 1e36;

    // Represents the pool information.
    PoolInfo public poolInfo;

    //Mapping to store user-specific information for each address.
    mapping(address => UserInfo) public userInfo;

    event OnReward(address indexed user, uint256 amount);
    event RewardRateUpdated(uint256 oldRate, uint256 newRewardRate);
    event RewardTokenDeposited(uint256 amount);

    error NotTheChef();
    error InvalidContract(string message);
    error RewardRateTooHigh();
    error InvalidAmount();
    error InvalidStartTimestamp();

    modifier onlyBIFKNChef() {
        if (msg.sender != address(bifknChef)) revert NotTheChef();
        _;
    }

    constructor(
        IBIFKNChefV2 _chef,
        IERC20 _stakingToken,
        IERC20 _rewardToken,
        uint256 _rewardTokenPerSecond,
        uint256 _startTimestamp
    ) {
        if (address(_chef) == address(0)) revert InvalidContract("chef");
        if (address(_rewardToken) == address(0))
            revert InvalidContract("rewardToken");
        if (address(_stakingToken) == address(0))
            revert InvalidContract("stakingToken");
        if (_rewardTokenPerSecond >= 1e30) revert RewardRateTooHigh();
        if (_startTimestamp < block.timestamp) revert InvalidStartTimestamp();

        bifknChef = _chef;
        stakingToken = _stakingToken;
        rewardToken = _rewardToken;
        rewardTokenPerSecond = _rewardTokenPerSecond;
        startTimestamp = _startTimestamp;

        poolInfo = PoolInfo({
            lastRewardTimestamp: _startTimestamp,
            rewardTokenPerShare: 0
        });

        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _grantRole(MANAGER_ROLE, _msgSender());
    }

    /**
     * @dev Function to distribute rewards to the stakers.
     * @param _user The address of the user to distribute rewards to.
     * @param _stakedAmount The amount of staked tokens for the user.
     */
    function onReward(
        address _user,
        uint256 _stakedAmount
    ) external override nonReentrant onlyBIFKNChef {
        updatePool();

        uint256 accTokenPerShare = poolInfo.rewardTokenPerShare;
        UserInfo storage user = userInfo[_user];

        // Calculate pending rewards
        uint256 pending = ((user.amount * accTokenPerShare) /
            ACC_TOKEN_PRECISION) - user.rewardDebt;

        // Transfer pending rewards to user
        if (pending != 0) {
            uint256 rewardBalance = availableRewards;
            if (rewardBalance != 0) {
                if (pending > rewardBalance) {
                    rewardToken.safeTransfer(_user, rewardBalance);
                    availableRewards = 0;
                } else {
                    rewardToken.safeTransfer(_user, pending);
                    availableRewards -= pending;
                }
            }
        }

        // Update user's staked amount and reward debt
        user.amount = _stakedAmount;
        user.rewardDebt =
            (_stakedAmount * accTokenPerShare) /
            ACC_TOKEN_PRECISION;

        emit OnReward(_user, pending);
    }

    /**
     * @dev Calculates the pending incentives for a user.
     * @param _user The address of the user to check.
     * @return pending The amount of pending incentives for the user.
     */
    function pendingIncentives(
        address _user
    ) external view override returns (uint256 pending) {
        // If there are no available rewards, return 0
        if (availableRewards == 0) {
            return 0;
        }

        PoolInfo memory pool = poolInfo;
        UserInfo storage user = userInfo[_user];

        uint256 accTokenPerShare = pool.rewardTokenPerShare;
        uint256 stakedTokenSupply = bifknChef.poolInfo(poolId).totalStaked;

        if (
            block.timestamp > pool.lastRewardTimestamp && stakedTokenSupply != 0
        ) {
            uint256 timeElapsed = block.timestamp - pool.lastRewardTimestamp;
            uint256 tokenReward = timeElapsed * rewardTokenPerSecond;

            // Ensure tokenReward does not exceed availableRewards
            if (tokenReward > availableRewards) {
                tokenReward = availableRewards;
            }

            accTokenPerShare =
                accTokenPerShare +
                (tokenReward * ACC_TOKEN_PRECISION) /
                stakedTokenSupply;
        }

        pending = (user.amount * accTokenPerShare) / ACC_TOKEN_PRECISION;
        pending = pending - user.rewardDebt;

        // Cap pending rewards to available rewards
        if (pending > availableRewards) {
            pending = availableRewards;
        }
    }

    /**
     * @dev Updates the pool by calculating and distributing rewards to the stakers.
     * @return pool The updated pool information.
     */
    function updatePool() public returns (PoolInfo memory pool) {
        pool = poolInfo;

        if (block.timestamp > pool.lastRewardTimestamp) {
            uint256 stakedTokenSupply = bifknChef.poolInfo(poolId).totalStaked;

            if (stakedTokenSupply != 0 && availableRewards != 0) {
                uint256 timeElapsed = block.timestamp -
                    pool.lastRewardTimestamp;
                uint256 tokenReward = timeElapsed * rewardTokenPerSecond;

                // Ensure we do not distribute more rewards than available
                if (tokenReward > availableRewards) {
                    tokenReward = availableRewards;
                }

                pool.rewardTokenPerShare =
                    pool.rewardTokenPerShare +
                    (tokenReward * ACC_TOKEN_PRECISION) /
                    stakedTokenSupply;
            }

            pool.lastRewardTimestamp = block.timestamp;
            poolInfo = pool;
        }
    }

    /**
     * @dev Sets the reward rate for the BIFKNRewarder contract.
     * Only the address with the MANAGER_ROLE can call this function.
     * It updates the pool and sets the new reward rate.
     * Emits a `RewardRateUpdated` event with the old and new reward rates.
     *
     * @param _newRewardTokenPerSecond The new reward rate in tokens per second.
     */
    function setRewardRate(
        uint256 _newRewardTokenPerSecond
    ) external onlyRole(MANAGER_ROLE) {
        updatePool();

        uint256 oldRate = rewardTokenPerSecond;
        rewardTokenPerSecond = _newRewardTokenPerSecond;

        emit RewardRateUpdated(oldRate, _newRewardTokenPerSecond);
    }

    /**
     * @dev Deposits a specified amount of reward tokens into the contract.
     * @param _amount The amount of reward tokens to deposit.
     * @notice The `_amount` must be greater than 0.
     * @notice The caller must have approved the contract to spend the reward tokens.
     * @notice Emits a `RewardTokenDeposited` event with the amount of tokens received.
     */
    function depositRewardToken(uint256 _amount) external nonReentrant {
        if (_amount == 0) revert InvalidAmount();

        // Check if availableRewards is 0 before the deposit
        bool wasRewardsZero = (availableRewards == 0 && rewardsInitialized);

        uint256 priorBalance = rewardToken.balanceOf(address(this));
        rewardToken.safeTransferFrom(_msgSender(), address(this), _amount);
        uint256 newBalance = rewardToken.balanceOf(address(this));

        // In case the contract receives more or less than the specified amount
        // due to transfer fees or other reasons, calculate the actual amount received
        _amount = newBalance - priorBalance;
        availableRewards += _amount;

        // Update the lastRewardTimestamp if the available rewards were previously 0
        // and the rewards have been initialized before
        if (wasRewardsZero) {
            poolInfo.lastRewardTimestamp = block.timestamp;
        }

        // Mark rewards as initialized after the first deposit
        if (!rewardsInitialized) {
            rewardsInitialized = true;
        }

        emit RewardTokenDeposited(_amount);
    }

    /**
     * @dev Sets the pool ID for the BIFKNRewarder contract.
     * Can only be called by the BIFKNChef contract.
     * @param _poolId The new pool ID to be set.
     */
    function setPoolId(uint256 _poolId) external onlyBIFKNChef {
        poolId = _poolId;
    }

    /**
     * @dev Returns the available rewards balance.
     * @return The amount of available rewards.
     */
    function balance() external view returns (uint256) {
        return availableRewards;
    }

    /**
     * @dev Returns the duration of the rewards in seconds.
     * @return The duration of the rewards in seconds.
     */
    function rewardsDuration() external view returns (uint256) {
        return availableRewards / rewardTokenPerSecond;
    }

    /**
     * @dev Allows the manager to withdraw all available rewards from the contract.
     * Only the address with the MANAGER_ROLE can call this function.
     * Transfers the reward tokens to the caller's address and sets the available rewards to 0.
     */
    function emergencyWithdraw() external onlyRole(MANAGER_ROLE) {
        rewardToken.safeTransfer(
            _msgSender(),
            rewardToken.balanceOf(address(this))
        );
        availableRewards = 0;
    }
}
