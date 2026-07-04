// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface ISwapRoute {
    function sell(uint32 routeId) external returns (uint256 amountOut);
    /*
    function sell(uint32 routeId, uint256 amountIn) external;

    function buy(
        uint32 routeId,
        uint256 amountOut
    ) external view returns (uint256 amountIn);
*/
    function previewSell(
        uint32 routeId,
        uint256 amountIn
    ) external view returns (uint256 amountOut);

    function approvalNeeded(
        uint32 routeId
    ) external view returns (IERC20 token, address who, uint256 amount);
}
