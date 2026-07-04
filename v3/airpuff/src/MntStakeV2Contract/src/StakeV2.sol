// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract MntStakeV2Contract is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ========== STATE VARIABLES ========== */

    IERC20 public rewardToken; // rewardToken
    uint256 public constant TOTAL_REWARD = 2_500_000_000 * 1e18;

    uint256 public constant REWARD_DURATION = 30 days;
    uint256 public constant UNLOCK_TIME = 2 days;

    uint256 public immutable startTime;
    uint256 public immutable periodFinish;

    uint256 public rewardClaimPeriod = 9;
    uint256 public totalStakedAmount; // Total staked MNT
    uint256 public totalStakerCount; // Total stake address
    uint256 public rewardRate = TOTAL_REWARD / REWARD_DURATION; // rewards per second
    uint256 public lastUpdateTime; // Update time
    uint256 public rewardPerTokenStored; // Reward token amount  (* rewardRate)

    bool public paused;
    // user cumulative value
    mapping(address => uint256) public userRewardPerTokenPaid;
    //  current rewards
    mapping(address => uint256) public rewards;
    // Mapping to keep track of user balances
    mapping(address => uint256) public balances;

    /* ========== EVENTS ========== */

    event Stake(address indexed staker, uint256 amount);
    event Withdrawal(address indexed staker, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);

    modifier notPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    modifier updateReward(address account) {
        if (block.timestamp >= startTime + UNLOCK_TIME) {
            // Update、 accumulate
            rewardPerTokenStored = rewardPerToken();
            // Update timestamp
            lastUpdateTime = lastTimeRewardApplicable();

            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
        _;
    }

    constructor(address _rewardToken) Ownable(msg.sender) {
        rewardToken = IERC20(_rewardToken);
        startTime = block.timestamp;
        lastUpdateTime = startTime + UNLOCK_TIME;
        periodFinish = startTime + UNLOCK_TIME + REWARD_DURATION;
    }

    /// @notice Pauses the contract
    function pause() external onlyOwner {
        paused = true;
    }

    /// @notice Unpauses the contract
    function unpause() external onlyOwner {
        paused = false;
    }

    /// @notice Sets the period in which rewards can be claimed after distribution ends
    /// @dev Can only be called by the contract owner
    /// @param _days The number of days to set as the reward claim period
    function setRewardClaimPeriod(uint256 _days) external onlyOwner {
        rewardClaimPeriod = _days;
    }

    /// @notice Calculates the accumulated reward per token staked
    /// @dev This is a view function and does not modify state
    /// @return The calculated reward per token
    function rewardPerToken() public view returns (uint256) {
        if (totalStakedAmount == 0 || block.timestamp < startTime + UNLOCK_TIME) {
            return rewardPerTokenStored;
        }
        // accumulated value （ last accumulated value + next block ...)
        return rewardPerTokenStored
            + (rewardRate * (lastTimeRewardApplicable() - lastUpdateTime) * 1e18) / totalStakedAmount;
    }

    /// @notice Determines the last applicable timestamp for reward calculations
    /// @dev Used to ensure rewards are not calculated beyond the distribution finish time
    /// @return The last applicable timestamp for reward calculations
    function lastTimeRewardApplicable() public view returns (uint256) {
        return block.timestamp < periodFinish ? block.timestamp : periodFinish;
    }

    /// @notice Calculates the total rewards earned by an account
    /// @dev Includes both newly earned rewards and previously accumulated rewards
    /// @param account The account to calculate rewards for
    /// @return The total rewards earned by the account
    function earned(address account) public view returns (uint256) {
        uint256 currentBalance = balances[account];
        // cumulative value
        uint256 amountPaid = userRewardPerTokenPaid[account];
        return (currentBalance * (rewardPerToken() - amountPaid)) / 1e18 + rewards[account];
    }

    /// @notice Allows a user to stake their tokens into the contract
    /// @dev Payable function that updates the user's staked balance and total staked amount
    function stake() external payable notPaused nonReentrant updateReward(msg.sender) {
        require(msg.value > 0, "Cannot stake 0");

        if (balances[msg.sender] == 0) {
            totalStakerCount += 1;
        }

        balances[msg.sender] += msg.value;
        totalStakedAmount += msg.value;

        emit Stake(msg.sender, msg.value);
    }

    /// @notice Withdraws all staked tokens for the sender
    /// @dev Withdraws the sender's balance and updates the staker count accordingly
    function withdrawAll() external {
        withdraw(balances[msg.sender]);
    }

    /// @notice Withdraws a specified amount of staked tokens for the sender
    /// @param amount The amount to withdraw
    function withdraw(uint256 amount) public nonReentrant updateReward(msg.sender) {
        require(amount > 0, "Cannot withdraw 0");
        require(amount <= balances[msg.sender], "Insufficient balance to withdraw");
        // Effects
        balances[msg.sender] -= amount;
        totalStakedAmount -= amount;
        if (balances[msg.sender] == 0) {
            totalStakerCount -= 1;
        }

        // Interaction
        (bool success,) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed.");

        emit Withdrawal(msg.sender, amount);
    }

    /// @notice Allows a user to claim their accrued reward tokens
    /// @dev Transfers the appropriate reward amount to the sender if within the claim period
    function claimReward() public notPaused nonReentrant updateReward(msg.sender) {
        // Ensure that this function is called within 7 days after rewards have finished
        require(block.timestamp <= periodFinish + (rewardClaimPeriod * 1 days), "Reward period has expired");
        // Calculate the amount of reward tokens earned by the sender
        uint256 reward = earned(msg.sender);

        if (reward > 0) {
            rewards[msg.sender] = 0;
            // Transfer the claimed tokens to the sender
            rewardToken.safeTransfer(msg.sender, reward);
            // Emit an event for successful reward claim
            emit RewardPaid(msg.sender, reward);
        }
    }

    /// @notice Allows the owner to withdraw any unclaimed rewards after the reward claim period
    /// @dev Transfers the remaining unclaimed rewards to the owner
    function withdrawRemainingRewards() external onlyOwner {
        require(block.timestamp > periodFinish + (rewardClaimPeriod * 1 days), "The reward period has not ended yet");
        uint256 remainingRewards = rewardToken.balanceOf(address(this));
        require(remainingRewards > 0, "No remaining rewards to withdraw");

        rewardToken.safeTransfer(owner(), remainingRewards);

        emit RewardPaid(owner(), remainingRewards);
    }
}
