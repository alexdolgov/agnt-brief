// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Invalid Insufficient Nonexistent Existent

error ZeroAddress();

interface IPriceFacadeError {
    error NonexistentRequestId(bytes32 requestId);
}

interface ITradingCoreError {
    error UnsupportedMarginToken(address token);
}

interface ISlippageManagerError {
    error InvalidSlippage(uint16 slippageLongP, uint16 slippageShortP);
    error InvalidOnePercentDepthUsd(uint256 onePercentDepthAboveUsd, uint256 onePercentDepthBelowUsd);
    error ExistentSlippage(uint16 index, string name);
    error NonexistentSlippage(uint16 index);
    error SlippageInUse(uint16 index, string name);
}

interface ITradingPortalError {
    error NonexistentTrade();
    error UnauthorizedOperation(address operator);
    error MarketClosed();
    error PairClosed(address pairBase);
    error InvalidStopLoss(bytes32 tradeHash, uint64 entryPrice, uint64 newStopLoss);
    error InsufficientMarginAmount(bytes32 tradeHash, uint256 amount);
    error BelowDegenModeMinLeverage(bytes32 tradeHash, uint256 minRequiredLeverage, uint256 newLeverage);
}

interface PythError {
    error InvalidPrice(bytes32 priceId, int64 price);
    error InvalidHistoryPrice(bytes32 priceId, uint256 publishTime, int64 price);
    error InvalidExpo(int64 price, int32 expo);
}