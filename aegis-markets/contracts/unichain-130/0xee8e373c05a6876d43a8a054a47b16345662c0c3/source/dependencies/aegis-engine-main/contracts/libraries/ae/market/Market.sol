// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { BalanceDelta } from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import { StateLibrary } from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import { FullMath } from "@uniswap/v4-core/src/libraries/FullMath.sol";

import { LPFeeLibrary } from "@uniswap/v4-core/src/libraries/LPFeeLibrary.sol";

import { IVariableInterestRate } from "../../../interfaces/IVariableInterestRate.sol";
import {
  WAD,
  PIPS_DENOMINATOR,
  UTILIZATION_CAP_PIPS,
  MAX_RATE_PER_SECOND_WAD,
  MICRO_LIQ_ORACLE_BUFFER_PIPS,
  MICRO_LIQ_MIN_RAMP_WIDTH_PIPS,
  MICRO_LIQ_MAX_SWAP_FEE_PIPS,
  MAX_HARD_LTV_PIPS
} from "../Constants.sol";
import { PipsMath } from "../math/PipsMath.sol";
import { EngineErrors } from "../EngineErrors.sol";
import { MarketAccrualState } from "../session/MarketAccrualState.sol";

/// @notice Library containing all MarketState mutation logic, mirroring Uniswap V4's Pool library pattern.
/// @dev Operates on State storage pointers; AegisEngine delegates all market state mutations to this library.
library Market {
  using StateLibrary for IPoolManager;

  /// @notice Per-market accounting tracked by the engine (1:1 with a V4 pool).
  /// @dev Following Uniswap V4's Pool.State pattern for CRUD consistency
  ///      Storage layout documentation (when used in mapping(PoolId => State)):
  ///      Slot offset 0: initialized (bool/1) | totalRlBorrowed (uint128/16) | lastAccrue (uint40/5)
  ///                      | protocolFeePips (uint24/3) | maxLtvPips (uint24/3) | hardLtvPips (uint24/3) = 31 bytes
  ///      Slot offset 1: borrowIndexWad (uint256)
  ///      Slot offset 2: equityLWad (uint256)
  ///      Slot offset 3: rateOracle (IVariableInterestRate/address) | fullUtilizationRate (uint64) - packed
  ///      Slot offset 4: key.currency0 (Currency/address)
  ///      Slot offset 5: key.currency1 (Currency/address) | key.fee (uint24) | key.tickSpacing (int24) - packed
  ///      Slot offset 6: key.hooks (IHooks/address)
  ///      Slot offset 7: residues (BalanceDelta/int256) - packed int128 amount0 | int128 amount1
  struct State {
    bool initialized;
    uint128 totalRlBorrowed; // in principal L units
    uint40 lastAccrue;
    uint24 protocolFeePips;
    uint24 maxLtvPips; // per-market MAX LTV threshold (micro-liq start, lock guard)
    uint24 hardLtvPips; // per-market HARD LTV threshold (full repay, max keeper fee)
    uint256 borrowIndexWad;
    uint256 equityLWad;
    IVariableInterestRate rateOracle;
    uint64 fullUtilizationRate;
    PoolKey key;
    BalanceDelta residues;
  }

  using Market for State;

  /// @notice Compute per-market LTV thresholds from pool fee.
  /// @dev For dynamic fee pools, uses MICRO_LIQ_MAX_SWAP_FEE_PIPS (1%).
  ///      For static fee pools, uses the actual fee (reverts if > 1%).
  ///      LTV ramp width is clamped to at least MICRO_LIQ_MIN_RAMP_WIDTH_PIPS (10 bps).
  /// @param fee The PoolKey.fee value (may have dynamic fee flag set)
  /// @return maxLtvPips The MAX LTV threshold (micro-liq start, lock guard)
  /// @return hardLtvPips The HARD LTV threshold (full repay, max keeper fee)
  function computeLtvThresholds(uint24 fee) internal pure returns (uint24 maxLtvPips, uint24 hardLtvPips) {
    uint24 feeMaxPips;

    // Check if dynamic fee using v4-core LPFeeLibrary
    if (LPFeeLibrary.isDynamicFee(fee)) {
      // Dynamic fee pool: use configured max (1%)
      feeMaxPips = MICRO_LIQ_MAX_SWAP_FEE_PIPS;
    } else {
      // Static fee pool: PoolKey.fee is already in pips (1/1_000_000 units)
      feeMaxPips = fee;

      // Validate fee doesn't exceed max for micro-liq calculations
      if (feeMaxPips > MICRO_LIQ_MAX_SWAP_FEE_PIPS) {
        EngineErrors.revertEngine(EngineErrors.ERR_FEE_TOO_HIGH_FOR_MICRO_LIQ);
      }
    }

    // Compute ramp width (min 10 bps to avoid pathological narrow ramps)
    uint24 widthPips = feeMaxPips >= MICRO_LIQ_MIN_RAMP_WIDTH_PIPS ? feeMaxPips : MICRO_LIQ_MIN_RAMP_WIDTH_PIPS;

    // HARD = 100% - oracle buffer (99.6%)
    // forge-lint: disable-next-line(unsafe-typecast) -- PIPS_DENOMINATOR fits within uint24
    hardLtvPips = uint24(PIPS_DENOMINATOR) - MICRO_LIQ_ORACLE_BUFFER_PIPS;

    // MAX = HARD - width
    maxLtvPips = hardLtvPips - widthPips;
  }

  /// @notice Initialize a market with default values.
  /// @param self The market state to initialize.
  /// @param key The pool key for this market.
  /// @param oracle The initial rate oracle for this market.
  /// @param fullUtilRate The initial full utilization rate.
  function initialize(State storage self, PoolKey memory key, IVariableInterestRate oracle, uint64 fullUtilRate)
    internal
  {
    if (self.initialized) {
      EngineErrors.revertEngine(EngineErrors.ERR_MARKET_ALREADY_INITIALIZED);
    }

    // Compute per-market LTV thresholds from pool fee
    (uint24 maxLtv, uint24 hardLtv) = computeLtvThresholds(key.fee);

    self.borrowIndexWad = WAD;
    self.rateOracle = oracle;
    self.fullUtilizationRate = fullUtilRate;
    self.key = key;
    self.lastAccrue = uint40(block.timestamp);
    self.maxLtvPips = maxLtv;
    self.hardLtvPips = hardLtv;
    // NOTE: protocolFeePips and residues default to 0
    self.initialized = true;
  }

  /// @notice Configure a per-market rate oracle.
  /// @param self The market state to configure.
  /// @param oracle The oracle address.
  /// @param fullUtilRate The full utilization rate.
  function setRateOracle(State storage self, address oracle, uint64 fullUtilRate) internal {
    self.rateOracle = IVariableInterestRate(oracle);
    self.fullUtilizationRate = fullUtilRate;
  }

  /// @notice Set the protocol fee rate for this market.
  /// @param self The market state to configure.
  /// @param protocolFeePips Protocol fee in pips.
  function setProtocolFee(State storage self, uint24 protocolFeePips) internal {
    self.protocolFeePips = protocolFeePips;
  }

  /// @notice Set per-market LTV thresholds.
  /// @dev Validates that maxLtvPips < hardLtvPips <= MAX_HARD_LTV_PIPS and ramp width >= minimum.
  /// @param self The market state to configure.
  /// @param newMaxLtvPips The new MAX LTV threshold (micro-liq start, lock guard).
  /// @param newHardLtvPips The new HARD LTV threshold (full repay, max keeper fee).
  function setLtvThresholds(State storage self, uint24 newMaxLtvPips, uint24 newHardLtvPips) internal {
    // Validate:
    // 1. maxLtvPips < hardLtvPips
    // 2. hardLtvPips <= MAX_HARD_LTV_PIPS (99.8%) for safety margin
    // 3. ramp width >= MICRO_LIQ_MIN_RAMP_WIDTH_PIPS (0.1%) for liquidation math to work
    if (
      newMaxLtvPips >= newHardLtvPips || newHardLtvPips > MAX_HARD_LTV_PIPS
        || (newHardLtvPips - newMaxLtvPips) < MICRO_LIQ_MIN_RAMP_WIDTH_PIPS
    ) {
      EngineErrors.revertEngine(EngineErrors.ERR_INVALID_LTV_CONFIG);
    }
    self.maxLtvPips = newMaxLtvPips;
    self.hardLtvPips = newHardLtvPips;
  }

  /// @notice Mint equity from accumulated fee liquidity.
  /// @param self The market state.
  /// @param liquidityAmount The amount of liquidity to add to equity.
  function mintEquityFromFees(State storage self, uint256 liquidityAmount) internal {
    unchecked {
      self.equityLWad += liquidityAmount * WAD;
    }
  }

  /// @notice Accrue interest for this market (once per session).
  /// @param self The market state to accrue.
  /// @param poolId The pool identifier.
  function accrue(State storage self, PoolId poolId)
    internal
    returns (uint256 interestAccruedWad, uint256 ratePerSecondWad)
  {
    if (MarketAccrualState.isMarked(poolId)) {
      return (0, 0);
    }

    MarketAccrualState.mark(poolId);

    uint40 currentTimestamp = uint40(block.timestamp);
    uint40 lastAccrue = self.lastAccrue;

    // We mark+return if same-block re-entrancy i.e. currentTimestamp == lastAccrue
    if (currentTimestamp == lastAccrue) {
      return (0, 0);
    }

    uint256 utilPips = self.getUtilization();
    uint256 deltaTime;
    unchecked {
      deltaTime = uint256(currentTimestamp - lastAccrue);
    }

    IVariableInterestRate oracle = self.rateOracle;
    uint64 fullUtilRate = self.fullUtilizationRate;

    (ratePerSecondWad, fullUtilRate) = resolveRate(oracle, fullUtilRate, deltaTime, utilPips);

    uint256 rateForDeltaTime;
    unchecked {
      rateForDeltaTime = ratePerSecondWad * deltaTime;
    }
    uint256 deltaBorrowIndexWad = FullMath.mulDiv(self.borrowIndexWad, rateForDeltaTime, WAD);
    // Interest accrued in WAD-scaled L: rL * deltaBorrowIndexWad
    interestAccruedWad = deltaBorrowIndexWad * self.totalRlBorrowed;

    unchecked {
      self.equityLWad += interestAccruedWad;
      self.borrowIndexWad += deltaBorrowIndexWad;
      self.lastAccrue = currentTimestamp;
      self.fullUtilizationRate = fullUtilRate;
    }
  }

  /// @notice Modify market liquidity and calculate shares to mint/burn.
  /// @dev Positive liquidityOrSharesDelta is interpreted as liquidity to add (L-units).
  ///      Negative liquidityOrSharesDelta is interpreted as shares to burn (ERC6909 market shares).
  ///      Initial deposit mints shares 1:1 with liquidity.
  /// @param self The market state.
  /// @param currentShareSupply Current total supply of market shares.
  /// @param liquidityOrSharesDelta Amount of liquidity to add (positive, in L-units) or shares to burn (negative).
  /// @return sharesDelta Number of shares to mint (deposit) or burn (redeem).
  /// @return liquidityDelta Amount of liquidity to add (positive) or remove (negative), in L-units.
  function modifyLiquidity(State storage self, uint256 currentShareSupply, int128 liquidityOrSharesDelta)
    internal
    returns (uint256 sharesDelta, int128 liquidityDelta)
  {
    // Poke-only path: allow callers to pass 0 to collect/reinvest fees via full-range modify
    // without changing equity or share supply.
    if (liquidityOrSharesDelta == 0) {
      // Poke-only: no change to equity or shares; caller may still collect/reinvest fees
      return (0, 0);
    }

    uint256 equity = self.equityLWad;

    if (liquidityOrSharesDelta > 0) {
      // DEPOSIT PATH: positive input is liquidity (L-units) to add
      // forge-lint: disable-next-line(unsafe-typecast) -- liquidityOrSharesDelta is int128, positive path guaranteed by conditional
      uint256 absL = uint256(uint128(liquidityOrSharesDelta));
      unchecked {
        uint256 deltaWad = absL * WAD;

        if (currentShareSupply != 0) {
          sharesDelta = FullMath.mulDiv(deltaWad, currentShareSupply, equity);
          // Prevent dust operations where non-zero liquidity would mint zero shares
          if (sharesDelta == 0) {
            EngineErrors.revertEngine(EngineErrors.ERR_ZERO_SHARES_OR_LIQUIDITY);
          }
        } else {
          // On initial contribution we mint shares equal to the liquidity (1:1 in L-units)
          sharesDelta = absL;
        }

        self.equityLWad = equity + deltaWad;
      }
      liquidityDelta = liquidityOrSharesDelta;
    } else {
      // REDEEM PATH: negative input is shares to burn
      // forge-lint: disable-next-line(unsafe-typecast) -- negating int128 stays within bounds, result fits in uint128
      uint256 sharesToBurn = uint256(uint128(-liquidityOrSharesDelta));

      // Map shares → liquidity (L-units) using current share price:
      // L ≈ sharesToBurn * equity / (currentShareSupply * WAD)
      uint256 absLiquidity = FullMath.mulDiv(sharesToBurn, equity, currentShareSupply * WAD);
      if (absLiquidity == 0) {
        EngineErrors.revertEngine(EngineErrors.ERR_ZERO_SHARES_OR_LIQUIDITY);
      }

      unchecked {
        uint256 deltaWad = absLiquidity * WAD;
        // deltaWad <= equity by construction; redeeming proportionally
        self.equityLWad = equity - deltaWad;
      }

      // forge-lint: disable-next-line(unsafe-typecast) -- max full range liquidity is max u128
      liquidityDelta = -int128(int256(absLiquidity));
      sharesDelta = sharesToBurn;
    }
  }

  /// @notice Calculate current market utilization rate.
  /// @param market The market state.
  /// @return utilPips Utilization rate in pips (0-1000000 = 0%-100%).
  function getUtilization(Market.State storage market) internal view returns (uint256 utilPips) {
    unchecked {
      // Compute borrowed in WAD-scaled L: rL * index (WAD)
      uint256 borrowedLWad = uint256(market.totalRlBorrowed) * market.borrowIndexWad;
      uint256 equityLWad = market.equityLWad;
      if (equityLWad != 0) {
        // util = borrowedLWad / equityLWad
        utilPips = PipsMath.toPips(borrowedLWad, equityLWad);
      }
    }
  }

  /// @notice Revert if the market has not been initialized in the engine.
  /// @param self The market state to check.
  function checkMarketInitializedInEngine(State storage self) internal view {
    if (!self.initialized) EngineErrors.revertEngine(EngineErrors.ERR_MARKET_NOT_INITIALIZED);
  }

  /// @notice Revert if market utilization exceeds the configured cap.
  /// @param self The market state to check.
  function checkUtilizationBelowCap(State storage self) internal view {
    uint256 utilPips = self.getUtilization();
    if (utilPips > UTILIZATION_CAP_PIPS) EngineErrors.revertEngine(EngineErrors.ERR_UTILIZATION_CAP);
  }

  /// @notice Resolves the interest rate for a market.
  /// @param oracle Market's rate oracle
  /// @param cachedFullUtil Market's cached full utilization rate
  /// @param deltaTime Seconds elapsed since the last accrue.
  /// @param utilizationPips Raw utilisation in pips passed to the rate oracle with internal utilization scaling.
  /// @return ratePerSecondWad Newly computed per-second rate (WAD precision).
  /// @return newFullUtilRate Updated cached full-util rate (uint64, 1e18 precision).
  function resolveRate(IVariableInterestRate oracle, uint64 cachedFullUtil, uint256 deltaTime, uint256 utilizationPips)
    internal
    view
    returns (uint256 ratePerSecondWad, uint64 newFullUtilRate)
  {
    try oracle.getNewRateFromRawUtilization(deltaTime, utilizationPips, cachedFullUtil) returns (
      uint64 ratePerSec, uint64 updatedFullUtil
    ) {
      ratePerSecondWad = uint256(ratePerSec);
      newFullUtilRate = updatedFullUtil;
    } catch {
      // Oracle failed - use cached rate to keep market operational
      ratePerSecondWad = uint256(cachedFullUtil);
      newFullUtilRate = cachedFullUtil;
    }

    // Cap rates to prevent overflow from malicious/buggy oracles (100% APR max)
    if (ratePerSecondWad > MAX_RATE_PER_SECOND_WAD) {
      ratePerSecondWad = MAX_RATE_PER_SECOND_WAD;
    }
    if (uint256(newFullUtilRate) > MAX_RATE_PER_SECOND_WAD) {
      // forge-lint: disable-next-line(unsafe-typecast) -- MAX_RATE_PER_SECOND_WAD is designed to fit in uint64
      newFullUtilRate = uint64(MAX_RATE_PER_SECOND_WAD);
    }
  }
}
