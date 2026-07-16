// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {IKeeperRegistry} from "./interfaces/IKeeperRegistry.sol";
import {Ownable2Step, Ownable} from "openzeppelin-contracts/contracts/access/Ownable2Step.sol";

/// @title KeeperRegistry
/// @notice Global kill-switch for the keeper across all delegated sentry contracts.
///         The keeperRevoker can flip a single boolean to instantly deny the keeper
///         access to every SentryDelegation instance that references this registry.
/// @dev    Only one instance needs to be deployed. SentryDelegation stores its
///         address as an immutable and checks `isKeeperRevoked()` on every execute call.
contract KeeperRegistry is Ownable2Step, IKeeperRegistry {
    /// @dev Tracks approved keepers
    mapping(address => bool) public keepers;

    /// @dev TimeLock controller address for managing keeper approvals
    address public timeLockController;

    modifier onlyTimeLock() {
        if (msg.sender != timeLockController) revert NotTimeLockController();
        _;
    }

    constructor(address _keeperRevoker, address _timeLockController) Ownable(_keeperRevoker) {
        if (_timeLockController == address(0)) revert InvalidZeroValue();
        timeLockController = _timeLockController;
    }

    function updateTimeLockController(address _newTimeLock) external onlyTimeLock {
        if (_newTimeLock == address(0)) revert InvalidZeroValue();
        timeLockController = _newTimeLock;
        emit TimeLockControllerUpdated(_newTimeLock);
    }

    /// @inheritdoc IKeeperRegistry
    function approveKeepers(address[] calldata _keepers) external onlyTimeLock {
        for (uint256 i = 0; i < _keepers.length; i++) {
            if (_keepers[i] == address(0)) revert InvalidZeroValue();
            if (keepers[_keepers[i]]) revert KeeperAlreadyExists();

            keepers[_keepers[i]] = true;
        }
        emit KeepersApproved(_keepers);
    }

    /// @inheritdoc IKeeperRegistry
    function revokeKeepers(address[] calldata _keepers) external onlyOwner {
        for (uint256 i = 0; i < _keepers.length; i++) {
            if (_keepers[i] == address(0)) revert InvalidZeroValue();
            if (!keepers[_keepers[i]]) revert KeeperDoesNotExist();

            keepers[_keepers[i]] = false;
        }
        emit KeepersRevoked(_keepers);
    }

    /// @inheritdoc IKeeperRegistry
    function isKeeperRevoked(address _keeper) external view returns (bool) {
        return !keepers[_keeper];
    }
}
