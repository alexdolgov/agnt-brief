// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {
    UniswapV3Connector
} from "contracts/connectors/uniswap/UniswapV3Connector.sol";
import { NftPosition } from "contracts/structs/NftFarmStrategyStructs.sol";
import { NftRemoveLiquidity } from "contracts/structs/NftLiquidityStructs.sol";

interface IPangolinPositionManager {
    function positionReward(
        uint256 tokenId
    )
        external
        view
        returns (
            uint192 rewardPerLiquidityInsideLastX64,
            uint32 rewardLastUpdated,
            uint32 rewardLastCollected,
            uint256 rewardOwed
        );

    function claimReward(
        uint256 tokenId,
        address recipient
    ) external payable;
}

contract PangolinV3Connector is UniswapV3Connector {
    function claim(
        NftPosition calldata position,
        address[] memory, // rewardTokens
        uint128 amount0Max,
        uint128 amount1Max,
        bytes calldata // extraData
    ) external virtual override {
        if (amount0Max > 0 || amount1Max > 0) {
            _collect(position.nft, position.tokenId, amount0Max, amount1Max);
        }
        (,,, uint256 rewardOwed) = IPangolinPositionManager(
                address(position.nft)
            ).positionReward(position.tokenId);
        if (rewardOwed > 0) {
            IPangolinPositionManager(address(position.nft))
                .claimReward(position.tokenId, msg.sender);
        }
    }
}
