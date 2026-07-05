// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

import "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IDiscountModel} from "../interfaces/IDiscountModel.sol";
import {LogExpMath} from "../utils/LogExpMath.sol";
import {Math} from "openzeppelin-math/Math.sol";

/**
 * @title ZeroCouponDiscountModel
 * @notice This model calculates the price of a zero coupon bond using the zero coupon bond formula with compounded returns
 */
contract ZeroCouponDiscountModel is IDiscountModel, OwnableUpgradeable {
    using Math for uint256;
    uint256 private constant UNIT = 1e18;
    int256 private constant SECONDS_PER_YEAR = 365 days;

    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {}

    /// @dev See IDiscountModel.description
    function description() external pure override returns (string memory) {
        return "Discount calculated using the zero coupon bond formula";
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
        int256 t = int256(timeLeft * UNIT) / SECONDS_PER_YEAR;
        int256 unitInt = int256(UNIT);
        int256 base = unitInt + int256(initialImpliedAPY);
        int256 ratePerSecond = LogExpMath.ln(base);
        int256 denominator = LogExpMath.exp((ratePerSecond * t) / unitInt);
        int256 presentValue = (int256(futurePTValue) * unitInt) / denominator;
        return uint256(presentValue);
    }
}
