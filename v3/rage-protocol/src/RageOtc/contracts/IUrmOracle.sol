// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {UrmStructs} from "./UrmStructs.sol";

interface IUrmOracle {
    function getUrmTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    function getWethTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    function getHestiaTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    function getCircleTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    function getHestiaCircleTwapUsdcPrice(uint256 hestiaAmount, uint256 circleAmount, uint32 interval) external view returns (uint256);
    function getRageTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    function getPrices(uint32 interval) external view returns (UrmStructs.OraclePrices memory);
}
