// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;

import { IUniswapV3Factory } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
// import {UniswapV3Factory} from '@uniswap/v3-core/contracts/UniswapV3Factory.sol';
// import {NonfungiblePositionManager} from '@uniswap/v3-periphery/contracts/NonfungiblePositionManager.sol';
// import {SwapRouter} from '@uniswap/v3-periphery/contracts/SwapRouter.sol';
import { ISwapRouter } from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {
    INonfungiblePositionManager
} from "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
// import {UniswapV3PoolDeployer} from '@uniswap/v3-core/contracts/UniswapV3PoolDeployer.sol';
import { PoolAddress } from "@uniswap/v3-periphery/contracts/libraries/PoolAddress.sol";

// import {OutputCodeHash} from '@uniswap/v3-core/contracts/test/OutputCodeHash.sol';
// import {UniswapV3Pool} from '@uniswap/v3-core/contracts/UniswapV3Pool.sol';

contract MockImports {
    constructor() {}
}
