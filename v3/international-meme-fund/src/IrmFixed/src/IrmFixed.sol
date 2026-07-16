// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {IIrm} from "./interfaces/IIrm.sol";
import {MarketParams, Market} from "./interfaces/IIMFMoneyMarkets.sol";

contract IrmFixed is IIrm {
    /// @dev base interest rate per second, as expected by the 
    /// momey markets
    uint256 public baseInterestRatePerSecond;

    constructor(uint256 _baseInterestRatePerSecond) {
        baseInterestRatePerSecond = _baseInterestRatePerSecond;
    }

    function borrowRateView(MarketParams memory, Market memory) public view returns (uint256) {
        return baseInterestRatePerSecond;
    }

    function borrowRate(MarketParams memory marketParams, Market memory market) external returns (uint256) {
        return borrowRateView(marketParams, market);
    }
}
