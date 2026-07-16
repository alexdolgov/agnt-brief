// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {BracketVaultV2} from "./BracketVaultV2.sol";

contract NavUpdater is AccessControlUpgradeable, UUPSUpgradeable {
    struct Vault {
        bool isActive;
        uint16 maxBpsIncrease;
        uint16 maxBpsDecrease;
    }

    mapping(address => Vault) public vaults;

    error VaultAlreadyExists();
    error VaultNotActive();
    error VaultAlreadyActive();
    error InvalidBps();
    error MaxBpsIncreaseExceeded();
    error MaxBpsDecreaseExceeded();
    error ZeroAddress();

    modifier onlyUpdater(address _vault) {
        _checkRole(hashRole(_vault), _msgSender());
        _;
    }

    modifier onlyActiveVault(address _vault) {
        if (!vaults[_vault].isActive) revert VaultNotActive();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }
    
    function addVault(address _vault, uint16 _maxBpsIncrease, uint16 _maxBpsDecrease) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_vault == address(0)) revert ZeroAddress();

        Vault memory vault = vaults[_vault];

        if (vault.isActive || vault.maxBpsIncrease != 0 || vault.maxBpsDecrease != 0) revert VaultAlreadyExists();
        if (_maxBpsIncrease > 10000 || _maxBpsDecrease > 10000) revert InvalidBps();
        if (_maxBpsIncrease == 0 || _maxBpsDecrease == 0) revert InvalidBps();

        vaults[_vault] = Vault({
            isActive: true,
            maxBpsIncrease: _maxBpsIncrease,
            maxBpsDecrease: _maxBpsDecrease
        });
    }

    function inactivateVault(address _vault) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!vaults[_vault].isActive) revert VaultNotActive();
        vaults[_vault].isActive = false;
    }

    function activateVault(address _vault) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (vaults[_vault].isActive) revert VaultAlreadyActive();
        vaults[_vault].isActive = true;
    }
    function setVaultSettings(address _vault, uint16 _maxBpsIncrease, uint16 _maxBpsDecrease) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_maxBpsIncrease > 10000 || _maxBpsDecrease > 10000) revert InvalidBps();
        if (_maxBpsIncrease == 0 || _maxBpsDecrease == 0) revert InvalidBps();

        vaults[_vault].maxBpsIncrease = _maxBpsIncrease;
        vaults[_vault].maxBpsDecrease = _maxBpsDecrease;
    }


    function updateNav(address _vault, uint256 _nav, uint256 _managerPerformanceFee, uint256 _managerTvlFee, uint256 _brktTvlFee) public onlyUpdater(_vault) {
        Vault memory vault = vaults[_vault];

        if (!vault.isActive) revert VaultNotActive();

        uint16 epoch = BracketVaultV2(_vault).epoch() - 1;
        uint256 lastNav = BracketVaultV2(_vault).navs(epoch);

        (bool isIncrease, uint256 bps) = _getDiff(lastNav, _nav);

        if (isIncrease) {
            if (bps > vault.maxBpsIncrease) revert MaxBpsIncreaseExceeded();
        } else {
            if (bps > vault.maxBpsDecrease) revert MaxBpsDecreaseExceeded();
        }

        BracketVaultV2(_vault).updateNav(_nav, _managerPerformanceFee, _managerTvlFee, _brktTvlFee);
    }

    function hashRole(address _vault) public pure returns (bytes32) {
        return keccak256(abi.encode(_vault));
    }

    function _getDiff(uint256 _currentNav, uint256 _newNav) internal pure returns (bool, uint256) {
        if (_newNav > _currentNav) {
            uint256 bps = (_newNav - _currentNav) * 10000 / _currentNav;
            return (true, bps);
        } else {
            uint256 bps = (_currentNav - _newNav) * 10000 / _currentNav;
            return (false, bps);
        }
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}