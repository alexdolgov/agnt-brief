// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title IExchangeRouter
/// @notice Minimal interface for GMX V2 ExchangeRouter — only the functions we call.
interface IExchangeRouter {
    struct CreateDepositParams {
        CreateDepositParamsAddresses addresses;
        uint256 minMarketTokens;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
        bytes32[] dataList;
    }

    struct CreateDepositParamsAddresses {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialLongToken;
        address initialShortToken;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
    }

    struct CreateWithdrawalParams {
        CreateWithdrawalParamsAddresses addresses;
        uint256 minLongTokenAmount;
        uint256 minShortTokenAmount;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
        bytes32[] dataList;
    }

    struct CreateWithdrawalParamsAddresses {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
    }

    struct CreateOrderParams {
        CreateOrderParamsAddresses addresses;
        CreateOrderParamsNumbers numbers;
        OrderType orderType;
        DecreasePositionSwapType decreasePositionSwapType;
        bool isLong;
        bool shouldUnwrapNativeToken;
        bool autoCancel;
        bytes32 referralCode;
    }

    struct CreateOrderParamsAddresses {
        address receiver;
        address cancellationReceiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialCollateralToken;
        address[] swapPath;
    }

    struct CreateOrderParamsNumbers {
        uint256 sizeDeltaUsd;
        uint256 initialCollateralDeltaAmount;
        uint256 triggerPrice;
        uint256 acceptablePrice;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 minOutputAmount;
        uint256 validFromTime;
    }

    enum OrderType {
        MarketSwap,
        LimitSwap,
        MarketIncrease,
        LimitIncrease,
        MarketDecrease,
        LimitDecrease,
        StopLossDecrease,
        Liquidation,
        LimitIncrease2
    }

    enum DecreasePositionSwapType {
        NoSwap,
        SwapPnlTokenToCollateralToken,
        SwapCollateralTokenToPnlToken
    }

    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);

    function sendWnt(address receiver, uint256 amount) external payable;

    function sendTokens(address token, address receiver, uint256 amount) external payable;

    function createDeposit(CreateDepositParams calldata params) external payable returns (bytes32);

    function createWithdrawal(CreateWithdrawalParams calldata params) external payable returns (bytes32);

    function createOrder(CreateOrderParams calldata params) external payable returns (bytes32);

    function cancelDeposit(bytes32 key) external payable;

    function cancelWithdrawal(bytes32 key) external payable;

    function cancelOrder(bytes32 key) external payable;
}
