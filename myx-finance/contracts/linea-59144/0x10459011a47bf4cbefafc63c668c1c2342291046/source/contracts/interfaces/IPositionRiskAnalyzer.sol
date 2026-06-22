// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import '../libraries/Position.sol';
import "./IFeeCollector.sol";

interface IPositionRiskAnalyzer {

    function needADL(
        uint256 pairIndex,
        uint256 longTracker,
        uint256 shortTracker,
        bool isLong,
        uint256 executionSize,
        uint256 executionPrice
    ) external view returns (bool needADL, uint256 needADLAmount);

    function needLiquidation(
        Position.Info memory position,
        int256 globalFundingFeeTracker,
        uint256 price
    ) external view returns (bool);

    function getTradingFee(
        uint256 _pairIndex,
        bool _isLong,
        bool _isIncrease,
        uint256 _sizeAmount,
        uint256 price
    ) external view returns (uint256 tradingFee);

    function getFundingFee(
        Position.Info memory position,
        int256 globalFundingFeeTracker
    ) external view returns (int256 fundingFee);

    function maxAvailableLiquidity(
        IPool.Vault memory lpVault,
        IPool.Pair memory pair,
        int256 exposedPositions,
        bool isLong,
        uint256 executionPrice
    ) external view returns (uint256 amount);

    function getExposedPositions(uint256 longTracker, uint256 shortTracker) external pure returns (int256);

    function regularTradingFee(
        uint256 pairIndex,
        bool isLong,
        bool isIncrease,
        uint256 sizeDeltaStable,
        uint256 executionPrice
    ) external view returns (uint256 tradingFee, bool isMaker);

}
