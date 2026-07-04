// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";

import { IHookAuthorizable } from "./IHookAuthorizable.sol";

/// @title Oracle Manager Interface
/// @notice Defines the soft-enforcement surface that production hooks must call to maintain oracle state.
interface IOracleManager is IHookAuthorizable {
  /// @notice Thrown when zero address is provided
  error ZeroAddress();

  /// @notice Thrown when AegisDependencies is not initialized.
  error DepsNotInitialized();

  /// @notice Thrown when attempting to observe zero seconds in the past.
  error InvalidSecondsAgo();

  /// @notice Observation ring-buffer metadata for a pool.
  struct ObservationState {
    uint16 index;
    uint16 cardinality;
    uint16 cardinalityNext;
  }

  /// @notice Returns the underlying PoolManager the oracle observes.
  /// forge-lint: disable-next-line(mixed-case-function)
  function POOL_MANAGER() external view returns (IPoolManager);

  /// @notice Returns an observation entry for a pool by index.
  /// @param id The pool identifier whose observation is requested.
  /// @param observationIndex The observation index within the ring buffer.
  /// @return blockTimestamp The block timestamp for the observation.
  /// @return prevTick The previous printed tick stored with the observation.
  /// @return tickCumulative The cumulative tick value.
  /// @return secondsPerLiquidityCumulativeX128 The cumulative seconds-per-liquidity.
  /// @return initialized Whether the observation slot is initialized.
  function observations(PoolId id, uint256 observationIndex)
    external
    view
    returns (
      uint32 blockTimestamp,
      int24 prevTick,
      int48 tickCumulative,
      uint144 secondsPerLiquidityCumulativeX128,
      bool initialized
    );

  /// @notice Returns the observation state metadata for a pool.
  /// @param id The pool identifier whose state is requested.
  /// @return index The index of the most recently written observation.
  /// @return cardinality The number of populated observation slots.
  /// @return cardinalityNext The configured target cardinality.
  function states(PoolId id) external view returns (uint16 index, uint16 cardinality, uint16 cardinalityNext);

  /// @notice Authorizes a hook to call mutation functions. Idempotent if the hook is already authorized.
  /// @param hook The hook contract address to authorize.
  function authorizeHook(address hook) external;

  /// @notice Records the first oracle observation immediately after pool initialization.
  /// @dev Should be invoked from a hook's `afterInitialize` implementation once the pool has been created.
  /// @param key The corresponding pool key.
  /// @param tick The initialized tick returned by the pool manager.
  function recordAfterInitialize(PoolKey calldata key, int24 tick) external;

  /// @notice Updates the oracle prior to a liquidity modification; for gas efficiency call only if non-zero change
  /// @dev Should be invoked from a hook's `beforeAddLiquidity` and `beforeRemoveLiquidity` callbacks.
  /// @param key The pool key for which liquidity is being modified.
  function beforeModifyLiquidity(PoolKey calldata key) external;

  /// @notice Updates the oracle after a swap; for gas efficiency only needs to be called if the tick changes
  /// @dev Should be invoked from a hook's `afterSwap` callback.
  /// @param key The pool key on which a swap is about to occur.
  function afterSwap(PoolKey calldata key, int24 preSwapTick) external;

  /// @notice Observes the pool at requested time offsets.
  /// @param id The pool identifier to observe.
  /// @param secondsAgos Offsets into the past for which cumulative values should be returned.
  /// @return tickCumulatives The cumulative ticks at each requested offset.
  /// @return secondsPerLiquidityCumulativeX128s The cumulative seconds-per-liquidity values.
  function observe(PoolId id, uint32[] calldata secondsAgos)
    external
    view
    returns (int48[] memory tickCumulatives, uint144[] memory secondsPerLiquidityCumulativeX128s);

  /// @notice Computes time-weighted oracle data over the provided interval.
  /// @param id The pool identifier to consult.
  /// @param secondsAgo The lookback window for the TWAP calculation.
  /// @return arithmeticMeanTick The arithmetic mean tick across the interval.
  /// @return harmonicMeanLiquidity The harmonic mean liquidity across the interval.
  function consult(PoolId id, uint32 secondsAgo)
    external
    view
    returns (int24 arithmeticMeanTick, uint128 harmonicMeanLiquidity);

  /// @notice Increases the cardinality target for a pool's observation buffer.
  /// @param id The pool identifier whose observation buffer should grow.
  /// @param cardinalityNext The desired new cardinality target.
  /// @return cardinalityNextOld The previous target value.
  /// @return cardinalityNextNew The updated target.
  function increaseCardinalityNext(PoolId id, uint16 cardinalityNext)
    external
    returns (uint16 cardinalityNextOld, uint16 cardinalityNextNew);
}
