//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../interfaces/IFeeModel.sol";

import "./extensions/CurrencyExt.sol";
import "./extensions/PositionIdExt.sol";

uint256 constant WAD = 1e18;
uint256 constant RAY = 1e27;
uint256 constant ONE_HUNDRED_PERCENT = 1e4;

type Symbol is bytes16;

//  16B   -      1B      -   4B   -  1B   -  4B   -  6B
// symbol - money market - expiry - flags - empty - number
type PositionId is bytes32;

using {
    decode,
    getSymbol,
    getNumber,
    getMoneyMarket,
    getExpiry,
    isPerp,
    isExpired,
    withNumber,
    getFlags
} for PositionId global;

type OrderId is bytes32;

type MoneyMarket is uint8;
