// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {BaseInterestModel} from "./BaseInterestModel.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title SimpleInterestModel – linear (non-compounding) interest (tex sec. 4.1)
/// @notice Uses an additive cumulative integral:
///           C(t) = integral[0..t] r(u) du   (dimensionless, stored in RAY)
///         Position interest:
///           Q_I(t) = Q_L * (C(t) - C(t_open))  / RAY
abstract contract SimpleInterestModel is BaseInterestModel {

    // ───────────────────── Accrual hooks ─────────────────────

    /// @dev C(t) += r * dt   (additive accumulator, tex sec. 4.1)
    function _accrueAssetInternal(RateState storage s) internal override returns (uint256) {
        uint256 dt = uint256(uint64(block.timestamp) - s.lastUpdate);
        uint256 rps = _ratePerSecondRay(s.rateBps); // r(t) in RAY
        s.cumulativeRay += rps * dt;
        return s.cumulativeRay;
    }

    function _viewCumulative(RateState storage s) internal view override returns (uint256) {
        uint256 dt = block.timestamp - uint256(s.lastUpdate);
        if (dt == 0) return s.cumulativeRay;
        return s.cumulativeRay + (_ratePerSecondRay(s.rateBps) * dt);
    }

    /// @dev Q_I += Q_L * (C(now) - C(t_lastTouch)) / RAY   (round up to protect lender)
    function _accruePositionInternal(DebtState storage d, uint256 cumNow) internal override {
        uint256 prev = d.rateIndexRay; // C(t_lastTouch)
        if (cumNow > prev && d.principal != 0) {
            uint256 delta = cumNow - prev; // C(now) - C(t_lastTouch)
            uint256 addInterest = Math.mulDiv(d.principal, delta, RAY, Math.Rounding.Ceil);
            d.accruedInterest += addInterest;
        }
        d.rateIndexRay = cumNow;
    }

    function _viewAccumulatedInterest(DebtState storage d, uint256 cumNow) internal view override returns (uint256) {
        if (cumNow <= d.rateIndexRay || d.principal == 0) return d.accruedInterest;
        uint256 delta = cumNow - d.rateIndexRay;
        uint256 pending = Math.mulDiv(d.principal, delta, RAY, Math.Rounding.Ceil);
        return d.accruedInterest + pending;
    }

    function _extrapolateCumulative(uint256 cumAtCheckpoint, uint64 rateBps, uint256 dt) internal pure override returns (uint256) {
        return cumAtCheckpoint + _ratePerSecondRay(rateBps) * dt;
    }
}
