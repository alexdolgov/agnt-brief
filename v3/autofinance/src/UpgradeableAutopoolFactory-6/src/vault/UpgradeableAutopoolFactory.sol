// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IUpgradeableAutopoolFactory, IAutopoolFactory } from "src/interfaces/vault/IUpgradeableAutopoolFactory.sol";

import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";
import { LibAdapter } from "src/libs/LibAdapter.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";

import { Ownable } from "openzeppelin-contracts/access/Ownable.sol";
import { AutopoolETH } from "src/vault/AutopoolETH.sol";
import { AutopoolMainRewarder } from "src/rewarders/AutopoolMainRewarder.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { ProxyAdmin } from "openzeppelin-contracts/proxy/transparent/ProxyAdmin.sol";
import { TransparentUpgradeableProxy } from "openzeppelin-contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

/// @title Deploys upgradeable Autopools with a generalized base asset
/// @dev Factory can only create an autopool with a single base asset, meaning that a new implementation cannot
/// have a different base asset than the previous implementation
/// @dev Creates a ProxyAdmin.sol contract on construction. This contract is meant to be the admin of all of the
/// proxies created through this contract. See OpenZeppelin Transparent proxy pattern for more information
/// @dev Implements IAutopoolFactory as this interface is used by the SystemRegistry
contract UpgradeableAutopoolFactory is SystemComponent, SecurityBase, IUpgradeableAutopoolFactory {
    using SafeERC20 for IERC20;

    /// =====================================================
    /// Errors
    /// =====================================================

    /// @notice Thrown when there is an invalid amount of base asset for autopool init
    error InvalidBaseAmount(uint256 amount);

    /// =====================================================
    /// Events
    /// =====================================================

    /// @notice Emitted when a new ProxyAdmin.sol contract is set
    event ProxyAdminSet(address oldAdmin, address newAdmin);

    /// @notice Emitted when a new logic / implementation contract is set
    event ImplementationSet(address oldImplementation, address newImplementation);

    /// @notice Emitted when a new default reward ratio is set
    event DefaultRewardRatioSet(uint256 oldRewardRatio, uint256 newRewardRatio);

    /// @notice Emitted when a new reward block duration is set
    event DefaultBlockDurationSet(uint256 oldBlockDuration, uint256 newBlockDuration);

    /// =====================================================
    /// State
    /// =====================================================

    /// @notice Base asset for autopool deployed from this factory
    address public immutable baseAsset;

    /// @notice Address of the proxy admin
    address public proxyAdmin;

    /// @notice Address of the implementation contract
    address public implementation;

    /// @notice Default reward ratio for rewarder set up
    uint256 public defaultRewardRatio;

    /// @notice Default block duration for rewarder set up
    uint256 public defaultRewardBlockDuration;

    /// =====================================================
    /// Functions - Constructor
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry,
        address _proxyAdminOwner,
        address _implementation,
        uint256 _defaultRewardRatio,
        uint256 _defaultRewardBlockDuration
    ) SystemComponent(_systemRegistry) SecurityBase(address(_systemRegistry.accessController())) {
        // Implementation first to get checks out of the way before base asset set up
        Errors.verifyNotZero(_implementation, "_implementation");
        _setImplementation(_implementation);

        // Set base asset. Factory will only be able to support new implementations with the same base
        address localBaseAsset = AutopoolETH(_implementation).asset();
        Errors.verifyNotZero(localBaseAsset, "localBaseAsset");

        // slither-disable-next-line missing-zero-check
        baseAsset = localBaseAsset;

        _setDefaultRewardRatio(_defaultRewardRatio);
        _setDefaultRewardBlockDuration(_defaultRewardBlockDuration);

        // Automatically sets msg.sender as owner. In this case, msg.sender will be this contract
        address localProxyAdmin = address(new ProxyAdmin());

        // Transfer ownership to desired proxy owner. Zero address check included in `transferOwnership` call
        Ownable(localProxyAdmin).transferOwnership(_proxyAdminOwner);

        _setProxyAdmin(localProxyAdmin);
    }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @inheritdoc IUpgradeableAutopoolFactory
    function setProxyAdmin(
        address _newProxyAdmin
    ) external hasRole(Roles.AUTO_POOL_FACTORY_MANAGER) {
        Errors.verifyNotZero(_newProxyAdmin, "_newProxyAdmin");
        _setProxyAdmin(_newProxyAdmin);
    }

    /// @inheritdoc IUpgradeableAutopoolFactory
    /// @dev Any implementations that need to be updated on already deployed proxies will have to be done separately,
    /// this functionality only updates the implementation contract used for future proxies
    function setImplementation(
        address _newImplementation
    ) external hasRole(Roles.AUTO_POOL_FACTORY_MANAGER) {
        Errors.verifyNotZero(_newImplementation, "_newImplementation");
        if (AutopoolETH(_newImplementation).asset() != baseAsset) revert Errors.InvalidConfiguration();
        _setImplementation(_newImplementation);
    }

    /// @inheritdoc IUpgradeableAutopoolFactory
    function setDefaultRewardRatio(
        uint256 _newRewardRatio
    ) external hasRole(Roles.AUTO_POOL_FACTORY_MANAGER) {
        _setDefaultRewardRatio(_newRewardRatio);
    }

    /// @inheritdoc IUpgradeableAutopoolFactory
    function setDefaultRewardBlockDuration(
        uint256 _newBlockDuration
    ) external hasRole(Roles.AUTO_POOL_FACTORY_MANAGER) {
        _setDefaultRewardBlockDuration(_newBlockDuration);
    }

    /// @inheritdoc IAutopoolFactory
    /// @dev Compatibility with SystemRegistry. No strategy template in this factory
    function addStrategyTemplate(
        address
    ) external pure {
        revert Errors.NotImplemented();
    }

    /// @inheritdoc IAutopoolFactory
    /// @dev Compatibility with SystemRegistry. No strategy template in this factory
    function removeStrategyTemplate(
        address
    ) external pure {
        revert Errors.NotImplemented();
    }

    /// @notice Returns the current implementation used to create Autopools
    /// @dev Exists due to compatibility requirements with SystemRegistry
    function template() external view returns (address) {
        return implementation;
    }

    /// @inheritdoc IAutopoolFactory
    /// @dev Only payable for compatibility with `IAutopoolFactory`, will not accept Eth
    function createVault(
        address,
        string memory symbolSuffix,
        string memory descPrefix,
        bytes32,
        bytes calldata extraData
    ) external payable hasRole(Roles.AUTO_POOL_FACTORY_VAULT_CREATOR) returns (address newVault) {
        // Force weth for eth
        if (msg.value > 0) revert Errors.MustBeZero();

        // Create new proxy with implementation as logic contract
        newVault = address(new TransparentUpgradeableProxy(implementation, proxyAdmin, ""));

        // Create new rewarder
        AutopoolMainRewarder rewarder = new AutopoolMainRewarder(
            systemRegistry,
            address(systemRegistry.toke()),
            defaultRewardRatio,
            defaultRewardBlockDuration,
            true, // Allowing extra rewards
            newVault
        );

        // Autopool init deposit
        uint256 baseInitAmount = AutopoolETH(implementation).BASE_ASSET_INIT_DEPOSIT();
        IERC20 baseAssetERC20 = IERC20(baseAsset);
        baseAssetERC20.safeTransferFrom(msg.sender, address(this), baseInitAmount);
        LibAdapter._approve(baseAssetERC20, newVault, baseInitAmount);

        // Init and rewarder set
        AutopoolETH(newVault).initialize(symbolSuffix, descPrefix, extraData);
        AutopoolETH(newVault).setRewarder(address(rewarder));

        // Add to autopool registry
        systemRegistry.autoPoolRegistry().addVault(newVault);
    }

    /// =====================================================
    /// Functions - Internal
    /// =====================================================

    function _setProxyAdmin(
        address _newProxyAdmin
    ) internal {
        if (_newProxyAdmin == proxyAdmin) revert Errors.ItemExists();

        emit ProxyAdminSet(proxyAdmin, _newProxyAdmin);
        proxyAdmin = _newProxyAdmin;
    }

    function _setImplementation(
        address _newImplementation
    ) internal {
        if (_newImplementation == implementation) revert Errors.ItemExists();
        if (address(systemRegistry) != SystemComponent(_newImplementation).getSystemRegistry()) {
            revert Errors.SystemMismatch(address(this), _newImplementation);
        }

        emit ImplementationSet(implementation, _newImplementation);
        implementation = _newImplementation;
    }

    /// @dev Zero valid
    function _setDefaultRewardRatio(
        uint256 _newRewardRatio
    ) internal {
        emit DefaultRewardRatioSet(defaultRewardRatio, _newRewardRatio);
        defaultRewardRatio = _newRewardRatio;
    }

    /// @dev Zero valid
    function _setDefaultRewardBlockDuration(
        uint256 _newBlockDuration
    ) internal {
        emit DefaultBlockDurationSet(defaultRewardBlockDuration, _newBlockDuration);
        defaultRewardBlockDuration = _newBlockDuration;
    }
}
