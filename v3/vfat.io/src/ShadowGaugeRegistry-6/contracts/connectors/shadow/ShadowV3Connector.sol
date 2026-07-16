// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IShadowNonfungiblePositionManager } from
    "contracts/interfaces/external/shadow/IShadowNonfungiblePositionManager.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
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

interface IShadowERC20 {
    function exit(
        uint256 _amount
    ) external returns (uint256 _exitedAmount);
}

contract ShadowV3Connector is UniswapV3Connector {
    address constant SHADOW = 0x3333b97138D4b086720b5aE8A7844b1345a33333;
    address constant X_SHADOW = 0x5050bc082FF4A74Fb6B0B04385dEfdDB114b2424;

    function claim(
        NftPosition calldata position,
        address[] memory rewardTokens,
        uint128 amount0Max,
        uint128 amount1Max,
        bytes calldata // extraData
    ) external payable override {
        if (rewardTokens[0] == SHADOW) {
            rewardTokens[0] = X_SHADOW;
        }
        IShadowNonfungiblePositionManager(address(position.nft)).getReward(
            position.tokenId, rewardTokens
        );
        if (amount0Max > 0 || amount1Max > 0) {
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
        rewardTokens[0] = SHADOW;
        address sickleAddress = INonfungiblePositionManager(
            address(position.nft)
        ).ownerOf(position.tokenId);
        uint256 rewards = IERC20(X_SHADOW).balanceOf(sickleAddress);
        if (rewards > 0) {
            IShadowERC20(X_SHADOW).exit(rewards);
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
