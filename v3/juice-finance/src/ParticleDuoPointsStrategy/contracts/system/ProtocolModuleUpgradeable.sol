// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "./ProtocolGovernor.sol";
import { ContextUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import { Errors } from "../libraries/Errors.sol";
import "../libraries/traits/AddressCheckerTrait.sol";
import { UD60x18, ud } from "@prb/math/src/UD60x18.sol";
import "../interfaces/IGasTank.sol";
import "../interfaces/IAssetPriceProvider.sol";
import "../interfaces/IProtocolGovernor.sol";
import "../interfaces/IStrategySlippageModel.sol";
import "../libraries/GovernorLib.sol";
import "../libraries/Roles.sol";

/**
 * @title ProtocolModule
 * @dev Contract for shared protocol functionality
 */
abstract contract ProtocolModuleUpgradeable is ContextUpgradeable, AddressCheckerTrait {
    using Roles for IProtocolGovernor;

    /// @custom:storage-location erc7201:omega.storage.ProtocolModule
    struct ProtocolModuleStorage {
        IProtocolGovernor protocolGovernor;
    }

    // keccak256(abi.encode(uint256(keccak256("omega.storage.ProtocolModule")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ProtocolModuleStorageLocation =
        0xeacb5a1797df5224d1b2fea496b4e902c60fc8d8280ab46e733ce29bfdf7bf00;

    function _getProtocolModuleStorage() private pure returns (ProtocolModuleStorage storage $) {
        assembly {
            $.slot := ProtocolModuleStorageLocation
        }
    }

    function _protocolGovernor() internal view returns (IProtocolGovernor) {
        return _getProtocolModuleStorage().protocolGovernor;
    }

    /**
     * @dev Constructor that initializes the role store for this contract.
     * @param protocolGovernor_ The contract instance to use as the role store.
     */
    function __ProtocolModule_init(address protocolGovernor_) internal onlyInitializing {
        ProtocolModuleStorage storage $ = _getProtocolModuleStorage();
        $.protocolGovernor = IProtocolGovernor(protocolGovernor_);
    }

    /////////////////
    /// PERMISSIONS
    /////////////////

    modifier whenProtocolNotDeprecated() {
        require(!_protocolGovernor().isProtocolDeprecated(), "PROTOCOL_DEPRECATED");
        _;
    }

    /**
     * @dev Only allows the contract's own address to call the function.
     */
    modifier onlySelf() {
        if (msg.sender != address(this)) {
            revert Errors.UnauthorizedRole(msg.sender, "SELF");
        }
        _;
    }

    modifier onlyAccountManager() {
        if (!_protocolGovernor().isAccountManager(_msgSender())) {
            revert Errors.UnauthorizedRole(_msgSender(), "ACCOUNT_MANAGER");
        }
        _;
    }

    modifier onlyProtocolMaintainer() {
        _protocolGovernor()._validateRole(msg.sender, Roles.PROTOCOL_MAINTAINER, "PROTOCOL_MAINTAINER");
        _;
    }

    /**
     * @dev Only allows addresses that are the protocol admin to call the function.
     */
    modifier onlyOwner() {
        if (!_isOwner(_msgSender())) {
            revert Errors.UnauthorizedRole(_msgSender(), "PROTOCOL_ADMIN");
        }
        _;
    }

    function _isOwner(address account) internal view returns (bool) {
        if (_protocolGovernor().getOwner() != account) {
            return false;
        }
        return true;
    }

    /////////////////////
    // ADDRESS PROVIDER
    /////////////////////

    function getProtocolGovernor() external view virtual returns (address) {
        return address(_protocolGovernor());
    }

    /// @notice Returns fee collector
    function _getFeeCollector() internal view returns (address) {
        return _protocolGovernor().getAddress(GovernorLib.FEE_COLLECTOR);
    }

    /// @notice Returns asset price provider address.
    /// @dev This price provider MUST return the asset prices denominated in lend asset.
    /// @dev If lend asset is USDC, asset prices must be in USDC.
    function _getPriceProvider() internal view returns (IAssetPriceProvider) {
        return IAssetPriceProvider(_protocolGovernor().getAddress(GovernorLib.PRICE_PROVIDER));
    }

    function _getLendAsset() internal view returns (address) {
        return _protocolGovernor().getImmutableAddress(GovernorLib.LEND_ASSET);
    }

    function _getLendingPool() internal view returns (address) {
        return _protocolGovernor().getImmutableAddress(GovernorLib.LENDING_POOL);
    }

    // FEE CONFIGURATION
    //////////////////////

    function _lendingFee() internal view returns (UD60x18) {
        return _protocolGovernor().getFee(GovernorLib.LENDING_FEE);
    }

    function _flashLoanFee() internal view returns (UD60x18) {
        return _protocolGovernor().getFee(GovernorLib.FLASH_LOAN_FEE);
    }

    function _protocolLiquidationShare() internal view returns (UD60x18) {
        return _protocolGovernor().getFee(GovernorLib.PROTOCOL_LIQUIDATION_SHARE);
    }

    function _liquidatorShare() internal view returns (UD60x18) {
        return _protocolGovernor().getFee(GovernorLib.LIQUIDATOR_SHARE);
    }
}
