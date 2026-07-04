// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
pragma abicoder v2;

import "./interfaces/INativeRouter.sol";
import "./interfaces/INativePool.sol";
import "./libraries/SafeCast.sol";
import "./libraries/CallbackValidation.sol";
import "./libraries/Order.sol";
import "./libraries/PeripheryPayments.sol";
import "./libraries/TransferHelper.sol";
import "./libraries/Multicall.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import "./storage/NativeRouterStorage.sol";

contract NativeRouter is
    INativeRouter,
    PeripheryPayments,
    ReentrancyGuardUpgradeable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    EIP712Upgradeable,
    Multicall,
    NativeRouterStorage
{
    using Orders for bytes;
    using SafeCast for uint256;
    uint public constant TEN_THOUSAND_DENOMINATOR = 10000;
    bytes32 private constant WIDGET_FEE_SIGNATURE_HASH =
        keccak256("WidgetFee(address signer,address feeRecipient,uint256 feeRate)");

    struct SwapCallbackData {
        bytes orders;
        address payer;
    }

    event SwapCalculations(uint256 amountIn, address recipient);

    function initialize(
        address factory,
        address weth9,
        address _widgetFeeSigner
    ) public initializer {
        initializeState(factory, weth9);
        __EIP712_init("native router", "1");
        __ReentrancyGuard_init();
        __Ownable_init();
        __UUPSUpgradeable_init();
        setWidgetFeeSigner(_widgetFeeSigner);
    }

    function getImplementation() public view returns (address) {
        return _getImplementation();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function setWeth9Unwrapper(address payable _weth9Unwrapper) public override onlyOwner {
        weth9Unwrapper = _weth9Unwrapper;
    }

    function swapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata _data
    ) external override {
        require(amount0Delta > 0 || amount1Delta > 0, "Delta is negative");
        SwapCallbackData memory data = abi.decode(_data, (SwapCallbackData));

        (Orders.Order memory order, ) = data.orders.decodeFirstOrder();
        require(msg.sender == order.buyer, "callback is not from order buyer");

        CallbackValidation.verifyCallback(factory, order.buyer);

        uint256 amountToPay = amount0Delta < 0 ? uint256(amount1Delta) : uint256(amount0Delta);
        pay(order.sellerToken, data.payer, msg.sender, amountToPay);
    }

    function exactInputSingle(
        ExactInputSingleParams memory params
    ) external payable override nonReentrant returns (uint256 amountOut) {
        require(!params.orders.hasMultiplePools(), "exactInputSingle: multiple orders");
        require(
            verifyWidgetFeeSignature(params.widgetFee, params.widgetFeeSignature),
            "widget fee signature is invalid"
        );
        require(params.widgetFee.feeRate <= TEN_THOUSAND_DENOMINATOR, "invalid widget fee");
        bool hasAlreadyPaid;
        (Orders.Order memory order, ) = params.orders.decodeFirstOrder();
        if (params.amountIn == 0) {
            hasAlreadyPaid = true;
            params.amountIn = IERC20(order.sellerToken).balanceOf(address(this));
        }
        require(order.seller == msg.sender, "seller is not correct");

        uint widgetFeeAmount = (params.amountIn * params.widgetFee.feeRate) /
            TEN_THOUSAND_DENOMINATOR;
        TransferHelper.safeTransferFrom(
            order.sellerToken,
            msg.sender,
            params.widgetFee.feeRecipient,
            widgetFeeAmount
        );
        emit WidgetFeeTransfer(
            params.widgetFee.feeRecipient,
            params.widgetFee.feeRate,
            widgetFeeAmount
        );

        params.amountIn -= widgetFeeAmount;
        emit SwapCalculations(params.amountIn, params.recipient);

        amountOut = exactInputInternal(
            params.amountIn,
            params.recipient,
            SwapCallbackData({
                orders: params.orders,
                payer: hasAlreadyPaid ? address(this) : msg.sender
            })
        );
        require(amountOut >= params.amountOutMinimum, "Too little received");

        if (address(this).balance > 0)
            TransferHelper.safeTransferETH(msg.sender, address(this).balance);
    }

    /// @inheritdoc INativeRouter
    function exactInput(
        ExactInputParams memory params
    ) external payable override nonReentrant returns (uint256 amountOut) {
        require(
            verifyWidgetFeeSignature(params.widgetFee, params.widgetFeeSignature),
            "widget fee signature is invalid"
        );
        require(params.widgetFee.feeRate <= 10000, "invalid widget fee");
        bool hasAlreadyPaid;
        (Orders.Order memory order, ) = params.orders.decodeFirstOrder();
        if (params.amountIn == 0) {
            hasAlreadyPaid = true;
            params.amountIn = IERC20(order.sellerToken).balanceOf(address(this));
        }
        require(order.seller == msg.sender, "seller is not correct");

        address payer = hasAlreadyPaid ? address(this) : msg.sender;

        uint widgetFeeAmount = (params.amountIn * params.widgetFee.feeRate) /
            TEN_THOUSAND_DENOMINATOR;
        TransferHelper.safeTransferFrom(
            order.sellerToken,
            msg.sender,
            params.widgetFee.feeRecipient,
            widgetFeeAmount
        );
        emit WidgetFeeTransfer(
            params.widgetFee.feeRecipient,
            params.widgetFee.feeRate,
            widgetFeeAmount
        );

        params.amountIn -= widgetFeeAmount;

        while (true) {
            bool hasMultiplePools = params.orders.hasMultiplePools();
            // the outputs of prior swaps become the inputs to subsequent ones
            params.amountIn = exactInputInternal(
                params.amountIn,
                hasMultiplePools ? address(this) : params.recipient,
                SwapCallbackData({
                    orders: params.orders.getFirstOrder(), // only the first pool in the path is necessary
                    payer: payer
                })
            );

            // decide whether to continue or terminate
            if (hasMultiplePools) {
                payer = address(this);
                params.orders = params.orders.skipOrder();
            } else {
                amountOut = params.amountIn;
                break;
            }
        }

        require(amountOut >= params.amountOutMinimum, "Too little received");

        if (address(this).balance > 0)
            TransferHelper.safeTransferETH(msg.sender, address(this).balance);
    }

    function setWidgetFeeSigner(address _widgetFeeSigner) public onlyOwner {
        require(
            _widgetFeeSigner != address(0),
            "Widget fee signer address specified should not be zero address"
        );
        widgetFeeSigner = _widgetFeeSigner;
        emit SetWidgetFeeSigner(widgetFeeSigner);
    }

    // private methods
    /// @dev Performs a single exact input swap
    function exactInputInternal(
        uint256 amountIn,
        address recipient,
        SwapCallbackData memory data
    ) private returns (uint256 amountOut) {
        (Orders.Order memory order, bytes memory signature) = data.orders.decodeFirstOrder();
        require(order.txOrigin == tx.origin, "txOrigin is wrong");
        CallbackValidation.verifyCallback(factory, order.buyer);

        (int256 amount0Delta, int256 amount1Delta) = INativePool(order.buyer).swap(
            abi.encode(order),
            signature,
            amountIn,
            recipient,
            abi.encode(data)
        );
        return uint256(-(amount0Delta > 0 ? amount1Delta : amount0Delta));
    }

    function getWidgetFeeMessageHash(
        WidgetFee memory widgetFeeData
    ) internal pure returns (bytes32) {
        bytes32 hash = keccak256(
            abi.encode(
                WIDGET_FEE_SIGNATURE_HASH,
                widgetFeeData.signer,
                widgetFeeData.feeRecipient,
                widgetFeeData.feeRate
            )
        );
        return hash;
    }

    function verifyWidgetFeeSignature(
        WidgetFee memory widgetFeeData,
        bytes memory signature
    ) internal view returns (bool) {
        require(widgetFeeData.signer == widgetFeeSigner, "Signer is invalid");
        bytes32 digest = _hashTypedDataV4(getWidgetFeeMessageHash(widgetFeeData));

        address recoveredSigner = ECDSAUpgradeable.recover(digest, signature);
        return widgetFeeData.signer == recoveredSigner;
    }
}
