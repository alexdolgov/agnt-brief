// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

import { IRouterEvent } from "./IRouterEvent.sol";
import { IRouterStruct } from "./IRouterStruct.sol";

interface IRouter is IRouterEvent, IRouterStruct {
    function uniswapV3ExactInput(IRouterStruct.UniswapV3ExactInputParams memory params)
        external
        returns (uint256 amountOut);
}
