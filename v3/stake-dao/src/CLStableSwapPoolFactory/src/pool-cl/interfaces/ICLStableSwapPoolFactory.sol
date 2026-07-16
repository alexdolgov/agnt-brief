// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {PoolKey} from "infinity-core/src/types/PoolKey.sol";

interface ICLStableSwapPoolFactory {
    struct CreatePoolParam {
        string name;
        string symbol;
        address[] coins;
        uint256 A;
        uint256 fee;
        uint256 offpegFeeMultiplier;
        uint256 maExpTime;
        uint256 implementationIdx;
        uint8[] assetTypes;
        bytes4[] methodIds;
        address[] oracles;
    }

    struct AddLiquidityParam {
        uint256 amount0;
        uint256 amount1;
        uint256 minMintAmount;
        address receiver;
    }

    function createPool(CreatePoolParam calldata param) external returns (PoolKey memory);

    function createPoolAndAddLiquidity(
        CreatePoolParam calldata createPoolParam,
        AddLiquidityParam calldata addLiquidityParam
    ) external returns (PoolKey memory, uint256);
}
