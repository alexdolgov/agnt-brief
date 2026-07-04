// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

import "./interfaces/IRealeRouter.sol";
import "./libraries/ErrorsLib.sol";

interface IPermit2 {
    struct TokenPermissions {
        address token;
        uint256 amount;
    }

    struct PermitTransferFrom {
        TokenPermissions permitted;
        uint256 nonce;
        uint256 deadline;
    }

    struct SignatureTransferDetails {
        address to;
        uint256 requestedAmount;
    }

    function permitWitnessTransferFrom(
        PermitTransferFrom calldata permit,
        SignatureTransferDetails calldata transferDetails,
        address owner,
        bytes32 witness,
        string calldata witnessTypeString,
        bytes calldata signature
    ) external;
}

/// @title RealeRouter
/// @notice Reale Router escrow contract without any Bebop/Jam dependency.
/// @dev Naming note:
///      - makerFundingAddress is the settlement-fund account.
///
/// Settle-Later path:
///   1. User calls lock() – tokenIn is held in escrow.
///   2. Operator calls settle() – direct safeTransfer/safeTransferFrom moves tokens;
///      no third-party settlement contract required.
///   3. If deadline passes without settle, anyone may call refund(); tokenIn
///      always returns to the stored taker.
///
/// Instant RFQ path:
///   1. User pre-approves escrow for tokenIn (amountIn).
///   2. makerFundingAddress pre-approves escrow for tokenOut (gross, including fee when feeInQuote).
///   3. Operator calls instantSettle() – atomically swaps both sides.
///      EIP-712 signatures from both parties are verified on-chain.
contract RealeRouter is
    IRealeRouter,
    ReentrancyGuardTransient,
    UUPSUpgradeable,
    PausableUpgradeable,
    AccessControlUpgradeable,
    EIP712Upgradeable
{
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;

    // ─── Roles ────────────────────────────────────────────────────────────────────

    /// @dev Immediate governance lane.
    bytes32 public constant IMMEDIATE_ROLE = keccak256("IMMEDIATE_ROLE");

    /// @dev Standard governance lane.
    bytes32 public constant STANDARD_ROLE = keccak256("STANDARD_ROLE");

    /// @dev Delayed governance lane.
    bytes32 public constant DELAYED_ROLE = keccak256("DELAYED_ROLE");

    // DEFAULT_ADMIN_ROLE (from AccessControl) is assigned to the delayed timelock so that
    // grantRole / revokeRole also require the 24h governance path.

    // ─── Storage ─────────────────────────────────────────────────────────────────

    mapping(bytes32 => Order) private _orders;

    /// @dev allowed market makers for instantSettle
    mapping(address => bool) private _allowedMarkers;

    /// @dev orderIds consumed by instantSettle to prevent replay.
    mapping(bytes32 => bool) private _usedOrderIds;

    /// @dev makerFundingAddress => delegated signer => allowed.
    mapping(address => mapping(address => bool)) private _allowedOrderSigners;

    /// @dev Uniswap Permit2 contract used for signature-based token pulls.
    address public permit2;

    /// @dev Exchange platform signers allowed to countersign instant/lock orders.
    mapping(address => bool) private _allowedExchangeSigners;

    // EIP-712 type hash for InstantOrder.
    bytes32 public constant INSTANT_ORDER_TYPEHASH =
        keccak256(
            "InstantOrder(bytes32 orderId,address taker,address makerFundingAddress,address tokenIn,address tokenOut,"
            "uint256 amountIn,uint256 amountOut,uint256 feeAmount,address feeRecipient,"
            "bool feeInQuote,uint256 expiry)"
        );

    // Permit2 witnessTypeString for InstantOrder (instant RFQ path).
    string private constant _PERMIT2_WITNESS_TYPE_STRING =
        "InstantOrder witness)"
        "InstantOrder(bytes32 orderId,address taker,address makerFundingAddress,address tokenIn,address tokenOut,"
        "uint256 amountIn,uint256 amountOut,uint256 feeAmount,address feeRecipient,"
        "bool feeInQuote,uint256 expiry)"
        "TokenPermissions(address token,uint256 amount)";

    // EIP-712 type hash for LockOrder (Settle-Later Permit2 witness).
    bytes32 public constant LOCK_ORDER_TYPEHASH =
        keccak256(
            "LockOrder(bytes32 orderId,address taker,address makerFundingAddress,address tokenIn,address tokenOut,"
            "uint256 amountIn,uint256 amountOut,uint256 feeAmount,address feeRecipient,"
            "bool feeInQuote,uint256 settleDeadline)"
        );

    // EIP-712 type hash for SettleAuthorization (Settle-Later maker authorization).
    bytes32 public constant SETTLE_AUTHORIZATION_TYPEHASH =
        keccak256("SettleAuthorization(bytes32 orderId)");

    // EIP-712 type hash for Exchange platform attestation (covers both instant and lock).
    bytes32 public constant EXCHANGE_ATTESTATION_TYPEHASH =
        keccak256("ExchangeAttestation(bytes32 orderHash)");

    // Permit2 witnessTypeString for LockOrder (Settle-Later path).
    string private constant _PERMIT2_LOCK_WITNESS_TYPE_STRING =
        "LockOrder witness)"
        "LockOrder(bytes32 orderId,address taker,address makerFundingAddress,address tokenIn,address tokenOut,"
        "uint256 amountIn,uint256 amountOut,uint256 feeAmount,address feeRecipient,"
        "bool feeInQuote,uint256 settleDeadline)"
        "TokenPermissions(address token,uint256 amount)";

    // Reserved storage gap for future upgrades.
    uint256[45] private __gap;

    // ─── Initializer ─────────────────────────────────────────────────────────────

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the proxy.
    /// @param _admin   Admin address (receives DEFAULT_ADMIN_ROLE; should be transferred to
    ///                 the delayed timelock after Safes and Timelocks are deployed).
    /// @param _permit2 Uniswap Permit2 contract address. Zero = Permit2 disabled at launch.
    function initialize(address _admin, address _permit2) external initializer {
        if (_admin == address(0)) revert ErrorsLib.zeroAddress();
        __AccessControl_init();
        __Pausable_init();
        __EIP712_init("Reale - Router", "1.0");
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        if (_permit2 != address(0)) {
            permit2 = _permit2;
            emit Permit2Updated(_permit2);
        }
    }

    function pause() external whenNotPaused onlyRole(IMMEDIATE_ROLE) {
        _pause();
    }

    function unpause() external whenPaused onlyRole(STANDARD_ROLE) {
        _unpause();
    }

    function addAllowedMarker(address[] calldata markers) external onlyRole(STANDARD_ROLE) {
        _requireNotPaused();
        for (uint256 i = 0; i < markers.length; ++i) {
            if (markers[i] == address(0)) revert ErrorsLib.zeroAddress();
            _allowedMarkers[markers[i]] = true;
            emit MarkerUpdated(markers[i], true);
        }
    }

    function removeAllowedMarker(address[] calldata markers) external onlyRole(IMMEDIATE_ROLE) {
        for (uint256 i = 0; i < markers.length; ++i) {
            if (markers[i] == address(0)) revert ErrorsLib.zeroAddress();
            _allowedMarkers[markers[i]] = false;
            emit MarkerUpdated(markers[i], false);
        }
    }

    function _authorizeUpgrade(address) internal override onlyRole(DELAYED_ROLE) {}

    function setAllowedOrderSigner(
        address signer,
        bool allowed
    ) external override {
        // Allow revocation (allowed=false) even when paused so a makerFundingAddress can
        // immediately revoke a leaked delegated signer key during an emergency.
        if (allowed) _requireNotPaused();
        if (signer == address(0)) revert ErrorsLib.zeroAddress();
        if (signer == msg.sender) revert ErrorsLib.selfSigner();

        _allowedOrderSigners[msg.sender][signer] = allowed;
        emit OrderSignerRegistered(msg.sender, signer, allowed);
    }

    function isAllowedMarker(address marker) external view override returns (bool) {
        return _allowedMarkers[marker];
    }

    function addExchangeSigner(address signer) external onlyRole(STANDARD_ROLE) {
        _requireNotPaused();
        if (signer == address(0)) revert ErrorsLib.zeroAddress();
        _allowedExchangeSigners[signer] = true;
        emit ExchangeSignerUpdated(signer, true);
    }

    function removeExchangeSigner(address signer) external onlyRole(IMMEDIATE_ROLE) {
        if (signer == address(0)) revert ErrorsLib.zeroAddress();
        _allowedExchangeSigners[signer] = false;
        emit ExchangeSignerUpdated(signer, false);
    }

    function isAllowedExchangeSigner(address signer) external view returns (bool) {
        return _allowedExchangeSigners[signer];
    }

    function isAllowedOrderSigner(
        address makerFundingAddress,
        address signer
    ) external view override returns (bool) {
        return _isAuthorizedMakerSigner(makerFundingAddress, signer);
    }

    // ─── Settle-Later: lock ───────────────────────────────────────────────────────

    function lock(
        bytes32 orderId,
        address taker,
        address makerFundingAddress,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        uint256 feeAmount,
        address feeRecipient,
        bool feeInQuote,
        uint256 settleDeadline,
        Permit2Params calldata takerPermit2,
        bytes calldata platformSig
    ) external override nonReentrant whenNotPaused {
        // ── Validate order ──────────────────────────────────────────────────────
        if (orderId == bytes32(0)) revert ErrorsLib.emptyOrderId();
        if (taker == address(0)) revert ErrorsLib.zeroAddress();
        if (_orders[orderId].status != OrderStatus.None) revert ErrorsLib.orderExists();
        if (makerFundingAddress == address(0)) revert ErrorsLib.zeroAddress();
        if (!_allowedMarkers[makerFundingAddress]) revert ErrorsLib.unauthorizedMarker();
        if (tokenIn == address(0) || tokenOut == address(0)) revert ErrorsLib.zeroToken();
        if (tokenIn == tokenOut) revert ErrorsLib.sameToken();
        if (amountIn == 0 || amountOut == 0) revert ErrorsLib.zeroAmount();
        if (feeAmount > 0) {
            if (feeRecipient == address(0)) revert ErrorsLib.zeroAddress();
            if (feeRecipient == address(this)) revert ErrorsLib.invalidFeeRecipient();
        }
        if (!feeInQuote && feeAmount >= amountIn) revert ErrorsLib.feeExceedsAmountIn(); // subscribe: fee must leave room for netBase > 0
        if (settleDeadline <= block.timestamp) revert ErrorsLib.deadlineInPast();

        // ── Pull tokenIn ────────────────────────────────────────────────────────
        if (takerPermit2.signature.length > 0) {
            // Permit2 witness path: anyone can call (backend submits on behalf of taker).
            bytes32 witness = _structHashLockOrder(LockOrder({
                orderId:       orderId,
                taker:         taker,
                makerFundingAddress: makerFundingAddress,
                tokenIn:       tokenIn,
                tokenOut:      tokenOut,
                amountIn:      amountIn,
                amountOut:     amountOut,
                feeAmount:     feeAmount,
                feeRecipient:  feeRecipient,
                feeInQuote:    feeInQuote,
                settleDeadline: settleDeadline
            }));
            // Platform attestation: verify Exchange countersigned this exact lock order.
            {
                bytes32 attDigest = _hashTypedDataV4(keccak256(abi.encode(
                    EXCHANGE_ATTESTATION_TYPEHASH,
                    witness
                )));
                address platformSigner = attDigest.recover(platformSig);
                if (!_allowedExchangeSigners[platformSigner]) revert ErrorsLib.unauthorizedExchangeSigner();
            }
            _pullTokenInByPermit2Witness(taker, tokenIn, amountIn, witness, _PERMIT2_LOCK_WITNESS_TYPE_STRING, takerPermit2);
        } else {
            // Classic allowance path: only the taker may call.
            // Compute struct hash for attestation (same order fields as Permit2 path).
            bytes32 witness = _structHashLockOrder(LockOrder({
                orderId:       orderId,
                taker:         taker,
                makerFundingAddress: makerFundingAddress,
                tokenIn:       tokenIn,
                tokenOut:      tokenOut,
                amountIn:      amountIn,
                amountOut:     amountOut,
                feeAmount:     feeAmount,
                feeRecipient:  feeRecipient,
                feeInQuote:    feeInQuote,
                settleDeadline: settleDeadline
            }));
            // Platform attestation verification.
            {
                bytes32 attDigest = _hashTypedDataV4(keccak256(abi.encode(
                    EXCHANGE_ATTESTATION_TYPEHASH,
                    witness
                )));
                address platformSigner = attDigest.recover(platformSig);
                if (!_allowedExchangeSigners[platformSigner]) revert ErrorsLib.unauthorizedExchangeSigner();
            }
            if (msg.sender != taker) revert ErrorsLib.callerIsNotTaker();
            _pullTokenInByAllowance(taker, tokenIn, amountIn);
        }

        _orders[orderId] = Order({
            taker: taker,
            makerFundingAddress: makerFundingAddress,
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            amountIn: amountIn,
            amountOut: amountOut,
            feeAmount: feeAmount,
            feeRecipient: feeRecipient,
            feeInQuote: feeInQuote,
            settleDeadline: settleDeadline,
            status: OrderStatus.Locked
        });

        // Emit after token transfer so indexers observe a consistent state.
        emit Lock(orderId, taker, makerFundingAddress, tokenIn, tokenOut, amountIn, amountOut, feeAmount, feeRecipient, feeInQuote, settleDeadline);
    }

    // ─── Settle-Later: settle ─────────────────────────────────────────────────────

    /// @notice Anyone may call settle as long as they supply a valid maker signature.
    ///         The maker signature authorises execution of the locked orderId.
    function settle(
        bytes32 orderId,
        bytes calldata makerSig
    ) external override nonReentrant whenNotPaused {
        if (orderId == bytes32(0)) revert ErrorsLib.emptyOrderId();

        Order storage order = _orders[orderId];
        if (order.status != OrderStatus.Locked)
            revert ErrorsLib.orderNotLocked();

        if (block.timestamp > order.settleDeadline)
            revert ErrorsLib.orderExpired();

        address makerFundingAddress = order.makerFundingAddress;

        if (!_allowedMarkers[makerFundingAddress])
            revert ErrorsLib.unauthorizedMarker();

        // Verify maker EIP-712 typed data signature. The recovered signer may be
        // the funding account itself or any delegated signer currently authorized
        // by that funding account.
        bytes32 authorizationHash = _hashSettleAuthorization(orderId);
        address makerSigner = authorizationHash.recover(makerSig);
        if (!_isAuthorizedMakerSigner(makerFundingAddress, makerSigner))
            revert ErrorsLib.unauthorizedMakerSigner();

        order.status = OrderStatus.Settled;

        if (order.feeInQuote) {
            // Redeem path: fee charged from tokenOut, pulled from makerFundingAddress.
            // makerFundingAddress must have approved amountOut + feeAmount of tokenOut to this contract.
            // Send tokenIn from escrow to makerFundingAddress.
            IERC20(order.tokenIn).safeTransfer(
                makerFundingAddress,
                order.amountIn
            );

            // Pull net tokenOut from makerFundingAddress to user.
            IERC20(order.tokenOut).safeTransferFrom(
                makerFundingAddress,
                order.taker,
                order.amountOut
            );

            // Pull fee tokenOut from makerFundingAddress to feeRecipient.
            if (order.feeAmount > 0)
                IERC20(order.tokenOut).safeTransferFrom(
                    makerFundingAddress,
                    order.feeRecipient,
                    order.feeAmount
                );

            // Return any dust tokenIn to user.
        } else {
            // Subscribe path: fee charged from tokenIn, already held in escrow.
            // Transfer fee tokenIn from escrow to feeRecipient.
            if (order.feeAmount > 0)
                IERC20(order.tokenIn).safeTransfer(
                    order.feeRecipient,
                    order.feeAmount
                );

            // Send net tokenIn from escrow to makerFundingAddress.
            IERC20(order.tokenIn).safeTransfer(
                makerFundingAddress,
                order.amountIn - order.feeAmount
            );

            // Pull tokenOut from makerFundingAddress to user.
            IERC20(order.tokenOut).safeTransferFrom(
                makerFundingAddress,
                order.taker,
                order.amountOut
            );
        }

        emit Settle(orderId, msg.sender);
    }

    // ─── Settle-Later: refund ─────────────────────────────────────────────────────

    function refund(bytes32 orderId) external override nonReentrant {
        Order storage order = _orders[orderId];
        if (order.status != OrderStatus.Locked)
            revert ErrorsLib.orderNotLocked();
        if (block.timestamp <= order.settleDeadline)
            revert ErrorsLib.deadlineNotPassed();

        order.status = OrderStatus.Expired;
        IERC20(order.tokenIn).safeTransfer(order.taker, order.amountIn);

        emit Refund(orderId, order.taker);
    }

    // ─── Settle-Later: view ───────────────────────────────────────────────────────

    function getOrder(
        bytes32 orderId
    ) external view override returns (Order memory) {
        return _orders[orderId];
    }

    // ─── Instant RFQ ─────────────────────────────────────────────────────────────

    /// @notice Atomically executes an Instant RFQ trade.
    ///
    /// Pre-conditions (enforced by ERC-20 allowances, not this contract):
    ///   - taker has approved this contract for amountIn of tokenIn
    ///   - makerFundingAddress has approved this contract for the gross tokenOut amount
    ///     (amountOut + feeAmount when feeInQuote, otherwise amountOut)
    ///
    /// Subscribe (stable → fund, !feeInQuote):
    ///   amountIn = netBase + feeAmount
    ///   escrow transfers:
    ///     tokenIn:  taker → makerFundingAddress  (netBase = amountIn - feeAmount)
    ///     tokenIn:  taker → feeRecipient  (feeAmount)
    ///     tokenOut: makerFundingAddress → taker  (amountOut)
    ///
    /// Redeem (fund → stable, feeInQuote):
    ///   amountIn = baseAmount (no fee in tokenIn)
    ///   escrow transfers:
    ///     tokenIn:  taker → makerFundingAddress  (amountIn)
    ///     tokenOut: makerFundingAddress → taker  (amountOut)
    ///     tokenOut: makerFundingAddress → feeRecipient (feeAmount)
    function instantSettle(
        InstantOrder calldata order,
        bytes calldata makerSig,
        bytes calldata takerSig,
        Permit2Params calldata takerPermit2,
        bytes calldata platformSig
    ) external override nonReentrant whenNotPaused {
        bool usePermit2 = takerPermit2.signature.length > 0;

        if (order.orderId == bytes32(0)) revert ErrorsLib.emptyOrderId();
        if (_usedOrderIds[order.orderId]) revert ErrorsLib.orderIdUsed();
        _usedOrderIds[order.orderId] = true;

        if (block.timestamp > order.expiry) revert ErrorsLib.orderExpired();
        if (order.taker == address(0)) revert ErrorsLib.zeroAddress();
        if (order.makerFundingAddress == address(0)) revert ErrorsLib.zeroAddress();
        if (order.tokenIn == address(0) || order.tokenOut == address(0)) revert ErrorsLib.zeroToken();
        if (order.tokenIn == order.tokenOut) revert ErrorsLib.sameToken();
        if (order.amountIn == 0 || order.amountOut == 0) revert ErrorsLib.zeroAmount();
        if (order.feeAmount > 0) {
            if (order.feeRecipient == address(0)) revert ErrorsLib.zeroAddress();
            if (order.feeRecipient == address(this)) revert ErrorsLib.invalidFeeRecipient();
        }
        if (!order.feeInQuote && order.feeAmount >= order.amountIn) revert ErrorsLib.feeExceedsAmountIn(); // early guard: avoids wasting Permit2 gas on a doomed tx

        // Compute the EIP-712 struct hash once and reuse it for:
        //   1. maker/taker signature verification (wrapped with domain separator)
        //   2. Permit2 witness (struct hash only, no domain wrapper)
        // This avoids a redundant abi.encode + keccak256 on the Permit2 path.
        bytes32 structHash = _structHashInstantOrder(order);
        bytes32 orderHash  = _hashTypedDataV4(structHash);

        // Taker signature only required for the non-Permit2 path.
        if (!usePermit2) {
            address takerSigner = orderHash.recover(takerSig);
            if (takerSigner != order.taker) revert ErrorsLib.invalidTakerSig();
        }

        address makerSigner = orderHash.recover(makerSig);
        if (!_allowedMarkers[order.makerFundingAddress]) revert ErrorsLib.unauthorizedMarker();
        if (!_isAuthorizedMakerSigner(order.makerFundingAddress, makerSigner)) revert ErrorsLib.unauthorizedMakerSigner();

        // Platform attestation: verify Exchange countersigned this exact instant order.
        {
            bytes32 attDigest = _hashTypedDataV4(keccak256(abi.encode(
                EXCHANGE_ATTESTATION_TYPEHASH,
                structHash
            )));
            address platformSigner = attDigest.recover(platformSig);
            if (!_allowedExchangeSigners[platformSigner]) revert ErrorsLib.unauthorizedExchangeSigner();
        }

        IERC20 tokenIn = IERC20(order.tokenIn);
        IERC20 tokenOut = IERC20(order.tokenOut);
        address taker = order.taker;
        address makerFundingAddress = order.makerFundingAddress;
        uint256 feeAmount = order.feeAmount;

        if (usePermit2) {
            _pullTokenInByPermit2Witness(
                taker,
                order.tokenIn,
                order.amountIn,
                structHash,
                _PERMIT2_WITNESS_TYPE_STRING,
                takerPermit2
            );
            if (order.feeInQuote) {
                tokenIn.safeTransfer(makerFundingAddress, order.amountIn);
                if (feeAmount > 0)
                    tokenOut.safeTransferFrom(makerFundingAddress, order.feeRecipient, feeAmount);
            } else {
                uint256 netBase = order.amountIn - feeAmount;
                tokenIn.safeTransfer(makerFundingAddress, netBase);
                if (feeAmount > 0) tokenIn.safeTransfer(order.feeRecipient, feeAmount);
            }
        } else {
            if (order.feeInQuote) {
                tokenIn.safeTransferFrom(taker, makerFundingAddress, order.amountIn);
                if (feeAmount > 0)
                    tokenOut.safeTransferFrom(makerFundingAddress, order.feeRecipient, feeAmount);
            } else {
                uint256 netBase = order.amountIn - feeAmount;
                tokenIn.safeTransferFrom(taker, makerFundingAddress, netBase);
                if (feeAmount > 0)
                    tokenIn.safeTransferFrom(taker, order.feeRecipient, feeAmount);
            }
        }

        tokenOut.safeTransferFrom(makerFundingAddress, taker, order.amountOut);

        emit InstantSettle(
            order.orderId,
            order.taker,
            order.makerFundingAddress,
            order.tokenIn,
            order.tokenOut,
            order.amountIn,
            order.amountOut
        );
    }

    // ─── Internal helpers ─────────────────────────────────────────────────────────

    /// @dev EIP-712 hash used for maker signature verification in settle().
    ///      Matches the Go backend's SettleAuthorization hash construction.
    function _hashSettleAuthorization(
        bytes32 orderId
    ) internal view returns (bytes32) {
        return _hashTypedDataV4(
            keccak256(
                abi.encode(
                    SETTLE_AUTHORIZATION_TYPEHASH,
                    orderId
                )
            )
        );
    }

    function _isAuthorizedMakerSigner(
        address makerFundingAddress,
        address signer
    ) internal view returns (bool) {
        return
            signer == makerFundingAddress ||
            _allowedOrderSigners[makerFundingAddress][signer];
    }

    function _pullTokenInByAllowance(
        address from,
        address token,
        uint256 amount
    ) internal {
        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransferFrom(from, address(this), amount);
        uint256 balanceAfter = IERC20(token).balanceOf(address(this));
        if (balanceAfter - balanceBefore != amount)
            revert ErrorsLib.transferFailed();
    }

    /// @dev Pulls tokenIn via Permit2 `permitWitnessTransferFrom`.
    ///      The witness struct hash is embedded so the caller's single signature
    ///      simultaneously authorises the token transfer AND the trade terms.
    function _pullTokenInByPermit2Witness(
        address owner,
        address token,
        uint256 amount,
        bytes32 witness,
        string memory witnessTypeString,
        Permit2Params calldata permit2Params
    ) internal {
        address permit2Addr = permit2;
        if (permit2Addr == address(0)) revert ErrorsLib.permit2NotConfigured();
        if (permit2Params.amount != amount)
            revert ErrorsLib.permit2AmountMismatch();

        uint256 balanceBefore = IERC20(token).balanceOf(address(this));

        IPermit2.PermitTransferFrom memory permit = IPermit2.PermitTransferFrom({
            permitted: IPermit2.TokenPermissions({token: token, amount: amount}),
            nonce: permit2Params.nonce,
            deadline: permit2Params.deadline
        });

        IPermit2.SignatureTransferDetails
            memory transferDetails = IPermit2.SignatureTransferDetails({
                to: address(this),
                requestedAmount: amount
            });

        IPermit2(permit2Addr).permitWitnessTransferFrom(
            permit,
            transferDetails,
            owner,
            witness,
            witnessTypeString,
            permit2Params.signature
        );

        uint256 balanceAfter = IERC20(token).balanceOf(address(this));
        if (balanceAfter - balanceBefore != amount)
            revert ErrorsLib.transferFailed();
    }

    /// @dev Returns the raw EIP-712 struct hash of an InstantOrder (without domain wrapper).
    ///      Used as the witness value passed to Permit2.
    function _structHashInstantOrder(
        InstantOrder calldata order
    ) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            INSTANT_ORDER_TYPEHASH,
            order.orderId,
            order.taker,
            order.makerFundingAddress,
            order.tokenIn,
            order.tokenOut,
            order.amountIn,
            order.amountOut,
            order.feeAmount,
            order.feeRecipient,
            order.feeInQuote,
            order.expiry
        ));
    }

    /// @dev Returns the raw EIP-712 struct hash of a LockOrder (without domain wrapper).
    ///      Used as the witness value for Permit2 lock path.
    function _structHashLockOrder(
        LockOrder memory order
    ) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            LOCK_ORDER_TYPEHASH,
            order.orderId,
            order.taker,
            order.makerFundingAddress,
            order.tokenIn,
            order.tokenOut,
            order.amountIn,
            order.amountOut,
            order.feeAmount,
            order.feeRecipient,
            order.feeInQuote,
            order.settleDeadline
        ));
    }

}

