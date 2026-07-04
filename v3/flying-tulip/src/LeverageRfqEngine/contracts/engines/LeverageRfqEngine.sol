// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {IPositionsManager} from "../interfaces/IPositionsManager.sol";
import {IFlash, ILeverageFlashCallback} from "../interfaces/IFlash.sol";
import {ILeverageEngine} from "../interfaces/ILeverageEngine.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {IERC1271} from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {MetaActions} from "./MetaActions.sol";
import {MetaSessionActions} from "./MetaSessionActions.sol";
import {ISessionManager} from "@ft-common/interfaces/ISessionManager.sol";

/// @title LeverageRfqEngine
/// @notice RFQ-style engine for opening leveraged positions without flash loans:
///         a filler deposits collateral for the user, then the engine borrows
///         and transfers the borrowed asset to the filler to settle the trade.
/// @dev Engine never needs to be a PositionsManager meta module; all borrow/withdraw paths use
///      `borrowFlashAndDepositFor` / `withdrawFlashAndRepayFor`, which consume `borrowAllowance` /
///      `engineDebitAllowance`.
/// To wire it up:
///   - `PositionsManager.setEngine(address(engine), true)`

contract LeverageRfqEngine is ReentrancyGuardTransient, ILeverageFlashCallback {
    using SafeERC20 for IERC20;

    IPositionsManager public immutable pm;

    error LeverageExpired();
    error LeverageBadSignature();
    error LeverageAlreadyFilled();
    error LeverageZeroAddress();
    error LeverageAmountZero();
    error LeverageBuyAmountTooLow();
    error LeverageSameToken();
    error LeverageFeeCollectorZero();
    error LeverageOnlyPositionsManager();
    error LeverageMetaActionsUnset();
    error LeverageMetaSessionActionsUnset();
    error LeverageSessionManagerNotSet();
    error LeverageSessionFeeTooHigh();
    error LeverageSessionFeeExceedsAmount();
    error LeverageSessionExecutorMismatch(address expectedExecutor, address actualCaller);
    error LeverageSessionDataHashMismatch(bytes32 expected, bytes32 provided);
    error LeverageSessionOwnerMismatch(address expectedOwner, address actualOwner);
    error LeverageBadCancelAuth();
    error LeverageActionMismatch();
    error LeverageOrderNotActive();
    error LeverageOrderUserMismatch();

    bytes4 internal constant MAGICVALUE = 0x1626ba7e;

    uint256 internal constant BPS = 10_000;

    /// @dev Unified EIP-712 typehash for all leverage order actions (open, close, swap).
    ///      The `action` field (LeverageAction enum, encoded as uint8) discriminates intent.
    ///      Used for both direct-signing (full EIP-712 digest) and session datahash (raw struct hash).
    bytes32 public constant LEVERAGED_ORDER_TYPEHASH = keccak256(
        "LeveragedOrder(uint8 action,address user,address sellToken,address buyToken,uint256 sellAmount,uint256 buyAmount,uint32 validTo,uint256 feeAmount)"
    );

    enum LeverageAction {
        OPEN,
        CLOSE,
        SWAP
    }

    struct LeveragedOrder {
        LeverageAction action;
        address user;
        address sellToken;
        address buyToken;
        uint256 sellAmount;
        uint256 buyAmount;
        uint32 validTo;
        uint256 feeAmount;
    }

    struct FlashFill {
        bool isFlashFill;
        address fillTarget;
        bytes fillData;
        LeveragedOrder order;
    }

    struct MetaPermit {
        bool usePermit;
        uint256 deadline;
        bytes sig;
    }

    address public admin;
    address public feeCollector;
    MetaActions public metaActions;
    MetaSessionActions public metaSessionActions;
    ISessionManager public sessionManager;

    uint256 public DOMAIN_CHAIN_ID;
    bytes32 public DOMAIN_SEPARATOR;

    /// @notice Tracks filled (or cancelled) order digests for replay protection.
    mapping(bytes32 => bool) public filledDigests;

    /// @notice PreSign scheme. Flat mapping keyed by keccak256(owner, digest).
    mapping(bytes32 => bool) public preSignature;

    event AdminTransferred(address indexed prev, address indexed next);
    event FeeCollectorSet(address indexed collector);
    event MetaActionsSet(address indexed metaActions);
    event MetaSessionActionsSet(address indexed metaSessionActions);
    event SessionManagerSet(address indexed sessionManager);
    event PreSignature(address indexed owner, bytes32 indexed digest, bool signed);
    event OrderBroadcast(address indexed owner, bytes32 indexed digest, LeveragedOrder order);
    event OrderCancelled(address indexed sender, bytes32 indexed digest);

    event OpenLeverageFilled(
        address indexed filler,
        address indexed user,
        address indexed receiver,
        address sellToken,
        address buyToken,
        uint256 sellAmount,
        uint256 buyAmountIn,
        uint256 buyAmountMin,
        uint256 feeAmount,
        bytes32 digest
    );

    event OpenLeverageFlashFilled(
        address indexed filler,
        address indexed user,
        address indexed receiver,
        address sellToken,
        address buyToken,
        uint256 sellAmount,
        uint256 buyAmountMin,
        uint256 feeAmount,
        address fillTarget,
        bytes32 digest
    );

    event CloseLeverageFilled(
        address indexed filler,
        address indexed user,
        address indexed receiver,
        address sellToken,
        address buyToken,
        uint256 sellAmount,
        uint256 buyAmountIn,
        uint256 buyAmountMin,
        uint256 feeAmount,
        bytes32 digest
    );

    event CloseLeverageFlashFilled(
        address indexed filler,
        address indexed user,
        address indexed receiver,
        address sellToken,
        address buyToken,
        uint256 sellAmount,
        uint256 buyAmountMin,
        uint256 feeAmount,
        address fillTarget,
        bytes32 digest
    );

    event CollateralSwapFilled(
        address indexed filler,
        address indexed user,
        address indexed receiver,
        address sellToken,
        address buyToken,
        uint256 sellAmount,
        uint256 buyAmountIn,
        uint256 buyAmountMin,
        uint256 feeAmount,
        bytes32 digest
    );

    event CollateralSwapFlashFilled(
        address indexed filler,
        address indexed user,
        address indexed receiver,
        address sellToken,
        address buyToken,
        uint256 sellAmount,
        uint256 buyAmountMin,
        uint256 feeAmount,
        address fillTarget,
        bytes32 digest
    );

    constructor(address pm_, address admin_, address feeCollector_) {
        if (pm_ == address(0) || admin_ == address(0)) revert LeverageZeroAddress();
        if (feeCollector_ == address(0)) revert LeverageFeeCollectorZero();

        pm = IPositionsManager(pm_);
        admin = admin_;
        feeCollector = feeCollector_;
        emit AdminTransferred(address(0), admin_);
        emit FeeCollectorSet(feeCollector_);
        DOMAIN_CHAIN_ID = block.chainid;
        DOMAIN_SEPARATOR = _computeDomainSeparator(block.chainid);
    }

    modifier onlyAdmin() {
        _onlyAdmin();
        _;
    }

    function _onlyAdmin() internal view {
        if (msg.sender != admin) revert IPositionsManager.ftPositionManagerOnlyOwner();
    }

    function setAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert LeverageZeroAddress();
        emit AdminTransferred(admin, newAdmin);
        admin = newAdmin;
    }

    function setFeeCollector(address collector) external onlyAdmin {
        if (collector == address(0)) revert LeverageFeeCollectorZero();
        feeCollector = collector;
        emit FeeCollectorSet(collector);
    }

    function setMetaActions(address metaActions_) external onlyAdmin {
        metaActions = MetaActions(metaActions_);
        emit MetaActionsSet(metaActions_);
    }

    function setMetaSessionActions(address metaSessionActions_) external onlyAdmin {
        metaSessionActions = MetaSessionActions(metaSessionActions_);
        emit MetaSessionActionsSet(metaSessionActions_);
    }

    function setSessionManager(address sessionManager_) external onlyAdmin {
        sessionManager = ISessionManager(sessionManager_);
        emit SessionManagerSet(sessionManager_);
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  PreSign / Cancel
    // ──────────────────────────────────────────────────────────────────────────

    /// @notice Approve an order digest via PreSign (contract-wallet / strategy pattern).
    function setPreSignature(bytes32 digest, bool signed) external {
        _setPreSignature(msg.sender, digest, signed);
    }

    /// @notice PreSign an order and broadcast it on-chain. The engine computes the digest.
    function broadcastOrder(LeveragedOrder calldata order) external returns (bytes32 digest) {
        if (order.user != msg.sender) revert LeverageOrderUserMismatch();
        digest = _computeDigest(_orderStructHash(order));
        _setPreSignature(msg.sender, digest, true);
        emit OrderBroadcast(msg.sender, digest, order);
    }

    function _setPreSignature(address owner, bytes32 digest, bool signed) internal {
        preSignature[_preSignatureKey(owner, digest)] = signed;
        emit PreSignature(owner, digest, signed);
    }

    /// @notice Cancel a specific order by marking its digest as filled.
    ///         Only the order's user (order.user == msg.sender) may cancel.
    function cancelOrder(LeveragedOrder calldata order) external {
        if (order.user != msg.sender) revert LeverageBadCancelAuth();
        bytes32 digest = _computeDigest(_orderStructHash(order));
        if (filledDigests[digest]) revert LeverageOrderNotActive();
        filledDigests[digest] = true;
        emit OrderCancelled(msg.sender, digest);
    }

    /// @notice Cancel an order on behalf of a session owner (delegate-initiated).
    function cancelOrderWithSession(
        LeveragedOrder calldata order,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
        nonReentrant
    {
        ISessionManager sm = sessionManager;
        if (address(sm) == address(0)) revert LeverageSessionManagerNotSet();
        _validateSessionExecutor(sessionCall);

        (address owner,,) =
            sm.validateAndConsume(address(0), 0, sessionCall, delegateSignature, msg.sender);
        if (owner == address(0)) revert LeverageZeroAddress();
        if (order.user != owner) revert LeverageSessionOwnerMismatch(owner, order.user);

        bytes32 expectedHash = _orderStructHash(order);
        if (sessionCall.dataHash != expectedHash) {
            revert LeverageSessionDataHashMismatch(expectedHash, sessionCall.dataHash);
        }

        bytes32 digest = _computeDigest(expectedHash);
        if (filledDigests[digest]) revert LeverageOrderNotActive();
        filledDigests[digest] = true;
        emit OrderCancelled(owner, digest);
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Digest helpers
    // ──────────────────────────────────────────────────────────────────────────

    /// @notice Compute the EIP-712 digest for an order. Useful for off-chain callers.
    function orderDigest(LeveragedOrder calldata order) external view returns (bytes32) {
        return MessageHashUtils.toTypedDataHash(_domainSeparator(), _orderStructHash(order));
    }

    function _domainSeparator() internal view returns (bytes32) {
        return DOMAIN_CHAIN_ID == block.chainid
            ? DOMAIN_SEPARATOR
            : _computeDomainSeparator(block.chainid);
    }

    function _computeDigest(bytes32 structHash) internal returns (bytes32) {
        _ensureDomainSeparator();
        return MessageHashUtils.toTypedDataHash(DOMAIN_SEPARATOR, structHash);
    }

    function _orderStructHash(LeveragedOrder calldata order) internal pure returns (bytes32) {
        return keccak256(
            abi.encode(
                LEVERAGED_ORDER_TYPEHASH,
                uint8(order.action),
                order.user,
                order.sellToken,
                order.buyToken,
                order.sellAmount,
                order.buyAmount,
                order.validTo,
                order.feeAmount
            )
        );
    }

    function _preSignatureKey(address owner, bytes32 digest) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(owner, digest));
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Shared fill-tracking: direct and session auth
    // ──────────────────────────────────────────────────────────────────────────

    /// @dev Verify signature, check replay, and mark the order digest as filled (direct flow).
    function _verifyAndFill(
        LeveragedOrder calldata order,
        bytes calldata sig
    )
        internal
        returns (bytes32 digest)
    {
        digest = _computeDigest(_orderStructHash(order));
        if (filledDigests[digest]) revert LeverageAlreadyFilled();
        if (!_isValidSig(order.user, digest, sig)) revert LeverageBadSignature();
        filledDigests[digest] = true;
    }

    /// @dev Verify session dataHash, check replay, and mark the order digest as filled (session flow).
    function _verifySessionAndFill(
        LeveragedOrder calldata order,
        ISessionManager.SessionCall calldata sessionCall
    )
        internal
        returns (bytes32 digest)
    {
        bytes32 expectedHash = _orderStructHash(order);
        if (sessionCall.dataHash != expectedHash) {
            revert LeverageSessionDataHashMismatch(expectedHash, sessionCall.dataHash);
        }
        digest = _computeDigest(expectedHash);
        if (filledDigests[digest]) revert LeverageAlreadyFilled();
        filledDigests[digest] = true;
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Open leverage
    // ──────────────────────────────────────────────────────────────────────────

    /// @notice Fill a signed RFQ order to open a leveraged position.
    /// @param order SELL order describing the borrow->sell->deposit settlement (must have action=OPEN).
    /// @param sig User signature (EOA ECDSA, ERC-1271, or empty for PreSign).
    /// @param buyAmountIn Amount of buyToken provided by filler (must be >= order.buyAmount).
    function openLeverage(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn
    )
        external
        nonReentrant
    {
        _openLeverage(
            order, sig, buyAmountIn, MetaPermit({usePermit: false, deadline: 0, sig: bytes("")})
        );
    }

    function openLeverage(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn,
        MetaPermit calldata permit
    )
        external
        nonReentrant
    {
        _openLeverage(order, sig, buyAmountIn, permit);
    }

    function openLeverageWithSession(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
        nonReentrant
    {
        _openLeverageWithSession(order, buyAmountIn, sessionCall, delegateSignature);
    }

    function openLeverageWithSessionPermit(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature,
        ISessionManager.SessionCall calldata permitSessionCall,
        bytes calldata permitDelegateSignature
    )
        external
        nonReentrant
    {
        _requireSameSessionOwner(sessionCall, permitSessionCall);
        uint256 totalBorrow = order.sellAmount + order.feeAmount + sessionCall.feeAmount;
        _approveBorrowWithSessionPermit(
            order.sellToken, totalBorrow, permitSessionCall, permitDelegateSignature
        );
        _openLeverageWithSession(order, buyAmountIn, sessionCall, delegateSignature);
    }

    function _openLeverageWithSession(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (order.action != LeverageAction.OPEN) revert LeverageActionMismatch();
        _validateOrderAndBuyAmountIn(order, buyAmountIn);

        uint256 sessionFee = sessionCall.feeAmount;
        uint256 totalBorrow = order.sellAmount + order.feeAmount + sessionFee;
        address user = _validateAndConsumeSession(
            order.sellToken, totalBorrow, sessionCall, delegateSignature
        );
        if (user == address(0)) revert LeverageZeroAddress();
        if (order.user != user) revert LeverageSessionOwnerMismatch(user, order.user);

        bytes32 digest = _verifySessionAndFill(order, sessionCall);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        pm.borrowFlashAndDepositFor(
            user,
            order.sellToken,
            totalBorrow,
            order.buyToken,
            order.buyAmount,
            abi.encode(
                FlashFill({
                    isFlashFill: false,
                    fillTarget: msg.sender,
                    fillData: abi.encode(buyAmountIn),
                    order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        if (sessionFee != 0) {
            IERC20(order.sellToken).safeTransfer(msg.sender, sessionFee);
        }

        emit OpenLeverageFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            buyAmountIn,
            order.buyAmount,
            order.feeAmount,
            digest
        );
    }

    function _openLeverage(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn,
        MetaPermit memory permit
    )
        internal
    {
        if (order.action != LeverageAction.OPEN) revert LeverageActionMismatch();
        address user = order.user;
        _validateOrderAndBuyAmountIn(order, buyAmountIn);

        bytes32 digest = _verifyAndFill(order, sig);

        uint256 totalBorrow = order.sellAmount + order.feeAmount;
        _maybeApproveBorrowPermit(user, order.sellToken, totalBorrow, permit);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        pm.borrowFlashAndDepositFor(
            user,
            order.sellToken,
            totalBorrow,
            order.buyToken,
            order.buyAmount,
            abi.encode(
                FlashFill({
                    isFlashFill: false,
                    fillTarget: msg.sender,
                    fillData: abi.encode(buyAmountIn),
                    order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        emit OpenLeverageFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            buyAmountIn,
            order.buyAmount,
            order.feeAmount,
            digest
        );
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Open leverage flash
    // ──────────────────────────────────────────────────────────────────────────

    /// @notice Flash-style open: borrow first, then execute a fill callback that must deliver
    ///         `buyToken` to this engine so it can be deposited as collateral for `order.user`.
    function openLeverageFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig
    )
        external
        nonReentrant
    {
        _openLeverageFlash(
            order,
            fillTarget,
            fillData,
            sig,
            MetaPermit({usePermit: false, deadline: 0, sig: bytes("")})
        );
    }

    function openLeverageFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig,
        MetaPermit calldata permit
    )
        external
        nonReentrant
    {
        _openLeverageFlash(order, fillTarget, fillData, sig, permit);
    }

    function openLeverageFlashWithSession(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
        nonReentrant
    {
        _openLeverageFlashWithSession(order, fillTarget, fillData, sessionCall, delegateSignature);
    }

    function openLeverageFlashWithSessionPermit(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature,
        ISessionManager.SessionCall calldata permitSessionCall,
        bytes calldata permitDelegateSignature
    )
        external
        nonReentrant
    {
        _requireSameSessionOwner(sessionCall, permitSessionCall);
        uint256 totalBorrow = order.sellAmount + order.feeAmount + sessionCall.feeAmount;
        _approveBorrowWithSessionPermit(
            order.sellToken, totalBorrow, permitSessionCall, permitDelegateSignature
        );
        _openLeverageFlashWithSession(order, fillTarget, fillData, sessionCall, delegateSignature);
    }

    function _openLeverageFlashWithSession(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (order.action != LeverageAction.OPEN) revert LeverageActionMismatch();
        _validateFillTarget(fillTarget);
        _validateOrder(order);

        uint256 sessionFee = sessionCall.feeAmount;
        uint256 totalBorrow = order.sellAmount + order.feeAmount + sessionFee;
        address user = _validateAndConsumeSession(
            order.sellToken, totalBorrow, sessionCall, delegateSignature
        );
        if (user == address(0)) revert LeverageZeroAddress();
        if (order.user != user) revert LeverageSessionOwnerMismatch(user, order.user);

        bytes32 digest = _verifySessionAndFill(order, sessionCall);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        pm.borrowFlashAndDepositFor(
            user,
            order.sellToken,
            totalBorrow,
            order.buyToken,
            order.buyAmount,
            abi.encode(
                FlashFill({
                    isFlashFill: true, fillTarget: fillTarget, fillData: fillData, order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        if (sessionFee != 0) {
            IERC20(order.sellToken).safeTransfer(msg.sender, sessionFee);
        }

        emit OpenLeverageFlashFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            order.buyAmount,
            order.feeAmount,
            fillTarget,
            digest
        );
    }

    function _openLeverageFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig,
        MetaPermit memory permit
    )
        internal
    {
        if (order.action != LeverageAction.OPEN) revert LeverageActionMismatch();
        address user = order.user;
        _validateFillTarget(fillTarget);
        _validateOrder(order);

        bytes32 digest = _verifyAndFill(order, sig);

        uint256 totalBorrow = order.sellAmount + order.feeAmount;
        _maybeApproveBorrowPermit(user, order.sellToken, totalBorrow, permit);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        pm.borrowFlashAndDepositFor(
            user,
            order.sellToken,
            totalBorrow,
            order.buyToken,
            order.buyAmount,
            abi.encode(
                FlashFill({
                    isFlashFill: true, fillTarget: fillTarget, fillData: fillData, order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        emit OpenLeverageFlashFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            order.buyAmount,
            order.feeAmount,
            fillTarget,
            digest
        );
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Flash callback
    // ──────────────────────────────────────────────────────────────────────────

    /// @dev PositionsManager callback for flash-style fills.
    function onLeverageFlash(bytes calldata data) external override {
        if (msg.sender != address(pm)) revert LeverageOnlyPositionsManager();

        FlashFill memory f = abi.decode(data, (FlashFill));
        LeveragedOrder memory order = f.order;

        IERC20 buyToken = IERC20(order.buyToken);
        uint256 buyBalBefore = buyToken.balanceOf(address(this));

        IERC20 sellToken = IERC20(order.sellToken);
        sellToken.safeTransfer(f.fillTarget, order.sellAmount);
        if (order.feeAmount > 0) {
            sellToken.safeTransfer(feeCollector, order.feeAmount);
        }

        if (f.isFlashFill) {
            IFlash(f.fillTarget).onFlash(f.fillData);
        } else {
            uint256 buyAmountIn = abi.decode(f.fillData, (uint256));
            buyToken.safeTransferFrom(f.fillTarget, address(this), buyAmountIn);
        }

        uint256 buyBalAfter = buyToken.balanceOf(address(this));
        uint256 delta = buyBalAfter > buyBalBefore ? (buyBalAfter - buyBalBefore) : 0;
        if (delta < order.buyAmount) revert LeverageBuyAmountTooLow();
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Close leverage
    // ──────────────────────────────────────────────────────────────────────────

    /// @notice Fill a signed RFQ order to close (decrease leverage on) a position.
    /// @param order SELL order describing the withdraw->repay settlement (must have action=CLOSE).
    /// @param sig User signature (EOA ECDSA, ERC-1271, or empty for PreSign).
    /// @param buyAmountIn Amount of buyToken provided by filler (must be >= order.buyAmount).
    function closeLeverage(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn
    )
        external
        nonReentrant
    {
        _closeLeverage(
            order, sig, buyAmountIn, MetaPermit({usePermit: false, deadline: 0, sig: bytes("")})
        );
    }

    function closeLeverage(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn,
        MetaPermit calldata permit
    )
        external
        nonReentrant
    {
        _closeLeverage(order, sig, buyAmountIn, permit);
    }

    function closeLeverageWithSession(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
        nonReentrant
    {
        _closeLeverageWithSession(order, buyAmountIn, sessionCall, delegateSignature);
    }

    function closeLeverageWithSessionPermit(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature,
        ISessionManager.SessionCall calldata permitSessionCall,
        bytes calldata permitDelegateSignature
    )
        external
        nonReentrant
    {
        _requireSameSessionOwner(sessionCall, permitSessionCall);
        uint256 collateralAmount = order.sellAmount + order.feeAmount + sessionCall.feeAmount;
        _approveEngineWithSessionPermit(
            order.sellToken, collateralAmount, permitSessionCall, permitDelegateSignature
        );
        _closeLeverageWithSession(order, buyAmountIn, sessionCall, delegateSignature);
    }

    function _closeLeverageWithSession(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (order.action != LeverageAction.CLOSE) revert LeverageActionMismatch();
        _validateOrderAndBuyAmountIn(order, buyAmountIn);

        uint256 sessionFee = sessionCall.feeAmount;
        uint256 collateralAmount = order.sellAmount + order.feeAmount + sessionFee;
        address user = _validateAndConsumeSession(
            order.sellToken, collateralAmount, sessionCall, delegateSignature
        );
        if (user == address(0)) revert LeverageZeroAddress();
        if (order.user != user) revert LeverageSessionOwnerMismatch(user, order.user);

        bytes32 digest = _verifySessionAndFill(order, sessionCall);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        pm.withdrawFlashAndRepayFor(
            user,
            order.sellToken,
            collateralAmount,
            order.buyToken,
            0,
            abi.encode(
                FlashFill({
                    isFlashFill: false,
                    fillTarget: msg.sender,
                    fillData: abi.encode(buyAmountIn),
                    order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        if (sessionFee != 0) {
            IERC20(order.sellToken).safeTransfer(msg.sender, sessionFee);
        }

        emit CloseLeverageFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            buyAmountIn,
            order.buyAmount,
            order.feeAmount,
            digest
        );
    }

    function _closeLeverage(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn,
        MetaPermit memory permit
    )
        internal
    {
        if (order.action != LeverageAction.CLOSE) revert LeverageActionMismatch();
        address user = order.user;
        _validateOrderAndBuyAmountIn(order, buyAmountIn);

        bytes32 digest = _verifyAndFill(order, sig);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        uint256 collateralAmount = order.sellAmount + order.feeAmount;
        _maybeApproveEnginePermit(user, order.sellToken, collateralAmount, permit);
        pm.withdrawFlashAndRepayFor(
            user,
            order.sellToken,
            collateralAmount,
            order.buyToken,
            0,
            abi.encode(
                FlashFill({
                    isFlashFill: false,
                    fillTarget: msg.sender,
                    fillData: abi.encode(buyAmountIn),
                    order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        emit CloseLeverageFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            buyAmountIn,
            order.buyAmount,
            order.feeAmount,
            digest
        );
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Close leverage flash
    // ──────────────────────────────────────────────────────────────────────────

    /// @notice Flash-style close: withdraw collateral first, then execute a callback that must deliver
    ///         `buyToken` to this engine so it can repay the user's debt and optionally deposit leftovers.
    function closeLeverageFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig
    )
        external
        nonReentrant
    {
        _closeLeverageFlash(
            order,
            fillTarget,
            fillData,
            sig,
            MetaPermit({usePermit: false, deadline: 0, sig: bytes("")})
        );
    }

    function closeLeverageFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig,
        MetaPermit calldata permit
    )
        external
        nonReentrant
    {
        _closeLeverageFlash(order, fillTarget, fillData, sig, permit);
    }

    function closeLeverageFlashWithSession(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
        nonReentrant
    {
        _closeLeverageFlashWithSession(order, fillTarget, fillData, sessionCall, delegateSignature);
    }

    function closeLeverageFlashWithSessionPermit(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature,
        ISessionManager.SessionCall calldata permitSessionCall,
        bytes calldata permitDelegateSignature
    )
        external
        nonReentrant
    {
        _requireSameSessionOwner(sessionCall, permitSessionCall);
        uint256 collateralAmount = order.sellAmount + order.feeAmount + sessionCall.feeAmount;
        _approveEngineWithSessionPermit(
            order.sellToken, collateralAmount, permitSessionCall, permitDelegateSignature
        );
        _closeLeverageFlashWithSession(order, fillTarget, fillData, sessionCall, delegateSignature);
    }

    function _closeLeverageFlashWithSession(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (order.action != LeverageAction.CLOSE) revert LeverageActionMismatch();
        _validateFillTarget(fillTarget);
        _validateOrder(order);

        uint256 sessionFee = sessionCall.feeAmount;
        uint256 collateralAmount = order.sellAmount + order.feeAmount + sessionFee;
        address user = _validateAndConsumeSession(
            order.sellToken, collateralAmount, sessionCall, delegateSignature
        );
        if (user == address(0)) revert LeverageZeroAddress();
        if (order.user != user) revert LeverageSessionOwnerMismatch(user, order.user);

        bytes32 digest = _verifySessionAndFill(order, sessionCall);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        pm.withdrawFlashAndRepayFor(
            user,
            order.sellToken,
            collateralAmount,
            order.buyToken,
            0,
            abi.encode(
                FlashFill({
                    isFlashFill: true, fillTarget: fillTarget, fillData: fillData, order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        if (sessionFee != 0) {
            IERC20(order.sellToken).safeTransfer(msg.sender, sessionFee);
        }

        emit CloseLeverageFlashFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            order.buyAmount,
            order.feeAmount,
            fillTarget,
            digest
        );
    }

    function _closeLeverageFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig,
        MetaPermit memory permit
    )
        internal
    {
        if (order.action != LeverageAction.CLOSE) revert LeverageActionMismatch();
        address user = order.user;
        _validateFillTarget(fillTarget);
        _validateOrder(order);

        bytes32 digest = _verifyAndFill(order, sig);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        uint256 collateralAmount = order.sellAmount + order.feeAmount;
        _maybeApproveEnginePermit(user, order.sellToken, collateralAmount, permit);
        pm.withdrawFlashAndRepayFor(
            user,
            order.sellToken,
            collateralAmount,
            order.buyToken,
            0,
            abi.encode(
                FlashFill({
                    isFlashFill: true, fillTarget: fillTarget, fillData: fillData, order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        emit CloseLeverageFlashFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            order.buyAmount,
            order.feeAmount,
            fillTarget,
            digest
        );
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Swap collateral
    // ──────────────────────────────────────────────────────────────────────────

    /// @notice Fill a signed RFQ order to swap collateral for collateral.
    /// @param order SELL order describing the withdraw->deposit settlement (must have action=SWAP).
    /// @param sig User signature (EOA ECDSA, ERC-1271, or empty for PreSign).
    /// @param buyAmountIn Amount of buyToken provided by filler (must be >= order.buyAmount).
    function swapCollateral(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn
    )
        external
        nonReentrant
    {
        _swapCollateral(
            order, sig, buyAmountIn, MetaPermit({usePermit: false, deadline: 0, sig: bytes("")})
        );
    }

    function swapCollateral(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn,
        MetaPermit calldata permit
    )
        external
        nonReentrant
    {
        _swapCollateral(order, sig, buyAmountIn, permit);
    }

    function swapCollateralWithSession(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
        nonReentrant
    {
        _swapCollateralWithSession(order, buyAmountIn, sessionCall, delegateSignature);
    }

    function swapCollateralWithSessionPermit(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature,
        ISessionManager.SessionCall calldata permitSessionCall,
        bytes calldata permitDelegateSignature
    )
        external
        nonReentrant
    {
        _requireSameSessionOwner(sessionCall, permitSessionCall);
        uint256 collateralAmount = order.sellAmount + order.feeAmount + sessionCall.feeAmount;
        _approveEngineWithSessionPermit(
            order.sellToken, collateralAmount, permitSessionCall, permitDelegateSignature
        );
        _swapCollateralWithSession(order, buyAmountIn, sessionCall, delegateSignature);
    }

    function _swapCollateralWithSession(
        LeveragedOrder calldata order,
        uint256 buyAmountIn,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (order.action != LeverageAction.SWAP) revert LeverageActionMismatch();
        _validateOrderAndBuyAmountIn(order, buyAmountIn);

        uint256 sessionFee = sessionCall.feeAmount;
        uint256 collateralAmount = order.sellAmount + order.feeAmount + sessionFee;
        address user = _validateAndConsumeSession(
            order.sellToken, collateralAmount, sessionCall, delegateSignature
        );
        if (user == address(0)) revert LeverageZeroAddress();
        if (order.user != user) revert LeverageSessionOwnerMismatch(user, order.user);

        bytes32 digest = _verifySessionAndFill(order, sessionCall);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        pm.withdrawFlashAndDepositFor(
            user,
            order.sellToken,
            collateralAmount,
            order.buyToken,
            order.buyAmount,
            abi.encode(
                FlashFill({
                    isFlashFill: false,
                    fillTarget: msg.sender,
                    fillData: abi.encode(buyAmountIn),
                    order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        if (sessionFee != 0) {
            IERC20(order.sellToken).safeTransfer(msg.sender, sessionFee);
        }

        emit CollateralSwapFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            buyAmountIn,
            order.buyAmount,
            order.feeAmount,
            digest
        );
    }

    function _swapCollateral(
        LeveragedOrder calldata order,
        bytes calldata sig,
        uint256 buyAmountIn,
        MetaPermit memory permit
    )
        internal
    {
        if (order.action != LeverageAction.SWAP) revert LeverageActionMismatch();
        address user = order.user;
        _validateOrderAndBuyAmountIn(order, buyAmountIn);

        bytes32 digest = _verifyAndFill(order, sig);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        uint256 collateralAmount = order.sellAmount + order.feeAmount;
        _maybeApproveEnginePermit(user, order.sellToken, collateralAmount, permit);
        pm.withdrawFlashAndDepositFor(
            user,
            order.sellToken,
            collateralAmount,
            order.buyToken,
            order.buyAmount,
            abi.encode(
                FlashFill({
                    isFlashFill: false,
                    fillTarget: msg.sender,
                    fillData: abi.encode(buyAmountIn),
                    order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        emit CollateralSwapFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            buyAmountIn,
            order.buyAmount,
            order.feeAmount,
            digest
        );
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Swap collateral flash
    // ──────────────────────────────────────────────────────────────────────────

    /// @notice Flash-style collateral swap: withdraw collateral first, then execute a fill callback
    ///         that must deliver `buyToken` to this engine so it can be deposited as collateral for `user`.
    function swapCollateralFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig
    )
        external
        nonReentrant
    {
        _swapCollateralFlash(
            order,
            fillTarget,
            fillData,
            sig,
            MetaPermit({usePermit: false, deadline: 0, sig: bytes("")})
        );
    }

    function swapCollateralFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig,
        MetaPermit calldata permit
    )
        external
        nonReentrant
    {
        _swapCollateralFlash(order, fillTarget, fillData, sig, permit);
    }

    function swapCollateralFlashWithSession(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
        nonReentrant
    {
        _swapCollateralFlashWithSession(order, fillTarget, fillData, sessionCall, delegateSignature);
    }

    function swapCollateralFlashWithSessionPermit(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature,
        ISessionManager.SessionCall calldata permitSessionCall,
        bytes calldata permitDelegateSignature
    )
        external
        nonReentrant
    {
        _requireSameSessionOwner(sessionCall, permitSessionCall);
        uint256 collateralAmount = order.sellAmount + order.feeAmount + sessionCall.feeAmount;
        _approveEngineWithSessionPermit(
            order.sellToken, collateralAmount, permitSessionCall, permitDelegateSignature
        );
        _swapCollateralFlashWithSession(order, fillTarget, fillData, sessionCall, delegateSignature);
    }

    function _swapCollateralFlashWithSession(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (order.action != LeverageAction.SWAP) revert LeverageActionMismatch();
        _validateFillTarget(fillTarget);
        _validateOrder(order);

        uint256 sessionFee = sessionCall.feeAmount;
        uint256 collateralAmount = order.sellAmount + order.feeAmount + sessionFee;
        address user = _validateAndConsumeSession(
            order.sellToken, collateralAmount, sessionCall, delegateSignature
        );
        if (user == address(0)) revert LeverageZeroAddress();
        if (order.user != user) revert LeverageSessionOwnerMismatch(user, order.user);

        bytes32 digest = _verifySessionAndFill(order, sessionCall);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        pm.withdrawFlashAndDepositFor(
            user,
            order.sellToken,
            collateralAmount,
            order.buyToken,
            order.buyAmount,
            abi.encode(
                FlashFill({
                    isFlashFill: true, fillTarget: fillTarget, fillData: fillData, order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        if (sessionFee != 0) {
            IERC20(order.sellToken).safeTransfer(msg.sender, sessionFee);
        }

        emit CollateralSwapFlashFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            order.buyAmount,
            order.feeAmount,
            fillTarget,
            digest
        );
    }

    function _swapCollateralFlash(
        LeveragedOrder calldata order,
        address fillTarget,
        bytes calldata fillData,
        bytes calldata sig,
        MetaPermit memory permit
    )
        internal
    {
        if (order.action != LeverageAction.SWAP) revert LeverageActionMismatch();
        address user = order.user;
        _validateFillTarget(fillTarget);
        _validateOrder(order);

        bytes32 digest = _verifyAndFill(order, sig);

        IERC20 buyToken = IERC20(order.buyToken);
        buyToken.forceApprove(address(pm), type(uint256).max);

        uint256 collateralAmount = order.sellAmount + order.feeAmount;
        _maybeApproveEnginePermit(user, order.sellToken, collateralAmount, permit);
        pm.withdrawFlashAndDepositFor(
            user,
            order.sellToken,
            collateralAmount,
            order.buyToken,
            order.buyAmount,
            abi.encode(
                FlashFill({
                    isFlashFill: true, fillTarget: fillTarget, fillData: fillData, order: order
                })
            )
        );

        buyToken.forceApprove(address(pm), 0);

        emit CollateralSwapFlashFilled(
            msg.sender,
            user,
            user,
            order.sellToken,
            order.buyToken,
            order.sellAmount,
            order.buyAmount,
            order.feeAmount,
            fillTarget,
            digest
        );
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Session helpers
    // ──────────────────────────────────────────────────────────────────────────

    function _validateAndConsumeSession(
        address spendToken,
        uint256 spendAmount,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
        returns (address owner)
    {
        ISessionManager sm = sessionManager;
        if (address(sm) == address(0)) revert LeverageSessionManagerNotSet();
        _validateSessionExecutor(sessionCall);

        uint16 maxFeeBps;
        (owner,, maxFeeBps) = sm.validateAndConsume(
            spendToken, spendAmount, sessionCall, delegateSignature, msg.sender
        );

        _enforceRelayerFee(spendAmount, maxFeeBps, sessionCall.feeAmount);
    }

    function _enforceRelayerFee(uint256 amount, uint16 maxFeeBps, uint256 feeAmount) internal pure {
        if (feeAmount == 0) return;
        if (feeAmount >= amount) revert LeverageSessionFeeExceedsAmount();

        uint256 baseAmount = amount - feeAmount;
        uint256 maxFee = Math.mulDiv(baseAmount, maxFeeBps, BPS, Math.Rounding.Ceil);
        if (feeAmount > maxFee) revert LeverageSessionFeeTooHigh();
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Validation helpers
    // ──────────────────────────────────────────────────────────────────────────

    function _validateOrder(LeveragedOrder calldata order) internal view {
        if (block.timestamp > order.validTo) revert LeverageExpired();
        if (order.sellAmount == 0 || order.buyAmount == 0) revert LeverageAmountZero();
        if (order.sellToken == order.buyToken) revert LeverageSameToken();
        if (order.user == address(0)) revert LeverageZeroAddress();
    }

    function _validateOrderAndBuyAmountIn(
        LeveragedOrder calldata order,
        uint256 buyAmountIn
    )
        internal
        view
    {
        _validateOrder(order);
        if (buyAmountIn < order.buyAmount) revert LeverageBuyAmountTooLow();
    }

    function _validateFillTarget(address fillTarget) internal pure {
        if (fillTarget == address(0)) revert LeverageZeroAddress();
    }

    function _validateSessionExecutor(ISessionManager.SessionCall calldata sessionCall)
        internal
        view
    {
        if (sessionCall.executor != msg.sender) {
            revert LeverageSessionExecutorMismatch(sessionCall.executor, msg.sender);
        }
    }

    function _requireSameSessionOwner(
        ISessionManager.SessionCall calldata sessionCall,
        ISessionManager.SessionCall calldata permitSessionCall
    )
        internal
        view
    {
        ISessionManager sm = sessionManager;
        if (address(sm) == address(0)) revert LeverageSessionManagerNotSet();

        (address sessionOwner,,,,,) = sm.sessions(sessionCall.sessionId);
        (address permitOwner,,,,,) = sm.sessions(permitSessionCall.sessionId);

        if (sessionOwner != permitOwner) {
            revert LeverageSessionOwnerMismatch(sessionOwner, permitOwner);
        }
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Permit helpers
    // ──────────────────────────────────────────────────────────────────────────

    function _approveBorrowWithSessionPermit(
        address asset,
        uint256 borrowAllowance,
        ISessionManager.SessionCall calldata permitSessionCall,
        bytes calldata permitDelegateSignature
    )
        internal
    {
        _validateSessionExecutor(permitSessionCall);

        MetaSessionActions msa = metaSessionActions;
        if (address(msa) == address(0)) revert LeverageMetaSessionActionsUnset();

        msa.approveBorrowWithSession(
            address(this), asset, borrowAllowance, permitSessionCall, permitDelegateSignature
        );
    }

    function _approveEngineWithSessionPermit(
        address asset,
        uint256 debitAllowance,
        ISessionManager.SessionCall calldata permitSessionCall,
        bytes calldata permitDelegateSignature
    )
        internal
    {
        _validateSessionExecutor(permitSessionCall);

        MetaSessionActions msa = metaSessionActions;
        if (address(msa) == address(0)) revert LeverageMetaSessionActionsUnset();

        msa.approveEngineWithSession(
            address(this), asset, debitAllowance, permitSessionCall, permitDelegateSignature
        );
    }

    function _maybeApproveBorrowPermit(
        address user,
        address borrowAsset,
        uint256 borrowAllowance,
        MetaPermit memory permit
    )
        internal
    {
        if (!permit.usePermit) return;

        MetaActions meta = metaActions;
        if (address(meta) == address(0)) revert LeverageMetaActionsUnset();

        meta.approveBorrowWithSig(
            user, address(this), borrowAsset, borrowAllowance, permit.deadline, permit.sig
        );
    }

    function _maybeApproveEnginePermit(
        address user,
        address asset,
        uint256 debitAllowance,
        MetaPermit memory permit
    )
        internal
    {
        if (!permit.usePermit) return;

        MetaActions meta = metaActions;
        if (address(meta) == address(0)) revert LeverageMetaActionsUnset();

        meta.approveEngineWithSig(
            user, address(this), asset, debitAllowance, permit.deadline, permit.sig
        );
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Signature verification
    // ──────────────────────────────────────────────────────────────────────────

    function _isValidSig(
        address signer,
        bytes32 digest,
        bytes memory sig
    )
        internal
        view
        returns (bool)
    {
        if (preSignature[_preSignatureKey(signer, digest)]) return true;

        // Compatibility-first:
        // - Try ECDSA first (works for EOAs and EIP-7702 EOAs with delegation code).
        // - Fall back to ERC-1271 for contracts (incl. delegated EOAs that implement ERC-1271).
        (address recovered, ECDSA.RecoverError err,) = ECDSA.tryRecover(digest, sig);
        if (err == ECDSA.RecoverError.NoError && recovered == signer) return true;

        // Avoid ABI decode reverts when calling ERC-1271 on a non-contract (empty return data).
        if (signer.code.length == 0) return false;
        (bool ok, bytes memory ret) =
            signer.staticcall(abi.encodeCall(IERC1271.isValidSignature, (digest, sig)));
        if (!ok || ret.length < 4) return false;
        bytes4 res;
        assembly {
            res := mload(add(ret, 32))
        }
        return (res == MAGICVALUE);
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  EIP-712 domain
    // ──────────────────────────────────────────────────────────────────────────

    function _ensureDomainSeparator() internal {
        if (DOMAIN_CHAIN_ID != block.chainid) {
            DOMAIN_CHAIN_ID = block.chainid;
            DOMAIN_SEPARATOR = _computeDomainSeparator(block.chainid);
        }
    }

    function _computeDomainSeparator(uint256 chainId) internal view returns (bytes32) {
        return keccak256(
            abi.encode(
                keccak256(
                    "EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"
                ),
                keccak256(bytes("LeverageRfqEngine")),
                keccak256(bytes("1")),
                chainId,
                address(this)
            )
        );
    }
}
