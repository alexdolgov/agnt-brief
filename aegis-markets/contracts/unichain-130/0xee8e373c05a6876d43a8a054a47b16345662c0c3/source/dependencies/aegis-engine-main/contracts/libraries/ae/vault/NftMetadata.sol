// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { PoolId, PoolIdLibrary } from "@uniswap/v4-core/src/types/PoolId.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { IPositionManager } from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import { PositionInfo, PositionInfoLibrary } from "@uniswap/v4-periphery/src/libraries/PositionInfoLibrary.sol";

import { ILimitOrderManager } from "../../../interfaces/ILimitOrderManager.sol";
import { NftRef, NftKind } from "../../../types/AegisStructs.sol";

/// @notice View helpers for extracting canonical metadata from supported NFT managers.
library NftMetadata {
  using PoolIdLibrary for PoolKey;
  using PositionInfoLibrary for PositionInfo;

  struct PositionData {
    PoolId poolId;
    int24 tickLower;
    int24 tickUpper;
    uint128 liquidity;
  }

  /// @notice Load metadata for the supplied NFT reference.
  /// @return data Populated metadata snapshot.
  function load(IPositionManager positionManager, ILimitOrderManager loManager, NftRef memory ref)
    internal
    view
    returns (PositionData memory data)
  {
    if (ref.kind == NftKind.CL_V4) {
      return _loadCl(positionManager, ref.tokenId);
    }
    return _loadLo(loManager, ref.tokenId);
  }

  function _loadCl(IPositionManager positionManager, uint256 tokenId) private view returns (PositionData memory data) {
    (PoolKey memory poolKey, PositionInfo info) = positionManager.getPoolAndPositionInfo(tokenId);
    // NOTE: we don't have to check that poolId is non-zero as it's guaranteed by caller usage

    data.poolId = poolKey.toId();
    data.tickLower = info.tickLower();
    data.tickUpper = info.tickUpper();
    data.liquidity = positionManager.getPositionLiquidity(tokenId);
  }

  function _loadLo(ILimitOrderManager loManager, uint256 tokenId) private view returns (PositionData memory data) {
    (PoolId poolId,, int24 tickLower,, uint128 liquidity) = loManager.orders(tokenId);
    // NOTE: we don't have to check that poolId is non-zero as it's guaranteed by caller usage

    (,,, int24 tickSpacing,) = loManager.poolKeys(poolId);

    data.poolId = poolId;
    data.tickLower = tickLower;
    data.tickUpper = tickLower + tickSpacing;
    data.liquidity = liquidity;
  }
}
