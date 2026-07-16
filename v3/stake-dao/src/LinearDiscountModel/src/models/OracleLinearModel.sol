// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

import "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IDiscountModel} from "../interfaces/IDiscountModel.sol";

/**
 * @title LinearDiscountModel
 * @notice This model calculates the price of a linear discount bond using the linear discount formula.
 */
contract LinearDiscountModel is IDiscountModel, OwnableUpgradeable {
    uint256 private constant SECONDS_PER_YEAR = 365 days;
    uint256 private constant UNIT = 1e18;
    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {}

    /// @dev See IDiscountModel.description

    function description() external pure override returns (string memory) {
        return "Linear discount model: Discount decreases linearly over time.";
    }

    /// @dev See IDiscountModel.getPrice.
    function getPrice(
        uint256 initialImpliedAPY,
        uint256 futurePTValue,
        IDiscountModel.Term memory term
    ) external pure override returns (uint256) {
        uint256 timeLeft = term.expiryTimestamp - term.currentTimestamp;

        if (timeLeft == 0) {
            return futurePTValue;
        }

        uint256 duration = term.expiryTimestamp - term.startTimestamp;
        uint256 termAdjustedInitialImpliedAPY = (initialImpliedAPY * duration) / SECONDS_PER_YEAR;
        uint256 anchor = (futurePTValue * UNIT) / (UNIT + termAdjustedInitialImpliedAPY);
        uint256 drift = ((futurePTValue - anchor) * (term.currentTimestamp - term.startTimestamp)) / duration;
        uint256 price = anchor + drift;

        return price;
    }
}
