// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import "./arbitrum-qa/DeploymentConstants.sol";
import "./DiamondStorageLib.sol";
import "../interfaces/ITokenManager.sol";


library GmxV2FeesLib {

    struct GmxPositionDetails {
        uint256 gmTokenPriceUsd; // in 1e8 format
        uint256 underlyingLongTokenAmount; // in 1e18 format
        uint256 underlyingShortTokenAmount; // in 1e18 format
        uint256 longTokenPriceUsd; // in 1e8 format
        uint256 shortTokenPriceUsd; // in 1e8 format
        uint256 benchmarkTimeStamp; // timestamp of when the benchmark was set
        address longTokenAddress;
        address shortTokenAddress;
    }

    struct FeeCalculationData {
        uint256 currentBalance;
        uint256 currentValueUsd;
        uint256 longTokenValueUsd;
        uint256 shortTokenValueUsd;
        uint256 gmPerformanceUsd;
        uint256 feePercentage;
        address feeTreasury;
    }

    struct TokenSupplyData {
        uint256 totalGmSupply;
        uint256 totalLongTokens;
        uint256 totalShortTokens;
    }

    struct GmxTokenPrice {
        uint256 gmTokenPrice;
        uint256 longTokenPrice;
        uint256 shortTokenPrice;
    }

    function _createOrUpdatePositionBenchmark(address gmMarket, uint256 gmTokenAmount, GmxPositionDetails memory positionDetails) internal {
        
        DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(gmMarket);
        uint256 gmTokenPriceUsd = positionDetails.gmTokenPriceUsd;
        uint256 longTokenAmount = positionDetails.underlyingLongTokenAmount;
        uint256 shortTokenAmount = positionDetails.underlyingShortTokenAmount;
        address longToken = positionDetails.longTokenAddress;
        address shortToken = positionDetails.shortTokenAddress;
        uint256 longTokenPriceUsd = positionDetails.longTokenPriceUsd;
        uint256 shortTokenPriceUsd = positionDetails.shortTokenPriceUsd;
        uint256 benchmarkValueUsd = (gmTokenAmount * gmTokenPriceUsd) / 1e8; 
        
        if (!benchmark.exists) {
            // if the position is new, we just set the benchmark
            DiamondStorageLib.setGmxPositionBenchmark(gmMarket, benchmarkValueUsd, longTokenAmount, shortTokenAmount, longToken, shortToken, block.timestamp);
        } else {
            _updateBenchmark(gmMarket, gmTokenPriceUsd, longTokenPriceUsd, shortTokenPriceUsd);
        }
    }

    /**
     * @dev Sweeps accumulated fees from GM token position and transfers them to treasury
     * @param gmMarket The GM market address
     * @param gmTokenPriceUsd The current GM token price in USD (1e8 format)
     * @param longTokenPriceUsd The current long token price in USD (1e8 format)
     * @param shortTokenPriceUsd The current short token price in USD (1e8 format)
     * @return feeInGmTokens The amount of GM tokens collected as fees
     */
    function _sweepFees(
        address gmMarket, 
        uint256 gmTokenPriceUsd, 
        uint256 longTokenPriceUsd, 
        uint256 shortTokenPriceUsd
    ) internal returns (uint256 feeInGmTokens) {
        DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(gmMarket);
        
        if (!benchmark.exists) {
            return 0;
        }

        if (gmTokenPriceUsd == 0 || longTokenPriceUsd == 0 || shortTokenPriceUsd == 0) {
            return 0; 
        }
        
        FeeCalculationData memory feeData = _calculateFeeData(
            gmMarket, 
            gmTokenPriceUsd, 
            longTokenPriceUsd, 
            shortTokenPriceUsd, 
            benchmark
        );
        
        if (feeData.currentValueUsd > feeData.longTokenValueUsd + feeData.shortTokenValueUsd) {
            feeInGmTokens = _processFeeCollection(gmMarket, gmTokenPriceUsd, feeData, benchmark);
        }
    }

    /**
     * @dev Updates the benchmark after fee collection or position changes
     * @param gmMarket The GM market address
     * @param gmTokenPriceUsd The current GM token price in USD (1e8 format)
     * @param longTokenPriceUsd The current long token price in USD (1e8 format)
     * @param shortTokenPriceUsd The current short token price in USD (1e8 format)
     */
    function _updateBenchmark(
        address gmMarket, 
        uint256 gmTokenPriceUsd, 
        uint256 longTokenPriceUsd, 
        uint256 shortTokenPriceUsd
    ) internal {
        DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(gmMarket);
        
        if (!benchmark.exists) {
            return;
        }

        if (gmTokenPriceUsd == 0 || longTokenPriceUsd == 0 || shortTokenPriceUsd == 0) {
            return;
        }
        
        // Current balance and its USD value
        uint256 currentBalance = IERC20(gmMarket).balanceOf(address(this));
        uint256 currentValueUsd = (currentBalance * gmTokenPriceUsd) / 1e8;
        
        _updateTheBenchmark(gmMarket, currentValueUsd, benchmark);
    }

    function _getGmAnnualisedPerformance(address gmMarket, uint256 gmTokenPriceUsd, uint256 longTokenPriceUsd, uint256 shortTokenPriceUsd) internal view returns (uint256 gmAnnualPerformance) {
        DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(gmMarket);
        
        
        // Current balance and its USD value
        uint256 currentBalance = IERC20(gmMarket).balanceOf(address(this));
        uint256 currentValueUsd = (currentBalance * gmTokenPriceUsd) / 1e8; // currentBalance in 1e18 format
        
        
        uint256 longTokenValueUsd = (benchmark.underlyingLongTokenAmount * longTokenPriceUsd) / 1e8;
        uint256 shortTokenValueUsd = (benchmark.underlyingShortTokenAmount * shortTokenPriceUsd) / 1e8;
        
        uint256 gmPerformanceUsd = currentValueUsd - (longTokenValueUsd + shortTokenValueUsd);
        
        
        gmAnnualPerformance = (gmPerformanceUsd) / (365 days * (block.timestamp - benchmark.benchmarkTimeStamp)); // no negative or zero values possible in the denominator as benchmarkTimeStamp is set only when there is a position
        
    }

    function _getDeductibleFeesInGmTokens(address gmMarket, uint256 gmTokenPriceUsd, uint256 longTokenPriceUsd, uint256 shortTokenPriceUsd) internal view returns (uint256 feeInGmTokens) {
        DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(gmMarket);
        
        
        
        
        
        // Current balance and its USD value
        uint256 currentBalance = IERC20(gmMarket).balanceOf(address(this));
        uint256 currentValueUsd = (currentBalance * gmTokenPriceUsd) / 1e8; // currentBalance in 1e18 format

        uint256 longTokenValueUsd = (benchmark.underlyingLongTokenAmount * longTokenPriceUsd) / 1e8;
        uint256 shortTokenValueUsd = (benchmark.underlyingShortTokenAmount * shortTokenPriceUsd) / 1e8;
        
        uint256 gmPerformanceUsd = currentValueUsd - (longTokenValueUsd + shortTokenValueUsd);

        if (gmPerformanceUsd > 0) {
                // Convert fee in USD back to GM tokens
                feeInGmTokens = (gmPerformanceUsd * 1e8) / gmTokenPriceUsd;
            }
        
        
    }

    


    function _calculateFeeData(
        address gmMarket,
        uint256 gmTokenPriceUsd,
        uint256 longTokenPriceUsd,
        uint256 shortTokenPriceUsd,
        DiamondStorageLib.GmxPositionBenchmark memory benchmark
    ) private view returns (FeeCalculationData memory feeData) {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        
        feeData.currentBalance = IERC20(gmMarket).balanceOf(address(this));
        feeData.currentValueUsd = (feeData.currentBalance * gmTokenPriceUsd) / 1e8;
        
        feeData.longTokenValueUsd = (benchmark.underlyingLongTokenAmount * longTokenPriceUsd) / 1e8;
        feeData.shortTokenValueUsd = (benchmark.underlyingShortTokenAmount * shortTokenPriceUsd) / 1e8;
        
        feeData.gmPerformanceUsd = feeData.currentValueUsd - (feeData.longTokenValueUsd + feeData.shortTokenValueUsd);
        
        feeData.feePercentage = 10e18; // 10%
        feeData.feeTreasury = DeploymentConstants.getTreasuryAddress();
    }

    function _processFeeCollection(
        address gmMarket,
        uint256 gmTokenPriceUsd,
        FeeCalculationData memory feeData,
        DiamondStorageLib.GmxPositionBenchmark memory benchmark
    ) private returns (uint256 feeInGmTokens) {
        uint256 gmPerformanceFeeUsd = (feeData.gmPerformanceUsd * feeData.feePercentage) / (1e8 * 100);
        
        if (gmPerformanceFeeUsd == 0) {
            return 0;
        }
        
        feeInGmTokens = (gmPerformanceFeeUsd * 1e8) / gmTokenPriceUsd;
        
        if (feeInGmTokens > 0 && feeInGmTokens <= feeData.currentBalance) {
            IERC20(gmMarket).transfer(feeData.feeTreasury, feeInGmTokens);
        }
    }

    function _updateTheBenchmark(
        address gmMarket,
        uint256 newValueUsd,
        DiamondStorageLib.GmxPositionBenchmark memory benchmark
    ) internal {
        TokenSupplyData memory supplyData;
        supplyData.totalGmSupply = IERC20(gmMarket).totalSupply();
        supplyData.totalLongTokens = IERC20(benchmark.longTokenAddress).balanceOf(gmMarket);
        supplyData.totalShortTokens = IERC20(benchmark.shortTokenAddress).balanceOf(gmMarket);
        
        uint256 currentBalance = IERC20(gmMarket).balanceOf(address(this));
        
        uint256 newUnderlyingLongTokenAmount = (currentBalance * supplyData.totalLongTokens) / supplyData.totalGmSupply;
        uint256 newUnderlyingShortTokenAmount = (currentBalance * supplyData.totalShortTokens) / supplyData.totalGmSupply;
        
        DiamondStorageLib.setGmxPositionBenchmark(
            gmMarket,
            newValueUsd,
            newUnderlyingLongTokenAmount,
            newUnderlyingShortTokenAmount,
            benchmark.longTokenAddress,
            benchmark.shortTokenAddress,
            block.timestamp
        );
    }


    
}