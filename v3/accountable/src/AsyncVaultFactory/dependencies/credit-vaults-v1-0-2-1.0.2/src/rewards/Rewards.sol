// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IRecoverable} from "../interfaces/IRecoverable.sol";
import {IRewardsBase, Reward} from "../interfaces/IRewards.sol";

import {Unauthorized, InsufficientAmount, ArrayLengthMismatch} from "../constants/Errors.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @notice Base rewards module for reward asset accounting and escrow
/// @notice It features minimal lock/unlock functionality extended by a distributor
/// @notice This module is an extension of an Accountable Loan strategy
/// @custom:security-contact security@accountable.capital
abstract contract RewardsBase is IRewardsBase, Ownable2Step {
    using SafeERC20 for IERC20;

    /// @notice The loan strategy address
    address public strategy;

    /// @notice The rewards for an asset
    mapping(address asset => Reward reward) public rewards;

    /// @notice The updaters of the rewards distributor
    mapping(address updater => bool allowed) public updaters;

    /// @notice Modifier to check if the caller is the strategy
    modifier onlyStrategy() {
        if (msg.sender != strategy) revert Unauthorized();
        _;
    }

    /// @dev Modifier to check if the caller is an updater or owner
    modifier onlyUpdater() {
        if (!updaters[msg.sender] && msg.sender != owner()) revert Unauthorized();
        _;
    }

    /// @notice Constructor
    /// @param owner_ The owner of the module
    /// @param strategy_ The loan strategy address
    /// @dev The owner can be the strategy's manager or an arbitrary address
    constructor(address owner_, address strategy_) Ownable(owner_) {
        strategy = strategy_;
        _setUpdater(strategy_, true);
    }

    /// @inheritdoc IRewardsBase
    function lock(uint256 amount, address asset, address owner_) external onlyStrategy {
        rewards[asset].totalWithoutRewards += amount;

        IERC20(asset).safeTransferFrom(owner_, address(this), amount);

        emit RewardLocked(amount, asset, owner_);
    }

    /// @inheritdoc IRewardsBase
    function borrow(uint256 amount, address asset, address receiver) external onlyStrategy {
        if (amount > rewards[asset].totalWithoutRewards) revert InsufficientAmount();

        rewards[asset].totalBorrowed += amount;
        rewards[asset].totalWithoutRewards -= amount;

        IERC20(asset).safeTransfer(receiver, amount);

        emit RewardBorrowed(amount, asset, receiver);
    }

    /// @inheritdoc IRewardsBase
    function repay(uint256 amount, address asset, address owner_) external onlyStrategy {
        rewards[asset].totalRepaid += amount;
        rewards[asset].totalWithoutRewards += amount;

        IERC20(asset).safeTransferFrom(owner_, address(this), amount);

        emit RewardRepaid(amount, asset, owner_);
    }

    /// @inheritdoc IRewardsBase
    function addRewards(uint256[] calldata amounts, address[] calldata assets, address owner_) external onlyUpdater {
        if (amounts.length != assets.length) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < amounts.length; i++) {
            _addReward(amounts[i], assets[i], owner_);
        }
    }

    /// @inheritdoc IRewardsBase
    function addReward(uint256 amount, address asset, address owner_) external onlyUpdater {
        _addReward(amount, asset, owner_);
    }

    /// @inheritdoc IRewardsBase
    function setUpdater(address updater, bool allowed) external onlyOwner {
        _setUpdater(updater, allowed);
    }

    /// @inheritdoc IRecoverable
    function recoverTokens(address token, address to, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(to, amount);
    }

    /// @dev Transfers the rewards from the owner to the module
    function _addReward(uint256 amount, address asset, address owner_) internal {
        IERC20(asset).safeTransferFrom(owner_, address(this), amount);

        emit RewardAdded(amount, asset, owner_);
    }

    /// @dev Sets an updater
    /// @param updater The address of the updater
    /// @param allowed Whether the updater is allowed
    function _setUpdater(address updater, bool allowed) internal {
        updaters[updater] = allowed;

        emit UpdaterSet(updater, allowed);
    }

    /// @inheritdoc IRewardsBase
    function rewardState(address asset) external view returns (Reward memory) {
        return rewards[asset];
    }

    /// @inheritdoc IRewardsBase
    function totalRewards(address asset) public view returns (uint256) {
        uint256 balance = IERC20(asset).balanceOf(address(this));
        uint256 totalLocked = rewards[asset].totalWithoutRewards;
        return balance >= totalLocked ? balance - totalLocked : 0;
    }

    /// @dev Prevents renouncement of ownership
    function renounceOwnership() public virtual override onlyOwner {
        revert Unauthorized();
    }
}
