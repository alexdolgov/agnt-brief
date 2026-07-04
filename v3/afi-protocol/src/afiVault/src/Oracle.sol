// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// @title Oracle - Manual exchange rate oracle with rate change limits
contract Oracle is Initializable, UUPSUpgradeable, AccessControlUpgradeable {
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant UPDATER_ROLE = keccak256("UPDATER_ROLE");
    uint256 private constant MAX_RATE_CHANGE_BPS = 100; // 1%
    uint256 private constant MAX_BPS = 10000;

    uint256 public currentExchangeRate;
    uint256 public lastUpdateTime;
    uint256 public updateCooldown;
    uint256[50] private __gap;

    event ExchangeRateUpdated(uint256 newRate, uint256 timestamp);
    event UpdateCooldownSet(uint256 oldCooldown, uint256 newCooldown);

    error InvalidAddress();
    error InvalidRate();
    error UpdateTooFrequent();
    error RateChangeTooLarge();
    error ValueUnchanged();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the Oracle contract
    /// @param _admin Admin address
    /// @param _defaultAdmin Default admin address (upgrade rights)
    /// @param _updater Updater address (can update exchange rate)
    /// @param _updateCooldown Minimum time between rate updates
    function initialize(address _admin, address _defaultAdmin, address _updater, uint256 _updateCooldown) public initializer {
        if (_admin == address(0) || _defaultAdmin == address(0) || _updater == address(0)) revert InvalidAddress();

        __AccessControl_init();
        __UUPSUpgradeable_init();

        updateCooldown = _updateCooldown;
        _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
        _grantRole(ADMIN_ROLE, _admin);
        _grantRole(UPDATER_ROLE, _updater);
    }

    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /// @notice Updates the exchange rate with validation checks
    /// @dev Rate changes are limited to 1% per update and subject to cooldown period
    /// @param newRate New exchange rate to set in 1e6 precision
    /// @return The updated exchange rate
    function updateExchangeRate(uint256 newRate) external onlyRole(UPDATER_ROLE) returns (uint256) {
        if (block.timestamp < lastUpdateTime + updateCooldown) revert UpdateTooFrequent();
        if (newRate == 0) revert InvalidRate();

        uint256 _currentExchangeRate = currentExchangeRate;
        if (_currentExchangeRate > 0) {
            uint256 maxChange = (_currentExchangeRate * MAX_RATE_CHANGE_BPS) / MAX_BPS;
            uint256 rateDiff =
                newRate > _currentExchangeRate ? newRate - _currentExchangeRate : _currentExchangeRate - newRate;
            if (rateDiff > maxChange) revert RateChangeTooLarge();
        }

        currentExchangeRate = newRate;
        lastUpdateTime = block.timestamp;
        emit ExchangeRateUpdated(newRate, block.timestamp);
        return newRate;
    }

    /// @notice Fetches the current exchange rate
    /// @return Current exchange rate in 1e6 precision
    function fetchExchangeRate() external view returns (uint256) {
        uint256 _currentExchangeRate = currentExchangeRate;
        if (_currentExchangeRate == 0) revert InvalidRate();
        return _currentExchangeRate;
    }

    /// @notice Sets the cooldown period for rate updates
    /// @param _updateCooldown New cooldown period in seconds
    function setUpdateCooldown(uint256 _updateCooldown) external onlyRole(ADMIN_ROLE) {
        if (_updateCooldown == updateCooldown) revert ValueUnchanged();
        uint256 oldCooldown = updateCooldown;
        updateCooldown = _updateCooldown;
        emit UpdateCooldownSet(oldCooldown, _updateCooldown);
    }
}
