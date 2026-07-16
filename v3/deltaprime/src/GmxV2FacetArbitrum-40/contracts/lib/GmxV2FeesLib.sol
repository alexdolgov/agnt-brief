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
        
        if (!benchmark.exists || benchmark.benchmarkTimeStamp == 0 || block.timestamp <= benchmark.benchmarkTimeStamp) {
            return 0;
        }
        
        // Current balance and its USD value
        uint256 currentBalance = IERC20(gmMarket).balanceOf(address(this));
        uint256 currentValueUsd = (currentBalance * gmTokenPriceUsd) / 1e8;
        
        // Calculate USD values with proper decimal handling
        uint256 longTokenValueUsd = _calculateTokenValueUsd(
            benchmark.underlyingLongTokenAmount, 
            longTokenPriceUsd, 
            benchmark.longTokenAddress
        );
        uint256 shortTokenValueUsd = _calculateTokenValueUsd(
            benchmark.underlyingShortTokenAmount, 
            shortTokenPriceUsd, 
            benchmark.shortTokenAddress
        );
        
        uint256 totalUnderlyingValueUsd = longTokenValueUsd + shortTokenValueUsd;
        
        // Check for negative performance (no underflow)
        if (currentValueUsd <= totalUnderlyingValueUsd) {
            return 0;
        }
        
        uint256 gmPerformanceUsd = currentValueUsd - totalUnderlyingValueUsd;
        uint256 timeElapsed = block.timestamp - benchmark.benchmarkTimeStamp;
        
        // Avoid division precision loss by scaling up first
        // Annual performance = (performance * 365 days) / timeElapsed
        gmAnnualPerformance = (gmPerformanceUsd * 365 days) / timeElapsed;
    }

    function _getDeductibleFeesInGmTokens(address gmMarket, uint256 gmTokenPriceUsd, uint256 longTokenPriceUsd, uint256 shortTokenPriceUsd) internal view returns (uint256 feeInGmTokens) {
        DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(gmMarket);
        
        if (!benchmark.exists || gmTokenPriceUsd == 0) {
            return 0;
        }
        
        // Current balance and its USD value
        uint256 currentBalance = IERC20(gmMarket).balanceOf(address(this));
        uint256 currentValueUsd = (currentBalance * gmTokenPriceUsd) / 1e8;

        // Calculate USD values with proper decimal handling
        uint256 longTokenValueUsd = _calculateTokenValueUsd(
            benchmark.underlyingLongTokenAmount, 
            longTokenPriceUsd, 
            benchmark.longTokenAddress
        );
        uint256 shortTokenValueUsd = _calculateTokenValueUsd(
            benchmark.underlyingShortTokenAmount, 
            shortTokenPriceUsd, 
            benchmark.shortTokenAddress
        );
        
        uint256 totalUnderlyingValueUsd = longTokenValueUsd + shortTokenValueUsd;
        
        // Check for negative performance (no underflow)
        if (currentValueUsd <= totalUnderlyingValueUsd) {
            return 0;
        }
        
        uint256 gmPerformanceUsd = currentValueUsd - totalUnderlyingValueUsd;

        if (gmPerformanceUsd > 0) {
            // Convert fee in USD back to GM tokens
            feeInGmTokens = (gmPerformanceUsd * 1e8) / gmTokenPriceUsd;
        }
    }

    /**
     * @dev Calculate token value in USD with proper decimal handling
     * @param tokenAmount The token amount (with original token decimals)
     * @param tokenPriceUsd The token price in USD (1e8 format)
     * @param tokenAddress The token contract address
     * @return valueUsd The USD value with 18 decimals
     */
    function _calculateTokenValueUsd(
        uint256 tokenAmount, 
        uint256 tokenPriceUsd, 
        address tokenAddress
    ) private view returns (uint256 valueUsd) {
        if (tokenAmount == 0 || tokenPriceUsd == 0) {
            return 0;
        }
        
        // Get token decimals
        uint8 decimals = IERC20Metadata(tokenAddress).decimals();
        
        // tokenAmount is stored in native token decimals, but USD calculations 
        // work with 18 decimals, so we need to normalize to 18 decimals
        if (decimals != 18) {
            if (decimals < 18) {
                // Scale UP for tokens with fewer decimals (e.g., USDC has 6 decimals)
                tokenAmount = tokenAmount * (10 ** (18 - decimals));
            } else {
                // Scale DOWN for tokens with more decimals (rare case)
                tokenAmount = tokenAmount / (10 ** (decimals - 18));
            }
        }
        
        // Now calculate USD value with normalized 18-decimal tokenAmount
        // (tokenAmount * tokenPriceUsd) / 1e8 
        valueUsd = (tokenAmount * tokenPriceUsd) / 1e8;
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
        
        // Calculate USD values with proper decimal handling
        feeData.longTokenValueUsd = _calculateTokenValueUsd(
            benchmark.underlyingLongTokenAmount, 
            longTokenPriceUsd, 
            benchmark.longTokenAddress
        );
        feeData.shortTokenValueUsd = _calculateTokenValueUsd(
            benchmark.underlyingShortTokenAmount, 
            shortTokenPriceUsd, 
            benchmark.shortTokenAddress
        );
        
        uint256 totalUnderlyingValueUsd = feeData.longTokenValueUsd + feeData.shortTokenValueUsd;
        
        // Check for negative performance (no underflow)
        if (feeData.currentValueUsd > totalUnderlyingValueUsd) {
            feeData.gmPerformanceUsd = feeData.currentValueUsd - totalUnderlyingValueUsd;
        } else {
            feeData.gmPerformanceUsd = 0;
        }
        
        feeData.feePercentage = 1e17; // 10% (in 1e18 format)
        feeData.feeTreasury = DeploymentConstants.getTreasuryAddress();
    }

    function _processFeeCollection(
        address gmMarket,
        uint256 gmTokenPriceUsd,
        FeeCalculationData memory feeData,
        DiamondStorageLib.GmxPositionBenchmark memory benchmark
    ) private returns (uint256 feeInGmTokens) {
        uint256 gmPerformanceFeeUsd = (feeData.gmPerformanceUsd * feeData.feePercentage) / 1e18;
        
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
        
        // Check for zero supply to avoid division by zero
        if (supplyData.totalGmSupply == 0) {
            return;
        }
        
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

// Interface for IERC20Metadata to get token decimals
interface IERC20Metadata {
    function decimals() external view returns (uint8);
}