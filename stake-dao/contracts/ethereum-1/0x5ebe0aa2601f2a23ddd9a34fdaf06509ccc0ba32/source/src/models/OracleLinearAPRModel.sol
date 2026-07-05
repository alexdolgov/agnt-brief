// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

import "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IDiscountModel} from "../interfaces/IDiscountModel.sol";

/**
 * @title LinearAPRModel
 * @notice This model calculates the price of a zero-coupon bond using zero-coupon bond formula with non-compounded returns
 */
contract LinearAPRModel is IDiscountModel, OwnableUpgradeable {
    uint256 private constant SECONDS_PER_YEAR = 365 days;
    uint256 private constant UNIT = 1e18;

    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {}

    /// @dev See IDiscountModel.description

    function description() external pure override returns (string memory) {
        return "Linear APR model: APR decreases linearly over time.";
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

        uint256 nonCompoundedReturn = (initialImpliedAPY * timeLeft) / SECONDS_PER_YEAR;
        uint256 price = (futurePTValue * UNIT) / (UNIT + nonCompoundedReturn);
        return price;
    }
}
