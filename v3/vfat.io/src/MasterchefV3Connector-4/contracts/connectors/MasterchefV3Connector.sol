// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "../interfaces/IFarmConnector.sol";
import "../interfaces/ILiquidityConnector.sol";
import "../interfaces/external/uniswap/INonfungiblePositionManager.sol";

interface IMasterchefV3 {
    function harvest(
        uint256 _tokenId,
        address _to
    ) external returns (uint256 reward);
    function withdraw(
        uint256 _tokenId,
        address _to
    ) external returns (uint256 reward);
    function pendingCake(uint256 _tokenId)
        external
        view
        returns (uint256 reward);
}

struct MasterchefV3ExtraData {
    uint256 tokenId;
    bool isIncrease;
    uint128 maxAmount0;
    uint128 maxAmount1;
}

contract MasterchefV3Connector is IFarmConnector, ILiquidityConnector {
    function deposit(
        address target,
        address token,
        bytes memory extraData
    ) external payable override {
        // MasterchefV3 deposits use onERC721Received
        MasterchefV3ExtraData memory data =
            abi.decode(extraData, (MasterchefV3ExtraData));

        if (!data.isIncrease) {
            // only deposit if its not a IncreaseLiquidity
            IERC721(token).safeTransferFrom(address(this), target, data.tokenId);
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
