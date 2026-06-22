// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../../interfaces/IRouter.sol";
import "./Route.sol";

contract FrontFacet is IRouter, Route {
    using SafeERC20 for IERC20;
    using SafeERC20 for IWETH;
    using Int256Utils for uint256;

    function initialize(
        IAddressesProvider addressProvider,
        IOrderManager _orderManager,
        IPositionManager _positionManager,
        IPool _pool,
        IMarket _market
    ) public initializer {
        __Route_init(addressProvider, _orderManager, _positionManager, _pool, _market);
    }

    function getOperationStatus(uint256 pairIndex) external view returns (IMarket.OperationStatus memory) {
        return market.getOperationStatus(pairIndex);
    }

    function setPriceAndAdjustCollateral(
        uint256 pairIndex,
        bool isLong,
        int256 collateral,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant unBacktracked {
        _setPriceAndAdjustCollateral(msg.sender, pairIndex, isLong, collateral, tokens, updateData, publishTimes);
    }

    function setPriceAndUpdateFundingRate(
        uint256 pairIndex,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant {
        IPythOraclePriceFeed(ADDRESS_PROVIDER.priceOracle()).updatePrice{value: msg.value}(tokens, updateData, publishTimes);

        positionManager.updateFundingRate(pairIndex);
    }

    function createIncreaseOrderWithTpSl(
        TradingTypes.IncreasePositionWithTpSlRequest memory request
    ) external payable whenNotPaused nonReentrant returns (uint256 orderId) {
        return _createIncreaseOrderWithTpSl(msg.sender, request);
    }

    function createIncreaseOrder(
        TradingTypes.IncreasePositionRequest memory request
    ) external payable whenNotPaused nonReentrant returns (uint256 orderId) {
        return _createIncreaseOrder(msg.sender, request);
    }

    function createDecreaseOrder(
        TradingTypes.DecreasePositionRequest memory request
    ) external payable whenNotPaused nonReentrant returns (uint256) {
        return _createDecreaseOrder(msg.sender, request);
    }

    function createDecreaseOrders(
        TradingTypes.DecreasePositionRequest[] memory requests
    ) external payable whenNotPaused nonReentrant returns (uint256[] memory orderIds) {
        return _createDecreaseOrders(msg.sender, requests);
    }

    function cancelOrder(
        CancelOrderRequest memory request
    ) external whenNotPaused nonReentrant unBacktracked {
        _cancelOrder(msg.sender, request);
    }

    function cancelOrders(
        CancelOrderRequest[] memory requests
    ) external whenNotPaused nonReentrant unBacktracked {
        _cancelOrders(msg.sender, requests);
    }

    function addOrderTpSl(
        AddOrderTpSlRequest memory request
    ) external payable whenNotPaused nonReentrant {
        return _addOrderTpSl(msg.sender, request);
    }

    function createTpSl(
        TradingTypes.CreateTpSlRequest memory request
    ) external payable whenNotPaused nonReentrant returns (uint256 tpOrderId, uint256 slOrderId) {
        return _createTpSl(msg.sender, request);
    }

    function addLiquidityETH(
        address indexToken,
        address stableToken,
        uint256 indexAmount,
        uint256 stableAmount,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes,
        uint256 updateFee
    ) external payable whenNotPaused nonReentrant returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        return _addLiquidityETH(msg.sender, indexToken, stableToken, indexAmount, stableAmount, tokens, updateData, publishTimes, updateFee);
    }

    function addLiquidity(
        address indexToken,
        address stableToken,
        uint256 indexAmount,
        uint256 stableAmount,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        return _addLiquidity(msg.sender, indexToken, stableToken, indexAmount, stableAmount, tokens, updateData, publishTimes);
    }

    function addLiquidityForAccount(
        address indexToken,
        address stableToken,
        address receiver,
        uint256 indexAmount,
        uint256 stableAmount,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        return _addLiquidityForAccount(msg.sender, indexToken, stableToken, receiver, indexAmount, stableAmount, tokens, updateData, publishTimes);
    }

    function removeLiquidity(
        address indexToken,
        address stableToken,
        uint256 amount,
        bool useETH,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant returns (uint256 receivedIndexAmount, uint256 receivedStableAmount, uint256 feeAmount) {
        return _removeLiquidity(msg.sender, indexToken, stableToken, amount, useETH, tokens, updateData, publishTimes);
    }

    function removeLiquidityForAccount(
        address indexToken,
        address stableToken,
        address receiver,
        uint256 amount,
        bool useETH,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant returns (uint256 receivedIndexAmount, uint256 receivedStableAmount, uint256 feeAmount) {
        return _removeLiquidityForAccount(msg.sender, indexToken, stableToken, receiver, amount, useETH, tokens, updateData, publishTimes);
    }

}
