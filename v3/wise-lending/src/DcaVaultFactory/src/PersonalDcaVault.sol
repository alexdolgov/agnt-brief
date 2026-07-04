// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { SafeTransfer } from "./SafeTransfer.sol";
import { IDcaVaultFactory } from "./IDcaVaultFactory.sol";

/**
 * Per-user vault (EIP-1167 clone). Token-agnostic: holds any ERC20 and executes TWAP orders
 * on any supported venue (Orbs, etc.) with that token as srcToken.
 *
 * All deposits and order placement must go through DcaVaultFactory — the vault intentionally
 * exposes no user-facing deposit or placement functions.
 *
 * User-facing entry points (via factory):
 *   factory.placeOrder(token, amount, twap, ask)      — pull from wallet + place in one tx
 *
 * User-facing entry points (direct):
 *   cancelOrder(twapContract, id) — cancel live TWAP order, or clear vault record if already terminal
 *   revokeAllowance(twapContract, token) — emergency: zero the vault's allowance to any address
 *   withdraw(token, amount, maxFeeBps) — pull tokens back
 *   rescueETH() — recover accidentally sent ETH
 *
 * Withdraw fee:
 *   feeBps is skimmed to feeRecipient on every token withdraw (any ERC20).
 *
 * Allowance model — live ERC20 allowance as source of truth:
 *   On place:  approve(twapContract, allowance(vault, twapContract) + srcAmount)
 *   On cancel: approve(twapContract, max(0, allowance(vault, twapContract) - unfilled))
 *   where unfilled = orderSrcAmount - twap.order(id).srcFilledAmount (TWAP consumes allowance on fill)
 *
 * Order tracking:
 *   orderSrcToken[twapContract][id] and orderSrcAmount[twapContract][id] use composite keys
 *   so IDs from different TWAP contracts never collide.
 *
 * Token compatibility:
 *   SafeTransfer handles non-standard tokens (USDT mainnet void returns, non-zero→non-zero
 *   approve restrictions) without requiring OpenZeppelin.
 */

struct TwapAsk {
    address exchange;
    address srcToken;
    address dstToken;
    uint256 srcAmount;
    uint256 srcBidAmount;
    uint256 dstMinAmount;
    uint32  deadline;
    uint32  bidDelay;
    uint32  fillDelay;
    bytes data;
}

struct TwapBid {
    uint32 time;
    address taker;
    address exchange;
    uint256 dstAmount;
    uint256 dstFee;
    bytes data;
}

struct TwapOrder {
    uint64 id;
    uint32 status;
    uint32 time;
    uint32 filledTime;
    uint256 srcFilledAmount;
    address maker;
    TwapAsk ask;
    TwapBid bid;
}

interface IERC20 {
    function balanceOf(address account)
        external
        view
        returns (uint256);

    function allowance(
        address owner,
        address spender
    )
        external
        view
        returns (uint256);
}

interface IOrbsTwap {
    function ask(
        TwapAsk calldata ask
    )
        external
        returns (uint64 id);

    function cancel(
        uint64 id
    )
        external;

    function order(
        uint64 id
    )
        external
        view
        returns (TwapOrder memory);

    function STATUS_CANCELED()
        external
        view
        returns (uint32);

    function STATUS_COMPLETED()
        external
        view
        returns (uint32);
}

contract PersonalDcaVault {

    address public immutable FACTORY;
    address public beneficiary;
    uint8   private _locked;

    mapping(address => mapping(uint64 => address)) public orderSrcToken;
    mapping(address => mapping(uint64 => uint256)) public orderSrcAmount;

    address private constant ZERO_ADDRESS = address(0x0);

    event Withdrawn(
        address indexed token,
        uint256 netAmount,
        uint256 feeAmount
    );

    event WithdrawFeeCharged(
        address indexed token,
        uint256 feeAmount
    );

    event TwapPlaced(
        address indexed twapContract,
        uint64  indexed id,
        address srcToken,
        address dstToken,
        uint256 srcAmount
    );

    event OrderCanceled(
        address indexed twapContract,
        uint64  indexed id,
        address srcToken
    );

    event AllowanceRevoked(
        address indexed twapContract,
        address indexed token
    );

    event NativeBtcWithdrawn(
        address indexed wbtc,
        uint256 grossAmount,
        uint256 feeAmount,
        uint256 netAmount,
        address indexed swapRouter
    );

    error OnlyFactory();
    error OnlyBeneficiary();
    error AlreadyInitialized();
    error ZeroBeneficiary();
    error InsufficientBalance();
    error Reentrancy();
    error ETHTransferFailed();
    error OrderNotFound();
    error DuplicateOrderId();
    error FeeBpsExceedsMax();
    error AllowanceOverflow();
    error UnapprovedSwapRouter();
    error SwapCallFailed();

    modifier onlyBeneficiary() {
        if (msg.sender != beneficiary) {
            revert OnlyBeneficiary();
        }
        _;
    }

    modifier nonReentrant() {
        if (_locked == 2) {
            revert Reentrancy();
        }
        _locked = 2;
        _;
        _locked = 1;
    }

    constructor() {
        FACTORY = msg.sender;
        beneficiary = address(0xdead);
        _locked = 1;
    }

    function initialize(
        address _beneficiary
    )
        external
    {
        if (msg.sender != FACTORY) {
            revert OnlyFactory();
        }

        if (beneficiary != ZERO_ADDRESS) {
            revert AlreadyInitialized();
        }

        if (_beneficiary == ZERO_ADDRESS) {
            revert ZeroBeneficiary();
        }

        beneficiary = _beneficiary;
        _locked = 1;
    }

    // ─── Withdrawal ──────────────────────────────────────────────────────────

    function withdraw(
        address _token,
        uint256 _amount,
        uint16  _maxFeeBps
    )
        external
        nonReentrant
        onlyBeneficiary
    {
        _executeWithdraw(
            _token,
            _amount,
            _maxFeeBps
        );
    }

    function withdrawAsNativeBtc(
        address _wbtc,
        uint256 _amount,
        uint16  _maxFeeBps,
        address _swapRouter,
        bytes   calldata _swapCalldata,
        uint256 _swapValue
    )
        external
        nonReentrant
        onlyBeneficiary
    {
        _executeNativeBtcWithdraw(
            _wbtc,
            _amount,
            _maxFeeBps,
            _swapRouter,
            _swapCalldata,
            _swapValue
        );
    }

    function rescueETH()
        external
        nonReentrant
        onlyBeneficiary
    {
        uint256 bal = address(this).balance;

        if (bal == 0) {
            return;
        }

        (bool ok,) = payable(beneficiary).call{
            value: bal
        }("");

        if (ok == false) {
            revert ETHTransferFailed();
        }
    }

    // ─── Orders ──────────────────────────────────────────────────────────────

    function placeFromFactory(
        address _twapContract,
        TwapAsk calldata _ask
    )
        external
        nonReentrant
        returns (uint64 id)
    {
        if (msg.sender != FACTORY) {
            revert OnlyFactory();
        }
        return _placeTwap(
            _twapContract,
            _ask
        );
    }

    function cancelOrder(
        address _twapContract,
        uint64 _id
    )
        external
        onlyBeneficiary
        nonReentrant
    {
        address srcToken = orderSrcToken[_twapContract][_id];

        if (srcToken == ZERO_ADDRESS) {
            revert OrderNotFound();
        }

        uint256 orderAmount = orderSrcAmount[_twapContract][_id];
        
        IOrbsTwap twap = IOrbsTwap(
            _twapContract
        );

        TwapOrder memory twapOrder = twap.order(
            _id
        );

        if (_isTwapOrderTerminal(twap, twapOrder)) {
            _clearOrderRecord(
                _twapContract,
                _id,
                srcToken,
                orderAmount,
                twapOrder.srcFilledAmount
            );
            return;
        }

        twap.cancel(
            _id
        );

        _clearOrderRecord(
            _twapContract,
            _id,
            srcToken,
            orderAmount,
            twapOrder.srcFilledAmount
        );
    }

    function revokeAllowance(
        address _twapContract,
        address _token
    )
        external
        onlyBeneficiary
        nonReentrant
    {
        SafeTransfer.forceApprove(
            _token,
            _twapContract,
            0
        );

        emit AllowanceRevoked(
            _twapContract,
            _token
        );
    }

    // ─── Internal ────────────────────────────────────────────────────────────

    function _executeWithdraw(
        address _token,
        uint256 _amount,
        uint16  _maxFeeBps
    )
        internal
    {
        if (IERC20(_token).balanceOf(address(this)) < _amount) {
            revert InsufficientBalance();
        }

        address feeRecipient = IDcaVaultFactory(FACTORY)
            .feeRecipient();

        uint16  feeBps = IDcaVaultFactory(FACTORY)
            .feeBps();

        (uint256 fee, uint256 net) = _calcWithdrawFee(
            _amount,
            _maxFeeBps,
            feeBps,
            feeRecipient
        );

        if (fee > 0) {
            SafeTransfer.safeTransfer(
                _token,
                feeRecipient,
                fee
            );

            emit WithdrawFeeCharged(
                _token,
                fee
            );
        }

        if (net > 0) {
            SafeTransfer.safeTransfer(
                _token,
                beneficiary,
                net
            );
        }

        emit Withdrawn(
            _token,
            net,
            fee
        );
    }

    function _executeNativeBtcWithdraw(
        address _wbtc,
        uint256 _amount,
        uint16  _maxFeeBps,
        address _swapRouter,
        bytes   calldata _swapCalldata,
        uint256 _swapValue
    )
        internal
    {
        if (IERC20(_wbtc).balanceOf(address(this)) < _amount) {
            revert InsufficientBalance();
        }

        address feeRecipient = IDcaVaultFactory(FACTORY)
            .feeRecipient();

        uint16  feeBps = IDcaVaultFactory(FACTORY)
            .feeBps();

        (uint256 fee, uint256 net) = _calcWithdrawFee(
            _amount,
            _maxFeeBps,
            feeBps,
            feeRecipient
        );

        if (fee > 0) {
            SafeTransfer.safeTransfer(
                _wbtc,
                feeRecipient,
                fee
            );

            emit WithdrawFeeCharged(
                _wbtc,
                fee
            );
        }

        if (IDcaVaultFactory(FACTORY).isApprovedSwapRouter(_swapRouter) == false) {
            revert UnapprovedSwapRouter();
        }

        if (net > 0) {
            SafeTransfer.forceApprove(
                _wbtc,
                _swapRouter,
                net
            );
        }

        (bool ok,) = _swapRouter.call{
            value: _swapValue
        }(_swapCalldata);

        if (ok == false) {
            revert SwapCallFailed();
        }

        emit NativeBtcWithdrawn(
            _wbtc,
            _amount,
            fee,
            net,
            _swapRouter
        );
    }

    function _calcWithdrawFee(
        uint256 _gross,
        uint16  _maxFeeBps,
        uint16  _feeBps,
        address _feeRecipient
    )
        internal
        pure
        returns (uint256 fee, uint256 net)
    {
        if (_feeBps == 0) {
            return (0, _gross);
        }

        if (_feeBps > _maxFeeBps) {
            revert FeeBpsExceedsMax();
        }

        if (_feeRecipient == ZERO_ADDRESS) {
            return (0, _gross);
        }

        fee = _gross * _feeBps / 10_000;
        net = _gross - fee;
    }

    function _isTwapOrderTerminal(
        IOrbsTwap _twap,
        TwapOrder memory _order
    )
        internal
        view
        returns (bool)
    {
        if (_order.status == _twap.STATUS_CANCELED()) {
            return true;
        }

        if (_order.status == _twap.STATUS_COMPLETED()) {
            return true;
        }

        if (block.timestamp > _order.ask.deadline) {
            return true;
        }

        return false;
    }

    function _clearOrderRecord(
        address _twapContract,
        uint64 _id,
        address _srcToken,
        uint256 _orderAmount,
        uint256 _srcFilledAmount
    )
        internal
    {
        delete orderSrcToken[_twapContract][_id];
        delete orderSrcAmount[_twapContract][_id];

        uint256 unfilled = _orderAmount > _srcFilledAmount
            ? _orderAmount - _srcFilledAmount
            : 0;

        if (unfilled > 0) {
            _reduceAllowance(
                _srcToken,
                _twapContract,
                unfilled
            );
        }

        emit OrderCanceled(
            _twapContract,
            _id,
            _srcToken
        );
    }

    function _reduceAllowance(
        address _token,
        address _twapContract,
        uint256 _amount
    )
        internal
    {
        uint256 current = IERC20(_token).allowance(
            address(this),
            _twapContract
        );

        uint256 reduced = current > _amount
            ? current - _amount
            : 0;

        SafeTransfer.forceApprove(
            _token,
            _twapContract,
            reduced
        );
    }

    function _placeTwap(
        address _twapContract,
        TwapAsk calldata _ask
    )
        internal
        returns (uint64 id)
    {
        if (IERC20(_ask.srcToken).balanceOf(address(this)) < _ask.srcAmount) {
            revert InsufficientBalance();
        }

        uint256 current = IERC20(_ask.srcToken).allowance(
            address(this),
            _twapContract
        );

        if (_ask.srcAmount > type(uint256).max - current) {
            revert AllowanceOverflow();
        }

        SafeTransfer.forceApprove(
            _ask.srcToken,
            _twapContract,
            current + _ask.srcAmount
        );

        id = IOrbsTwap(_twapContract).ask(
            _ask
        );

        if (orderSrcToken[_twapContract][id] != ZERO_ADDRESS) {
            revert DuplicateOrderId();
        }

        orderSrcToken[_twapContract][id] = _ask.srcToken;
        orderSrcAmount[_twapContract][id] = _ask.srcAmount;

        emit TwapPlaced(
            _twapContract,
            id,
            _ask.srcToken,
            _ask.dstToken,
            _ask.srcAmount
        );
    }
}
