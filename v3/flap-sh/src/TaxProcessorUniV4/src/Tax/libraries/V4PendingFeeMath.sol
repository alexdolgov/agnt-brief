// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {CLPositionInfo, CLPositionInfoLibrary} from "infinity-periphery/pool-cl/libraries/CLPositionInfoLibrary.sol";
import {CLPosition} from "infinity-core/src/pool-cl/libraries/CLPosition.sol";
import {FixedPoint128} from "uni-v4-core/libraries/FixedPoint128.sol";
import {FullMath} from "uni-v4-core/libraries/FullMath.sol";
import {ICLPoolManager} from "infinity-core/src/pool-cl/interfaces/ICLPoolManager.sol";
import {ICLPositionManager} from "infinity-periphery/pool-cl/interfaces/ICLPositionManager.sol";
import {IPoolManager} from "uni-v4-core/interfaces/IPoolManager.sol";
import {IPositionManager} from "uni-v4-periphery/interfaces/IPositionManager.sol";
import {PoolId as PCSPoolId, PoolIdLibrary as PCSPoolIdLibrary} from "infinity-core/src/types/PoolId.sol";
import {PoolId, PoolIdLibrary} from "uni-v4-core/types/PoolId.sol";
import {PoolKey as PCSPoolKey} from "infinity-core/src/types/PoolKey.sol";
import {PoolKey as UniV4PoolKey} from "uni-v4-core/types/PoolKey.sol";
import {PositionInfo} from "uni-v4-periphery/libraries/PositionInfoLibrary.sol";
import {StateLibrary} from "uni-v4-core/libraries/StateLibrary.sol";
import {Tick} from "infinity-core/src/pool-cl/libraries/Tick.sol";

library V4PendingFeeMath {
    using StateLibrary for IPoolManager;
    using PoolIdLibrary for UniV4PoolKey;
    using PCSPoolIdLibrary for PCSPoolKey;
    using CLPositionInfoLibrary for CLPositionInfo;

    bytes4 internal constant UNI_V4_POOL_MANAGER_SELECTOR = bytes4(keccak256("poolManager()"));
    bytes4 internal constant PCS_INFINITY_POOL_MANAGER_SELECTOR = bytes4(keccak256("clPoolManager()"));
    bytes4 internal constant POSITION_MANAGER_SELECTOR = bytes4(keccak256("positionManager()"));

    // ─────────────────────────────────────────────────────────────────────────
    // Public entry points
    // ─────────────────────────────────────────────────────────────────────────

    /// @notice Query pending Uni V4 LP fees plus an estimated quote-denominated total value.
    /// @dev Expects the caller to supply the resolved poolManager / positionManager addresses
    ///      and the two LP NFT ids corresponding to the lower/upper locked positions.
    ///      The estimate marks the pending meme-token side to quote using the current pool
    ///      spot price (`sqrtPriceX96`) without attempting a swap quote.
    /// @param token The protocol token address
    /// @param quoteToken The quote token address (WETH-normalized by the caller)
    /// @param tokenId0 LP NFT id for position 0 (quote-heavy / lower range), 0 if absent
    /// @param tokenId1 LP NFT id for position 1 (token-heavy / upper range), 0 if absent
    /// @param poolManager Uni V4 pool manager / singleton address
    /// @param positionManager Uni V4 position manager address
    /// @return totalQuoteAmount Raw pending quote-token fees across both positions
    /// @return totalTokenAmount Raw pending meme-token fees across both positions
    /// @return estimatedQuoteValue Quote-token mark-to-market of both sides using current spot price
    function getPendingFeesWithQuoteValueUni(
        address token,
        address quoteToken,
        uint256 tokenId0,
        uint256 tokenId1,
        address poolManager,
        address positionManager
    ) internal view returns (uint256 totalQuoteAmount, uint256 totalTokenAmount, uint256 estimatedQuoteValue) {
        return _getPendingFeesWithQuoteValueUni(token, quoteToken, tokenId0, tokenId1, poolManager, positionManager);
    }

    /// @notice Query pending PCS Infinity CL LP fees plus an estimated quote-denominated total value.
    /// @dev Same semantics as `getPendingFeesWithQuoteValueUni`, but uses PCS Infinity CL pool
    ///      manager / position manager pairs and CL-specific fee-growth reads.
    /// @param token The protocol token address
    /// @param quoteToken The quote token address (WETH-normalized by the caller)
    /// @param tokenId0 LP NFT id for position 0 (quote-heavy / lower range), 0 if absent
    /// @param tokenId1 LP NFT id for position 1 (token-heavy / upper range), 0 if absent
    /// @param poolManager PCS Infinity CL pool manager address
    /// @param positionManager PCS Infinity CL position manager address
    /// @return totalQuoteAmount Raw pending quote-token fees across both positions
    /// @return totalTokenAmount Raw pending meme-token fees across both positions
    /// @return estimatedQuoteValue Quote-token mark-to-market of both sides using current spot price
    function getPendingFeesWithQuoteValuePCS(
        address token,
        address quoteToken,
        uint256 tokenId0,
        uint256 tokenId1,
        address poolManager,
        address positionManager
    ) internal view returns (uint256 totalQuoteAmount, uint256 totalTokenAmount, uint256 estimatedQuoteValue) {
        return _getPendingFeesWithQuoteValuePCS(token, quoteToken, tokenId0, tokenId1, poolManager, positionManager);
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Internal aggregation helpers
    // ─────────────────────────────────────────────────────────────────────────

    /// @dev Aggregate pending fees across both Uni V4 LP positions and attach a quote estimate.
    function _getPendingFeesWithQuoteValueUni(
        address token,
        address quoteToken,
        uint256 tokenId0,
        uint256 tokenId1,
        address poolManager,
        address positionManager
    ) private view returns (uint256 totalQuoteAmount, uint256 totalTokenAmount, uint256 estimatedQuoteValue) {
        bool tokenIsC0 = token < quoteToken;
        uint160 sqrtPriceX96;

        (uint256 quote0, uint256 token0, uint160 sqrtPrice0) =
            _getPendingFeesForUniTokenId(tokenId0, tokenIsC0, poolManager, positionManager);
        totalQuoteAmount += quote0;
        totalTokenAmount += token0;
        sqrtPriceX96 = sqrtPrice0;

        (uint256 quote1, uint256 token1, uint160 sqrtPrice1) =
            _getPendingFeesForUniTokenId(tokenId1, tokenIsC0, poolManager, positionManager);
        totalQuoteAmount += quote1;
        totalTokenAmount += token1;
        if (sqrtPriceX96 == 0) sqrtPriceX96 = sqrtPrice1;

        return _finalizeQuoteValue(totalQuoteAmount, totalTokenAmount, sqrtPriceX96, tokenIsC0);
    }

    /// @dev Aggregate pending fees across both PCS Infinity CL LP positions and attach a quote estimate.
    function _getPendingFeesWithQuoteValuePCS(
        address token,
        address quoteToken,
        uint256 tokenId0,
        uint256 tokenId1,
        address poolManager,
        address positionManager
    ) private view returns (uint256 totalQuoteAmount, uint256 totalTokenAmount, uint256 estimatedQuoteValue) {
        bool tokenIsC0 = token < quoteToken;
        uint160 sqrtPriceX96;

        (uint256 quote0, uint256 token0, uint160 sqrtPrice0) =
            _getPendingFeesForPCSTokenId(tokenId0, tokenIsC0, poolManager, positionManager);
        totalQuoteAmount += quote0;
        totalTokenAmount += token0;
        sqrtPriceX96 = sqrtPrice0;

        (uint256 quote1, uint256 token1, uint160 sqrtPrice1) =
            _getPendingFeesForPCSTokenId(tokenId1, tokenIsC0, poolManager, positionManager);
        totalQuoteAmount += quote1;
        totalTokenAmount += token1;
        if (sqrtPriceX96 == 0) sqrtPriceX96 = sqrtPrice1;

        return _finalizeQuoteValue(totalQuoteAmount, totalTokenAmount, sqrtPriceX96, tokenIsC0);
    }

    /// @dev Resolve one Uni V4 tokenId into `(quoteAmount, tokenAmount, sqrtPriceX96)`.
    ///      `tokenIsC0` determines whether amount0 or amount1 corresponds to the meme token.
    function _getPendingFeesForUniTokenId(uint256 tokenId, bool tokenIsC0, address poolManager, address positionManager)
        private
        view
        returns (uint256 quoteAmount, uint256 tokenAmount, uint160 sqrtPriceX96)
    {
        if (tokenId == 0) return (0, 0, 0);

        uint256 amount0;
        uint256 amount1;
        (amount0, amount1, sqrtPriceX96) = _calcPendingFeesUni(poolManager, positionManager, tokenId);
        if (tokenIsC0) {
            tokenAmount = amount0;
            quoteAmount = amount1;
        } else {
            quoteAmount = amount0;
            tokenAmount = amount1;
        }
    }

    /// @dev Resolve one PCS Infinity CL tokenId into `(quoteAmount, tokenAmount, sqrtPriceX96)`.
    ///      `tokenIsC0` determines whether amount0 or amount1 corresponds to the meme token.
    function _getPendingFeesForPCSTokenId(uint256 tokenId, bool tokenIsC0, address poolManager, address positionManager)
        private
        view
        returns (uint256 quoteAmount, uint256 tokenAmount, uint160 sqrtPriceX96)
    {
        if (tokenId == 0) return (0, 0, 0);

        uint256 amount0;
        uint256 amount1;
        (amount0, amount1, sqrtPriceX96) = _calcPendingFeesPCS(poolManager, positionManager, tokenId);
        if (tokenIsC0) {
            tokenAmount = amount0;
            quoteAmount = amount1;
        } else {
            quoteAmount = amount0;
            tokenAmount = amount1;
        }
    }

    /// @dev Finalize `(quote, token)` pending fees into `(quote, token, estimatedQuoteValue)`.
    ///      All values are kept in raw token units. In particular, `estimatedQuoteValue` is
    ///      denominated in the quote token's native decimals (e.g. 1e6 for USDC, 1e18 for WETH).
    ///      If there is no pending meme-token side or no valid current spot price, the estimate
    ///      degenerates to the raw pending quote-token amount. Overflow saturates to `uint256.max`.
    function _finalizeQuoteValue(
        uint256 totalQuoteAmount,
        uint256 totalTokenAmount,
        uint160 sqrtPriceX96,
        bool tokenIsC0
    ) private pure returns (uint256 quoteAmount, uint256 tokenAmount, uint256 estimatedQuoteValue) {
        quoteAmount = totalQuoteAmount;
        tokenAmount = totalTokenAmount;
        estimatedQuoteValue = totalQuoteAmount;
        if (totalTokenAmount == 0 || sqrtPriceX96 == 0) return (quoteAmount, tokenAmount, estimatedQuoteValue);

        uint256 estimatedTokenQuoteValue = _toQuoteValue(totalTokenAmount, sqrtPriceX96, tokenIsC0);
        if (
            estimatedTokenQuoteValue == type(uint256).max
                || estimatedQuoteValue > type(uint256).max - estimatedTokenQuoteValue
        ) {
            estimatedQuoteValue = type(uint256).max;
        } else {
            estimatedQuoteValue += estimatedTokenQuoteValue;
        }
    }

    /// @dev Best-effort staticcall helper for locker contracts that expose manager addresses.
    ///      Returns `(false, address(0))` if the target is zero, the call reverts, or the return
    ///      payload is shorter than 32 bytes.
    function _tryGetAddress(address target, bytes4 selector) private view returns (bool ok, address value) {
        if (target == address(0)) return (false, address(0));
        bytes memory data;
        (ok, data) = target.staticcall(abi.encodeWithSelector(selector));
        if (!ok || data.length < 32) return (false, address(0));
        value = abi.decode(data, (address));
    }

    /// @dev Convert a raw meme amount to its quote equivalent at the current spot price.
    ///      `sqrtPriceX96` is the pool's raw c1/c0 sqrt price, so token-decimal differences are
    ///      already encoded in the price itself; no extra decimal normalization is needed here.
    ///      Because the conversion uses integer math on a discretized spot price, the result is a
    ///      floor-rounded raw quote amount and may be off by up to a few least-significant quote units.
    ///
    ///      memeIsToken0 = true  (meme=token0, quote=token1):
    ///        quoteEquiv = memeAmt × sqrtP² / 2¹⁹²
    ///                   = mulDiv(mulDiv(memeAmt, sqrtP, 2⁹⁶), sqrtP, 2⁹⁶)
    ///
    ///      memeIsToken0 = false (meme=token1, quote=token0):
    ///        quoteEquiv = memeAmt × 2¹⁹² / sqrtP²
    ///                   = mulDiv(mulDiv(memeAmt, 2⁹⁶, sqrtP), 2⁹⁶, sqrtP)
    ///
    ///      Never reverts. If the result would overflow uint256, returns type(uint256).max.
    function _toQuoteValue(uint256 memeAmount, uint160 sqrtPriceX96, bool memeIsToken0)
        internal
        pure
        returns (uint256)
    {
        if (memeAmount == 0 || sqrtPriceX96 == 0) return 0;

        uint256 q96 = uint256(1) << 96;

        if (memeIsToken0) {
            uint256 step1Token0 = FullMath.mulDiv(memeAmount, sqrtPriceX96, q96);
            if (sqrtPriceX96 >= q96) {
                uint256 safeMax = (type(uint256).max / sqrtPriceX96) << 96;
                if (step1Token0 > safeMax) return type(uint256).max;
            }
            return FullMath.mulDiv(step1Token0, sqrtPriceX96, q96);
        }

        uint256 step1Token1 = FullMath.mulDiv(memeAmount, q96, sqrtPriceX96);
        if (sqrtPriceX96 < q96) {
            uint256 safeMax = (type(uint256).max >> 96) * sqrtPriceX96;
            if (step1Token1 > safeMax) return type(uint256).max;
        }
        return FullMath.mulDiv(step1Token1, q96, sqrtPriceX96);
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Uni V4 pending fee calculation
    // ─────────────────────────────────────────────────────────────────────────

    /// @dev Calculate pending fees for a Uni V4 LP position and also surface the current spot price.
    ///      Reads the position's pool/tick metadata from the position manager, then queries current
    ///      fee-growth-inside from the pool manager and computes pending fees from fee-growth deltas.
    function _calcPendingFeesUni(address poolManager, address positionManager, uint256 tokenId)
        private
        view
        returns (uint256 amount0, uint256 amount1, uint160 sqrtPriceX96)
    {
        PoolId poolId;
        int24 tickLower;
        int24 tickUpper;
        bytes32 positionKey;
        {
            (UniV4PoolKey memory poolKey, PositionInfo posInfo) =
                IPositionManager(positionManager).getPoolAndPositionInfo(tokenId);
            poolId = poolKey.toId();
            tickLower = posInfo.tickLower();
            tickUpper = posInfo.tickUpper();
            positionKey = keccak256(abi.encodePacked(positionManager, tickLower, tickUpper, bytes32(tokenId)));
            (sqrtPriceX96,,,) = IPoolManager(poolManager).getSlot0(poolId);
        }

        (uint128 liquidity, uint256 fg0Last, uint256 fg1Last) = _readUniPositionState(poolManager, poolId, positionKey);
        if (liquidity == 0) return (0, 0, sqrtPriceX96);

        (uint256 fg0, uint256 fg1) = _readUniFeeGrowthInside(poolManager, poolId, tickLower, tickUpper);

        unchecked {
            amount0 = FullMath.mulDiv(fg0 - fg0Last, liquidity, FixedPoint128.Q128);
            amount1 = FullMath.mulDiv(fg1 - fg1Last, liquidity, FixedPoint128.Q128);
        }
    }

    // ─────────────────────────────────────────────────────────────────────────
    // PCS Infinity CL pending fee calculation
    // ─────────────────────────────────────────────────────────────────────────

    /// @dev Calculate pending fees for a PCS Infinity CL LP position and also surface the current spot price.
    ///      Uses PCS CL position metadata plus CLPoolManager's native getters for current fee growth.
    function _calcPendingFeesPCS(address poolManager, address positionManager, uint256 tokenId)
        private
        view
        returns (uint256 amount0, uint256 amount1, uint160 sqrtPriceX96)
    {
        PCSPoolId poolId;
        int24 tickLower;
        int24 tickUpper;
        {
            (PCSPoolKey memory poolKey, CLPositionInfo posInfo) =
                ICLPositionManager(positionManager).getPoolAndPositionInfo(tokenId);
            tickLower = posInfo.tickLower();
            tickUpper = posInfo.tickUpper();
            poolId = poolKey.toId();
            (sqrtPriceX96,,,) = ICLPoolManager(poolManager).getSlot0(poolId);
        }

        CLPosition.Info memory pos =
            ICLPoolManager(poolManager).getPosition(poolId, positionManager, tickLower, tickUpper, bytes32(tokenId));
        uint128 liquidity = pos.liquidity;
        if (liquidity == 0) return (0, 0, sqrtPriceX96);

        (uint256 fg0, uint256 fg1) = _readFeeGrowthInsidePCS(poolManager, poolId, tickLower, tickUpper);

        unchecked {
            amount0 = FullMath.mulDiv(fg0 - pos.feeGrowthInside0LastX128, liquidity, FixedPoint128.Q128);
            amount1 = FullMath.mulDiv(fg1 - pos.feeGrowthInside1LastX128, liquidity, FixedPoint128.Q128);
        }
    }

    /// @dev Thin wrapper around Uni V4 `getPositionInfo` to keep the parent calculation readable.
    function _readUniPositionState(address poolManager, PoolId poolId, bytes32 positionKey)
        private
        view
        returns (uint128 liquidity, uint256 fg0Last, uint256 fg1Last)
    {
        return IPoolManager(poolManager).getPositionInfo(poolId, positionKey);
    }

    function _readUniFeeGrowthInside(address poolManager, PoolId poolId, int24 tickLower, int24 tickUpper)
        private
        view
        returns (uint256 fg0, uint256 fg1)
    {
        return IPoolManager(poolManager).getFeeGrowthInside(poolId, tickLower, tickUpper);
    }

    /// @dev Compute current fee-growth-inside for a PCS Infinity CL position range.
    ///      Mirrors the usual Uniswap V3/V4 inside-fee accounting rules but uses PCS-native
    ///      getters for `feeGrowthGlobals`, `tick` info and current slot0 tick.
    function _readFeeGrowthInsidePCS(address poolManager, PCSPoolId poolId, int24 tickLower, int24 tickUpper)
        private
        view
        returns (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128)
    {
        ICLPoolManager clMgr = ICLPoolManager(poolManager);

        (uint256 feeGrowthGlobal0, uint256 feeGrowthGlobal1) = clMgr.getFeeGrowthGlobals(poolId);
        Tick.Info memory lowerTick = clMgr.getPoolTickInfo(poolId, tickLower);
        Tick.Info memory upperTick = clMgr.getPoolTickInfo(poolId, tickUpper);
        (, int24 tickCurrent,,) = clMgr.getSlot0(poolId);

        unchecked {
            if (tickCurrent < tickLower) {
                feeGrowthInside0X128 = lowerTick.feeGrowthOutside0X128 - upperTick.feeGrowthOutside0X128;
                feeGrowthInside1X128 = lowerTick.feeGrowthOutside1X128 - upperTick.feeGrowthOutside1X128;
            } else if (tickCurrent >= tickUpper) {
                feeGrowthInside0X128 = upperTick.feeGrowthOutside0X128 - lowerTick.feeGrowthOutside0X128;
                feeGrowthInside1X128 = upperTick.feeGrowthOutside1X128 - lowerTick.feeGrowthOutside1X128;
            } else {
                feeGrowthInside0X128 =
                    feeGrowthGlobal0 - lowerTick.feeGrowthOutside0X128 - upperTick.feeGrowthOutside0X128;
                feeGrowthInside1X128 =
                    feeGrowthGlobal1 - lowerTick.feeGrowthOutside1X128 - upperTick.feeGrowthOutside1X128;
            }
        }
    }
}
