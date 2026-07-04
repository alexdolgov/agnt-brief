// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";

struct AdaptiveIRMStorage {
    mapping(uint8 vault => int256 rate) endRateAt;
    mapping(uint8 vault => int256 timestamp) lastUpdate;
    mapping(uint8 vault => uint256 collateralRatio) targetUtilization;
}

library AdaptiveIRM {
    using FixedPointMathLib for int256;
    using FixedPointMathLib for uint256;
    using AdaptiveIRM for AdaptiveIRMStorage;

    /// @notice Curve steepness (scaled by WAD).
    /// @dev Curve steepness = 4.
    /// TODO: check with anthias
    int256 internal constant CURVE_STEEPNESS = 4e18;

    /// @notice Adjustment speed per second (scaled by WAD).
    /// @dev The speed is per second, so the rate moves at a speed of ADJUSTMENT_SPEED * err each second (while being continuously compounded).
    /// @dev Adjustment speed = 50/year.
    /// TODO: check with anthias
    int256 internal constant ADJUSTMENT_SPEED = 50e18 / int256(365 days);

    /// @notice Initial rate at target per second (scaled by WAD).
    /// @dev Initial rate at target = 0.1% (rate between 0.025% and 0.4%).
    int256 internal constant INITIAL_RATE_AT_TARGET = 0.001e18 / int256(365 days);

    /// @notice Minimum rate at target per second (scaled by WAD).
    int256 internal constant MIN_RATE_AT_TARGET = 1e8 / int256(365 days);

    /// @notice Maximum rate at target per second (scaled by WAD).
    /// @dev Maximum rate at target = 1.5% (maximum rate = 6%).
    int256 internal constant MAX_RATE_AT_TARGET = 0.015e18 / int256(365 days);

    int256 internal constant INT_WAD = 1e18;

    bytes32 internal constant SLOT = keccak256(bytes("hyperstable.storage.adaptiveIRM"));

    event UpdatedTargetUtilization(uint8 indexed vault, uint256 targetUtilization);
    event UpdateInterestRateAtTarget(uint8 indexed vault, int256 newInterestRateAtTarget);

    function getStorage() internal pure returns (AdaptiveIRMStorage storage s) {
        bytes32 slot = SLOT;
        assembly {
            s.slot := slot
        }
    }

    function setTargetUtilization(uint8 _vault, uint256 _newTargetUtilization) internal {
        setTargetUtilization(getStorage(), _vault, _newTargetUtilization);
    }

    function setTargetUtilization(AdaptiveIRMStorage storage s, uint8 _vault, uint256 _newTargetUtilization) internal {
        s.targetUtilization[_vault] = _newTargetUtilization;

        emit UpdatedTargetUtilization(_vault, _newTargetUtilization);
    }

    function updateInterestRateAtTarget(uint8 _vault, int256 _newInterestRateAt) internal {
        updateInterestRateAtTarget(getStorage(), _vault, _newInterestRateAt);
    }

    function updateInterestRateAtTarget(AdaptiveIRMStorage storage s, uint8 _vault, int256 _newInterestRateAtTarget)
        internal
    {
        s.endRateAt[_vault] = _newInterestRateAtTarget;
        s.lastUpdate[_vault] = int256(block.timestamp);

        emit UpdateInterestRateAtTarget(_vault, _newInterestRateAtTarget);
    }

    function interestRate(uint8 _vault, uint256 _collateral, uint256 _debt, uint256 _mcr)
        internal
        view
        returns (uint256, int256)
    {
        return interestRate(getStorage(), _vault, _collateral, _debt, _mcr);
    }

    function interestRate(AdaptiveIRMStorage storage s, uint8 _vault, uint256 _collateral, uint256 _debt, uint256 _mcr)
        internal
        view
        returns (uint256, int256)
    {
        int256 targetUtilization = int256(s.targetUtilization[_vault]);

        int256 utilization =
            int256(_debt > 0 ? _debt.divWad(_collateral) : 0).sDivWad(int256(1e18).sDivWad(int256(_mcr))).clamp(0, 1e18);

        int256 errNomFactor = utilization > targetUtilization ? INT_WAD - targetUtilization : targetUtilization;

        int256 err = (utilization - targetUtilization).sDivWad(errNomFactor);

        int256 startRateAtTarget = s.endRateAt[_vault];

        int256 avgRateAtTarget;
        int256 endRateAtTarget;

        if (startRateAtTarget == 0) {
            avgRateAtTarget = INITIAL_RATE_AT_TARGET;
            endRateAtTarget = INITIAL_RATE_AT_TARGET;
        } else {
            int256 linearAdaptation = ADJUSTMENT_SPEED.sMulWad(err) * (int256(block.timestamp) - s.lastUpdate[_vault]);

            if (linearAdaptation == 0) {
                avgRateAtTarget = startRateAtTarget;
                endRateAtTarget = startRateAtTarget;
            } else {
                endRateAtTarget = _newRateAtTarget(startRateAtTarget, linearAdaptation);
                int256 midRateAtTarget = _newRateAtTarget(startRateAtTarget, linearAdaptation / 2);
                avgRateAtTarget = (startRateAtTarget + endRateAtTarget + 2 * midRateAtTarget) / 4;
            }
        }

        return (uint256(_curve(avgRateAtTarget, err)), endRateAtTarget);
    }

    function _curve(int256 _rateAtTarget, int256 err) private pure returns (int256) {
        // Non negative because 1 - 1/C >= 0, C - 1 >= 0.
        int256 coeff = err < 0 ? INT_WAD - INT_WAD.sDivWad(CURVE_STEEPNESS) : CURVE_STEEPNESS - INT_WAD;
        // Non negative if _rateAtTarget >= 0 because if err < 0, coeff <= 1.
        return (coeff.sMulWad(err) + INT_WAD).sMulWad(int256(_rateAtTarget));
    }

    function _newRateAtTarget(int256 startRateAtTarget, int256 linearAdaptation) private pure returns (int256) {
        // Non negative because MIN_RATE_AT_TARGET > 0.
        return startRateAtTarget.sMulWad(linearAdaptation.expWad()).clamp(MIN_RATE_AT_TARGET, MAX_RATE_AT_TARGET);
    }
}
