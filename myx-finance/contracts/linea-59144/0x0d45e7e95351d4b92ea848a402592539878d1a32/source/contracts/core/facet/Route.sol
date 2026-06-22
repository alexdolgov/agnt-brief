// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SignedMath.sol";

import "../../interfaces/ILiquidityCallback.sol";
import "../../interfaces/IOrderCallback.sol";
import "../../interfaces/IOrderManager.sol";
import "../../interfaces/IPool.sol";
import "../../interfaces/IPositionManager.sol";
import "../../interfaces/IRoute.sol";
import "../../interfaces/IWETH.sol";
import "../../libraries/Upgradeable.sol";
import "../../oracleV3/interfaces/IOraclePriceFeedV3.sol";


abstract contract Route is IRoute, Upgradeable, ILiquidityCallback, IOrderCallback, ReentrancyGuardUpgradeable, PausableUpgradeable {
    using SafeERC20 for IERC20;
    using SafeERC20 for IWETH;
    using SignedMath for int256;
    using Int256Utils for uint256;

    IOrderManager public orderManager;
    IPositionManager public positionManager;
    IPool public pool;
    IMarket public market;

    function __Route_init(
        IAddressesProvider addressProvider,
        IOrderManager _orderManager,
        IPositionManager _positionManager,
        IPool _pool,
        IMarket _market
    ) internal onlyInitializing {
        ADDRESS_PROVIDER = addressProvider;
        orderManager = _orderManager;
        positionManager = _positionManager;
        pool = _pool;
        market = _market;
    }

    modifier onlyOrderManager() {
        require(msg.sender == address(orderManager), "onlyOrderManager");
        _;
    }

    modifier onlyPool() {
        require(msg.sender == address(pool), "onlyPool");
        _;
    }

    modifier unBacktracked() {
        require(!market.enterBacktracker(), "deny operation");
        _;
    }

    function setPaused() external onlyPoolAdmin {
        _pause();
    }

    function setUnPaused() external onlyPoolAdmin {
        _unpause();
    }

    function salvageToken(address token, uint amount) external onlyAdmin {
        IERC20(token).safeTransfer(msg.sender, amount);
    }

    function wrapWETH(address recipient) external payable {
        IWETH(ADDRESS_PROVIDER.WETH()).deposit{value: msg.value}();
        IWETH(ADDRESS_PROVIDER.WETH()).transfer(recipient, msg.value);
    }

    function _setPriceAndAdjustCollateral(
        address sender,
        uint256 pairIndex,
        bool isLong,
        int256 collateral,
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) internal {
        require(!market.getOperationStatus(pairIndex).orderDisabled, "disabled");

        IOraclePriceFeedV3(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(oracleType, tokens, updateData, publishTimes);

        if (collateral > 0) {
            IPool.Pair memory pair = pool.getPair(pairIndex);
            IERC20(pair.stableToken).safeTransferFrom(sender, address(this), collateral.abs());

            if (IERC20(pair.stableToken).allowance(address(this), address(positionManager)) < collateral.abs()) {
                IERC20(pair.stableToken).approve(address(positionManager), type(uint256).max);
            }
        }
        positionManager.adjustCollateral(pairIndex, sender, isLong, collateral, oracleType);
    }

    function _createIncreaseOrderWithTpSl(
        address sender,
        TradingTypes.IncreasePositionWithTpSlRequest memory request
    ) internal returns (uint256 orderId) {
        require(!market.getOperationStatus(request.pairIndex).increasePositionDisabled, "disabled");

        require(
            request.tradeType != TradingTypes.TradeType.TP &&
            request.tradeType != TradingTypes.TradeType.SL,
            "not support"
        );
        require(
            request.paymentType == TradingTypes.NetworkFeePaymentType.COLLATERAL ||
            (request.paymentType == TradingTypes.NetworkFeePaymentType.ETH
                && msg.value == request.networkFeeAmount + request.tpNetworkFeeAmount + request.slNetworkFeeAmount),
            "incorrect value"
        );
        request.account = sender;

        TradingTypes.CreateOrderRequest memory createOrderRequest = TradingTypes.CreateOrderRequest({
            account: request.account,
            pairIndex: request.pairIndex,
            tradeType: request.tradeType,
            collateral: request.collateral,
            openPrice: request.openPrice,
            isLong: request.isLong,
            makerOnly: request.makerOnly,
            sizeAmount: uint256(request.sizeAmount).safeConvertToInt256(),
            maxSlippage: request.maxSlippage,
            paymentType: TradingTypes.convertPaymentType(request.paymentType),
            networkFeeAmount: request.networkFeeAmount,
            data: abi.encode(request.account)
        });

        uint256 value = request.paymentType == TradingTypes.NetworkFeePaymentType.ETH ? request.networkFeeAmount : 0;
        orderId = orderManager.createOrder{value: value}(createOrderRequest);

        // tp、sl
        if (request.tp > 0) {
            require(request.isLong ? request.tpPrice > request.openPrice : request.tpPrice < request.openPrice, "invalid tp price");
        }
        if (request.sl > 0) {
            require(request.isLong ? request.slPrice < request.openPrice : request.slPrice > request.openPrice, "invalid sl price");
        }
        IOrderManager.AddOrderTpSlRequest memory tpSlReq = IOrderManager.AddOrderTpSlRequest({
            orderId: orderId,
            tradeType: request.tradeType,
            tp: request.tp,
            tpPrice: request.tpPrice,
            sl: request.sl,
            slPrice: request.slPrice,
            paymentType: TradingTypes.convertPaymentType(request.paymentType),
            networkFeeAmount: request.tpNetworkFeeAmount + request.slNetworkFeeAmount,
            data: abi.encode(request.account)
        });

        value = request.paymentType == TradingTypes.NetworkFeePaymentType.ETH ? request.tpNetworkFeeAmount + request.slNetworkFeeAmount : 0;
        orderManager.addOrderTpSl{value: value}(tpSlReq);
        return orderId;
    }

    function _createTpSl(
        address account,
        uint256 pairIndex,
        bool isLong,
        uint256 tpPrice,
        uint128 tp,
        uint256 slPrice,
        uint128 sl,
        TradingTypes.NetworkFeePaymentType paymentType,
        uint256 tpNetworkFeeAmount,
        uint256 slNetworkFeeAmount
    ) private returns (uint256 tpOrderId, uint256 slOrderId) {
        uint256 value;
        if (tp > 0) {
            value = paymentType == TradingTypes.NetworkFeePaymentType.ETH ? tpNetworkFeeAmount : 0;
            tpOrderId = orderManager.createOrder{value: value}(
                TradingTypes.CreateOrderRequest({
                    account: account,
                    pairIndex: pairIndex,
                    tradeType: TradingTypes.TradeType.TP,
                    collateral: 0,
                    openPrice: tpPrice,
                    isLong: isLong,
                    makerOnly: false,
                    sizeAmount: - (uint256(tp).safeConvertToInt256()),
                    maxSlippage: 0,
                    paymentType: TradingTypes.convertPaymentType(paymentType),
                    networkFeeAmount: tpNetworkFeeAmount,
                    data: abi.encode(account)
                })
            );
        }
        if (sl > 0) {
            value = paymentType == TradingTypes.NetworkFeePaymentType.ETH ?  slNetworkFeeAmount: 0;
            slOrderId = orderManager.createOrder{value: value}(
                TradingTypes.CreateOrderRequest({
                    account: account,
                    pairIndex: pairIndex,
                    tradeType: TradingTypes.TradeType.SL,
                    collateral: 0,
                    openPrice: slPrice,
                    isLong: isLong,
                    makerOnly: false,
                    sizeAmount: - (uint256(sl).safeConvertToInt256()),
                    maxSlippage: 0,
                    paymentType: TradingTypes.convertPaymentType(paymentType),
                    networkFeeAmount: slNetworkFeeAmount,
                    data: abi.encode(account)
                })
            );
        }
        return (tpOrderId, slOrderId);
    }

    function _createIncreaseOrder(
        address sender,
        TradingTypes.IncreasePositionRequest memory request
    ) internal returns (uint256 orderId) {
        require(!market.getOperationStatus(request.pairIndex).increasePositionDisabled, "disabled");

        require(
            request.tradeType != TradingTypes.TradeType.TP &&
            request.tradeType != TradingTypes.TradeType.SL,
            "not support"
        );
        require(
            request.paymentType == TradingTypes.NetworkFeePaymentType.COLLATERAL ||
            (request.paymentType == TradingTypes.NetworkFeePaymentType.ETH && msg.value == request.networkFeeAmount),
            "incorrect value"
        );

        request.account = sender;

        uint256 value = request.paymentType == TradingTypes.NetworkFeePaymentType.ETH ?  request.networkFeeAmount : 0;
        return
            orderManager.createOrder{value: value}(
            TradingTypes.CreateOrderRequest({
                account: request.account,
                pairIndex: request.pairIndex,
                tradeType: request.tradeType,
                collateral: request.collateral,
                openPrice: request.openPrice,
                isLong: request.isLong,
                makerOnly: request.makerOnly,
                sizeAmount: request.sizeAmount.safeConvertToInt256(),
                maxSlippage: request.maxSlippage,
                paymentType: TradingTypes.convertPaymentType(request.paymentType),
                networkFeeAmount: request.networkFeeAmount,
                data: abi.encode(request.account)
            })
        );
    }

    function _createDecreaseOrder(
        address sender,
        TradingTypes.DecreasePositionRequest memory request
    ) internal returns (uint256) {
        require(!market.getOperationStatus(request.pairIndex).decreasePositionDisabled, "disabled");

        require(
            request.paymentType == TradingTypes.NetworkFeePaymentType.COLLATERAL ||
            (request.paymentType == TradingTypes.NetworkFeePaymentType.ETH && msg.value == request.networkFeeAmount),
            "incorrect value"
        );

        request.account = sender;
        uint256 value = request.paymentType == TradingTypes.NetworkFeePaymentType.ETH ?  request.networkFeeAmount : 0;
        return
            orderManager.createOrder{value: value}(
            TradingTypes.CreateOrderRequest({
                account: request.account,
                pairIndex: request.pairIndex,
                tradeType: request.tradeType,
                collateral: request.collateral,
                openPrice: request.triggerPrice,
                isLong: request.isLong,
                makerOnly: request.makerOnly,
                sizeAmount: - (request.sizeAmount.safeConvertToInt256()),
                maxSlippage: request.maxSlippage,
                paymentType: TradingTypes.convertPaymentType(request.paymentType),
                networkFeeAmount: request.networkFeeAmount,
                data: abi.encode(request.account)
            })
        );
    }

    function _createDecreaseOrders(
        address sender,
        TradingTypes.DecreasePositionRequest[] memory requests
    ) internal returns (uint256[] memory orderIds) {
        orderIds = new uint256[](requests.length);
        uint256 value;

        uint256 surplus = msg.value;
        for (uint256 i = 0; i < requests.length; i++) {
            TradingTypes.DecreasePositionRequest memory request = requests[i];

            require(!market.getOperationStatus(request.pairIndex).decreasePositionDisabled, "disabled");

            if (request.paymentType == TradingTypes.NetworkFeePaymentType.ETH) {
                require(surplus >= request.networkFeeAmount, "insufficient network fee");
                surplus -= request.networkFeeAmount;
            }

            value = request.paymentType == TradingTypes.NetworkFeePaymentType.ETH ?  request.networkFeeAmount : 0;
            orderIds[i] = orderManager.createOrder{value: value}(
                TradingTypes.CreateOrderRequest({
                    account: sender,
                    pairIndex: request.pairIndex,
                    tradeType: request.tradeType,
                    collateral: request.collateral,
                    openPrice: request.triggerPrice,
                    isLong: request.isLong,
                    makerOnly: request.makerOnly,
                    sizeAmount: - (request.sizeAmount.safeConvertToInt256()),
                    maxSlippage: request.maxSlippage,
                    paymentType: TradingTypes.convertPaymentType(request.paymentType),
                    networkFeeAmount: request.networkFeeAmount,
                    data: abi.encode(sender)
                })
            );
        }
        if (surplus > 0) {
            (bool success,) = payable(sender).call{value: surplus}("");
            require(success, "Transfer failed.");
        }
        return orderIds;
    }

    function _checkOrderAccount(
        address sender,
        uint256 orderId,
        TradingTypes.TradeType tradeType,
        bool isIncrease
    ) private view {
        if (isIncrease) {
            (TradingTypes.IncreasePositionOrder memory order,) = orderManager.getIncreaseOrder(
                orderId,
                tradeType
            );
            require(order.account == sender, "onlyAccount");
        } else {
            (TradingTypes.DecreasePositionOrder memory order,) = orderManager.getDecreaseOrder(
                orderId,
                tradeType
            );
            require(order.account == sender, "onlyAccount");
        }
    }

    function _cancelOrder(
        address sender,
        IRoute.CancelOrderRequest memory request
    ) internal {
        _checkOrderAccount(sender, request.orderId, request.tradeType, request.isIncrease);
        orderManager.cancelOrder(
            request.orderId,
            request.tradeType,
            request.isIncrease,
            "cancelOrder"
        );
    }

    function _cancelOrders(
        address sender,
        IRoute.CancelOrderRequest[] memory requests
    ) internal {
        for (uint256 i = 0; i < requests.length; i++) {
            IRoute.CancelOrderRequest memory request = requests[i];
            _checkOrderAccount(sender, request.orderId, request.tradeType, request.isIncrease);
            orderManager.cancelOrder(
                request.orderId,
                request.tradeType,
                request.isIncrease,
                "cancelOrders"
            );
        }
    }

    function _addOrderTpSl(
        address sender,
        IRoute.AddOrderTpSlRequest memory request
    ) internal {
        (TradingTypes.IncreasePositionOrder memory order,) = orderManager.getIncreaseOrder(
            request.orderId,
            request.tradeType
        );
        require(order.account == sender, "no access");
        uint256 pairIndex = order.pairIndex;
        bool isLong = order.isLong;

        require(!market.getOperationStatus(pairIndex).orderDisabled, "disabled");

        require(
            request.paymentType == TradingTypes.NetworkFeePaymentType.COLLATERAL ||
            (request.paymentType == TradingTypes.NetworkFeePaymentType.ETH
                && msg.value == request.tpNetworkFeeAmount + request.slNetworkFeeAmount),
            "incorrect value"
        );

        if (request.tp > 0 || request.sl > 0) {
            if (request.tp > 0) {
                require(isLong ? request.tpPrice > order.openPrice : request.tpPrice < order.openPrice, "invalid tp price");
            }
            if (request.sl > 0) {
                require(isLong ? request.slPrice < order.openPrice : request.slPrice > order.openPrice, "invalid sl price");
            }
            IOrderManager.AddOrderTpSlRequest memory tpSlReq = IOrderManager.AddOrderTpSlRequest({
                orderId: request.orderId,
                tradeType: request.tradeType,
                tp: request.tp,
                tpPrice: request.tpPrice,
                sl: request.sl,
                slPrice: request.slPrice,
                paymentType: TradingTypes.convertPaymentType(request.paymentType),
                networkFeeAmount: request.tpNetworkFeeAmount + request.slNetworkFeeAmount,
                data:abi.encode(sender)
            });

            uint256 value = request.paymentType == TradingTypes.NetworkFeePaymentType.ETH ?  request.tpNetworkFeeAmount + request.slNetworkFeeAmount : 0;
            orderManager.addOrderTpSl{value: value}(tpSlReq);
        }
    }

    function _createTpSl(
        address sender,
        TradingTypes.CreateTpSlRequest memory request
    ) internal returns (uint256 tpOrderId, uint256 slOrderId) {
        require(!market.getOperationStatus(request.pairIndex).orderDisabled, "disabled");

        require(
            request.paymentType == TradingTypes.NetworkFeePaymentType.COLLATERAL ||
            (request.paymentType == TradingTypes.NetworkFeePaymentType.ETH
                && msg.value == request.tpNetworkFeeAmount + request.slNetworkFeeAmount),
            "incorrect value"
        );

        (tpOrderId, slOrderId) = _createTpSl(
            sender,
            request.pairIndex,
            request.isLong,
            request.tpPrice,
            request.tp,
            request.slPrice,
            request.sl,
            request.paymentType,
            request.tpNetworkFeeAmount,
            request.slNetworkFeeAmount
        );
        return (tpOrderId, slOrderId);
    }

    function _addLiquidityETH(
        address sender,
        address indexToken,
        address stableToken,
        uint256 indexAmount,
        uint256 stableAmount,
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes,
        uint256 updateFee
    ) internal returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        uint256 pairIndex = IPool(pool).getPairIndex(indexToken, stableToken);
        require(pairIndex > 0, "!exists");
        require(!market.getOperationStatus(pairIndex).addLiquidityDisabled, "disabled");
        require(msg.value >= indexAmount + updateFee, "ne");

        IOraclePriceFeedV3(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: updateFee}(oracleType, tokens, updateData, publishTimes);

        uint256 wrapAmount = msg.value - updateFee;
        this.wrapWETH{value: wrapAmount}(address(this));

        (mintAmount, slipToken, slipAmount) = IPool(pool).addLiquidity(
            sender,
            pairIndex,
            indexAmount,
            stableAmount,
            oracleType,
            abi.encode(sender)
        );

        if (wrapAmount - indexAmount > 0 && indexToken == ADDRESS_PROVIDER.WETH()) {
            IWETH(ADDRESS_PROVIDER.WETH()).safeTransfer(sender, wrapAmount - indexAmount);
        }
    }

    function _addLiquidity(
        address sender,
        address indexToken,
        address stableToken,
        uint256 indexAmount,
        uint256 stableAmount,
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) internal returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        uint256 pairIndex = IPool(pool).getPairIndex(indexToken, stableToken);
        require(pairIndex > 0, "!exists");
        require(!market.getOperationStatus(pairIndex).addLiquidityDisabled, "disabled");

        IOraclePriceFeedV3(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(oracleType, tokens, updateData, publishTimes);

        if (indexToken == ADDRESS_PROVIDER.WETH()) {
            IWETH(ADDRESS_PROVIDER.WETH()).safeTransferFrom(sender, address(this), indexAmount);
        }

        return
            IPool(pool).addLiquidity(
            sender,
            pairIndex,
            indexAmount,
            stableAmount,
            oracleType,
            abi.encode(sender)
        );
    }

    function _addLiquidityForAccount(
        address sender,
        address indexToken,
        address stableToken,
        address receiver,
        uint256 indexAmount,
        uint256 stableAmount,
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) internal returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        uint256 pairIndex = IPool(pool).getPairIndex(indexToken, stableToken);
        require(pairIndex > 0, "!exists");
        require(!market.getOperationStatus(pairIndex).addLiquidityDisabled, "disabled");

        IOraclePriceFeedV3(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(oracleType, tokens, updateData, publishTimes);

        if (indexToken == ADDRESS_PROVIDER.WETH()) {
            IWETH(ADDRESS_PROVIDER.WETH()).safeTransferFrom(sender, address(this), indexAmount);
        }
        return
            IPool(pool).addLiquidity(
            receiver,
            pairIndex,
            indexAmount,
            stableAmount,
            oracleType,
            abi.encode(sender)
        );
    }

    function _removeLiquidity(
        address sender,
        address indexToken,
        address stableToken,
        uint256 amount,
        bool useETH,
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) internal returns (uint256 receivedIndexAmount, uint256 receivedStableAmount, uint256 feeAmount) {
        uint256 pairIndex = IPool(pool).getPairIndex(indexToken, stableToken);
        require(pairIndex > 0, "!exists");
        require(!market.getOperationStatus(pairIndex).removeLiquidityDisabled, "disabled");

        IOraclePriceFeedV3(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(oracleType, tokens, updateData, publishTimes);

        return
            IPool(pool).removeLiquidity(
            payable(sender),
            pairIndex,
            amount,
            oracleType,
            useETH,
            abi.encode(sender)
        );
    }

    function _removeLiquidityForAccount(
        address sender,
        address indexToken,
        address stableToken,
        address receiver,
        uint256 amount,
        bool useETH,
        OracleTypes.OracleType oracleType,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) internal returns (uint256 receivedIndexAmount, uint256 receivedStableAmount, uint256 feeAmount) {
        uint256 pairIndex = IPool(pool).getPairIndex(indexToken, stableToken);
        require(pairIndex > 0, "!exists");
        require(!market.getOperationStatus(pairIndex).removeLiquidityDisabled, "disabled");

        IOraclePriceFeedV3(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(oracleType, tokens, updateData, publishTimes);

        return
            IPool(pool).removeLiquidity(
            payable(receiver),
            pairIndex,
            amount,
            oracleType,
            useETH,
            abi.encode(sender)
        );
    }

    function removeLiquidityCallback(
        address pairToken,
        uint256 amount,
        bytes calldata data
    ) external override onlyPool {
        address sender = abi.decode(data, (address));
        IERC20(pairToken).safeTransferFrom(sender, msg.sender, amount);
    }

    function createOrderCallback(
        address collateral,
        uint256 amount,
        address to,
        bytes calldata data
    ) external override onlyOrderManager {
        address sender = abi.decode(data, (address));

        if (amount > 0) {
            IERC20(collateral).safeTransferFrom(sender, to, uint256(amount));
        }
    }

    function addLiquidityCallback(
        address indexToken,
        address stableToken,
        uint256 amountIndex,
        uint256 amountStable,
        bytes calldata data
    ) external override onlyPool {
        address sender = abi.decode(data, (address));

        if (amountIndex > 0) {
            if (indexToken == ADDRESS_PROVIDER.WETH()) {
                IERC20(indexToken).safeTransfer(msg.sender, uint256(amountIndex));
            } else {
                IERC20(indexToken).safeTransferFrom(sender, msg.sender, uint256(amountIndex));
            }
        }
        if (amountStable > 0) {
            IERC20(stableToken).safeTransferFrom(sender, msg.sender, uint256(amountStable));
        }
    }
}
