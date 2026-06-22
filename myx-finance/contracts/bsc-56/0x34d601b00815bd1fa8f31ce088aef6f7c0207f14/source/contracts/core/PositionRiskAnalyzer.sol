// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import "../interfaces/IPositionRiskAnalyzer.sol";
import "../helpers/TokenHelper.sol";
import "../libraries/Upgradeable.sol";
import "../libraries/Int256Utils.sol";
import "../libraries/PrecisionUtils.sol";
import "../libraries/Position.sol";


contract PositionRiskAnalyzer is IPositionRiskAnalyzer, Upgradeable {
    using Int256Utils for int256;
    using Int256Utils for uint256;
    using PrecisionUtils for uint256;
    using Position for mapping(bytes32 => Position.Info);
    using Position for Position.Info;

    IPool public pool;
    IFeeCollector public feeCollector;

    function initialize(
        IAddressesProvider addressProvider,
        IPool _pool,
        IFeeCollector _feeCollector
    ) public initializer {
        ADDRESS_PROVIDER = addressProvider;
        pool = _pool;
        feeCollector = _feeCollector;
    }

    function needADL(
        uint256 pairIndex,
        uint256 longTracker,
        uint256 shortTracker,
        bool isLong,
        uint256 executionSize,
        uint256 executionPrice
    ) external view returns (bool need, uint256 needADLAmount) {
        IPool.Vault memory vault = pool.getVault(pairIndex);
        IPool.Pair memory pair = pool.getPair(pairIndex);
        int256 exposedPositions = getExposedPositions(longTracker, shortTracker);

        int256 afterExposedPositions = exposedPositions;
        if (isLong) {
            afterExposedPositions -= executionSize.safeConvertToInt256();
        } else {
            afterExposedPositions += executionSize.safeConvertToInt256();
        }

        uint256 availableLiquidity = maxAvailableLiquidity(vault, pair, exposedPositions, !isLong, executionPrice);

        if (executionSize <= availableLiquidity || afterExposedPositions == 0) {
            return (false, 0);
        }

        int256 available;
        if (afterExposedPositions > 0) {
            available = int256(vault.indexTotalAmount) - exposedPositions;
        } else {
            int256 stableToIndexAmount = TokenHelper.convertStableAmountToIndex(
                pair,
                int256(vault.stableTotalAmount)
            );

            int256 exposedPositionDelta = exposedPositions * int256(vault.averagePrice) / int256(PrecisionUtils.pricePrecision());
            available = Int256Utils.max(0, exposedPositions) +
                (stableToIndexAmount + Int256Utils.min(0, exposedPositionDelta)) * int256(PrecisionUtils.pricePrecision()) / int256(executionPrice);
        }

        if (available <= 0) {
            return (true, executionSize);
        }

        if (executionSize > available.abs()) {
            need = true;
            needADLAmount = executionSize - available.abs();
        }
        return (need, needADLAmount);
    }

    function needLiquidation(
        Position.Info memory position,
        int256 globalFundingFeeTracker,
        uint256 price
    ) public view returns (bool) {
        IPool.Pair memory pair = pool.getPair(position.pairIndex);
        IPool.TradingConfig memory tradingConfig = pool.getTradingConfig(position.pairIndex);

        int256 unrealizedPnl = position.getUnrealizedPnl(pair, position.positionAmount, price);
        uint256 tradingFee = getTradingFee(
            position.pairIndex,
            position.isLong,
            false,
            position.positionAmount,
            price
        );
        int256 fundingFee = getFundingFee(
            position,
            globalFundingFeeTracker
        );
        int256 exposureAsset = int256(position.collateral) + unrealizedPnl - int256(tradingFee) + fundingFee;

        bool need;
        if (exposureAsset <= 0) {
            need = true;
        } else {
            uint256 maintainMarginWad = uint256(
                TokenHelper.convertTokenAmountWithPrice(
                    pair.indexToken,
                    int256(position.positionAmount),
                    18,
                    position.averagePrice
                )
            ) * tradingConfig.maintainMarginRate;
            uint256 netAssetWad = uint256(
                TokenHelper.convertTokenAmountTo(pair.stableToken, exposureAsset, 18)
            );

            uint256 riskRate = maintainMarginWad / netAssetWad;
            need = riskRate >= PrecisionUtils.percentage();
        }
        return need;
    }


    function getTradingFee(
        uint256 _pairIndex,
        bool _isLong,
        bool _isIncrease,
        uint256 _sizeAmount,
        uint256 price
    ) public view override returns (uint256 tradingFee) {
        IPool.Pair memory pair = pool.getPair(_pairIndex);
        uint256 sizeDeltaStable = uint256(
            TokenHelper.convertIndexAmountToStableWithPrice(pair, int256(_sizeAmount), price)
        );

        (tradingFee, ) = regularTradingFee(_pairIndex, _isLong, _isIncrease, sizeDeltaStable, price);
        return tradingFee;
    }

    function getFundingFee(
        Position.Info memory position,
        int256 globalFundingFeeTracker
    ) public view override returns (int256 fundingFee) {
        IPool.Pair memory pair = pool.getPair(position.pairIndex);
        int256 fundingFeeTracker = globalFundingFeeTracker - position.fundingFeeTracker;
        if ((position.isLong && fundingFeeTracker > 0) || (!position.isLong && fundingFeeTracker < 0)) {
            fundingFee = -1;
        } else {
            fundingFee = 1;
        }
        fundingFee *= TokenHelper.convertIndexAmountToStable(
            pair,
            int256(
                (position.positionAmount * fundingFeeTracker.abs()) /
                PrecisionUtils.fundingRatePrecision()
            )
        );
    }

    function maxAvailableLiquidity(
        IPool.Vault memory lpVault,
        IPool.Pair memory pair,
        int256 exposedPositions,
        bool isLong,
        uint256 executionPrice
    ) public view returns (uint256 amount) {
        if (exposedPositions >= 0) {
            if (isLong) {
                amount = lpVault.indexTotalAmount >= lpVault.indexReservedAmount ?
                    lpVault.indexTotalAmount - lpVault.indexReservedAmount : 0;
            } else {
                int256 availableStable = int256(lpVault.stableTotalAmount) - int256(lpVault.stableReservedAmount);
                int256 stableToIndexAmount = TokenHelper.convertStableAmountToIndex(
                    pair,
                    availableStable
                );
                if (stableToIndexAmount < 0) {
                    if (uint256(exposedPositions) <= stableToIndexAmount.abs().divPrice(executionPrice)) {
                        amount = 0;
                    } else {
                        amount = uint256(exposedPositions) - stableToIndexAmount.abs().divPrice(executionPrice);
                    }
                } else {
                    amount = uint256(exposedPositions) + stableToIndexAmount.abs().divPrice(executionPrice);
                }
            }
        } else {
            if (isLong) {
                int256 availableIndex = int256(lpVault.indexTotalAmount) - int256(lpVault.indexReservedAmount);
                if (availableIndex > 0) {
                    amount = uint256(-exposedPositions) + availableIndex.abs();
                } else {
                    amount = uint256(-exposedPositions) >= availableIndex.abs() ?
                        uint256(-exposedPositions) - availableIndex.abs() : 0;
                }
            } else {
                int256 availableStable = int256(lpVault.stableTotalAmount) - int256(lpVault.stableReservedAmount);
                int256 stableToIndexAmount = TokenHelper.convertStableAmountToIndex(
                    pair,
                    availableStable
                );
                if (stableToIndexAmount < 0) {
                    amount = 0;
                } else {
                    amount = stableToIndexAmount.abs().divPrice(executionPrice);
                }
            }
        }
        return amount;
    }

    function getExposedPositions(uint256 longTracker, uint256 shortTracker) public pure override returns (int256) {
        if (longTracker > shortTracker) {
            return int256(longTracker - shortTracker);
        } else {
            return -int256(shortTracker - longTracker);
        }
    }

    function regularTradingFee(
        uint256 pairIndex,
        bool isLong,
        bool isIncrease,
        uint256 sizeDeltaStable,
        uint256 executionPrice
    ) public view returns (uint256 tradingFee, bool isMaker) {
        IFeeCollector.TradingFeeTier memory regularFeeTier = feeCollector.getRegularTradingFeeTier(pairIndex);

        (,, int256 availableLiquidityBefore) = pool.getAvailableLiquidity(pairIndex, executionPrice);

        int256 availableLiquidityAfter;
        if ((isIncrease && isLong) || (!isIncrease && !isLong)) {
            availableLiquidityAfter = availableLiquidityBefore - sizeDeltaStable.safeConvertToInt256();
        } else {
            availableLiquidityAfter = availableLiquidityBefore + sizeDeltaStable.safeConvertToInt256();
        }

        if ((availableLiquidityBefore > 0 && availableLiquidityBefore > availableLiquidityAfter && availableLiquidityAfter >= 0)
            || (availableLiquidityBefore < 0 && availableLiquidityBefore < availableLiquidityAfter && availableLiquidityAfter <= 0)) {
            isMaker = true;
        }

        uint256 rate = isMaker ? regularFeeTier.makerFee.abs() : regularFeeTier.takerFee;
        tradingFee = sizeDeltaStable.mulPercentage(rate);
        return (tradingFee, isMaker);
    }


}
