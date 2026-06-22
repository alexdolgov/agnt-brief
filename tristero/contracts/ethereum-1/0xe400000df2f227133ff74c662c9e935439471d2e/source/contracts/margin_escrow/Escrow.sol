// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IEscrow, Position, PositionLifecycle} from "./IEscrow.sol";
// ── Switch interest model by changing this single import ──
import {SimpleInterestModel as InterestModel} from "./SimpleInterestModel.sol";
// import {CompoundInterestModel as InterestModel} from "./CompoundInterestModel.sol";
// import {ContinuousCompoundInterestModel as InterestModel} from "./ContinuousCompoundInterestModel.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ITristeroPriceOracle} from "./ITristeroPriceOracle.sol";
import {ERC721Permit} from "@lib/ERC721Permit/ERC721Permit.sol";
import {MulticallData, IMulticall, IPermit2} from "../interchain_router/IOrders.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * =====================================================================
 *  EscrowV4 – NFT-wrapped margin positions with dynamic interest rates
 * =====================================================================
 *
 * See escrow_math.tex for full derivations. Variable mapping below.
 *
 * ──────────────────── Notation (escrow_math.tex) ────────────────────
 *
 *   B_0          = position.size           (base token locked in escrow)
 *   Q_L          = position.loanAmount     (loan principal, quote token)
 *   Q_I(t)       = accruedInterest         (interest owed at time t)
 *   Q_owed(t)    = Q_L + Q_I(t)           = totalDebt(positionId)
 *   P(t)         = oracle.getPrice(...)    (quote per base)
 *   P_0          = (Q_C + Q_L) / B_0       (open price)
 *   P_liq(t)     = Q_owed(t) / B_0        = currentLiquidationPrice()
 *   r(t)         = R(t) / SECONDS_PER_YEAR (per-second rate in ray)
 *   R(t)         = rateBps / 10_000        (APR as fraction)
 *   I(t)         = integral[t_open..t] r(u) du  (dimensionless accum. interest)
 *
 * ──────────────────── Interest model (modular) ──────────────────────
 *
 *   The interest math is inherited from InterestModel (see import).
 *   Switch between the three models by changing a single import line above.
 *
 *   1. Simple interest  (tex sec. 4.1):
 *        C(t) = integral[0..t] r(u) du          (global additive accumulator)
 *        Q_I(t) = Q_L * (C(t) - C(t_open))
 *
 *   2. Discrete compound interest  (tex sec. 4.2.4, Solmate-style rpow):
 *        M(t+dt) = M(t) * (1 + r)^dt
 *        Q_owed(t) = Q_L * M(t) / M(t_open)
 *
 *   3. Continuous compound interest  (tex sec. 4.2.3, Solady expWad):
 *        M(t+dt) = M(t) * exp(r * dt)
 *        Q_owed(t) = Q_L * M(t) / M(t_open)
 *
 *   On-chain stored per filler+loanToken (RateState, key = keccak256(filler ‖ loanToken)):
 *     cumulativeRay  = C(t) or M(t) in 1e27 fixed-point (RAY)
 *     rateBps        = R(t) in basis points (kBps in the pdf)
 *     lastUpdate     = timestamp of last accumulator update
 *
 *   On-chain stored per position (DebtState):
 *     principal      = Q_L  (remaining loan principal)
 *     accruedInterest= Q_I  (realised interest up to last touch)
 *     rateIndexRay   = C(t_lastTouch) or M(t_lastTouch)
 *
 * ──────────────────── Dynamic liquidation price (tex sec. 5) ────────
 *
 *   P_liq(t_open) = Q_L / B_0               (set at open)
 *   P_liq(t)      = P_liq(t_open) * (Q_L + Q_I(t)) / Q_L
 *                 = liqPrice * totalDebt / principal
 *
 * ──────────────────── Rate limiter (tex sec. 4) ─────────────────────
 *
 *   delta_max = 100 bps * (now - lastRateChange) / 1 week
 *   newRateBps <= oldRateBps + delta_max
 *
 * ──────────────────── Rounding (tex sec. 4.2.6) ────────────────────
 *
 *   Round UP when computing:
 *     - accrued interest from the accumulator delta
 *     - proportional debt shares on partial close
 *   so the lender is never underpaid due to truncation.
 */

contract EscrowV4 is IEscrow, ERC721Permit, InterestModel, ReentrancyGuard {
    using SafeERC20 for IERC20;

    uint8 private constant POSITION_STATUS_NEVER_OPENED = 0;
    uint8 private constant POSITION_STATUS_OPEN = 1;
    uint8 private constant POSITION_STATUS_CLOSED = 2;
    uint8 private constant POSITION_STATUS_LIQUIDATED = 3;

    struct CloseData {
        address token;
        address loanToken;
        address fillerOwner;
        uint256 repayDebt;
        uint256 protocolFee;
        uint256 remainingSize;
        uint256 takerTokenId;
        uint256 fillerTokenId;
    }

    uint256 private constant FILLER_FLAG = 1 << 255;
    uint256 private constant POSITION_ID_MASK = type(uint128).max;

    bytes32 internal constant CLOSE_WITH_SWAP_TYPEHASH =
        keccak256("CloseWithSwap(uint128 positionId,bool cashSettle,uint256 fractionBps,address authorized,uint256 nonce,uint256 deadline)");
    bytes32 internal constant CLOSE_PERMIT2_WITNESS_TYPEHASH =
        keccak256("EscrowCloseWitness(uint128 positionId,uint256 amount,address loanToken)");
    string internal constant CLOSE_PERMIT2_WITNESS_TYPE_STRING =
        "EscrowCloseWitness witness)EscrowCloseWitness(uint128 positionId,uint256 amount,address loanToken)TokenPermissions(address token,uint256 amount)";

    IPermit2 public immutable PERMIT2;
    address public immutable owner;

    uint128 private _nextPositionId;
    mapping(uint128 => Position) private _positions;
    mapping(uint128 => address) private _positionOracle;
    mapping(uint128 => uint8) private _positionStatus;
    mapping(uint128 => uint256) private _positionTerminalBlock;
    mapping(uint128 => uint256) public positionOpenBlock;

    mapping(uint256 => uint256) private _nonces;
    mapping(address => mapping(uint256 => uint256)) public nonceBitmap;

    // ───────────────────── Interest constants ─────────────────────

    uint256 private constant WEEK_SECONDS = 7 days;
    uint64  private constant MAX_INCREASE_BPS_PER_WEEK = 100; // 100 bps / week
    uint256 private constant FEE_DENOMINATOR = 100_000; // 1/10 bps precision (1e5 = 100%)

    // ───────────────────── Protocol fee state ─────────────────────

    address public protocolFeeCollector;
    uint256 public protocolFeeTenthBps; // fee in 1/10 bps units, range [0, 1e5]

    // ───────────────────── Errors / Events ─────────────────────

    error Unauthorized();
    error InvalidClose();
    error InvalidLiquidation();
    error InvalidInput();
    error InvalidPrice();
    error PositionNotFound();
    error MEVProtection(uint256 minOut, uint256 actual);
    error InsufficientLoanRepayment(uint256 required, uint256 actual);
    error InvalidSignature();
    error SignatureExpired();
    error InvalidNonce();
    error UnauthorizedCaller();

    error RateIncreaseTooFast(uint64 oldRateBps, uint64 newRateBps, uint64 maxAllowedBps);
    error InvalidFeeCollector();
    error FeeTooHigh(uint256 feeTenthBps, uint256 maxFeeTenthBps);

    event PositionOpened(uint128 indexed positionId, address indexed taker, address indexed filler, address token, uint256 size);
    event PositionClosed(uint128 indexed positionId, uint256 closedSize, uint256 remainingSize, uint256 loanerRepayment, uint256 takerSettlement);
    event PositionLiquidated(uint128 indexed positionId, address indexed liquidator, uint256 size);

    event InterestRateUpdated(address indexed filler, address indexed loanToken, uint64 oldRateBps, uint64 newRateBps);
    event TokenInterestOverrideUpdated(address indexed filler, address indexed loanToken, address indexed token, int64 oldOverrideBps, int64 newOverrideBps);
    event ProtocolFeeCollectorUpdated(address indexed oldCollector, address indexed newCollector);
    event ProtocolFeeTenthBpsUpdated(uint256 oldFee, uint256 newFee);
    event ProtocolFeeCollected(uint128 indexed positionId, address indexed token, uint256 amount);

    constructor(address _owner, address permit2) ERC721Permit("Tristero Margin Position", "TMARGIN", "4") {
        PERMIT2 = IPermit2(permit2);
        owner = _owner;
        protocolFeeCollector = _owner;
        _nextPositionId = 1;
    }

    // ───────────────────── Admin ─────────────────────
    /// @notice Set APR in bps that msg.sender (a filler) charges for lending a given loanToken
    /// @dev Each filler sets their own rate per loanToken. Positions use the filler's rate.
    function setInterestRateBps(address loanToken, uint64 newRateBps) external {
        if (loanToken == address(0)) revert InvalidInput();

        bytes32 key = _rateKey(msg.sender, loanToken);
        uint64 oldRate = _rateState[key].rateBps;

        // Speed limit only on increases after at least one prior change
        // TODO: re-enable rate limiter after debugging
        // if (newRateBps > oldRate && _rateState[key].lastRateChange != 0) {
        //     uint256 elapsed = block.timestamp - uint256(_rateState[key].lastRateChange);
        //     uint64 maxInc = uint64((elapsed * MAX_INCREASE_BPS_PER_WEEK) / WEEK_SECONDS);
        //     uint64 maxAllowed = oldRate + maxInc;
        //     if (newRateBps > maxAllowed) revert RateIncreaseTooFast(oldRate, newRateBps, maxAllowed);
        // }

        _setBaseRate(msg.sender, loanToken, newRateBps);

        emit InterestRateUpdated(msg.sender, loanToken, oldRate, newRateBps);
    }

    /// @notice Set per-token interest rate override in bps (additive on top of base rate)
    /// @dev Effective rate = baseRate + overrideBps. Reverts if effective rate < 0.
    function setTokenInterestOverride(address loanToken, address token, int64 overrideBps) external {
        if (loanToken == address(0) || token == address(0)) revert InvalidInput();
        int64 oldOverride = _tokenOverrideBps[_fullRateKey(msg.sender, loanToken, token)];
        _setTokenOverride(msg.sender, loanToken, token, overrideBps);
        emit TokenInterestOverrideUpdated(msg.sender, loanToken, token, oldOverride, overrideBps);
    }

    function setProtocolFeeCollector(address collector) external {
        if (msg.sender != owner) revert Unauthorized();
        if (collector == address(0)) revert InvalidFeeCollector();
        address old = protocolFeeCollector;
        protocolFeeCollector = collector;
        emit ProtocolFeeCollectorUpdated(old, collector);
    }

    function setProtocolFeeTenthBps(uint256 feeTenthBps) external {
        if (msg.sender != owner) revert Unauthorized();
        if (feeTenthBps > FEE_DENOMINATOR) revert FeeTooHigh(feeTenthBps, FEE_DENOMINATOR);
        uint256 old = protocolFeeTenthBps;
        protocolFeeTenthBps = feeTenthBps;
        emit ProtocolFeeTenthBpsUpdated(old, feeTenthBps);
    }

    // ───────────────────── Position Management ─────────────────────

    /// @param size       B_0 in the pdf – base token amount locked in escrow
    /// @param loanAmount Q_L in the pdf – loan principal (quote token)
    /// @dev   liqPrice is computed on-chain: P_liq(WAD) = loanAmount * WAD * 10^tokenDec / (size * 10^loanDec)
    function open(
        address taker,
        address filler,
        address token,
        uint256 size,
        address loanToken,
        uint256 loanAmount,
        address oracle
    ) external nonReentrant returns (uint128 positionId) {
        if (size == 0 || loanAmount == 0 || token == address(0) || loanToken == address(0) || oracle == address(0)) revert InvalidInput();

        // P_liq(t_open) = Q_L / B_0 in whole-token terms, scaled to WAD
        uint256 liqPrice = Math.mulDiv(
            loanAmount * (10 ** IERC20Metadata(token).decimals()),
            1e18,
            size * (10 ** IERC20Metadata(loanToken).decimals())
        );

        positionId = _nextPositionId++;

        Position memory openedPosition = Position(taker, filler, token, loanToken, size, loanAmount, liqPrice);
        _positions[positionId] = openedPosition;
        _positionOracle[positionId] = oracle;
        _positionStatus[positionId] = POSITION_STATUS_OPEN;
        positionOpenBlock[positionId] = block.number;

        // Initialise debt tracking: sets principal = Q_L, rateIndexRay = C(t_open) or M(t_open)
        _initPosition(positionId, filler, loanToken, token, loanAmount);

        IERC20(token).safeTransferFrom(msg.sender, address(this), size);

        _mint(taker, uint256(positionId));
        _mint(filler, uint256(positionId) | FILLER_FLAG);

        emit PositionOpened(positionId, taker, filler, token, size);
    }

    /// @notice Close a position fully or partially by repaying debt with a direct ERC20 transfer.
    /// @dev Only the taker NFT owner may call this overload. The caller must approve this escrow
    ///      contract to spend the required `loanToken` amount before calling.
    ///      Repayment is pulled from `msg.sender` via `transferFrom`.
    /// @param positionId The position to close.
    /// @param amt The amount of collateral/base token to withdraw from the position.
    function close(uint128 positionId, uint256 amt) external nonReentrant {
        CloseData memory closeData = _prepareClose(positionId, amt, msg.sender);

        if (closeData.protocolFee > 0) {
            IERC20(closeData.loanToken).safeTransferFrom(msg.sender, protocolFeeCollector, closeData.protocolFee);
            emit ProtocolFeeCollected(positionId, closeData.loanToken, closeData.protocolFee);
        }
        IERC20(closeData.loanToken).safeTransferFrom(msg.sender, closeData.fillerOwner, closeData.repayDebt - closeData.protocolFee);
        IERC20(closeData.token).safeTransfer(msg.sender, amt);

        emit PositionClosed(positionId, amt, closeData.remainingSize, closeData.repayDebt - closeData.protocolFee, amt);
        _finalizeClose(positionId, closeData);
    }

    /// @notice Close a position fully or partially by repaying debt through Permit2.
    /// @dev Only the taker NFT owner may call this overload. Unlike `close(positionId, amt)`,
    ///      this path does not require prior approval of the escrow contract for `loanToken`.
    ///      Instead, the caller authorizes repayment with a Permit2 witness signature that binds
    ///      the `positionId`, `amt`, and expected `loanToken`.
    /// @param positionId The position to close.
    /// @param amt The amount of collateral/base token to withdraw from the position.
    /// @param permit The Permit2 transfer authorization for the repayment token.
    /// @param signature The Permit2 witness signature from the caller.
    function close(
        uint128 positionId,
        uint256 amt,
        IPermit2.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) external nonReentrant {
        CloseData memory closeData = _prepareClose(positionId, amt, msg.sender);

        if (permit.permitted.token != closeData.loanToken) revert InvalidInput();

        bytes32 witnessHash = keccak256(
            abi.encode(CLOSE_PERMIT2_WITNESS_TYPEHASH, positionId, amt, closeData.loanToken)
        );

        PERMIT2.permitWitnessTransferFrom(
            permit,
            IPermit2.SignatureTransferDetails({
                to: address(this),
                requestedAmount: closeData.repayDebt
            }),
            msg.sender,
            witnessHash,
            CLOSE_PERMIT2_WITNESS_TYPE_STRING,
            signature
        );

        if (closeData.protocolFee > 0) {
            IERC20(closeData.loanToken).safeTransfer(protocolFeeCollector, closeData.protocolFee);
            emit ProtocolFeeCollected(positionId, closeData.loanToken, closeData.protocolFee);
        }
        IERC20(closeData.loanToken).safeTransfer(closeData.fillerOwner, closeData.repayDebt - closeData.protocolFee);
        IERC20(closeData.token).safeTransfer(msg.sender, amt);

        emit PositionClosed(positionId, amt, closeData.remainingSize, closeData.repayDebt - closeData.protocolFee, amt);
        _finalizeClose(positionId, closeData);
    }

    function closeWithSwap(
        uint128 positionId,
        bool cashSettle,
        uint256 fractionBps,
        address authorized,
        uint256 nonce,
        uint256 minOut,
        MulticallData calldata arb,
        uint256 deadline,
        bytes calldata signature
    ) external nonReentrant {
        if (block.timestamp > deadline) revert SignatureExpired();
        if (fractionBps == 0 || fractionBps > 10000) revert InvalidInput();
        if (authorized != address(0) && msg.sender != authorized) revert UnauthorizedCaller();

        uint256 takerTokenId = uint256(positionId);
        uint256 fillerTokenId = uint256(positionId) | FILLER_FLAG;

        Position storage p = _positions[positionId];
        if (p.size == 0) revert PositionNotFound();

        address expectedSigner = ownerOf(takerTokenId);
        address fillerOwner = ownerOf(fillerTokenId);

        // Verify signature
        bytes32 structHash = keccak256(
            abi.encode(CLOSE_WITH_SWAP_TYPEHASH, positionId, cashSettle, fractionBps, authorized, nonce, deadline)
        );
        bytes32 digest = keccak256(abi.encodePacked("\x19\x01", DOMAIN_SEPARATOR(), structHash));
        address recoveredSigner = ECDSA.recover(digest, signature);
        if (recoveredSigner != expectedSigner) revert InvalidSignature();
        _useUnorderedNonce(expectedSigner, nonce);

        // Realize interest first
        _accruePosition(positionId, p.filler, p.loanToken, p.token);

        uint256 principal = _debt[positionId].principal;
        uint256 accrued   = _debt[positionId].accruedInterest;

        // Cache
        address baseToken = p.token;
        address loanToken = p.loanToken;
        uint256 originalSize = p.size;

        // Close size
        uint256 closeSize = Math.mulDiv(originalSize, fractionBps, 10000, Math.Rounding.Floor);
        if (closeSize == 0) revert InvalidInput();

        // Compute debt to repay for this fraction (round UP to prevent underpayment)
        uint256 totalDebtNow = principal + accrued;
        uint256 closeDebt = Math.mulDiv(totalDebtNow, fractionBps, 10000, Math.Rounding.Ceil);

        // Reduce principal/interest proportionally (principal proportional to size)
        uint256 closePrincipal = Math.mulDiv(principal, fractionBps, 10000, Math.Rounding.Ceil);
        if (closePrincipal > closeDebt) closePrincipal = closeDebt;
        uint256 closeInterest = closeDebt - closePrincipal;
        if (closeInterest > accrued) {
            closeInterest = accrued;
            closeDebt = closePrincipal + closeInterest;
        }

        // Effects before interactions
        p.size = originalSize - closeSize;
        _reduceDebt(positionId, closePrincipal, closeInterest);
        p.loanAmount = _debt[positionId].principal;

        // Protocol fee on interest portion
        uint256 protocolFee = _computeProtocolFee(closeInterest);

        uint256 loanerRepayment;
        uint256 takerSettlement;

        if (cashSettle) {
            (loanerRepayment, takerSettlement) = _executeCashSettlement(
                baseToken, loanToken, closeSize, closeDebt, protocolFee, minOut,
                arb, expectedSigner, fillerOwner
            );
        } else {
            (loanerRepayment, takerSettlement) = _executeBaseTokenSettlement(
                baseToken, loanToken, closeSize, closeDebt, protocolFee, minOut,
                arb, expectedSigner, fillerOwner
            );
        }

        if (protocolFee > 0) {
            emit ProtocolFeeCollected(positionId, loanToken, protocolFee);
        }

        emit PositionClosed(positionId, closeSize, p.size, loanerRepayment, takerSettlement);

        if (p.size == 0) {
            _burn(takerTokenId);
            _burn(fillerTokenId);
            delete _positions[positionId];
            _clearDebt(positionId);
        }
    }

    // ───────────────────── Liquidation ─────────────────────

    function liquidate(
        uint128 positionId,
        bytes calldata oracleData
    ) external payable nonReentrant {
        uint256 fillerTokenId = uint256(positionId) | FILLER_FLAG;
        if (ownerOf(fillerTokenId) != msg.sender) revert Unauthorized();

        Position storage p = _positions[positionId];
        if (p.size == 0) revert PositionNotFound();

        // Realize Q_I(t) before checking liquidation threshold
        _accruePosition(positionId, p.filler, p.loanToken, p.token);

        // P_liq(t) = P_liq(t_open) * Q_owed(t) / Q_L.
        // Liquidate if P(t) < P_liq(t) * 101/100  (1% safety buffer above liq price).
        uint256 liq = currentLiquidationPrice(positionId);
        address posOracle = _positionOracle[positionId];
        uint256 price = ITristeroPriceOracle(posOracle).getPrice{value: msg.value}(p.token, p.loanToken, oracleData);
        if (price * 100 >= liq * 101) revert InvalidLiquidation();

        uint256 size = p.size;
        p.size = 0;
        p.loanAmount = 0;

        // Clear debt state
        _clearDebt(positionId);

        // Protocol fee on seized collateral
        uint256 protocolFee = _computeProtocolFee(size);
        if (protocolFee > 0) {
            IERC20(p.token).safeTransfer(protocolFeeCollector, protocolFee);
            emit ProtocolFeeCollected(positionId, p.token, protocolFee);
        }
        IERC20(p.token).safeTransfer(msg.sender, size - protocolFee);

        emit PositionLiquidated(positionId, msg.sender, size);

        uint256 takerTokenId = uint256(positionId);
        _burn(takerTokenId);
        _burn(fillerTokenId);

        delete _positions[positionId];
        _positionStatus[positionId] = POSITION_STATUS_LIQUIDATED;
        _positionTerminalBlock[positionId] = block.number;
    }

    // ───────────────────── ERC721Permit Overrides ─────────────────────

    function _getAndIncrementNonce(uint256 tokenId) internal override returns (uint256) {
        return _nonces[tokenId]++;
    }

    function _prepareClose(uint128 positionId, uint256 amt, address caller) internal returns (CloseData memory closeData) {
        closeData.takerTokenId = uint256(positionId);
        if (ownerOf(closeData.takerTokenId) != caller) revert Unauthorized();

        Position storage p = _positions[positionId];
        if (p.size == 0) revert PositionNotFound();
        if (amt == 0 || amt > p.size) revert InvalidClose();

        _accruePosition(positionId, p.filler, p.loanToken, p.token);

        uint256 principal = _debt[positionId].principal;
        uint256 accrued = _debt[positionId].accruedInterest;
        uint256 originalSize = p.size;

        uint256 totalDebtNow = principal + accrued;
        uint256 repayDebt = Math.mulDiv(totalDebtNow, amt, originalSize, Math.Rounding.Ceil);
        uint256 repayPrincipal = Math.mulDiv(principal, amt, originalSize, Math.Rounding.Ceil);
        if (repayPrincipal > repayDebt) {
            repayPrincipal = repayDebt;
        }
        uint256 repayInterest = repayDebt - repayPrincipal;
        if (repayInterest > accrued) {
            repayInterest = accrued;
            repayDebt = repayPrincipal + repayInterest;
        }

        _reduceDebt(positionId, repayPrincipal, repayInterest);

        p.loanAmount = _debt[positionId].principal;
        p.size = originalSize - amt;

        closeData.token = p.token;
        closeData.loanToken = p.loanToken;
        closeData.fillerTokenId = uint256(positionId) | FILLER_FLAG;
        closeData.fillerOwner = ownerOf(closeData.fillerTokenId);
        closeData.repayDebt = repayDebt;
        closeData.protocolFee = _computeProtocolFee(repayInterest);
        closeData.remainingSize = p.size;
    }

    function _finalizeClose(uint128 positionId, CloseData memory closeData) internal {
        if (closeData.remainingSize == 0) {
            _burn(closeData.takerTokenId);
            _burn(closeData.fillerTokenId);
            delete _positions[positionId];
            _clearDebt(positionId);
            _positionStatus[positionId] = POSITION_STATUS_CLOSED;
            _positionTerminalBlock[positionId] = block.number;
        }
    }

    // ───────────────────── Internal: Settlement ─────────────────────

    /// @dev Cash settlement: swap all closeSize base tokens → loan token via DEX.
    ///      Pay closeDebt to filler, return surplus loan token to taker.
    ///      minOut = minimum surplus loan token the taker receives (MEV protection).
    function _executeCashSettlement(
        address baseToken,
        address loanToken,
        uint256 closeSize,
        uint256 closeDebt,
        uint256 protocolFee,
        uint256 minOut,
        MulticallData calldata arb,
        address takerOwner,
        address fillerOwner
    ) internal returns (uint256 loanerRepayment, uint256 takerSettlement) {
        // Approve multicall target to spend base tokens
        IERC20(baseToken).safeTransfer(arb.multicallTarget, closeSize);

        // Execute DEX swap (base → loan)
        uint256 loanBefore = IERC20(loanToken).balanceOf(address(this));
        IMulticall(arb.multicallTarget).multicall(arb.calls, arb.refundTo, arb.nftRecipient);
        uint256 loanReceived = IERC20(loanToken).balanceOf(address(this)) - loanBefore;

        if (loanReceived < closeDebt) revert InsufficientLoanRepayment(closeDebt, loanReceived);

        uint256 surplus = loanReceived - closeDebt;
        if (surplus < minOut) revert MEVProtection(minOut, surplus);

        // Pay protocol fee first
        if (protocolFee > 0) {
            IERC20(loanToken).safeTransfer(protocolFeeCollector, protocolFee);
        }

        // Pay filler (closeDebt minus fee)
        IERC20(loanToken).safeTransfer(fillerOwner, closeDebt - protocolFee);

        // Return surplus to taker
        if (surplus > 0) {
            IERC20(loanToken).safeTransfer(takerOwner, surplus);
        }

        return (closeDebt - protocolFee, surplus);
    }

    /// @dev Base token settlement: swap just enough base tokens → loan token to cover closeDebt.
    ///      Return remaining base token to taker.
    ///      minOut = minimum base token the taker receives back (MEV protection).
    function _executeBaseTokenSettlement(
        address baseToken,
        address loanToken,
        uint256 closeSize,
        uint256 closeDebt,
        uint256 protocolFee,
        uint256 minOut,
        MulticallData calldata arb,
        address takerOwner,
        address fillerOwner
    ) internal returns (uint256 loanerRepayment, uint256 takerSettlement) {
        // Send all base tokens to multicall target for the swap
        IERC20(baseToken).safeTransfer(arb.multicallTarget, closeSize);

        // Execute DEX swap (partial base → loan)
        uint256 loanBefore = IERC20(loanToken).balanceOf(address(this));
        uint256 baseBefore = IERC20(baseToken).balanceOf(address(this));
        IMulticall(arb.multicallTarget).multicall(arb.calls, arb.refundTo, arb.nftRecipient);
        uint256 loanReceived = IERC20(loanToken).balanceOf(address(this)) - loanBefore;
        uint256 baseReturned = IERC20(baseToken).balanceOf(address(this)) - baseBefore;

        if (loanReceived < closeDebt) revert InsufficientLoanRepayment(closeDebt, loanReceived);
        if (baseReturned < minOut) revert MEVProtection(minOut, baseReturned);

        // Pay protocol fee first
        if (protocolFee > 0) {
            IERC20(loanToken).safeTransfer(protocolFeeCollector, protocolFee);
        }

        // Pay filler the debt minus fee in loan token
        IERC20(loanToken).safeTransfer(fillerOwner, closeDebt - protocolFee);

        // Return any excess loan token to taker
        uint256 loanSurplus = loanReceived - closeDebt;
        if (loanSurplus > 0) {
            IERC20(loanToken).safeTransfer(takerOwner, loanSurplus);
        }

        // Return remaining base token to taker
        if (baseReturned > 0) {
            IERC20(baseToken).safeTransfer(takerOwner, baseReturned);
        }

        return (closeDebt - protocolFee, baseReturned);
    }

    // ───────────────────── Internal ─────────────────────

    /// @dev Protocol fee on a given amount, rounded DOWN (protocol never takes more than owed).
    function _computeProtocolFee(uint256 amount) internal view returns (uint256) {
        uint256 fee = protocolFeeTenthBps;
        if (fee == 0) return 0;
        return Math.mulDiv(amount, fee, FEE_DENOMINATOR);
    }

    function _useUnorderedNonce(address from, uint256 nonce) internal {
        uint256 wordPos = uint248(nonce >> 8);
        uint256 bitPos = uint8(nonce);
        uint256 bit = 1 << bitPos;
        uint256 flipped = nonceBitmap[from][wordPos] ^= bit;
        if (flipped & bit == 0) revert InvalidNonce();
    }

    function _bitmapPositions(uint256 nonce) private pure returns (uint256 wordPos, uint256 bitPos) {
        wordPos = uint248(nonce >> 8);
        bitPos = uint8(nonce);
    }

    // ───────────────────── Views ─────────────────────

    function positions(uint128 positionId) external view returns (Position memory) {
        return _positions[positionId];
    }

    function positionByTokenId(uint256 tokenId) external view returns (Position memory) {
        uint128 positionId = uint128(tokenId & POSITION_ID_MASK);
        return _positions[positionId];
    }

    function positionOracle(uint128 positionId) external view returns (address) {
        return _positionOracle[positionId];
    }

    function positionLifecycle(uint128 positionId) external view returns (PositionLifecycle memory lifecycle) {
        lifecycle.status = _positionStatus[positionId];
        lifecycle.openBlock = positionOpenBlock[positionId];
        lifecycle.terminalBlock = _positionTerminalBlock[positionId];
    }

    function isFillerToken(uint256 tokenId) external pure returns (bool) {
        return (tokenId & FILLER_FLAG) != 0;
    }

    function pairedTokenId(uint256 tokenId) external pure returns (uint256) {
        return tokenId ^ FILLER_FLAG;
    }

    function tokenIdToPositionId(uint256 tokenId) external pure returns (uint128) {
        return uint128(tokenId & POSITION_ID_MASK);
    }

    function totalPositions() external view returns (uint128) {
        return _nextPositionId - 1;
    }

    function nonces(uint256 tokenId) external view returns (uint256) {
        return _nonces[tokenId];
    }

    // ───────────────────── Interest Views (position-level convenience) ─────────────────────
    // Note: currentInterestRateBps, lastRateChange, cumulativeIntegralRay, debtPrincipal,
    //       debtAccruedStored, debtIndex, rateHistoryLength, rateCheckpoint,
    //       interestRateAtTimestamp, interestRateAtBlock, cumulativeIntegralRayAtTimestamp
    //       are all inherited from InterestModel (BaseInterestModel).

    /// @notice Q_I(t) – accumulated interest for a position right now (includes pending since last touch)
    function accumulatedInterest(uint128 positionId) public view returns (uint256) {
        Position storage p = _positions[positionId];
        if (p.size == 0) revert PositionNotFound();
        return accumulatedInterest(positionId, p.filler, p.loanToken, p.token);
    }

    /// @notice Q_owed(t) = Q_L + Q_I(t) – total debt right now
    function totalDebt(uint128 positionId) external view returns (uint256) {
        Position storage p = _positions[positionId];
        return _debt[positionId].principal + accumulatedInterest(positionId, p.filler, p.loanToken, p.token);
    }

    /// @notice P_liq(t) = P_liq(t_open) * (Q_L + Q_I(t)) / Q_L  (tex eq. 6)
    /// @dev Scales the open-time liquidation price by the debt growth ratio.
    function currentLiquidationPrice(uint128 positionId) public view returns (uint256) {
        Position storage p = _positions[positionId];
        if (p.size == 0) revert PositionNotFound();

        uint256 principal = _debt[positionId].principal; // Q_L
        if (principal == 0) return type(uint256).max;

        // Q_owed(t) = Q_L + Q_I(t)
        uint256 debtNow = principal + accumulatedInterest(positionId, p.filler, p.loanToken, p.token);
        // P_liq(t) = liqPrice * Q_owed / Q_L  (round up to protect lender)
        return Math.mulDiv(p.liqPrice, debtNow, principal, Math.Rounding.Ceil);
    }

    /// @notice Raw debt state: (Q_L, Q_I, C(t_lastTouch) or M(t_lastTouch))
    function debtState(uint128 positionId) external view returns (uint256 principal, uint256 accrued, uint256 indexRay) {
        DebtState storage d = _debt[positionId];
        return (d.principal, d.accruedInterest, d.rateIndexRay);
    }

    // ───────────────────── Debug Views (EIP-712) ─────────────────────

    function getCloseWithSwapTypehash() external pure returns (bytes32) {
        return CLOSE_WITH_SWAP_TYPEHASH;
    }

    function computeCloseWithSwapStructHash(
        uint128 positionId,
        bool cashSettle,
        uint256 fractionBps,
        address authorized,
        uint256 nonce,
        uint256 deadline
    ) external pure returns (bytes32) {
        return keccak256(
            abi.encode(CLOSE_WITH_SWAP_TYPEHASH, positionId, cashSettle, fractionBps, authorized, nonce, deadline)
        );
    }

    function computeCloseWithSwapDigest(
        uint128 positionId,
        bool cashSettle,
        uint256 fractionBps,
        address authorized,
        uint256 nonce,
        uint256 deadline
    ) external view returns (bytes32) {
        bytes32 structHash = keccak256(
            abi.encode(CLOSE_WITH_SWAP_TYPEHASH, positionId, cashSettle, fractionBps, authorized, nonce, deadline)
        );
        return keccak256(abi.encodePacked("\x19\x01", DOMAIN_SEPARATOR(), structHash));
    }

    function isNonceUsed(address account, uint256 nonce) external view returns (bool) {
        uint256 wordPos = uint248(nonce >> 8);
        uint256 bitPos = uint8(nonce);
        uint256 bit = 1 << bitPos;
        return nonceBitmap[account][wordPos] & bit != 0;
    }
}