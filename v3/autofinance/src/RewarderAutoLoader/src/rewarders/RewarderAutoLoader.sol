// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";

import { SecurityBase } from "src/security/SecurityBase.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { IRewarderAutoLoader } from "src/interfaces/rewarders/IRewarderAutoLoader.sol";
import { AutopilotErrors } from "src/utils/AutopilotErrors.sol";
import { Roles } from "src/libs/Roles.sol";

/**
 * @title RewarderAutoLoader
 * @notice Automated reward loading system for Tokemak v2 rewarders
 * @dev Automates reward queuing when rewarder periods finish
 *
 * ┌──────────┐         ┌────────────────────┐         ┌──────────────┐
 * │ Operator │         │ RewarderAutoLoader │         │ MainRewarder │
 * └────┬─────┘         └─────────┬──────────┘         └──────┬───────┘
 *      │                         │                            │
 *      │ 1. loadBank()           │                            │
 *      │────────────────────────>│                            │
 *      │    (transfer tokens)    │                            │
 *      │                         │                            │
 *      │ 2. configureRewarder()  │                            │
 *      │────────────────────────>│                            │
 *      │    (set config)         │                            │
 *      │                         │                            │
 *      │ [Time passes, period finishes]                       │
 *      │                         │                            │
 *      │ 3. queueRewards()       │                            │
 *      │────────────────────────>│                            │
 *      │                         │ 4. queueNewRewards()       │
 *      │                         │───────────────────────────>│
 *      │                         │    (transfer token)        │
 *      │                         │                            │
 *
 * Data Model:
 * - tokenBank[rewarder] => balance (per-rewarder isolated accounting)
 * - rewarderConfigs[rewarder] => {rewardAmount, validUntil}
 * - _rewarderList => EnumerableSet for iteration
 *
 */
contract RewarderAutoLoader is IRewarderAutoLoader, SystemComponent, SecurityBase {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    // ========================================
    // State Variables
    // ========================================

    /// @notice Configuration for each rewarder
    mapping(address rewarder => RewarderConfig) public rewarderConfigs;

    /// @notice List of all configured rewarders for iteration
    EnumerableSet.AddressSet private _rewarderList;

    /// @notice Token bank with per-rewarder accounting
    /// @dev rewarder address => balance
    mapping(address rewarder => uint256) public tokenBank;

    // ========================================
    // Modifiers
    // ========================================

    /**
     * @notice Restricts access to authorized operators for a specific rewarder
     * @param rewarder Address of the rewarder to check authorization for
     */
    modifier onlyAuthorized(
        address rewarder
    ) {
        if (!_isAuthorized(rewarder, msg.sender)) revert AutopilotErrors.AccessDenied();
        _;
    }

    // ========================================
    // Constructor
    // ========================================

    /**
     * @notice Constructs the RewarderAutoLoader contract
     * @param _systemRegistry Address of the system registry
     */
    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) SecurityBase(address(_systemRegistry.accessController())) { }

    // ========================================
    // Configuration Functions
    // ========================================

    /// @inheritdoc IRewarderAutoLoader
    /// @dev Requires GLOBAL_REWARDER_OPERATOR role or specific rewarder operator role
    /// @dev Adds rewarder to list if not already present
    /// @dev Updates configuration if rewarder already exists
    function configureRewarder(
        address rewarder,
        uint256 rewardAmount,
        uint256 validUntil
    ) external onlyAuthorized(rewarder) {
        AutopilotErrors.verifyNotZero(rewarder, "rewarder");
        AutopilotErrors.verifyNotZero(rewardAmount, "rewardAmount");
        // slither-disable-next-line timestamp
        if (validUntil <= block.timestamp) revert AutopilotErrors.InvalidParam("validUntil");

        // Add to list
        // slither-disable-next-line unused-return
        _rewarderList.add(rewarder);

        // Store configuration
        rewarderConfigs[rewarder] = RewarderConfig({ rewardAmount: rewardAmount, validUntil: validUntil });

        emit RewarderConfigured(rewarder, rewardAmount, validUntil);
    }

    /// @inheritdoc IRewarderAutoLoader
    function removeRewarder(
        address rewarder
    ) external onlyAuthorized(rewarder) {
        AutopilotErrors.verifyNotZero(rewarder, "rewarder");

        // if returned false when trying to remove, means item wasn't in the list
        if (!_rewarderList.remove(rewarder)) revert AutopilotErrors.ItemNotFound();

        delete rewarderConfigs[rewarder];

        emit RewarderRemoved(rewarder);
    }

    // ========================================
    // Banking Functions
    // ========================================

    /// @inheritdoc IRewarderAutoLoader
    function loadBank(address rewarder, address token, uint256 amount) external onlyAuthorized(rewarder) {
        AutopilotErrors.verifyNotZero(rewarder, "rewarder");
        AutopilotErrors.verifyNotZero(token, "token");
        AutopilotErrors.verifyNotZero(amount, "amount");

        // Validate token matches rewarder's reward token
        address rewardToken = IMainRewarder(rewarder).rewardToken();
        if (token != rewardToken) revert AutopilotErrors.InvalidParam("token");

        // Update bank balance
        tokenBank[rewarder] += amount;

        // Emit event before external call
        emit BankLoaded(rewarder, token, amount);

        // Transfer tokens from sender to this contract
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
    }

    /// @inheritdoc IRewarderAutoLoader
    function recoverFromBank(address rewarder, address token, uint256 amount) external onlyAuthorized(rewarder) {
        AutopilotErrors.verifyNotZero(rewarder, "rewarder");
        AutopilotErrors.verifyNotZero(token, "token");
        AutopilotErrors.verifyNotZero(amount, "amount");

        // Validate token matches rewarder's reward token
        address rewardToken = IMainRewarder(rewarder).rewardToken();
        if (token != rewardToken) revert AutopilotErrors.InvalidParam("token");

        uint256 balance = tokenBank[rewarder];
        if (amount > balance) revert AutopilotErrors.InsufficientBalance(token);

        // Update bank balance
        tokenBank[rewarder] = balance - amount;

        // Emit event before external call
        emit BankRecovered(rewarder, token, msg.sender, amount);

        // Transfer tokens to caller
        IERC20(token).safeTransfer(msg.sender, amount);
    }

    // ========================================
    // Execution Functions
    // ========================================

    /// @inheritdoc IRewarderAutoLoader
    function queueRewards(
        address rewarder
    ) external onlyAuthorized(rewarder) {
        _queueRewards(rewarder);
    }

    /// @inheritdoc IRewarderAutoLoader
    function queueRewardsBatch(
        address[] calldata rewarders
    ) external {
        uint256 length = rewarders.length;
        for (uint256 i = 0; i < length; ++i) {
            if (!_isAuthorized(rewarders[i], msg.sender)) revert AutopilotErrors.AccessDenied();
            _queueRewards(rewarders[i]);
        }
    }

    // ========================================
    // View Functions
    // ========================================

    /// @inheritdoc IRewarderAutoLoader
    function needsRewards(
        address rewarder
    ) public view returns (bool) {
        return _needsRewards(rewarder);
    }

    /// @inheritdoc IRewarderAutoLoader
    function getRewardersNeedingRewards() external view returns (address[] memory) {
        uint256 length = _rewarderList.length();

        // Allocate array with max possible size
        address[] memory result = new address[](length);

        // Single pass: populate and track count
        uint256 count = 0;
        for (uint256 i = 0; i < length; ++i) {
            address rewarder = _rewarderList.at(i);
            if (_needsRewards(rewarder)) {
                result[count] = rewarder;
                ++count;
            }
        }

        // Resize array to actual count using assembly
        // slither-disable-start assembly
        // solhint-disable-next-line no-inline-assembly
        assembly {
            mstore(result, count)
        }
        // slither-disable-end assembly

        return result;
    }

    /// @inheritdoc IRewarderAutoLoader
    function getRewarderConfig(
        address rewarder
    ) external view returns (RewarderConfig memory) {
        return rewarderConfigs[rewarder];
    }

    /// @inheritdoc IRewarderAutoLoader
    function getRewarderCount() external view returns (uint256) {
        return _rewarderList.length();
    }

    /// @inheritdoc IRewarderAutoLoader
    function rewarderList(
        uint256 index
    ) external view returns (address) {
        return _rewarderList.at(index);
    }

    /// @inheritdoc IRewarderAutoLoader
    function getSpecificRewarderRole(
        address rewarder
    ) public pure returns (bytes32) {
        return keccak256(abi.encode(Roles.SPECIFIC_REWARDER_OPERATOR, rewarder));
    }

    // ========================================
    // Internal Functions
    // ========================================

    /**
     * @notice Checks if an operator is authorized for a specific rewarder
     * @param rewarder Address of the rewarder to check authorization for
     * @param operator Address of the operator to check
     * @return True if operator has GLOBAL_REWARDER_OPERATOR or specific rewarder operator role
     */
    function _isAuthorized(address rewarder, address operator) private view returns (bool) {
        if (_hasRole(Roles.GLOBAL_REWARDER_OPERATOR, operator)) {
            return true;
        }
        bytes32 specificRole = keccak256(abi.encode(Roles.SPECIFIC_REWARDER_OPERATOR, rewarder));
        return _hasRole(specificRole, operator);
    }

    /**
     * @notice Checks if the rewarder's period has finished
     * @dev Tries periodFinish() first (time-based), falls back to periodFinishInBlock() (block-based)
     * @param rewarder Address of the rewarder to check
     * @return True if period has finished, false otherwise
     */
    function _checkPeriodFinished(
        address rewarder
    ) internal view returns (bool) {
        // Try time-based period finish first
        // slither-disable-next-line low-level-calls
        (bool success, bytes memory data) = rewarder.staticcall(abi.encodeWithSignature("periodFinish()"));
        if (success && data.length == 32) {
            uint256 periodFinish = abi.decode(data, (uint256));
            // slither-disable-next-line timestamp
            return block.timestamp >= periodFinish;
        }

        // If periodFinish() failed, try block-based
        // slither-disable-next-line low-level-calls
        (success, data) = rewarder.staticcall(abi.encodeWithSignature("periodFinishInBlock()"));
        if (success && data.length == 32) {
            uint256 periodFinishInBlock = abi.decode(data, (uint256));
            return block.number >= periodFinishInBlock;
        }

        // No period finish method found - rewarder is misconfigured
        revert AutopilotErrors.InvalidParam("noPeriodFinishMethod");
    }

    /**
     * @notice Internal function to check if a rewarder needs rewards
     * @param rewarder Address of the rewarder to check
     * @return True if rewarder needs rewards loaded
     */
    function _needsRewards(
        address rewarder
    ) internal view returns (bool) {
        RewarderConfig memory config = rewarderConfigs[rewarder];

        // Check if config exists and not expired
        // slither-disable-next-line timestamp
        if (config.rewardAmount == 0 || block.timestamp > config.validUntil) {
            return false;
        }

        // Check if period has finished
        if (!_checkPeriodFinished(rewarder)) {
            return false;
        }

        return true;
    }

    /**
     * @notice Internal function to queue rewards for a rewarder
     * @dev Validates config and balance before queuing
     * @param rewarder Address of the rewarder to load
     */
    function _queueRewards(
        address rewarder
    ) internal {
        // Load and validate config
        RewarderConfig memory config = rewarderConfigs[rewarder];

        if (config.rewardAmount == 0) revert RewarderNotEnabled();
        // slither-disable-next-line timestamp
        if (block.timestamp > config.validUntil) revert ConfigExpired();

        // Validate period has finished (since queueRewards is open to manual operation)
        if (!_checkPeriodFinished(rewarder)) revert AutopilotErrors.InvalidParam("periodNotFinished");

        // Get reward token from rewarder
        address rewardToken = IMainRewarder(rewarder).rewardToken();

        // Check bank balance
        uint256 balance = tokenBank[rewarder];
        if (balance < config.rewardAmount) revert AutopilotErrors.InsufficientBalance(rewardToken);

        // Deduct from bank
        tokenBank[rewarder] = balance - config.rewardAmount;

        // Emit event before external calls
        emit RewardsLoaded(rewarder, rewardToken, config.rewardAmount);

        // Approve and queue rewards
        IERC20(rewardToken).safeApprove(rewarder, config.rewardAmount);
        IMainRewarder(rewarder).queueNewRewards(config.rewardAmount);
    }
}
