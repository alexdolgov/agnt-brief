// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IFeeManager {

    function swapDepositFeeForBUSD(address token, bool isLPToken) external;
    function convertDepositFeesToBUSD(address token, bool isLPToken, bool isLiquidation) external;
}