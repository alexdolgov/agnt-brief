//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20Metadata as IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "../interfaces/IFeeModel.sol";

import "./extensions/CurrencyExt.sol";
import "./extensions/PositionIdExt.sol";

uint256 constant WAD = 1e18;
uint256 constant RAY = 1e27;

type Symbol is bytes16;

//  16B   -      1B      -   4B   -  5B   -  6B
// symbol - money market - expiry - empty - number
type PositionId is bytes32;

using {decode, getSymbol, getNumber, getMoneyMarket, getExpiry, isPerp, isExpired, withNumber} for PositionId global;

type OrderId is bytes32;

type Dex is uint8;

type MoneyMarket is uint8;

type FlashLoanProvider is uint8;
