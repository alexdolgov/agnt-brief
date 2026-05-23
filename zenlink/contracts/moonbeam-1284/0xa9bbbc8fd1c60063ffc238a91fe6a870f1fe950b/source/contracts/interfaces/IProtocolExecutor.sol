// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Currency} from "../libraries/CurrencyLibrary.sol";

interface IProtocolExecutor {
    function swap(Currency tokenIn, uint256 amountIn, bytes memory data) external;
}
