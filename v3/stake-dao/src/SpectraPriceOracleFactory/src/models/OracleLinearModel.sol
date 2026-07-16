// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import {IDiscountModel} from "../interfaces/IDiscountModel.sol";

contract LinearDiscountModel is IDiscountModel {
    uint256 private constant SECONDS_PER_YEAR = 365 days;

    /// @dev See IDiscountModel.description
    function description() external pure override returns (string memory) {
        return "Linear discount model: Discount decreases linearly over time.";
    }

    /// @dev See IDiscountModel.getDiscount.
    function getDiscount(
        uint256 initialImpliedAPY,
        uint256 timeLeft,
        uint256 /* futurePTValue */
    ) external pure override returns (uint256) {
        return (timeLeft * initialImpliedAPY) / SECONDS_PER_YEAR;
    }
}
