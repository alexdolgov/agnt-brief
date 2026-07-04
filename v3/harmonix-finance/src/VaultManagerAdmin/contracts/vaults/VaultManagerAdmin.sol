// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {HaBaseUpgradeable} from "../base/HaBaseUpgradeable.sol";
import {IVaultManagerAdmin} from "../interfaces/IVaultManagerAdmin.sol";
import {AddrValueLib} from "../libraries/AddrValueLib.sol";
import {UintValueLib} from "../libraries/UintValueLib.sol";
import {BoolValueLib} from "../libraries/BoolValueLib.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";

/// @title VaultManagerAdmin
/// @notice Holds the address-config admin setters extracted from VaultManager.
/// @dev Each setter validates the input then writes to VaultManager storage via
///      the `applyAddrConfig` bridge, which is restricted to this contract by
///      VaultManager's `onlyAdminFacet` modifier.
contract VaultManagerAdmin is IVaultManagerAdmin, HaBaseUpgradeable {
    uint256 public constant MAX_MANAGEMENT_FEE_RATE = 0.1e18;
    uint256 public constant MAX_PERFORMANCE_FEE_RATE = 0.5e18;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address vaultManagerAddr) external initializer {
        __HaBase_init(vaultManagerAddr);
    }

    /// @notice Sets the AccessManager contract address. Timelocked.
    function setAccessManager(address addr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(addr != address(0), ErrorsLib.ZeroAddress());
        _vaultManager.applyAddrConfig(AddrValueLib.ACCESS_MANAGER_KEY, addr);
        emit SetAddress(addr, bytes("ACCESS_MANAGER"));
    }

    /// @notice Sets the ShareToken contract address. Timelocked.
    function setShareToken(address addr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(addr != address(0), ErrorsLib.ZeroAddress());
        _vaultManager.applyAddrConfig(AddrValueLib.SHARE_TOKEN_KEY, addr);
        emit SetAddress(addr, bytes("SHARE_TOKEN"));
    }

    /// @notice Sets the FundVault contract address. Timelocked.
    function setFundVault(address addr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(addr != address(0), ErrorsLib.ZeroAddress());
        _vaultManager.applyAddrConfig(AddrValueLib.FUND_VAULT_KEY, addr);
        emit SetAddress(addr, bytes("FUND_VAULT"));
    }

    /// @notice Sets the AsyncRequestManager contract address. Timelocked.
    function setRequestManager(address addr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(addr != address(0), ErrorsLib.ZeroAddress());
        _vaultManager.applyAddrConfig(AddrValueLib.REQUEST_MANAGER_KEY, addr);
        emit SetAddress(addr, bytes("REQUEST_MANAGER"));
    }

    /// @notice Sets the PriceFeed contract address. Timelocked.
    function setPriceFeed(address addr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(addr != address(0), ErrorsLib.ZeroAddress());
        _vaultManager.applyAddrConfig(AddrValueLib.PRICE_FEED_KEY, addr);
        emit SetAddress(addr, bytes("PRICE_FEED"));
    }

    /// @notice Sets the FundNavFeed contract address. Timelocked.
    function setFundNav(address addr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(addr != address(0), ErrorsLib.ZeroAddress());
        _vaultManager.applyAddrConfig(AddrValueLib.FUND_NAV_KEY, addr);
        emit SetAddress(addr, bytes("FUND_NAV"));
    }

    /// @notice Sets the NavAggregateModel contract address. Timelocked.
    function setNavAggregateModel(address addr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(addr != address(0), ErrorsLib.ZeroAddress());
        _vaultManager.applyAddrConfig(AddrValueLib.NAV_AGGREGATE_MODEL_KEY, addr);
        emit SetAddress(addr, bytes("NAV_AGGREGATE_MODEL"));
    }

    /// @notice Sets the PPS deviation threshold. Timelocked.
    function setDeviationPps(uint256 value) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        _vaultManager.applyUintConfig(UintValueLib.DEVIATION_PPS_KEY, value);
        emit SetUint(value, bytes("DEVIATION_PPS"));
    }

    /// @notice Sets the maximum NAV staleness window (seconds). Timelocked.
    function setMaxNavStaleness(uint256 value) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        _vaultManager.applyUintConfig(UintValueLib.MAX_NAV_STALENESS_KEY, value);
        emit SetUint(value, bytes("MAX_NAV_STALENESS"));
    }

    /// @notice Pauses all guarded functions on a contract. Immediate (no timelock).
    function pauseContract(address haContract) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _vaultManager.applyBoolConfig(BoolValueLib._pauseStatusKey(haContract), true);
        emit SetBool(true, bytes("PAUSE_STATUS"), haContract, bytes4(0));
    }

    /// @notice Unpauses a previously paused contract. Timelocked.
    function unpauseContract(address haContract) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        _vaultManager.applyBoolConfig(BoolValueLib._pauseStatusKey(haContract), false);
        emit SetBool(false, bytes("PAUSE_STATUS"), haContract, bytes4(0));
    }

    /**
     * @notice Disables a specific function selector on a contract. Immediate (no timelock).
     * @dev When disabled, the target function reverts with `FunctionDisabled` on every call.
     *      More granular than `pauseContract` — affects one function without touching others.
     * @param haContract Address of the HaBaseUpgradeable contract.
     * @param selector   4-byte function selector to disable.
     */
    function disableFunction(address haContract, bytes4 selector) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _vaultManager.applyBoolConfig(BoolValueLib._functionDisabledKey(haContract, selector), true);
        emit SetBool(true, bytes("FUNCTION_DISABLED"), haContract, selector);
    }

    /**
     * @notice Re-enables a previously disabled function selector. Timelocked.
     * @param haContract Address of the HaBaseUpgradeable contract.
     * @param selector   4-byte function selector to re-enable.
     */
    function enableFunction(address haContract, bytes4 selector) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        _vaultManager.applyBoolConfig(BoolValueLib._functionDisabledKey(haContract, selector), false);
        emit SetBool(false, bytes("FUNCTION_DISABLED"), haContract, selector);
    }

    /// @notice Sets the performance fee rate (WAD scale). Must be <= MAX_PERFORMANCE_FEE_RATE. Timelocked.
    function setPerformanceFeeRate(uint256 rate) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(rate <= MAX_PERFORMANCE_FEE_RATE, ErrorsLib.FeeRateTooHigh());
        _vaultManager.applyUintConfig(UintValueLib.PERFORMANCE_FEE_RATE_KEY, rate);
        emit SetUint(rate, bytes("PERFORMANCE_FEE_RATE"));
    }

    /// @notice Sets the management fee rate (WAD scale). Must be <= MAX_MANAGEMENT_FEE_RATE. Timelocked.
    function setManagementFeeRate(uint256 rate) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(rate <= MAX_MANAGEMENT_FEE_RATE, ErrorsLib.FeeRateTooHigh());
        _vaultManager.applyUintConfig(UintValueLib.MANAGEMENT_FEE_RATE_KEY, rate);
        emit SetUint(rate, bytes("MANAGEMENT_FEE_RATE"));
    }

    /// @notice Sets the fee receiver address. Timelocked.
    function setFeeReceiver(address receiver) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        require(receiver != address(0), ErrorsLib.ZeroAddress());
        _vaultManager.applyAddrConfig(AddrValueLib.FEE_RECEIVER_KEY, receiver);
        emit SetAddress(receiver, bytes("FEE_RECEIVER"));
    }

    /// @notice Registers a new AssetVault. Timelocked.
    function registerVault(address vault) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        _vaultManager.applyRegisterVault(vault);
        emit SetAddress(vault, bytes("REGISTER_VAULT"));
    }

    /// @notice Removes a registered AssetVault. Timelocked.
    function removeVault(address vault) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _timelocked();
        _vaultManager.applyRemoveVault(vault);
        emit SetAddress(vault, bytes("REMOVE_VAULT"));
    }

    /// @notice Set a deposit cap for AssetVault
    function setVaultCap(address vault, uint256 cap) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _vaultManager.applyUintConfig(UintValueLib._vaultCapKey(vault), cap);
        emit SetUint(cap, abi.encodePacked("VAULT_CAP_", vault));
    }
}
