// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {IDiscountModel} from "../interfaces/IDiscountModel.sol";
import {LogExpMath} from "../utils/LogExpMath.sol";
import {Math} from "openzeppelin-math/Math.sol";

contract ZeroCouponDiscountModel is IDiscountModel {
    using Math for uint256;
    uint256 private constant UNIT = 1e18;
    int256 private constant SECONDS_PER_YEAR = 365 days;

    /// @dev See IDiscountModel.description
    function description() external pure override returns (string memory) {
        return "Discount calculated using the zero coupon bond formula";
    }

    /// @dev See IDiscountModel.getDiscount.
    function getDiscount(
        uint256 initialImpliedAPY,
        uint256 timeLeft,
        uint256 futurePTValue
    ) external pure override returns (uint256) {
        int256 t = int256(timeLeft*UNIT) / SECONDS_PER_YEAR;
        int256 unitInt = int256(UNIT);
        int256 base = unitInt + int256(initialImpliedAPY);
        int256 ratePerSecond = LogExpMath.ln(base);
        int256 denominator = LogExpMath.exp((ratePerSecond * t) / unitInt);
        int256 presentValue = (int256(futurePTValue) * unitInt) / denominator;
        return futurePTValue - uint256(presentValue);
    }
}
