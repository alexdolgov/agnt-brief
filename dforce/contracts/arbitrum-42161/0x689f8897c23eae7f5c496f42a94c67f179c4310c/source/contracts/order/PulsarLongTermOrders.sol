// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

import "../interface/IPulsar.sol";

/**
 * @title dForce's Liquidity Swap Order Model
 * @author dForce
 */
contract PulsarLongTermOrders {
    using SafeERC20 for IERC20;

    /// @dev Address of tokenOut (USX).
    address internal immutable tokenOut_;

    /// @dev Address of tokenIn (DF).
    address internal immutable tokenIn_;

    /// @dev Address of pulsarRouter.
    ITWAMM internal immutable pulsarRouter_;

    /// @dev Emitted when submit.
    event SubmitOrders(
        address target,
        address tokenOut,
        uint256 amount,
        uint256 numberOfBlockIntervals,
        uint256 orderId
    );

    /// @dev Emitted when cancel.
    event CancelOrders(
        uint256 orderId,
        address from,
        address tokenOut,
        uint256 tokenOutAmount,
        address tokenIn,
        uint256 tokenInAmount
    );

    /// @dev Emitted when withdraw.
    event WithdrawOrders(
        uint256 orderId,
        address from,
        address tokenBuy,
        uint256 tokenBuyAmount
    );

    /**
     * @notice Constructor for PulsarLongTermOrders order model contract.
     * @param _tokenOut tokenOut (USX) address.
     * @param _tokenIn tokenIn (DF) address.
     * @param _pulsarRouter pulsarRouter address.
     */
    constructor(
        address _tokenOut,
        address _tokenIn,
        ITWAMM _pulsarRouter
    ) public {
        tokenOut_ = _tokenOut;
        tokenIn_ = _tokenIn;
        pulsarRouter_ = _pulsarRouter;
    }

    /**
     * @notice Initialize approval pulsarRouter.
     */
    function _initialize() internal virtual {
        IERC20(tokenOut_).safeApprove(address(pulsarRouter_), uint256(-1));
        IERC20(tokenIn_).safeApprove(address(pulsarRouter_), uint256(-1));
    }

    /**
     * @dev Submit an order.
     * @param _amount sell token(USX) amount.
     * @param _numberOfBlockIntervals determines when order expires.
     */
    function _submit(
        uint256 _amount,
        uint256 _numberOfBlockIntervals
    ) internal virtual {
        emit SubmitOrders(
            address(pulsarRouter_),
            tokenOut_,
            _amount,
            _numberOfBlockIntervals,
            pulsarRouter_.longTermSwapTokenToToken(
                tokenOut_,
                tokenIn_,
                _amount,
                _numberOfBlockIntervals,
                block.timestamp
            )
        );
    }

    /**
     * @dev Address of pair.
     */
    function _pair() internal view returns (IPair) {
        return IPair(pulsarRouter_.obtainPairAddress(tokenOut_, tokenIn_));
    }

    /**
     * @dev order details.
     * @param _orderId order id.
     * @return order id.
     * @return submitBlock.
     * @return expirationBlock.
     * @return saleRate.
     * @return sellAmount.
     * @return buyAmount.
     * @return owner address.
     * @return tokenOut address.
     * @return tokenIn address.
     */
    function _orderInfo(
        uint256 _orderId
    )
        internal
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            address,
            address,
            address
        )
    {
        return _pair().getOrderDetails(_orderId);
    }

    /**
     * @dev Cancel an order.
     * @param _orderId order id.
     */
    function _cancel(uint256 _orderId) internal virtual {
        (uint256 _sellAmount, uint256 _buyAmount) = pulsarRouter_
            .cancelTermSwapTokenToToken(
                tokenOut_,
                tokenIn_,
                _orderId,
                block.timestamp
            );
        (, , , , , , , address _tokenOut, address _tokenIn) = _orderInfo(
            _orderId
        );
        emit CancelOrders(
            _orderId,
            address(pulsarRouter_),
            _tokenOut,
            _sellAmount,
            _tokenIn,
            _buyAmount
        );
    }

    /**
     * @dev withdraw proceeds from a long term swap.
     * @param _orderId order id.
     */
    function _withdraw(uint256 _orderId) internal virtual {
        emit WithdrawOrders(
            _orderId,
            address(pulsarRouter_),
            tokenIn_,
            pulsarRouter_.withdrawProceedsFromTermSwapTokenToToken(
                tokenOut_,
                tokenIn_,
                _orderId,
                block.timestamp
            )
        );
    }

    /**
     * @dev Address of tokenOut.
     */
    function tokenOut() external view returns (address) {
        return tokenOut_;
    }

    /**
     * @dev Address of tokenIn.
     */
    function tokenIn() external view returns (address) {
        return tokenIn_;
    }

    /**
     * @dev Address of pulsarRouter.
     */
    function pulsarRouter() external view returns (address) {
        return address(pulsarRouter_);
    }

    /**
     * @dev Address of pair.
     */
    function pair() external view returns (IPair) {
        return _pair();
    }

    /**
     * @dev Pair orders total amount.
     */
    function pairOrdersAmount() external view returns (uint256) {
        return _pair().getPairOrdersAmount();
    }

    /**
     * @dev Get contract order list.
     */
    function orderList() external view returns (uint256[] memory) {
        return _pair().userIdsCheck(address(this));
    }

    /**
     * @dev Order status based on Ids.
     * @param _orderId order id.
     * @return Order status true: enable, false: disabled.
     */
    function orderStatus(uint256 _orderId) external view returns (bool) {
        return _pair().orderIdStatusCheck(_orderId);
    }

    /**
     * @dev Order details.
     * @param _orderId order id.
     */
    function orderInfo(
        uint256 _orderId
    )
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            address,
            address,
            address
        )
    {
        return _orderInfo(_orderId);
    }
}
