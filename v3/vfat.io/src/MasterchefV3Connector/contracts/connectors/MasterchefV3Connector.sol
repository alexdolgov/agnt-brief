// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import "@openzeppelin/contracts/interfaces/IERC721Enumerable.sol";
import "../interfaces/IFarmConnector.sol";
import "../interfaces/ILiquidityConnector.sol";
import "../interfaces/external/uniswap/INonfungiblePositionManager.sol";
import "../interfaces/external/IMasterchefV3.sol";

struct MasterchefV3ExtraData {
    uint256 tokenId;
    bool isIncrease;
    uint128 maxAmount0;
    uint128 maxAmount1;
}

contract MasterchefV3Connector is IFarmConnector, ILiquidityConnector {
    error SickleNftBalanceError(); //0x50a182e0

    function deposit(
        address target,
        address token,
        bytes memory extraData
    ) external payable override {
        // MasterchefV3 deposits use onERC721Received
        MasterchefV3ExtraData memory data =
            abi.decode(extraData, (MasterchefV3ExtraData));

        if (!data.isIncrease) {
            if (IERC721(token).balanceOf(address(this)) != 1) {
                revert SickleNftBalanceError();
            }
            uint256 tokenId =
                IERC721Enumerable(token).tokenOfOwnerByIndex(address(this), 0);

            IERC721(token)
                // only deposit if its not a IncreaseLiquidity
                .safeTransferFrom(address(this), target, tokenId);
        }
    }

    function withdraw(
        address target,
        uint256, // amount
        bytes memory extraData
    ) external override {
        MasterchefV3ExtraData memory data =
            abi.decode(extraData, (MasterchefV3ExtraData));
        IMasterchefV3(target).withdraw(data.tokenId, address(this));
    }

    function claim(address target, bytes memory extraData) external override {
        MasterchefV3ExtraData memory data =
            abi.decode(extraData, (MasterchefV3ExtraData));
        IMasterchefV3(target).harvest(data.tokenId, address(this));
        if (data.maxAmount0 > 0 || data.maxAmount1 > 0) {
            INonfungiblePositionManager.CollectParams memory params =
            INonfungiblePositionManager.CollectParams({
                tokenId: data.tokenId,
                recipient: address(this),
                amount0Max: data.maxAmount0,
                amount1Max: data.maxAmount1
            });
            INonfungiblePositionManager(target).collect(params);
        }
    }

    function addLiquidity(AddLiquidityData memory addLiquidityData)
        external
        payable
        override
    {
        MasterchefV3ExtraData memory extraData =
            abi.decode(addLiquidityData.extraData, (MasterchefV3ExtraData));

        INonfungiblePositionManager.IncreaseLiquidityParams memory params =
        INonfungiblePositionManager.IncreaseLiquidityParams({
            tokenId: extraData.tokenId,
            amount0Desired: addLiquidityData.desiredAmounts[0],
            amount1Desired: addLiquidityData.desiredAmounts[1],
            amount0Min: addLiquidityData.minAmounts[0],
            amount1Min: addLiquidityData.minAmounts[1],
            deadline: block.timestamp + 1
        });

        INonfungiblePositionManager(addLiquidityData.router).increaseLiquidity(
            params
        );
    }

    function removeLiquidity(RemoveLiquidityData memory)
        external
        pure
        override
    {
        revert("MasterchefV3 does not support removing liquidity");
    }

    function swapExactTokensForTokens(SwapData memory)
        external
        payable
        override
    {
        revert("MasterchefV3 does not support swapping");
    }
}
