// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

interface IPool {
    function addYield(uint256 amount) external;
}

contract RewardDistributor is Ownable2Step, AccessControl {
    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");
    bytes32 public constant REWARD_MANAGER_ROLE = keccak256("REWARD_MANAGER_ROLE");

    IERC20 public immutable rewardToken;
    address public immutable poolAddress;
    uint256 public upcomingRewardAmount;

    constructor(address _rewardTokenAddress, address _poolAddress) Ownable(msg.sender) {
        require(_rewardTokenAddress != address(0), "Reward token address cannot be zero");
        require(_poolAddress != address(0), "Pool address cannot be zero");

        rewardToken = IERC20(_rewardTokenAddress);
        poolAddress = _poolAddress;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(POOL_MANAGER_ROLE, msg.sender);
        _grantRole(REWARD_MANAGER_ROLE, msg.sender);

        rewardToken.approve(poolAddress, type(uint256).max);
    }

    function setUpcomingRewardAmount(uint256 _amount) external onlyRole(POOL_MANAGER_ROLE) {
        upcomingRewardAmount = _amount;
    }

    function distributeReward() external onlyRole(REWARD_MANAGER_ROLE) {
        require(upcomingRewardAmount > 0, "No upcoming reward amount set");
        require(rewardToken.balanceOf(address(this)) >= upcomingRewardAmount, "Insufficient reward token balance");

        uint256 rewardAmount = upcomingRewardAmount;
        upcomingRewardAmount = 0; // Reset reward amount to prevent reentrancy

        IPool(poolAddress).addYield(rewardAmount);
    }

    function rescueERC20(address tokenAddress, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(tokenAddress).transfer(msg.sender, amount);
    }
}
