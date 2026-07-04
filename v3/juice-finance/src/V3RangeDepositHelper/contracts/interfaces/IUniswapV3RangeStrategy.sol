// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { ud } from "@prb/math/src/UD60x18.sol";
import "contracts/libraries/UniswapV3SwapLib.sol";
import "contracts/interfaces/IStrategyVault.sol";
import "contracts/libraries/math/UniswapV3PoolMath.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { LiquidityAmounts } from "@uniswap/v3-periphery/contracts/libraries/LiquidityAmounts.sol";
import { IUniswapV3Factory } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import { INonfungiblePositionManager } from "contracts/interfaces/INonFungiblePositionManager.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { IQuoterV2 } from "@uniswap/v3-periphery/contracts/interfaces/IQuoterV2.sol";
import { UniswapV3RangeLib } from "contracts/libraries/UniswapV3RangeLib.sol";

interface IUniswapV3RangeStrategy is IStrategyVault {
    function tickLower() external view returns (int24);
    function tickUpper() external view returns (int24);
    function asset() external view returns (address);
    function uniswapPool() external view returns (IUniswapV3Pool);
    function factory() external view returns (IUniswapV3Factory);
    function nonfungiblePositionManager() external view returns (INonfungiblePositionManager);
    function quoter() external view returns (IQuoterV2);
    function tokenId() external view returns (uint256);
    function getSwapProps() external view returns (UniswapV3SwapLib.Props memory);
}
