// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { SwapParams } from "contracts/structs/LiquidityStructs.sol";
import {
    NftAddLiquidity,
    NftRemoveLiquidity
} from "contracts/structs/NftLiquidityStructs.sol";

interface INftLiquidityConnector {
    function addLiquidity(
        NftAddLiquidity memory addLiquidityParams
    ) external payable;

    function removeLiquidity(
        NftRemoveLiquidity memory removeLiquidityParams
    ) external;

    function swapExactTokensForTokens(
        SwapParams memory swap
    ) external payable;

    function fee(
        address pool
    ) external view returns (uint24);

    function tickSpacing(
        address pool
    ) external view returns (uint24);

    function tick(
        address pool
    ) external view returns (int24);

    function ticks(
        address nftManager,
        uint256 tokenId
    ) external view returns (int24 tickLower, int24 tickUpper);
}
