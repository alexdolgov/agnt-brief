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

interface IXShadow {
    function exit(
        uint256 amount
    ) external returns (uint256 exitedAmount);
}

interface IX33 {
    function deposit(
        uint256 assets,
        address receiver
    ) external returns (uint256 shares);
}

enum ShadowRewardBehavior {
    Exit, // Exit to Shadow (50% penalty)
    X33, // Deposit into X33
    Keep // Keep in xShadow on Sickle

}

struct ShadowClaimExtraData {
    // claimTokens need to be passed as extraData because xShadow is one of them
    // The default claim behavior in NftFarmStrategy is to transfer the reward
    // tokens to the user at the end, but xShadow is not transferable. This is a
    // workaround.
    address[] claimTokens;
    ShadowRewardBehavior behavior;
}

contract ShadowV3Connector is UniswapV3Connector {
    address constant SHADOW = 0x3333b97138D4b086720b5aE8A7844b1345a33333;
    address constant X_SHADOW = 0x5050bc082FF4A74Fb6B0B04385dEfdDB114b2424;
    address constant X33 = 0x3333111A391cC08fa51353E9195526A70b333333;

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
        bytes calldata extraData
    ) external payable override {
        ShadowClaimExtraData memory extra =
            abi.decode(extraData, (ShadowClaimExtraData));
        try IShadowNonfungiblePositionManager(address(position.nft)).getReward(
            position.tokenId, extra.claimTokens
        ) {
            uint256 rewards = IERC20(X_SHADOW).balanceOf(address(this));
            IERC20(X_SHADOW).approve(X33, rewards);
            if (rewards > 0) {
                if (extra.behavior == ShadowRewardBehavior.X33) {
                    IX33(X33).deposit(rewards, address(this));
                } else if (extra.behavior == ShadowRewardBehavior.Exit) {
                    IXShadow(X_SHADOW).exit(rewards);
                } // else keep in xShadow on Sickle
            }
        } catch { } // Avoid revert for non-gauge pools
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
