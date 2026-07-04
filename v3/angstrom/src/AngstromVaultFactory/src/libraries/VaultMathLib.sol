// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { FixedPointMathLib } from "solady/utils/FixedPointMathLib.sol";
import { SafeCastLib } from "solady/utils/SafeCastLib.sol";
import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";
import { StateLibrary } from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import { TickMath } from "@uniswap/v4-core/src/libraries/TickMath.sol";
import { SqrtPriceMath } from "@uniswap/v4-core/src/libraries/SqrtPriceMath.sol";
import { FullMath } from "@uniswap/v4-core/src/libraries/FullMath.sol";
import { FixedPoint128 } from "@uniswap/v4-core/src/libraries/FixedPoint128.sol";
import { FACTOR_E6, FACTOR_E18, FACTOR_E36, SECONDS_PER_YEAR } from "./Constants.sol";

using SafeCastLib for uint256;
using SafeCastLib for int256;
using StateLibrary for IPoolManager;
using FixedPointMathLib for uint256;
using FixedPointMathLib for int256;

/// @notice External library for heavy math operations. Deployed separately to reduce Vault bytecode size.
/// @dev Functions are `external` so they compile into a separate contract called via DELEGATECALL.
library VaultMathLib {
    uint256 internal constant MAX_SHARE_OF_ASSETS_E18 = 0.999e18;

    struct PositionAmountsParams {
        IPoolManager poolManager;
        PoolId pool;
        bytes32 positionId;
        int24 tickLower;
        int24 tickUpper;
        uint160 sqrtPriceX96;
    }

    /// @notice Calculates the change in provisionalShares, performanceFeeDebt, and finalExchangeRateE36
    /// that represents the performanceFeeE6 share of the change from previousExchangeRateE36 to
    /// currentExchangeRateE36
    function diffsFromExchangeRateChange(
        uint256 previousExchangeRateE36,
        uint256 currentExchangeRateE36,
        uint256 totalShares,
        uint256 _provisionalShares,
        uint256 _performanceFeeDebt,
        uint256 _performanceFeeE6
    )
        external
        pure
        returns (int256 changeInProvisionalShares, int256 changeInPerformanceFeeDebt, uint256 finalExchangeRateE36)
    {
        // no performance fee, return early
        // slither-disable-next-line incorrect-equality
        if (_performanceFeeE6 == 0) {
            return (0, 0, currentExchangeRateE36);
        }
        // no profit or loss, return early
        // slither-disable-next-line incorrect-equality
        if (currentExchangeRateE36 == previousExchangeRateE36) {
            return (0, 0, currentExchangeRateE36);
        }
        uint256 _totalSharesIncludingProvisional = (totalShares + _provisionalShares);
        // special case; return early to avoid division-by-zero
        // slither-disable-next-line incorrect-equality
        if (_totalSharesIncludingProvisional == 0) {
            return (0, 0, currentExchangeRateE36);
        }
        // profit has occurred
        if (currentExchangeRateE36 > previousExchangeRateE36) {
            // calculate total amount of performance fees due from profits
            uint256 profitFee = ((currentExchangeRateE36 - previousExchangeRateE36) * _performanceFeeE6)
            .fullMulDiv(_totalSharesIncludingProvisional, FACTOR_E36 * FACTOR_E6);
            // profits more than entirely cover all of the existing debt; the rest becomes provisional shares
            if (profitFee > _performanceFeeDebt) {
                // pay off all debt, removing from amount used in provisionalShare calculation
                profitFee -= _performanceFeeDebt;
                uint256 divisor = currentExchangeRateE36 * _totalSharesIncludingProvisional - profitFee * FACTOR_E36;
                // divisor of zero theoretically only possible if currentExchangeRateE36 =
                // (currentExchangeRateE36 - previousExchangeRateE36) * _performanceFeeE6 / FACTOR_E6
                if (divisor == 0) {
                    changeInProvisionalShares = (profitFee * FACTOR_E36 / currentExchangeRateE36).toInt256();
                } else {
                    changeInProvisionalShares =
                        ((profitFee * _totalSharesIncludingProvisional).fullMulDiv(FACTOR_E36, divisor)).toInt256();
                }
                finalExchangeRateE36 = currentExchangeRateE36.fullMulDiv(
                    _totalSharesIncludingProvisional,
                    (_totalSharesIncludingProvisional + changeInProvisionalShares.toUint256())
                );
                changeInPerformanceFeeDebt = -_performanceFeeDebt.toInt256();
                return (changeInProvisionalShares, changeInPerformanceFeeDebt, finalExchangeRateE36);
                // profits cover [0, 100%] of the existing debt
            } else {
                // return early since no provisional shares will be minted
                changeInPerformanceFeeDebt = -profitFee.toInt256();
                return (0, changeInPerformanceFeeDebt, currentExchangeRateE36);
            }
            // loss has occurred
        } else {
            // simply incur debt and return early if no provisional shares exist
            if (_provisionalShares == 0) {
                uint256 lossFee = ((previousExchangeRateE36 - currentExchangeRateE36) * _performanceFeeE6)
                .fullMulDiv(_totalSharesIncludingProvisional, FACTOR_E36 * FACTOR_E6);
                return (changeInProvisionalShares, lossFee.toInt256(), currentExchangeRateE36);
                // first burn provisional shares to cover share of loss, then create debt
            } else {
                uint256 lossFeePerShareE42 = (previousExchangeRateE36 - currentExchangeRateE36) * _performanceFeeE6;
                uint256 divisor =
                    (previousExchangeRateE36 * _performanceFeeE6 + currentExchangeRateE36
                        * (FACTOR_E6 - _performanceFeeE6));
                uint256 candidateShareLoss = lossFeePerShareE42.fullMulDiv(_totalSharesIncludingProvisional, divisor);
                // loss is entirely covered by existing provisional shares
                if (candidateShareLoss <= _provisionalShares) {
                    changeInProvisionalShares = -candidateShareLoss.toInt256();
                    // special case to avoid division-by-zero
                    // slither-disable-next-line incorrect-equality
                    if (candidateShareLoss == _totalSharesIncludingProvisional) {
                        finalExchangeRateE36 = 0;
                    } else {
                        finalExchangeRateE36 = currentExchangeRateE36.fullMulDiv(
                            _totalSharesIncludingProvisional, (_totalSharesIncludingProvisional - candidateShareLoss)
                        );
                    }
                    return (changeInProvisionalShares, 0, finalExchangeRateE36);
                    // existing provisional shares only partially cover loss share; the rest becomes debt
                } else {
                    // burn all existing provisional shares
                    // slither-disable-next-line divide-before-multiply
                    finalExchangeRateE36 = currentExchangeRateE36 * _totalSharesIncludingProvisional / totalShares;
                    changeInProvisionalShares = -_provisionalShares.toInt256();
                    // remaining `lossFee` will become debt
                    // slither-disable-next-line divide-before-multiply
                    uint256 decreaseLossFeePerShareE42 = (finalExchangeRateE36 * FACTOR_E6)
                    .fullMulDiv(_provisionalShares, _totalSharesIncludingProvisional);
                    // ensure calculation cannot underflow
                    if (decreaseLossFeePerShareE42 >= lossFeePerShareE42) {
                        lossFeePerShareE42 = 0;
                    } else {
                        lossFeePerShareE42 -= decreaseLossFeePerShareE42;
                    }
                    changeInPerformanceFeeDebt = lossFeePerShareE42.fullMulDiv(
                            _totalSharesIncludingProvisional, (FACTOR_E36 * FACTOR_E6)
                        ).toInt256();
                    return (changeInProvisionalShares, changeInPerformanceFeeDebt, finalExchangeRateE36);
                }
            }
        }
    }

    /// @dev yearlyManagementFeeE18 = managementFeeAccrualBaseE18^SECONDS_PER_YEAR - 1e18
    /// @dev This represents the share of assets earned by the recipient of the management fee after one year of
    /// compounding.
    function convertToYearlyFeeE18(
        uint256 managementFeeAccrualBaseE18
    ) external pure returns (uint256 yearlyManagementFeeE18) {
        yearlyManagementFeeE18 = accruedShareOfAssetsE18(managementFeeAccrualBaseE18, SECONDS_PER_YEAR);
        return yearlyManagementFeeE18;
    }

    /// @dev ln(yearlyManagementFeeE18 + 1e18) = SECONDS_PER_YEAR * ln(managementFeeAccrualBaseE18)
    /// managementFeeAccrualBaseE18 = e^(ln(yearlyManagementFeeE18 + 1e18) / SECONDS_PER_YEAR)
    function convertToAccrualBase(
        uint256 yearlyManagementFeeE18
    ) external pure returns (uint256 managementFeeAccrualBaseE18) {
        // forge-lint: disable-next-line(unsafe-typecast)
        int256 intermediateValue = int256(yearlyManagementFeeE18 + FACTOR_E18).lnWad() / int256(SECONDS_PER_YEAR);
        managementFeeAccrualBaseE18 = uint256(intermediateValue.expWad());
        return managementFeeAccrualBaseE18;
    }

    /// @dev Returns the fraction of assets (scaled by 1e18) that should be distributed as management fees,
    /// based on the `managementFeeAccrualBaseE18` and `elapsedTime` input params
    function accruedShareOfAssetsE18(
        uint256 managementFeeAccrualBaseE18,
        uint256 elapsedTime
    ) public pure returns (uint256) {
        // forge-lint: disable-next-line(unsafe-typecast)
        return uint256(int256(managementFeeAccrualBaseE18).powWad(int256(elapsedTime * FACTOR_E18))) - FACTOR_E18;
    }

    /// @dev Returns the number of shares to mint in order to cover management fee accrual.
    function sharesToMint(
        uint256 totalShares,
        uint256 managementFeeAccrualBaseE18,
        uint256 elapsedTime
    ) external pure returns (uint256) {
        uint256 shareOfAssetsE18 = accruedShareOfAssetsE18(managementFeeAccrualBaseE18, elapsedTime);
        // edge case to cap max share of assets that new shares can represent
        if (shareOfAssetsE18 > MAX_SHARE_OF_ASSETS_E18) {
            shareOfAssetsE18 = MAX_SHARE_OF_ASSETS_E18;
        }
        return totalShares * shareOfAssetsE18 / (FACTOR_E18 - shareOfAssetsE18);
    }

    /// @notice Calculates token amounts for a UniV4 liquidity position including accrued fees
    function getPositionAmounts(
        PositionAmountsParams memory p
    ) external view returns (uint256 amount0, uint256 amount1) {
        (uint128 liquidity, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128) =
            p.poolManager.getPositionInfo(p.pool, p.positionId);

        if (liquidity == 0) {
            return (0, 0);
        }

        uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(p.tickLower);
        uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(p.tickUpper);

        if (p.sqrtPriceX96 <= sqrtPriceLowerX96) {
            amount0 = SqrtPriceMath.getAmount0Delta(sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity, false);
        } else if (p.sqrtPriceX96 >= sqrtPriceUpperX96) {
            amount1 = SqrtPriceMath.getAmount1Delta(sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity, false);
        } else {
            amount0 = SqrtPriceMath.getAmount0Delta(p.sqrtPriceX96, sqrtPriceUpperX96, liquidity, false);
            amount1 = SqrtPriceMath.getAmount1Delta(sqrtPriceLowerX96, p.sqrtPriceX96, liquidity, false);
        }

        (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =
            p.poolManager.getFeeGrowthInside(p.pool, p.tickLower, p.tickUpper);

        // SAFETY: fee growth uses modular arithmetic — underflow is expected and correct
        // (matches UniV4 Position.sol pattern)
        uint256 feesOwed0;
        uint256 feesOwed1;
        unchecked {
            feesOwed0 = FullMath.mulDiv(feeGrowthInside0X128 - feeGrowthInside0LastX128, liquidity, FixedPoint128.Q128);
            feesOwed1 = FullMath.mulDiv(feeGrowthInside1X128 - feeGrowthInside1LastX128, liquidity, FixedPoint128.Q128);
        }
        amount0 += feesOwed0;
        amount1 += feesOwed1;
    }
}
