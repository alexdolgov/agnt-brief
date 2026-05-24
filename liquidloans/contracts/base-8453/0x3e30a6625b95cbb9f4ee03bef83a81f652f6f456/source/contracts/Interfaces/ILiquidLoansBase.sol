// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "./IPriceFeed.sol";


interface ILiquidLoansBase {
    function priceFeed() external view returns (IPriceFeed);
}
// 2025 Liquid Loans