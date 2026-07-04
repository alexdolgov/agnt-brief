// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IFarmConnector.sol";
import "../interfaces/ILiquidityConnector.sol";
import "../interfaces/external/aerodrome/ICLGauge.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import { IERC721Enumerable } from
    "@openzeppelin/contracts/interfaces/IERC721Enumerable.sol";

struct SlipstreamGaugeDepositExtraData {
    uint256 tokenId;
    bool isIncrease;
}

struct SlipstreamGaugeClaimExtraData {
    uint256 tokenId;
}

struct SlipstreamGaugeWithdrawExtraData {
    uint256 tokenId;
    bool isDecrease;
    uint128 liquidity;
}

contract SlipstreamGaugeConnector is IFarmConnector, ILiquidityConnector {
    error SickleNftBalanceError(); //0x50a182e0
    error Unsupported();

    function deposit(
        address target,
        address token,
        bytes memory extraData
    ) external payable override {
        SlipstreamGaugeDepositExtraData memory data =
            abi.decode(extraData, (SlipstreamGaugeDepositExtraData));
        if (!data.isIncrease) {
            if (IERC721(token).balanceOf(address(this)) != 1) {
                revert SickleNftBalanceError();
            }
            uint256 tokenId =
                IERC721Enumerable(token).tokenOfOwnerByIndex(address(this), 0);

            IERC721(token).approve(target, tokenId);
            ICLGauge(target).deposit(tokenId);
        }
    }

    function withdraw(
        address target,
        uint256, // amount
        bytes memory extraData
    ) external override {
        SlipstreamGaugeWithdrawExtraData memory data =
            abi.decode(extraData, (SlipstreamGaugeWithdrawExtraData));
        if (!data.isDecrease) {
            ICLGauge(target).withdraw(data.tokenId);
        }
    }

    function claim(address target, bytes memory extraData) external override {
        SlipstreamGaugeClaimExtraData memory data =
            abi.decode(extraData, (SlipstreamGaugeClaimExtraData));
        ICLGauge(target).getReward(data.tokenId);
    }

    function addLiquidity(AddLiquidityData memory addLiquidityData)
        external
        payable
        override
    {
        SlipstreamGaugeDepositExtraData memory data = abi.decode(
            addLiquidityData.extraData, (SlipstreamGaugeDepositExtraData)
        );
        ICLGauge(addLiquidityData.router).increaseStakedLiquidity(
            data.tokenId,
            addLiquidityData.desiredAmounts[0],
            addLiquidityData.desiredAmounts[1],
            addLiquidityData.minAmounts[0],
            addLiquidityData.minAmounts[1],
            block.timestamp
        );
    }

    function removeLiquidity(RemoveLiquidityData memory removeLiquidityData)
        external
        override
    {
        SlipstreamGaugeWithdrawExtraData memory data = abi.decode(
            removeLiquidityData.extraData, (SlipstreamGaugeWithdrawExtraData)
        );
        ICLGauge(removeLiquidityData.router).decreaseStakedLiquidity(
            data.tokenId,
            data.liquidity,
            removeLiquidityData.minAmountsOut[0],
            removeLiquidityData.minAmountsOut[1],
            block.timestamp
        );
    }

    function swapExactTokensForTokens(SwapData memory)
        external
        payable
        override
    {
        revert Unsupported();
    }
}
