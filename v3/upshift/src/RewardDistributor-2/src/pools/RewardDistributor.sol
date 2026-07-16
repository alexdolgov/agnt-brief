// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import {LightweightOwnable} from "../core/LightweightOwnable.sol";
import {IERC20} from "../../lib/open-zeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "../../lib/open-zeppelin/token/ERC20/utils/SafeERC20.sol";

/**
 * @title Contract for distributing ETH rewards for incentivized August Pools.
 */
contract RewardDistributor is LightweightOwnable {
    using SafeERC20 for IERC20;

    uint256 private constant PRECISION_FACTOR = 1e18;

    IERC20 public immutable stakingToken;
    uint256 public rewardsPerSecond;
    uint256 public totalStaked;
    uint256 public lastUpdateTime;
    uint256 public rewardPerTokenStored;

    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public rewards;
    mapping(address => uint256) public balanceOf;

    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardRateUpdated(uint256 newRate);
    event Received(address indexed sender, uint256 value);

    /**
     * @notice Constructor.
     * @param ownerAddr The address of the owner.
     * @param _rewardsPerSecond The amount of ETH rewards to distribute per second.
     * @param _stakingToken The address of the ERC20 token used for staking.
     */
    constructor(
        address ownerAddr,
        uint256 _rewardsPerSecond,
        IERC20 _stakingToken
    ) {
        rewardsPerSecond = _rewardsPerSecond;
        lastUpdateTime = block.timestamp;
        stakingToken = _stakingToken;
        _transferOwnership(ownerAddr);
    }

    /**
     * @notice Allow the contract to receive ETH.
     */
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    /**
     * @notice Update the reward rate.
     */
    function setRewardRate(uint256 _rewardsPerSecond) external onlyOwner {
        rewardsPerSecond = _rewardsPerSecond;
        emit RewardRateUpdated(_rewardsPerSecond);
    }

    /**
     * @notice Stake tokens.
     */
    function stake(uint256 amount) external nonReentrant {
        require(amount > 0, "Amount cannot be zero");
        _updateReward(msg.sender);
        totalStaked += amount;
        balanceOf[msg.sender] += amount;
        stakingToken.safeTransferFrom(msg.sender, address(this), amount);
        emit Staked(msg.sender, amount);
    }

    /**
     * @notice Withdraw staked tokens.
     */
    function withdraw(uint256 amount) external nonReentrant {
        require(amount > 0, "Amount cannot be zero");
        require(balanceOf[msg.sender] >= amount, "Amount mismatch");
        _updateReward(msg.sender);
        totalStaked -= amount;
        balanceOf[msg.sender] -= amount;
        stakingToken.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    /**
     * @notice Emergency withdraw of avax from the contract.
     */

    function emergencyWithdraw() external onlyOwner {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "ETH transfer failed");
    }

    /**
     * @notice Claim rewards.
     */
    function getReward() external nonReentrant {
        _updateReward(msg.sender);
        uint256 reward = rewards[msg.sender];
        if (reward > 0) {
            rewards[msg.sender] = 0;
            (bool success, ) = msg.sender.call{value: reward}("");
            require(success, "ETH transfer failed");
            emit RewardPaid(msg.sender, reward);
        }
    }

    /**
     * @notice Calculate the earned rewards for an account.
     */
    function earned(address account) public view returns (uint256) {
        return
            ((balanceOf[account] *
                (_rewardPerToken() - userRewardPerTokenPaid[account])) /
                PRECISION_FACTOR) + rewards[account];
    }

    /**
     * @notice Update reward state for an account.
     */
    function _updateReward(address account) private {
        rewardPerTokenStored = _rewardPerToken();
        lastUpdateTime = block.timestamp;
        if (account != address(0)) {
            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
    }

    /**
     * @notice Calculate the reward per token.
     */
    function _rewardPerToken() private view returns (uint256) {
        if (totalStaked == 0) {
            return rewardPerTokenStored;
        }
        return
            rewardPerTokenStored +
            (((block.timestamp - lastUpdateTime) *
                rewardsPerSecond *
                PRECISION_FACTOR) / totalStaked);
    }
}
