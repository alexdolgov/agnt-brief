// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import { SingleAdminAccessControl } from "./libraries/SingleAdminAccessControl.sol";
import { IXGLDExchangeRate } from "./interfaces/IXGLDExchangeRate.sol";

/// @notice Shared XGLD/XAUT exchange rate used by BSC minting and redemption.
contract XGLDExchangeRate is IXGLDExchangeRate, SingleAdminAccessControl {
    bytes32 public constant RATE_UPDATER_ROLE = keccak256("RATE_UPDATER_ROLE");
    uint256 public constant RATE_PRECISION = 1_000_000;
    uint256 public constant BPS_DENOMINATOR = 10_000;
    uint256 public constant MAX_RATE_INCREASE_BPS = 5;

    uint256 public override exchangeRate;
    uint256 public lastUpdatedAt;

    event ExchangeRateUpdated(uint256 oldRate, uint256 newRate, uint256 updatedAt);

    error ZeroAddress();
    error RateMustBePositive();
    error RateMustIncrease();
    error RateIncreaseTooLarge(uint256 requestedIncrease, uint256 maxIncrease);

    constructor(uint256 initialRate, address admin) {
        if (initialRate == 0) revert RateMustBePositive();
        if (admin == address(0)) revert ZeroAddress();

        exchangeRate = initialRate;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    /// @notice Updates the active exchange rate. Caller must have RATE_UPDATER_ROLE.
    /// @dev Rate can only increase by at most 5 bps per update.
    function setExchangeRate(uint256 newRate) external onlyRole(RATE_UPDATER_ROLE) {
        if (newRate == 0) revert RateMustBePositive();

        uint256 oldRate = exchangeRate;
        if (newRate <= oldRate) revert RateMustIncrease();

        uint256 increase = newRate - oldRate;
        uint256 maxIncrease = oldRate * MAX_RATE_INCREASE_BPS / BPS_DENOMINATOR;
        if (increase > maxIncrease) revert RateIncreaseTooLarge(increase, maxIncrease);

        exchangeRate = newRate;
        lastUpdatedAt = block.timestamp;

        emit ExchangeRateUpdated(oldRate, newRate, block.timestamp);
    }
}
