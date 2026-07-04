// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {IVaultManager} from "../interfaces/IVaultManager.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";

/// @title HaBaseUpgradeable
/// @notice Abstract base for all upgradeable Harmonix contracts.
/// @dev Provides VaultManager wiring, role-based access control, and UUPS upgrade authorization.
abstract contract HaBaseUpgradeable is Initializable, UUPSUpgradeable {
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

    // --- Storage ---

    /// @notice The VaultManager used for role checks and system coordination.
    IVaultManager internal _vaultManager;

    /// @dev Reserved storage gap for future base-contract upgrades (50 slots total: 1 used + 49 gap).
    /// @custom:oz-renamed-from __gap
    uint256[49] private _gap;

    // --- View ---

    /// @notice Returns the VaultManager address used for role checks and system coordination.
    function vaultManager() public view virtual returns (address) {
        return address(_vaultManager);
    }

    // --- Modifiers ---

    modifier onlyRole(bytes32 role) {
        _onlyRole(role);
        _;
    }

    modifier onlyVaultManager() {
        _onlyVaultManager();
        _;
    }

    modifier isNotPaused() {
        _isNotPaused();
        _;
    }

    // ==================== INIT ==========================

    function __HaBase_init(address vaultManagerAddr) internal onlyInitializing {
        if (vaultManagerAddr == address(0)) revert ErrorsLib.ZeroAddress();
        _vaultManager = IVaultManager(vaultManagerAddr);
    }

    // =================== INTERNAL ==========================

    function _onlyVaultManager() private view {
        require(msg.sender == address(_vaultManager), ErrorsLib.Unauthorized());
    }

    function _onlyRole(bytes32 role) private view {
        require(_vaultManager.hasRole(role, msg.sender), ErrorsLib.Unauthorized());
    } 

    function _isNotPaused() private view {
        require(!_vaultManager.pauseStatus(address(this)), ErrorsLib.Paused(address(this)));
    }


    // --- UUPS ---

    function _authorizeUpgrade(address) internal override onlyRole(UPGRADER_ROLE) {}

    function _validateVault(address vault) internal view returns (address asset) {
        asset = _vaultManager.assetForVault(vault);
        require(asset != address(0), ErrorsLib.ZeroAddress());
    }
}
