// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";

interface IGMXV2_Module {
    function gmxv2_create(
        address market,
        address collateral,
        address[] calldata path,
        IExchangeRouter.OrderType orderType,
        IExchangeRouter.DecreasePositionSwapType decreasePositionSwapType,
        bool isLong,
        uint256 sizeDeltaUsd,
        uint256 initialCollateralDeltaAmount,
        uint256 triggerPrice,
        uint256 acceptablePrice,
        uint256 minOutputAmount,
        uint256 executionFee
    ) external payable;
    function gmxv2_update(
        bytes32 key,
        uint256 sizeDeltaUsd,
        uint256 acceptablePrice,
        uint256 triggerPrice,
        uint256 minOutputAmount
    ) external;
    function gmxv2_cancel(bytes32 key) external;
    function gmxv2_claimFees(address[] memory markets, address[] memory tokens) external;
    function gmxv2_deposit(address market, uint256 executionFee, uint256 short, uint256 long, uint256 minOut)
        external
        payable;
    function gmxv2_withdraw(
        address market,
        uint256 executionFee,
        uint256 amount,
        uint256 minLongOut,
        uint256 minShortOut
    ) external payable;
    function gmxv2_glvDeposit(address glv, address market, uint256 longAmount, uint256 shortAmount, uint256 executionFee) external payable;
    function gmxv2_glvWithdraw(address glv, address market, uint256 amount, uint256 executionFee) external payable;
    function gmxv2_glvCancelDeposit(bytes32 key) external payable;
    function gmxv2_glvCancelWithdraw(bytes32 key) external payable;
}

/*
contract GMXV2_Module is IGMXV2_Module, AccessControl, ReentrancyGuard {
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

    address public immutable dataStore;
    address public immutable reader;
    IExchangeRouter public immutable exchangeRouter;
    address public immutable orderVault;
    address public immutable depositVault;
    address public immutable withdrawVault;
    IGlvRouter public immutable glvRouter;

    constructor(
        address _dataStore,
        address _reader,
        address _exchangeRouter,
        address _orderVault,
        address _depositVault,
        address _withdrawVault,
        address _glvRouter
    ) {
        dataStore = _dataStore;
        reader = _reader;
        exchangeRouter = IExchangeRouter(_exchangeRouter);
        orderVault = _orderVault;
        depositVault = _depositVault;
        withdrawVault = _withdrawVault;
        glvRouter = IGlvRouter(_glvRouter);
    }

    function gmxv2_create(
        address market,
        address collateral,
        address[] calldata path,
        IExchangeRouter.OrderType orderType,
        IExchangeRouter.DecreasePositionSwapType decreasePositionSwapType,
        bool isLong,
        uint256 sizeDeltaUsd,
        uint256 initialCollateralDeltaAmount,
        uint256 triggerPrice,
        uint256 acceptablePrice,
        uint256 minOutputAmount,
        uint256 executionFee
    ) external payable onlyRole(EXECUTOR_ROLE) nonReentrant {
        IExchangeRouter.CreateOrderParams memory params = IExchangeRouter.CreateOrderParams({
            addresses: IExchangeRouter.CreateOrderParamsAddresses({
                receiver: address(this),
                cancellationReceiver: address(this),
                callbackContract: address(0),
                uiFeeReceiver: address(0),
                market: market,
                initialCollateralToken: collateral,
                swapPath: path
            }),
            numbers: IExchangeRouter.CreateOrderParamsNumbers({
                sizeDeltaUsd: sizeDeltaUsd,
                initialCollateralDeltaAmount: initialCollateralDeltaAmount,
                triggerPrice: triggerPrice,
                acceptablePrice: acceptablePrice,
                executionFee: executionFee,
                callbackGasLimit: 0,
                minOutputAmount: minOutputAmount,
                validFromTime: 0
            }),
            orderType: orderType,
            decreasePositionSwapType: decreasePositionSwapType,
            isLong: isLong,
            shouldUnwrapNativeToken: false,
            autoCancel: false,
            referralCode: ""
        });
        if (
            orderType == IExchangeRouter.OrderType.LimitSwap || orderType == IExchangeRouter.OrderType.MarketIncrease
                || orderType == IExchangeRouter.OrderType.LimitIncrease
        ) {
            IERC20(collateral).approve(exchangeRouter.router(), initialCollateralDeltaAmount);
            bytes[] memory data = new bytes[](3);
            data[0] = abi.encodeWithSelector(IExchangeRouter.sendWnt.selector, orderVault, executionFee);
            data[1] = abi.encodeWithSelector(
                IExchangeRouter.sendTokens.selector, collateral, orderVault, initialCollateralDeltaAmount
            );
            data[2] = abi.encodeWithSelector(IExchangeRouter.createOrder.selector, params);
            exchangeRouter.multicall{value: executionFee}(data);
        } else {
            bytes[] memory data = new bytes[](2);
            data[0] = abi.encodeWithSelector(IExchangeRouter.sendWnt.selector, orderVault, executionFee);
            data[1] = abi.encodeWithSelector(IExchangeRouter.createOrder.selector, params);
            exchangeRouter.multicall{value: executionFee}(data);
        }
    }

    function gmxv2_update(
        bytes32 key,
        uint256 sizeDeltaUsd,
        uint256 acceptablePrice,
        uint256 triggerPrice,
        uint256 minOutputAmount
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        exchangeRouter.updateOrder(key, sizeDeltaUsd, acceptablePrice, triggerPrice, minOutputAmount, 0, false);
    }

    function gmxv2_cancel(bytes32 key) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        exchangeRouter.cancelOrder(key);
    }

    function gmxv2_claimFees(address[] memory markets, address[] memory tokens)
        external
        onlyRole(EXECUTOR_ROLE)
        nonReentrant
    {
        exchangeRouter.claimFundingFees(markets, tokens, address(this));
    }

    function gmxv2_deposit(address market, uint256 executionFee, uint256 long, uint256 short, uint256 minOut)
        external
        payable
        onlyRole(EXECUTOR_ROLE)
        nonReentrant
    {
        IMarket.Props memory marketInfo = IReader(reader).getMarket(dataStore, market);
        IExchangeRouter.CreateDepositParams memory params = IExchangeRouter.CreateDepositParams({
            receiver: address(this),
            callbackContract: address(0),
            uiFeeReceiver: address(0),
            market: market,
            initialLongToken: marketInfo.longToken,
            initialShortToken: marketInfo.shortToken,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minMarketTokens: minOut,
            shouldUnwrapNativeToken: false,
            executionFee: executionFee,
            callbackGasLimit: 0
        });
        bytes[] memory data = new bytes[](4);
        IERC20(marketInfo.longToken).approve(exchangeRouter.router(), long);
        IERC20(marketInfo.shortToken).approve(exchangeRouter.router(), short);
        data[0] = abi.encodeWithSelector(IExchangeRouter.sendWnt.selector, depositVault, params.executionFee);
        data[1] = abi.encodeWithSelector(IExchangeRouter.sendTokens.selector, marketInfo.longToken, depositVault, long);
        data[2] =
            abi.encodeWithSelector(IExchangeRouter.sendTokens.selector, marketInfo.shortToken, depositVault, short);
        data[3] = abi.encodeWithSelector(IExchangeRouter.createDeposit.selector, params);
        exchangeRouter.multicall{value: params.executionFee}(data);
    }

    function gmxv2_withdraw(
        address market,
        uint256 executionFee,
        uint256 amount,
        uint256 minLongOut,
        uint256 minShortOut
    ) external payable onlyRole(EXECUTOR_ROLE) nonReentrant {
        IExchangeRouter.CreateWithdrawalParams memory params = IExchangeRouter.CreateWithdrawalParams({
            receiver: address(this),
            callbackContract: address(0),
            uiFeeReceiver: address(0),
            market: market,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minLongTokenAmount: minLongOut,
            minShortTokenAmount: minShortOut,
            shouldUnwrapNativeToken: false,
            executionFee: executionFee,
            callbackGasLimit: 0
        });

        bytes[] memory data = new bytes[](3);
        IERC20(market).approve(exchangeRouter.router(), amount);
        data[0] = abi.encodeWithSelector(IExchangeRouter.sendWnt.selector, withdrawVault, params.executionFee);
        data[1] = abi.encodeWithSelector(IExchangeRouter.sendTokens.selector, market, withdrawVault, amount);
        data[2] = abi.encodeWithSelector(IExchangeRouter.createWithdrawal.selector, params);
        exchangeRouter.multicall{value: params.executionFee}(data);
    }

    function gmxv2_glvDeposit(address glv, address market, uint256 longAmount, uint256 shortAmount, uint256 executionFee) external payable onlyRole(EXECUTOR_ROLE) {
        IMarket.Props memory marketInfo = IReader(reader).getMarket(dataStore, market);
        address glvVault = IGlvHandler(glvRouter.glvHandler()).glvVault();
        bytes[] memory data = new bytes[](3);
        data[0] = abi.encodeWithSelector(IExchangeRouter.sendWnt.selector, glvVault, executionFee);
        data[1] = abi.encodeWithSelector(IExchangeRouter.sendTokens.selector, marketInfo.longToken, glvVault, longAmount);
        data[2] = abi.encodeWithSelector(IExchangeRouter.sendTokens.selector, marketInfo.shortToken, glvVault, shortAmount);
        IERC20(marketInfo.longToken).approve(exchangeRouter.router(), longAmount);
        IERC20(marketInfo.shortToken).approve(exchangeRouter.router(), shortAmount);
        exchangeRouter.multicall{value: executionFee}(data);
        glvRouter.createGlvDeposit(IGlvRouter.CreateGlvDepositParams({
            glv: glv, 
            market: market,
            receiver: address(this),
            callbackContract: address(0),
            uiFeeReceiver: address(0),
            initialLongToken: marketInfo.longToken,
            initialShortToken: marketInfo.shortToken,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minGlvTokens: 0,
            executionFee: executionFee,
            callbackGasLimit: 0,
            shouldUnwrapNativeToken: false,
            isMarketTokenDeposit: false
        }));
    }

    function gmxv2_glvCancelDeposit(bytes32 key) external payable onlyRole(EXECUTOR_ROLE) nonReentrant {
        glvRouter.cancelGlvDeposit(key);
    }

    function gmxv2_glvWithdraw(address glv, address market, uint256 amount, uint256 executionFee) external payable onlyRole(EXECUTOR_ROLE) {
        address glvVault = IGlvHandler(glvRouter.glvHandler()).glvVault();
        bytes[] memory data = new bytes[](2);
        data[0] = abi.encodeWithSelector(IExchangeRouter.sendWnt.selector, glvVault, executionFee);
        data[1] = abi.encodeWithSelector(IExchangeRouter.sendTokens.selector, glv, glvVault, amount);
        IERC20(glv).approve(exchangeRouter.router(), amount);
        exchangeRouter.multicall{value: executionFee}(data);
        glvRouter.createGlvWithdrawal(IGlvRouter.CreateGlvWithdrawalParams({
            receiver: address(this),
            callbackContract: address(0),
            uiFeeReceiver: address(0),
            market: market,
            glv: glv, 
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minLongTokenAmount: 0,
            minShortTokenAmount: 0,
            shouldUnwrapNativeToken: false,
            executionFee: executionFee,
            callbackGasLimit: 0
        }));
    }

    function gmxv2_glvCancelWithdraw(bytes32 key) external payable onlyRole(EXECUTOR_ROLE) nonReentrant {
        glvRouter.cancelGlvDeposit(key);
    }
}
*/

interface IERC20 {
    function approve(address spender, uint256 amount) external;
}

interface IExchangeRouter {
    enum OrderType {
        MarketSwap,
        LimitSwap,
        MarketIncrease,
        LimitIncrease,
        MarketDecrease,
        LimitDecrease,
        StopLossDecrease
    }
    enum DecreasePositionSwapType {
        NoSwap,
        SwapPnlTokenToCollateralToken,
        SwapCollateralTokenToPnlToken
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

    struct CreateDepositParams {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialLongToken;
        address initialShortToken;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
        uint256 minMarketTokens;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
    }


    struct CreateWithdrawalParams {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
        uint256 minLongTokenAmount;
        uint256 minShortTokenAmount;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
    }

    function sendWnt(address receiver, uint256 amount) external payable;
    function sendTokens(address token, address receiver, uint256 amount) external payable;
    function createOrder(CreateOrderParams calldata params) external payable returns (bytes32);
    function updateOrder(
        bytes32 key,
        uint256 sizeDeltaUsd,
        uint256 acceptablePrice,
        uint256 triggerPrice,
        uint256 minOutputAmount,
        uint256 validFromTime,
        bool autoCancel
    ) external payable;
    function cancelOrder(bytes32 key) external payable;
    function claimFundingFees(address[] memory markets, address[] memory tokens, address receiver) external payable;
    function createDeposit(CreateDepositParams calldata params) external payable returns (bytes32);
    function createWithdrawal(CreateWithdrawalParams calldata params) external payable returns (bytes32);
    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);
    function router() external returns (address);
}

interface IMarket {
    struct Props {
        address marketToken;
        address indexToken;
        address longToken;
        address shortToken;
    }
}

interface IReader {
    function getMarket(address dataStore, address key) external view returns (IMarket.Props memory);
}

interface IGlvRouter {
    function glvHandler() external view returns (address);
    function createGlvDeposit(
        CreateGlvDepositParams calldata params
    ) external payable;
    function cancelGlvDeposit(bytes32 key) external;
    function createGlvWithdrawal(
        CreateGlvWithdrawalParams calldata params
    ) external payable;
    function cancelGlvWithdrawal(bytes32 key) external;
    function makeExternalCalls(
        address[] memory externalCallTargets,
        bytes[] memory externalCallDataList,
        address[] memory refundTokens,
        address[] memory refundReceivers
    ) external;

    struct CreateGlvDepositParams {
        address glv;
        address market;
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address initialLongToken;
        address initialShortToken;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
        uint256 minGlvTokens;
        uint256 executionFee;
        uint256 callbackGasLimit;
        bool shouldUnwrapNativeToken;
        bool isMarketTokenDeposit;
    }

    struct CreateGlvWithdrawalParams {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address glv;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
        uint256 minLongTokenAmount;
        uint256 minShortTokenAmount;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
    }
}

interface IGlvHandler {
    function glvVault() external view returns (address);
}
