// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "../../@openzeppelin/ERC2771ContextUpgradeable.sol";
import "../../libraries/Upgradeable.sol";
import "../../interfaces/IRouter.sol";
import "../../interfaces/ITrustedForwarder.sol";
import "./Route.sol";

contract DelegateFacet is Route, ERC2771ContextUpgradeable {
    using SafeERC20 for IERC20;

    function initialize(
        IAddressesProvider addressProvider,
        IOrderManager _orderManager,
        IPositionManager _positionManager,
        IPool _pool,
        IMarket _market,
        address trustedForwarder
    ) public initializer {
        __Route_init(addressProvider, _orderManager, _positionManager, _pool, _market);
        __ERC2771ContextUpgradeable_init(trustedForwarder);
    }

    function _msgSender() internal view override(ContextUpgradeable, ERC2771ContextUpgradeable) returns (address sender) {
        return ERC2771ContextUpgradeable._msgSender();
    }

    function _msgData() internal view override(ContextUpgradeable, ERC2771ContextUpgradeable) returns (bytes calldata) {
        return ERC2771ContextUpgradeable._msgData();
    }

    function setPriceAndAdjustCollateralDelegate(
        uint256 pairIndex,
        bool isLong,
        int256 collateral,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant unBacktracked {
        address sender = _sendGas();
        _setPriceAndAdjustCollateral(sender, pairIndex, isLong, collateral, tokens, updateData, publishTimes);
    }

    function createIncreaseOrderWithTpSlDelegate(
        TradingTypes.IncreasePositionWithTpSlRequest memory request
    ) external payable whenNotPaused nonReentrant returns (uint256 orderId) {
        address sender = _sendGas();
        return _createIncreaseOrderWithTpSl(sender, request);
    }

    function createIncreaseOrderDelegate(
        TradingTypes.IncreasePositionRequest memory request
    ) external payable whenNotPaused nonReentrant returns (uint256 orderId) {
        address sender = _sendGas();
        return _createIncreaseOrder(sender, request);
    }

    function createDecreaseOrderDelegate(
        TradingTypes.DecreasePositionRequest memory request
    ) external payable whenNotPaused nonReentrant returns (uint256) {
        address sender = _sendGas();
        return _createDecreaseOrder(sender, request);
    }

    function createDecreaseOrdersDelegate(
        TradingTypes.DecreasePositionRequest[] memory requests
    ) external payable whenNotPaused nonReentrant returns (uint256[] memory orderIds) {
        address sender = _sendGas();
        return _createDecreaseOrders(sender, requests);
    }

    function cancelOrderDelegate(
        CancelOrderRequest memory request
    ) external whenNotPaused nonReentrant unBacktracked {
        address sender = _sendGas();
        _cancelOrder(sender, request);
    }

    function cancelOrdersDelegate(
        CancelOrderRequest[] memory requests
    ) external whenNotPaused nonReentrant unBacktracked {
        address sender = _sendGas();
        _cancelOrders(sender, requests);
    }

    function addOrderTpSlDelegate(
        AddOrderTpSlRequest memory request
    ) external payable whenNotPaused nonReentrant {
        address sender = _sendGas();
        return _addOrderTpSl(sender, request);
    }

    function createTpSlDelegate(
        TradingTypes.CreateTpSlRequest memory request
    ) external payable whenNotPaused nonReentrant returns (uint256 tpOrderId, uint256 slOrderId) {
        address sender = _sendGas();
        return _createTpSl(sender, request);
    }

    function addLiquidityETHDelegate(
        address indexToken,
        address stableToken,
        uint256 indexAmount,
        uint256 stableAmount,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes,
        uint256 updateFee
    ) external payable whenNotPaused nonReentrant returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        address sender = _sendGas();
        return _addLiquidityETH(sender, indexToken, stableToken, indexAmount, stableAmount, tokens, updateData, publishTimes, updateFee);
    }

    function addLiquidityDelegate(
        address indexToken,
        address stableToken,
        uint256 indexAmount,
        uint256 stableAmount,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        address sender = _sendGas();
        return _addLiquidity(sender, indexToken, stableToken, indexAmount, stableAmount, tokens, updateData, publishTimes);
    }

    function addLiquidityForAccountDelegate(
        address indexToken,
        address stableToken,
        address receiver,
        uint256 indexAmount,
        uint256 stableAmount,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant returns (uint256 mintAmount, address slipToken, uint256 slipAmount) {
        address sender = _sendGas();
        return _addLiquidityForAccount(sender, indexToken, stableToken, receiver, indexAmount, stableAmount, tokens, updateData, publishTimes);
    }

    function removeLiquidityDelegate(
        address indexToken,
        address stableToken,
        uint256 amount,
        bool useETH,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant returns (uint256 receivedIndexAmount, uint256 receivedStableAmount, uint256 feeAmount) {
        address sender = _sendGas();
        return _removeLiquidity(sender, indexToken, stableToken, amount, useETH, tokens, updateData, publishTimes);
    }

    function removeLiquidityForAccountDelegate(
        address indexToken,
        address stableToken,
        address receiver,
        uint256 amount,
        bool useETH,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable whenNotPaused nonReentrant returns (uint256 receivedIndexAmount, uint256 receivedStableAmount, uint256 feeAmount) {
        address sender = _sendGas();
        return _removeLiquidityForAccount(sender, indexToken, stableToken, receiver, amount, useETH, tokens, updateData, publishTimes);
    }

    function claimReferralFeeDelegate(
        IFeeCollector feeCollector
    ) external whenNotPaused nonReentrant returns (uint256) {
        address sender = _sendGas();
        return feeCollector.claimReferralFeeDelegate(sender);
    }

    function claimUserTradingFeeDelegate(
        IFeeCollector feeCollector
    ) external whenNotPaused nonReentrant returns (uint256) {
        address sender = _sendGas();
        return feeCollector.claimUserTradingFeeDelegate(sender);
    }

    struct PermitParams{
        address token;
        address owner;
        address spender;
        uint256 value;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    function approveDelegate(
        address relayer,
        bool enable,
        PermitParams[] memory permitParams
    ) external nonReentrant {
        require(permitParams.length < 10, "inconsistent params length");
        ITrustedForwarder forwarder = ITrustedForwarder(trustedForwarder());

        for (uint256 i; i < permitParams.length; i++) {
            IERC20Permit(permitParams[i].token).permit(
                permitParams[i].owner,
                permitParams[i].spender,
                permitParams[i].value,
                permitParams[i].deadline,
                permitParams[i].v,
                permitParams[i].r,
                permitParams[i].s
            );
        }
        address sender = _sendGas();
        forwarder.approve(sender, relayer, enable);
    }

    function _sendGas() private returns (address) {
        ITrustedForwarder forwarder = ITrustedForwarder(trustedForwarder());

        uint256 pledgeFee = forwarder.pledgeFee();
        address originAccount = forwarder.originAccount(_msgSender());
        address sender = originAccount != address(0) ? originAccount : _msgSender();

        IERC20(forwarder.pledgeAddress()).safeTransferFrom(sender, address(forwarder), pledgeFee);
        return sender;
    }
}
