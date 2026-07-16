// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import {IAccruedRewardsDistributor} from "../interfaces/IAccruedRewardsDistributor.sol";

error ZeroAmount();
error InvalidAddress();
error InvalidInput();
error InvalidAsset();

contract AccruedRewardsDistributor is IAccruedRewardsDistributor, Ownable2Step, ReentrancyGuard {
    mapping(uint8 group => address asset) public assets;
    mapping(uint8 group => uint256 amount) public rewards;
    mapping(uint8 group => mapping(address user => uint256 amount)) public rewardsPerUser;

    constructor(address initialOwner) Ownable(initialOwner) ReentrancyGuard() {}

    /// @inheritdoc IAccruedRewardsDistributor
    function addAsset(
        uint8 group,
        address asset
    ) external onlyOwner {
        if (asset == address(0)) {
            revert InvalidAddress();
        }

        if (assets[group] != address(0)) {
            revert InvalidAsset();
        }

        assets[group] = asset;
    }

    /// @inheritdoc IAccruedRewardsDistributor
    function addRewards(
        uint8 group,
        address[] calldata users,
        uint256[] calldata amounts
    ) external onlyOwner nonReentrant {
        if (amounts.length != users.length) {
            revert InvalidInput();
        }

        uint256 amount = 0;

        for (uint256 i = 0; i < users.length; i++) {          
            if (users[i] == address(0)) {
                revert InvalidAddress();
            }

            // Option to reset rewards for user
            if (amounts[i] == 0) {
              rewards[group] -= rewardsPerUser[group][users[i]];
              rewardsPerUser[group][users[i]] = 0;
            } else {
              rewards[group] += amounts[i];
              rewardsPerUser[group][users[i]] += amounts[i];
              amount += amounts[i];
            }
        }

        emit AddRewards(msg.sender, group, amount, users, amounts);
    }

    /// @inheritdoc IAccruedRewardsDistributor
    function withdrawRewards(
        uint8 group,
        address[] calldata users
    ) external onlyOwner nonReentrant {
        uint256 remaining = rewards[group];
        if (remaining == 0) {
            revert ZeroAmount();
        }

        uint256 amount = 0;

        for (uint256 i = 0; i < users.length; i++) {
            uint256 remainingPerUser = rewardsPerUser[group][users[i]];
            amount += remainingPerUser;
            rewards[group] -= remainingPerUser;
            rewardsPerUser[group][users[i]] = 0;
        }

        IERC20(assets[group]).transfer(msg.sender, amount);

        emit WithdrawRewards(msg.sender, group, amount);
    }

    /// @inheritdoc IAccruedRewardsDistributor
    function claimRewards(
        uint8 group
    ) external nonReentrant {
        uint256 remaining = rewards[group];
        uint256 remainingPerUser = rewardsPerUser[group][msg.sender];

        if (remaining == 0 || remainingPerUser == 0) {
            revert ZeroAmount();
        }

        rewards[group] -= remainingPerUser;
        rewardsPerUser[group][msg.sender] = 0;

        IERC20(assets[group]).transfer(msg.sender, remainingPerUser);

        emit ClaimRewards(msg.sender, group, remainingPerUser);
    }
}
