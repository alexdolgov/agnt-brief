// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/**
 * @title Veil Limits Tracking v1.0.0
 * @author Veil Cash
 * @dev Fixed period approach - limits reset at midnight UTC daily
 * @dev Global limit is the total amount of ETH that can be deposited by all users in a day
 * @dev Address limit is the total amount of ETH that can be deposited by a single user in a day
 */
contract VeilLimits is Initializable, OwnableUpgradeable {
    /// @dev Custom errors
    error GlobalDailyLimitExceeded();
    error AddressDailyLimitExceeded();
    error OnlyVeilWalletEntry();

    /// @dev Events
    event GlobalLimitUpdated(uint256 newLimit);
    event AddressLimitUpdated(uint256 newLimit);
    event DepositRecorded(address indexed depositor, uint256 amount, uint256 globalTotal, uint256 addressTotal);
    event LimitsReset(uint256 timestamp);

    /// @dev State variables
    uint256 public globalDailyLimit; // Max ETH per day across all users (0 = no limit)
    uint256 public addressDailyLimit; // Max ETH per day per address (0 = no limit)
    address public veilWalletEntry;

    /// @dev Daily tracking
    uint256 public currentDay; // Current day (block.timestamp / 1 days)
    uint256 public globalUsedToday; // Total ETH used today globally

    /// @dev Per-address daily usage: address => day => amount used
    mapping(address => mapping(uint256 => uint256)) public addressUsedPerDay;

    /// @dev Storage gap for future upgrades
    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(uint256 _globalDailyLimit, uint256 _addressDailyLimit) public initializer {
        __Ownable_init(msg.sender);
        globalDailyLimit = _globalDailyLimit;
        addressDailyLimit = _addressDailyLimit;
        currentDay = block.timestamp / 1 days;
        globalUsedToday = 0;
    }

    /// @dev Set the VeilWalletEntry contract address
    function setVeilWalletEntry(address _veilWalletEntry) external onlyOwner {
        veilWalletEntry = _veilWalletEntry;
    }

    /// @dev Modifier to restrict access to VeilWalletEntry contract
    modifier onlyVeilWalletEntry() {
        if (msg.sender != veilWalletEntry) revert OnlyVeilWalletEntry();
        _;
    }

    /// @dev Main function called by VeilWalletEntry to check and update limits
    function checkAndUpdateLimits(address depositor, uint256 amount) external onlyVeilWalletEntry {
        _updateDayIfNeeded();

        // Check global limit if enabled (> 0)
        if (globalDailyLimit > 0) {
            if (globalUsedToday + amount > globalDailyLimit) {
                revert GlobalDailyLimitExceeded();
            }
        }

        // Check per-address limit if enabled (> 0)
        if (addressDailyLimit > 0) {
            uint256 addressUsedToday = addressUsedPerDay[depositor][currentDay];
            if (addressUsedToday + amount > addressDailyLimit) {
                revert AddressDailyLimitExceeded();
            }
        }

        // Update usage
        globalUsedToday += amount;
        addressUsedPerDay[depositor][currentDay] += amount;

        // Emit deposit recorded event
        emit DepositRecorded(depositor, amount, globalUsedToday, addressUsedPerDay[depositor][currentDay]);
    }

    /// @dev Internal function to check if we need to reset for a new day
    function _updateDayIfNeeded() internal {
        uint256 today = block.timestamp / 1 days;
        if (today > currentDay) {
            currentDay = today;
            globalUsedToday = 0;
            emit LimitsReset(block.timestamp);
        }
    }

    /// @dev Get current usage for an address
    function getCurrentUsage(address depositor) external view returns (uint256 globalUsed, uint256 addressUsed) {
        uint256 today = block.timestamp / 1 days;

        if (today > currentDay) {
            // New day, so usage is 0
            globalUsed = 0;
            addressUsed = 0;
        } else {
            globalUsed = globalUsedToday;
            addressUsed = addressUsedPerDay[depositor][currentDay];
        }
    }

    /// @dev Get remaining limits for an address
    function getRemainingLimits(address depositor)
        external
        view
        returns (uint256 globalRemaining, uint256 addressRemaining)
    {
        uint256 today = block.timestamp / 1 days;

        if (globalDailyLimit > 0) {
            if (today > currentDay) {
                // New day, full limit available
                globalRemaining = globalDailyLimit;
            } else {
                globalRemaining = globalUsedToday >= globalDailyLimit ? 0 : globalDailyLimit - globalUsedToday;
            }
        } else {
            globalRemaining = type(uint256).max; // No limit
        }

        if (addressDailyLimit > 0) {
            if (today > currentDay) {
                // New day, full limit available
                addressRemaining = addressDailyLimit;
            } else {
                uint256 addressUsedToday = addressUsedPerDay[depositor][currentDay];
                addressRemaining = addressUsedToday >= addressDailyLimit ? 0 : addressDailyLimit - addressUsedToday;
            }
        } else {
            addressRemaining = type(uint256).max; // No limit
        }
    }

    /// @dev Update global daily limit (0 = no limit)
    function updateGlobalDailyLimit(uint256 _globalDailyLimit) external onlyOwner {
        globalDailyLimit = _globalDailyLimit;
        emit GlobalLimitUpdated(_globalDailyLimit);
    }

    /// @dev Update per-address daily limit (0 = no limit)
    function updateAddressDailyLimit(uint256 _addressDailyLimit) external onlyOwner {
        addressDailyLimit = _addressDailyLimit;
        emit AddressLimitUpdated(_addressDailyLimit);
    }

    /// @dev Update both limits at once
    function updateLimits(uint256 _globalDailyLimit, uint256 _addressDailyLimit) external onlyOwner {
        globalDailyLimit = _globalDailyLimit;
        addressDailyLimit = _addressDailyLimit;
        emit GlobalLimitUpdated(_globalDailyLimit);
        emit AddressLimitUpdated(_addressDailyLimit);
    }

    /// @dev Emergency reset current day limits
    function resetCurrentDayLimits() external onlyOwner {
        _updateDayIfNeeded();
        globalUsedToday = 0;
        emit LimitsReset(block.timestamp);
    }

    /// @dev Emergency reset limits for a specific address for current day
    function resetAddressLimits(address depositor) external onlyOwner {
        _updateDayIfNeeded();
        addressUsedPerDay[depositor][currentDay] = 0;
    }

    /// @dev Get the current day number
    function getCurrentDay() external view returns (uint256) {
        return block.timestamp / 1 days;
    }

    /// @dev Get address usage for a specific day
    function getAddressUsageForDay(address depositor, uint256 day) external view returns (uint256) {
        return addressUsedPerDay[depositor][day];
    }
}
