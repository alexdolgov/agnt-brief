// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.23;

import {IBalancer} from "../../interfaces/IBalancer.sol";

interface IConverter {

    function invest(address adapter, address tokenIn, uint amountIn)
    external
    returns (uint shares);

    function redeem(address adapter, address tokenOut, uint amountIn)
    external
    returns (uint amountOut);

}
