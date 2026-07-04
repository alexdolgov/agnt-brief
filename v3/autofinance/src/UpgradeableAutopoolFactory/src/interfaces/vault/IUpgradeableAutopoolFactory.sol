// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IAutopoolFactory } from "src/interfaces/vault/IAutopoolFactory.sol";

/// @dev Implements IAutopoolFactory for compatibility with system registry
interface IUpgradeableAutopoolFactory is IAutopoolFactory {
    /// @notice Sets a new ProxyAdmin.sol contract. Admin contract controls admin proxy functionalities
    /// @dev See OpenZeppelin transparent proxy pattern for more information
    /// @dev Must implement role based access control
    /// @param _newProxyAdmin Address of new ProxyAdmin.sol contract
    function setProxyAdmin(
        address _newProxyAdmin
    ) external;

    /// @notice Sets a new implementation / logic contract
    /// @dev Note that this does not update any already existing proxies to the new implementation, done separately
    /// @dev Must implement role based access control
    /// @param _newImplementation Address of the new autopool implementation / logic contract
    function setImplementation(
        address _newImplementation
    ) external;

    /// @notice Updates default reward ratio
    /// @dev Must implement role based access control
    /// @param _newRewardRatio New reward ratio for rewarder set up
    function setDefaultRewardRatio(
        uint256 _newRewardRatio
    ) external;

    /// @notice Updates default block duration for rewards
    /// @dev Must implement role based access control
    /// @param _newBlockDuration New reward block duration for rewarder set up
    function setDefaultRewardBlockDuration(
        uint256 _newBlockDuration
    ) external;
}
