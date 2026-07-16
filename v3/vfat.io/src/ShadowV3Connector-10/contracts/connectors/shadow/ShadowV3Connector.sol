// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IShadowNonfungiblePositionManager } from
    "contracts/interfaces/external/shadow/IShadowNonfungiblePositionManager.sol";
import { UniswapV3Connector } from
    "contracts/connectors/velodrome/SlipstreamNftConnector.sol";
import {
    NftAddLiquidity,
    NftRemoveLiquidity
} from "contracts/interfaces/INftLiquidityConnector.sol";
import {
    INftFarmConnector,
    Farm,
    NftPosition
} from "contracts/interfaces/INftFarmConnector.sol";
import { INonfungiblePositionManager } from
    "contracts/interfaces/external/uniswap/INonfungiblePositionManager.sol";

struct ShadowAddLiquidityExtraData {
    int24 tickSpacing;
}

contract ShadowV3Connector is UniswapV3Connector {
    // Shadow rewards are in xShadow, which is not transferable.
    // When claiming, there are three options:
    // 1. Exit to Shadow (50% penalty)
    // 2. Deposit into X33 (no penalty)
    // 3. Keep in xShadow on Sickle
    // This function supports all three options.
    function claim(
        NftPosition calldata position,
        address[] memory, // rewardTokens not used here
        uint128 amount0Max,
        uint128 amount1Max,
        bytes calldata
    ) external payable override {
        if (amount0Max != 0 || amount1Max != 0) {
            IShadowNonfungiblePositionManager.CollectParams memory params =
            IShadowNonfungiblePositionManager.CollectParams({
                tokenId: position.tokenId,
                recipient: address(this),
                amount0Max: amount0Max,
                amount1Max: amount1Max
            });
            IShadowNonfungiblePositionManager(address(position.nft)).collect(
                params
            );
        }
    }

    function ticks(
        address nftManager,
        uint256 tokenId
    ) external view override returns (int24 tickLower, int24 tickUpper) {
        (,,, tickLower, tickUpper,,,,,) =
            IShadowNonfungiblePositionManager(nftManager).positions(tokenId);
    }

    function _mint(
        NftAddLiquidity memory addLiquidityParams
    ) internal override {
        ShadowAddLiquidityExtraData memory extra = abi.decode(
            addLiquidityParams.extraData, (ShadowAddLiquidityExtraData)
        );

        IShadowNonfungiblePositionManager.MintParams memory params =
        IShadowNonfungiblePositionManager.MintParams({
            token0: addLiquidityParams.pool.token0,
            token1: addLiquidityParams.pool.token1,
            tickSpacing: extra.tickSpacing,
            tickLower: addLiquidityParams.tickLower,
            tickUpper: addLiquidityParams.tickUpper,
            amount0Desired: addLiquidityParams.amount0Desired,
            amount1Desired: addLiquidityParams.amount1Desired,
            amount0Min: addLiquidityParams.amount0Min,
            amount1Min: addLiquidityParams.amount1Min,
            recipient: address(this),
            deadline: block.timestamp + 1
        });

        IShadowNonfungiblePositionManager(address(addLiquidityParams.nft)).mint(
            params
        );
    }

    function _get_current_liquidity(
        NftRemoveLiquidity memory removeLiquidityParams
    ) internal view override returns (uint128 currentLiquidity) {
        (,,,,, currentLiquidity,,,,) = IShadowNonfungiblePositionManager(
            address(removeLiquidityParams.nft)
        ).positions(removeLiquidityParams.tokenId);
    }
}
