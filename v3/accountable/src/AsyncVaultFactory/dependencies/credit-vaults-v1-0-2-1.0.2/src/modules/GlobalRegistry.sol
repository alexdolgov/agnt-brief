// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {ZeroAddress, Unauthorized} from "../constants/Errors.sol";

import {IGlobalRegistry} from "../interfaces/IGlobalRegistry.sol";
import {GlobalRegistryStorage} from "./storage/GlobalRegistryStorage.sol";

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

/// @title GlobalRegistry
/// @notice A contract that manages protocol configuration parameters
/// @custom:security-contact security@accountable.capital
contract GlobalRegistry is UUPSUpgradeable, Ownable2StepUpgradeable, GlobalRegistryStorage {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address owner_) external initializer {
        __Ownable2Step_init();
        __Ownable_init(owner_);
        __UUPSUpgradeable_init();
    }

    /// @inheritdoc IGlobalRegistry
    function setSecurityAdmin(address securityAdmin_) external onlyOwner {
        if (securityAdmin_ == address(0)) revert ZeroAddress();
        securityAdmin = securityAdmin_;

        emit SecurityAdminSet(securityAdmin_);
    }

    /// @inheritdoc IGlobalRegistry
    function setOperationsAdmin(address operationsAdmin_) external onlyOwner {
        if (operationsAdmin_ == address(0)) revert ZeroAddress();
        operationsAdmin = operationsAdmin_;

        emit OperationsAdminSet(operationsAdmin_);
    }

    /// @inheritdoc IGlobalRegistry
    function setTreasury(address treasury_) external onlyOwner {
        if (treasury_ == address(0)) revert ZeroAddress();
        treasury = treasury_;

        emit TreasurySet(treasury_);
    }

    /// @inheritdoc IGlobalRegistry
    function setVaultFactory(address vaultFactory_) external onlyOwner {
        if (vaultFactory_ == address(0)) revert ZeroAddress();
        vaultFactory = vaultFactory_;

        emit VaultFactorySet(vaultFactory_);
    }

    /// @inheritdoc IGlobalRegistry
    function setRewardsFactory(address rewardsFactory_) external onlyOwner {
        if (rewardsFactory_ == address(0)) revert ZeroAddress();
        rewardsFactory = rewardsFactory_;

        emit RewardsFactorySet(rewardsFactory_);
    }

    /// @dev Prevents renouncement of ownership
    function renounceOwnership() public virtual override onlyOwner {
        revert Unauthorized();
    }

    /// @dev Authorizes the upgrade of the implementation
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
