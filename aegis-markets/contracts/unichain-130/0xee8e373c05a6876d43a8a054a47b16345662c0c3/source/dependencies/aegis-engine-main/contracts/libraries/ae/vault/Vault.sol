// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";
import { BalanceDelta, toBalanceDelta } from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import { IPositionManager } from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import { NftRef } from "../../../types/AegisStructs.sol";
import { Market } from "../market/Market.sol";
import { NftSet } from "./NftSet.sol";

import { EngineErrors } from "../EngineErrors.sol";
import { WAD, PIPS_DENOMINATOR } from "../Constants.sol";
import { LUnitMath } from "../math/LUnitMath.sol";
import { BalanceDeltaLib } from "../math/BalanceDeltaLib.sol";
import { PipsMath } from "../math/PipsMath.sol";
import { SqrtMath } from "../math/SqrtMath.sol";
import { CollateralFloorMath } from "../collateral/CollateralFloorMath.sol";

import { ILimitOrderManager } from "../../../interfaces/ILimitOrderManager.sol";

/// @notice Library containing all VaultState mutation logic, mirroring Uniswap V4's Pool library pattern.
/// @dev Operates on VaultState storage pointers; AegisEngine delegates all vault state mutations to this library.
library Vault {
  using NftSet for NftRef[];

  /// @notice Maximum repay-all principal dust that may be waived (rL units).
  /// @dev Derived empirically from router-math sweep + integration reproduction:
  ///      - `test/foundry/unit/libraries/router/RepayAllSentinelDustBound.t.sol`
  ///      - `test/foundry/integration/aegis-router/stateful/repayAllSentinelDustExtremeTick.t.sol`
  uint128 internal constant DUST_MAX = 2_000_000_000_000_000;

  /// @notice Explicit vault state struct matching AegisEngine storage layout
  /// @dev Following Uniswap V4's Pool.State pattern for CRUD consistency
  ///      Storage layout documentation (when used in mapping(uint256 => State)):
  ///      Slot offset 0: poolId (PoolId/bytes32)
  ///      Slot offset 1: idleBalances (BalanceDelta/int256) - packed int128 amount0 | int128 amount1
  ///      Slot offset 2: rL (uint128) - principal debt in liquidity units
  ///      Slot offset 3: positions (NftRef[] dynamic array storage slot)
  struct State {
    PoolId poolId;
    BalanceDelta idleBalances;
    uint128 rL;
    NftRef[] positions;
  }

  using Vault for State;

  /// @notice Modify idle balances in a vault using signed deltas (V4 pattern).
  /// @param self The vault state.
  /// @param delta The balance delta to apply (positive = credit, negative = debit).
  /// @return balancesAfter The new idle balances after modification.
  function modifyIdle(State storage self, BalanceDelta delta) internal returns (BalanceDelta balancesAfter) {
    self.idleBalances = self.idleBalances + delta;
    balancesAfter = self.idleBalances;

    int128 after0 = balancesAfter.amount0();
    int128 after1 = balancesAfter.amount1();

    if (after0 < 0 || after1 < 0) {
      EngineErrors.revertEngine(EngineErrors.ERR_NEGATIVE_IDLE_BALANCE);
    }
  }

  /// @notice Apply debt changes with conservative bridge on repay
  /// @dev principalDelta - positive on borrow, negative on repay
  ///      actualDelta - positive BalanceDelta representing actual token amounts used
  ///      On borrow: simple 1L ≡ 1√K mapping
  ///      On repay: conservative bridge uses geometric mean of actual amounts
  ///               (√K floor property ensures this is always <= actual liquidity)
  ///      Protocol rule: On repay-all intent (absRequested >= rL), if conservative bridge
  ///               leaves a small remainder (<= DUST_MAX), the protocol waives this dust.
  /// @param self The vault state
  /// @param market The market state
  /// @param principalDelta Signed principal change (positive = borrow, negative = repay)
  /// @param modifyDelta BalanceDelta of actual token amounts, only used for the geometric mean on repay
  /// @param borrowIndexWad Current borrow index (WAD scale)
  function applyDebt(
    State storage self,
    Market.State storage market,
    int136 principalDelta,
    BalanceDelta modifyDelta,
    uint256 borrowIndexWad
  ) internal returns (int136 actualPrincipalDelta) {
    unchecked {
      // BORROW: Simple 1L ≡ 1√K mapping

      if (principalDelta < 0) {
        // REPAY: Conservative bridge - geometric mean is guaranteed <= actual liquidity by √K floor property
        (uint128 amt0, uint128 amt1) = BalanceDeltaLib.getPositiveAmounts(toBalanceDelta(0, 0) - modifyDelta);
        uint256 geometricMean = SqrtMath.sqrtProductLowerBound(uint256(amt0), uint256(amt1));

        // Convert geometric mean to principal units
        uint136 geomMeanPrincipal = LUnitMath.principalFromLiquidity(geometricMean, borrowIndexWad);

        // forge-lint: disable-start(unsafe-typecast) -- principalDelta comes from int128, fits in uint128
        uint128 absRequested = uint128(uint136(-principalDelta));

        // Cap to requested amount (can't repay more than requested)
        uint128 repay = geomMeanPrincipal > absRequested ? absRequested : uint128(geomMeanPrincipal);

        // Dust waiver: only on repay-all intent (absRequested >= self.rL).
        // Guard repay > 0 to prevent "free forgiveness" when geometricMeanPrincipal == 0.
        if (absRequested >= self.rL && repay > 0 && repay < self.rL) {
          uint128 dust = self.rL - repay;
          if (dust <= DUST_MAX) repay = self.rL;
        }

        // TODO: Consider capping repay to self.rL to prevent revert when conservative bridge
        // overshoots the actual debt. For now, we allow the revert to surface calculation errors.

        principalDelta = -int136(uint136(repay));
        // forge-lint: disable-end(unsafe-typecast)
      }

      market.totalRlBorrowed = _safeAdd(market.totalRlBorrowed, principalDelta);
      self.rL = _safeAdd(self.rL, principalDelta);

      actualPrincipalDelta = principalDelta;
    }
  }

  function _safeAdd(uint128 a, int136 b) private pure returns (uint128 c) {
    c = SafeCast.toUint128(SafeCast.toUint256(int256(uint256(a)) + int256(b)));
  }

  /// @notice Attach an NFT to the vault's position array.
  /// @param self The vault state.
  /// @param ref The NFT reference to attach.
  /// @param maxNfts The maximum number of NFTs allowed per vault.
  function safeAttachNft(State storage self, NftRef memory ref, uint256 maxNfts) internal {
    if (!self.positions.add(ref, maxNfts)) {
      EngineErrors.revertEngine(EngineErrors.ERR_MAX_NFTS_EXCEEDED);
    }
  }

  /// @notice Detach an NFT from the vault's position array.
  /// @param self The vault state.
  /// @param ref The NFT reference to detach.
  function safeDetachNft(State storage self, NftRef calldata ref) internal {
    if (!self.positions.remove(ref)) {
      EngineErrors.revertEngine(EngineErrors.ERR_NFT_NOT_ATTACHED);
    }
  }

  // - - - Views - - -

  function computeLtvPips(
    State storage self,
    Market.State storage market,
    IPositionManager positionManager,
    ILimitOrderManager limitOrderManager
  ) internal view returns (uint256 ltvPips) {
    unchecked {
      // compute debt in WAD‑scaled L as rL * indexWad; scale collateral by WAD.
      uint256 debtLWad = uint256(self.rL) * market.borrowIndexWad;

      if (debtLWad > 0) {
        (uint128 idle0, uint128 idle1) = BalanceDeltaLib.getPositiveAmounts(self.idleBalances);
        uint256 cMinL = CollateralFloorMath.computeL(idle0, idle1, self.positions, positionManager, limitOrderManager);

        // If we have debt and no collateral then we're effectively at the LTV cap
        if (cMinL == 0) return PIPS_DENOMINATOR;

        ltvPips = PipsMath.toPips(debtLWad, cMinL * WAD);
      }
    }
  }
}
