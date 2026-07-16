// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { ReentrancyGuardTransient } from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

import { IBondingCurve } from "./interfaces/IBondingCurve.sol";
import { IToken } from "./interfaces/IToken.sol";
import { IMigrator } from "./interfaces/IMigrator.sol";

/// @title  BondingCurve
/// @notice Per-token virtual-reserve constant-product market with atomic graduation to a
///         downstream pool. Fees accrue to pull-claim buckets; rounding always favours the
///         protocol over the trader.
contract BondingCurve is IBondingCurve, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using Address for address payable;

    /* -------------------------------------------------------------------------- */
    /*                                   ERRORS                                   */
    /* -------------------------------------------------------------------------- */

    error ZeroAddress();
    error ZeroAmount();
    error Slippage(uint256 expected, uint256 actual);
    error CurveGraduated();
    error CurveNotGraduated();
    error CurveInsolvent();
    error TotalFeeTooHigh(uint256 bps);
    error InvalidConfig();
    error OnlyCreator();
    error InvalidSplits();
    error RedirectsAlreadyLocked();
    error CreatorWindowActive(uint64 endsAt);

    /* -------------------------------------------------------------------------- */
    /*                                  CONSTANTS                                 */
    /* -------------------------------------------------------------------------- */

    uint256 public constant BPS = 10_000;
    uint256 public constant MAX_FEE_BPS = 200;

    /// @inheritdoc IBondingCurve
    uint256 public constant override MAX_CREATOR_SPLITS = 10;

    /// @dev Bounded gas stipend for ETH payouts: a malicious recipient cannot grief a claim
    ///      by burning unbounded gas in their receive/fallback.
    uint256 private constant _PAYOUT_GAS = 30_000;

    /* -------------------------------------------------------------------------- */
    /*                                 IMMUTABLES                                 */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IBondingCurve
    address public immutable override TOKEN;
    /// @inheritdoc IBondingCurve
    address public immutable override FACTORY;
    /// @inheritdoc IBondingCurve
    uint256 public immutable override CURVE_SUPPLY;
    /// @inheritdoc IBondingCurve
    uint256 public immutable override MIGRATION_SUPPLY;
    /// @inheritdoc IBondingCurve
    uint256 public immutable override GRADUATION_ETH_TARGET;
    /// @inheritdoc IBondingCurve
    uint256 public immutable override GRADUATION_FEE_WEI;
    /// @inheritdoc IBondingCurve
    uint256 public immutable override CREATOR_GRADUATION_REWARD_WEI;
    /// @inheritdoc IBondingCurve
    uint96 public immutable override PROTOCOL_FEE_BPS;
    /// @inheritdoc IBondingCurve
    uint96 public immutable override CREATOR_FEE_BPS;
    /// @inheritdoc IBondingCurve
    address public immutable override PROTOCOL_FEE_RECIPIENT;
    /// @inheritdoc IBondingCurve
    address public immutable override MIGRATOR;
    /// @inheritdoc IBondingCurve
    bool public immutable override CASHBACK_MODE;
    /// @inheritdoc IBondingCurve
    uint64 public immutable override CREATOR_WINDOW_END;

    /// @inheritdoc IBondingCurve
    address public override CREATOR;

    /// @dev Initial constant-product `k`. All post-trade reserves satisfy `V_t · V_e ≤ _K`.
    uint256 private immutable _K;

    /* -------------------------------------------------------------------------- */
    /*                                   STATE                                    */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IBondingCurve
    uint256 public override virtualTokenReserves;
    /// @inheritdoc IBondingCurve
    uint256 public override virtualEthReserves;
    /// @inheritdoc IBondingCurve
    uint256 public override realTokensSold;
    /// @inheritdoc IBondingCurve
    uint256 public override realEthIn;
    /// @inheritdoc IBondingCurve
    bool public override graduated;

    /// @inheritdoc IBondingCurve
    uint256 public override creatorOwed;
    /// @inheritdoc IBondingCurve
    uint256 public override protocolOwed;

    CreatorSplit[] private _creatorSplits;

    /// @inheritdoc IBondingCurve
    bool public override feeRedirectsLocked;

    /// @inheritdoc IBondingCurve
    bool public override firstBuyDone;

    /* -------------------------------------------------------------------------- */
    /*                                CONSTRUCTOR                                 */
    /* -------------------------------------------------------------------------- */

    struct InitParams {
        address token;
        address creator;
        address factory;
        address protocolFeeRecipient;
        address migrator;
        uint256 virtualTokenReserves;
        uint256 virtualEthReserves;
        uint256 curveSupply;
        uint256 migrationSupply;
        uint256 graduationEthTarget;
        uint256 graduationFeeWei;
        uint256 creatorGraduationRewardWei;
        uint96 protocolFeeBps;
        uint96 creatorFeeBps;
        bool cashbackMode;
        /// @dev Window length in seconds; 0 disables the gate. Stored as a duration (not an
        ///      absolute end timestamp) so the curve's CREATE2 init-code hash is independent
        ///      of `block.timestamp` and remains vanity-mineable.
        uint64 creatorWindowDuration;
    }

    constructor(InitParams memory p) {
        if (
            p.token == address(0) || p.creator == address(0) || p.factory == address(0)
                || p.protocolFeeRecipient == address(0) || p.migrator == address(0)
        ) revert ZeroAddress();
        if (
            p.virtualTokenReserves == 0 || p.virtualEthReserves == 0 || p.curveSupply == 0 || p.migrationSupply == 0
                || p.graduationEthTarget == 0
        ) revert InvalidConfig();
        // Insolvency guard: V_t < curveSupply would let the curve hit V_t = 0 before fully selling.
        if (p.virtualTokenReserves < p.curveSupply) revert InvalidConfig();

        uint256 totalBps = uint256(p.protocolFeeBps) + uint256(p.creatorFeeBps);
        if (totalBps > MAX_FEE_BPS) revert TotalFeeTooHigh(totalBps);

        TOKEN = p.token;
        FACTORY = p.factory;
        PROTOCOL_FEE_RECIPIENT = p.protocolFeeRecipient;
        MIGRATOR = p.migrator;
        CURVE_SUPPLY = p.curveSupply;
        MIGRATION_SUPPLY = p.migrationSupply;
        GRADUATION_ETH_TARGET = p.graduationEthTarget;
        GRADUATION_FEE_WEI = p.graduationFeeWei;
        CREATOR_GRADUATION_REWARD_WEI = p.creatorGraduationRewardWei;
        PROTOCOL_FEE_BPS = p.protocolFeeBps;
        CREATOR_FEE_BPS = p.creatorFeeBps;
        CREATOR = p.creator;
        CASHBACK_MODE = p.cashbackMode;
        CREATOR_WINDOW_END = p.creatorWindowDuration == 0 ? 0 : uint64(block.timestamp) + p.creatorWindowDuration;

        _K = p.virtualTokenReserves * p.virtualEthReserves;
        virtualTokenReserves = p.virtualTokenReserves;
        virtualEthReserves = p.virtualEthReserves;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  TRADING                                   */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IBondingCurve
    function buy(uint256 minTokensOut, address receiver) external payable nonReentrant returns (uint256 tokensOut) {
        if (graduated) revert CurveGraduated();
        if (msg.value == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        // First-buy window closes on the EARLIER of (a) the time deadline or (b) the first
        // successful buy. `firstBuyDone` is sticky — a later sell does not re-arm the window.
        uint64 windowEnd = CREATOR_WINDOW_END;
        if (windowEnd != 0 && block.timestamp < windowEnd && !firstBuyDone) {
            if (msg.sender != CREATOR) revert CreatorWindowActive(windowEnd);
        }

        (uint256 tokensDelivered, uint256 ethInUsedForCurve, uint256 ethFee, uint256 ethRefund) =
            _simulateBuy(msg.value);

        // Reject zero-token deliveries (1-wei dust where the entire input becomes fee).
        if (tokensDelivered == 0) revert ZeroAmount();
        if (tokensDelivered < minTokensOut) revert Slippage(minTokensOut, tokensDelivered);
        tokensOut = tokensDelivered;

        virtualEthReserves += ethInUsedForCurve;
        virtualTokenReserves = _K / virtualEthReserves;
        realTokensSold += tokensDelivered;
        realEthIn += ethInUsedForCurve;
        if (!firstBuyDone) firstBuyDone = true;

        _accrueFees(ethFee);

        emit Buy(msg.sender, ethInUsedForCurve, ethFee, tokensDelivered, virtualTokenReserves, virtualEthReserves);

        IERC20(TOKEN).safeTransfer(receiver, tokensDelivered);
        if (ethRefund != 0) payable(msg.sender).sendValue(ethRefund);

        // Atomic graduation: terminal trade pays the migration gas in the same tx.
        if (realTokensSold >= CURVE_SUPPLY || realEthIn >= GRADUATION_ETH_TARGET) {
            _graduate();
        }
    }

    /// @inheritdoc IBondingCurve
    function sell(uint256 tokensIn, uint256 minEthOut, address receiver)
        external
        nonReentrant
        returns (uint256 ethOut)
    {
        if (graduated) revert CurveGraduated();
        if (tokensIn == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        (uint256 ethDelivered, uint256 ethFee, uint256 ethGross) = _simulateSell(tokensIn);
        // Defensive — constant-product math guarantees `ethGross <= realEthIn`.
        if (ethGross > realEthIn) revert CurveInsolvent();
        if (ethDelivered < minEthOut) revert Slippage(minEthOut, ethDelivered);
        ethOut = ethDelivered;

        virtualTokenReserves += tokensIn;
        virtualEthReserves = _K / virtualTokenReserves;
        realTokensSold -= tokensIn;
        realEthIn -= ethGross;

        _accrueFees(ethFee);

        emit Sell(msg.sender, tokensIn, ethFee, ethDelivered, virtualTokenReserves, virtualEthReserves);

        IERC20(TOKEN).safeTransferFrom(msg.sender, address(this), tokensIn);
        payable(receiver).sendValue(ethDelivered);
    }

    /* -------------------------------------------------------------------------- */
    /*                                 GRADUATION                                 */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IBondingCurve
    /// @dev Defensive fallback. The terminal {buy} auto-graduates atomically, so this entry
    ///      reverts in normal flow (`CurveGraduated`). Retained for safety against unexpected
    ///      states where the threshold is met but graduation didn't run.
    function graduate() external nonReentrant {
        _graduate();
    }

    function _graduate() private {
        if (graduated) revert CurveGraduated();
        if (realTokensSold < CURVE_SUPPLY && realEthIn < GRADUATION_ETH_TARGET) {
            revert CurveNotGraduated();
        }

        graduated = true;

        uint256 ethForPool = realEthIn;
        uint256 grad = GRADUATION_FEE_WEI;
        // Cashback mode opts the creator out of all fee income, including the graduation bonus.
        uint256 reward = CASHBACK_MODE ? 0 : CREATOR_GRADUATION_REWARD_WEI;
        if (grad + reward > ethForPool) revert InvalidConfig();
        ethForPool -= grad + reward;

        // Route fee + bonus through the pull-claim buckets so a hostile recipient can't wedge
        // graduation itself.
        if (grad != 0) protocolOwed += grad;
        if (reward != 0) creatorOwed += reward;

        IToken(TOKEN).finalizeGraduation();

        IERC20(TOKEN).forceApprove(MIGRATOR, MIGRATION_SUPPLY);
        (bytes32 poolId, uint256 lpTokenId) = IMigrator(MIGRATOR).migrate{ value: ethForPool }(
            TOKEN, CREATOR, MIGRATION_SUPPLY, CREATOR_FEE_BPS, PROTOCOL_FEE_BPS
        );
        IERC20(TOKEN).forceApprove(MIGRATOR, 0);

        emit Graduated(TOKEN, poolId, ethForPool, MIGRATION_SUPPLY, lpTokenId);
    }

    /* -------------------------------------------------------------------------- */
    /*                              CREATOR ROUTING                               */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IBondingCurve
    /// @dev `nonReentrant` is defensive; this function makes no external calls today.
    function setCreator(address newCreator) external nonReentrant {
        if (msg.sender != CREATOR) revert OnlyCreator();
        if (feeRedirectsLocked) revert RedirectsAlreadyLocked();
        if (newCreator == address(0)) revert ZeroAddress();
        address old = CREATOR;
        CREATOR = newCreator;
        _lockRedirects();
        emit CreatorChanged(old, newCreator);
    }

    /// @inheritdoc IBondingCurve
    function setCreatorSplits(CreatorSplit[] calldata splits) external nonReentrant {
        if (msg.sender != CREATOR) revert OnlyCreator();
        if (feeRedirectsLocked) revert RedirectsAlreadyLocked();
        uint256 n = splits.length;
        if (n > MAX_CREATOR_SPLITS) revert InvalidSplits();

        delete _creatorSplits;
        if (n == 0) {
            _lockRedirects();
            emit CreatorSplitsChanged(0);
            return;
        }

        uint256 totalBps;
        for (uint256 i; i < n; ++i) {
            CreatorSplit calldata s = splits[i];
            if (s.recipient == address(0) || s.bps == 0) revert InvalidSplits();
            totalBps += s.bps;
            _creatorSplits.push(s);
        }
        if (totalBps != BPS) revert InvalidSplits();

        _lockRedirects();
        emit CreatorSplitsChanged(n);
    }

    /// @dev One-shot lock; first successful call to {setCreator} or {setCreatorSplits} flips
    ///      this and both subsequently revert.
    function _lockRedirects() private {
        if (!feeRedirectsLocked) {
            feeRedirectsLocked = true;
            emit FeeRedirectsLocked();
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                FEE CLAIMS                                  */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IBondingCurve
    function claimCreatorFees() external nonReentrant {
        uint256 owed = creatorOwed;
        if (owed == 0) return;
        creatorOwed = 0;

        // Snapshot splits to memory before iterating so a recipient (bounded to _PAYOUT_GAS)
        // cannot perturb iteration if the redirect-lock invariant is ever weakened. The
        // last-row residual sweep below depends on every CreatorSplit.bps > 0 AND
        // Σbps == BPS; both are enforced by setCreatorSplits.
        CreatorSplit[] memory splits = _creatorSplits;
        uint256 n = splits.length;
        uint256 failed;
        uint256 distributed;

        if (n == 0) {
            if (!_trySend(CREATOR, owed)) failed = owed;
        } else {
            for (uint256 i; i < n; ++i) {
                CreatorSplit memory s = splits[i];
                uint256 share = (i == n - 1) ? (owed - distributed) : Math.mulDiv(owed, s.bps, BPS);
                distributed += share;
                if (!_trySend(s.recipient, share)) failed += share;
            }
        }

        if (failed != 0) creatorOwed += failed;
        emit CreatorFeesClaimed(owed - failed, failed);
    }

    /// @inheritdoc IBondingCurve
    function claimProtocolFees() external nonReentrant {
        uint256 owed = protocolOwed;
        if (owed == 0) return;
        protocolOwed = 0;
        bool ok = _trySend(PROTOCOL_FEE_RECIPIENT, owed);
        if (!ok) protocolOwed += owed;
        emit ProtocolFeesClaimed(PROTOCOL_FEE_RECIPIENT, owed, ok);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   VIEWS                                    */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IBondingCurve
    function quoteBuy(uint256 ethIn) external view returns (uint256 tokensOut, uint256 feePaid) {
        if (ethIn == 0) return (0, 0);
        (uint256 delivered,, uint256 ethFee,) = _simulateBuy(ethIn);
        return (delivered, ethFee);
    }

    /// @inheritdoc IBondingCurve
    function quoteSell(uint256 tokensIn) external view returns (uint256 ethOut, uint256 feePaid) {
        if (tokensIn == 0) return (0, 0);
        (uint256 delivered, uint256 ethFee,) = _simulateSell(tokensIn);
        return (delivered, ethFee);
    }

    /// @inheritdoc IBondingCurve
    function creatorSplitCount() external view returns (uint256) {
        return _creatorSplits.length;
    }

    /// @inheritdoc IBondingCurve
    function creatorSplitAt(uint256 i) external view returns (address recipient, uint96 bps) {
        CreatorSplit memory s = _creatorSplits[i];
        return (s.recipient, s.bps);
    }

    /* -------------------------------------------------------------------------- */
    /*                              INTERNAL HELPERS                              */
    /* -------------------------------------------------------------------------- */

    function _effectiveTotalBps() private view returns (uint256) {
        return CASHBACK_MODE ? uint256(PROTOCOL_FEE_BPS) : uint256(PROTOCOL_FEE_BPS) + uint256(CREATOR_FEE_BPS);
    }

    /// @dev Simulate a buy. `ethAfterFee` is clamped by the smaller of:
    ///        1. ETH needed to drain the remaining curve supply
    ///        2. ETH needed to reach `GRADUATION_ETH_TARGET`
    ///      Unused ETH is refunded; fee is re-derived from the consumed amount on partial fills.
    function _simulateBuy(uint256 ethIn)
        private
        view
        returns (uint256 tokensDelivered, uint256 ethInUsedForCurve, uint256 ethFee, uint256 ethRefund)
    {
        uint256 totalBps = _effectiveTotalBps();
        ethFee = Math.mulDiv(ethIn, totalBps, BPS, Math.Rounding.Ceil);
        uint256 ethAfterFee = ethIn - ethFee;

        uint256 remainingCurve = CURVE_SUPPLY - realTokensSold;
        uint256 ethCapFromSupply;
        if (remainingCurve == 0) {
            ethCapFromSupply = 0;
        } else {
            uint256 vtAtCap = virtualTokenReserves - remainingCurve;
            uint256 veAtCap = Math.mulDiv(_K, 1, vtAtCap, Math.Rounding.Ceil);
            ethCapFromSupply = veAtCap - virtualEthReserves;
        }

        uint256 ethCapFromTarget = GRADUATION_ETH_TARGET > realEthIn ? GRADUATION_ETH_TARGET - realEthIn : 0;
        uint256 effectiveCap = ethCapFromSupply < ethCapFromTarget ? ethCapFromSupply : ethCapFromTarget;

        if (ethAfterFee <= effectiveCap) {
            uint256 newVe = virtualEthReserves + ethAfterFee;
            uint256 newVt = _K / newVe;
            tokensDelivered = virtualTokenReserves - newVt;
            return (tokensDelivered, ethAfterFee, ethFee, 0);
        }

        // Partial fill: snap to the binding cap and refund the unused ETH. Fee is re-derived
        // from the consumed amount so traders aren't charged on refunded principal.
        ethInUsedForCurve = effectiveCap;
        uint256 finalVe = virtualEthReserves + ethInUsedForCurve;
        uint256 finalVt = _K / finalVe;
        tokensDelivered = virtualTokenReserves - finalVt;
        // Defensive — integer division can under-shoot the supply cap by at most 1 unit.
        if (tokensDelivered > remainingCurve) tokensDelivered = remainingCurve;

        if (totalBps != 0) {
            uint256 gross = Math.mulDiv(ethInUsedForCurve, BPS, BPS - totalBps, Math.Rounding.Ceil);
            if (gross > ethIn) gross = ethIn;
            ethFee = gross - ethInUsedForCurve;
            ethRefund = ethIn - gross;
        } else {
            ethFee = 0;
            ethRefund = ethIn - ethInUsedForCurve;
        }
    }

    function _simulateSell(uint256 tokensIn)
        private
        view
        returns (uint256 ethDelivered, uint256 ethFee, uint256 ethGross)
    {
        uint256 newVt = virtualTokenReserves + tokensIn;
        uint256 newVe = _K / newVt;
        ethGross = virtualEthReserves - newVe;

        uint256 totalBps = _effectiveTotalBps();
        ethFee = Math.mulDiv(ethGross, totalBps, BPS, Math.Rounding.Ceil);
        ethDelivered = ethGross - ethFee;
    }

    function _accrueFees(uint256 totalFee) private {
        if (totalFee == 0) return;
        if (CASHBACK_MODE) {
            protocolOwed += totalFee;
            emit FeesAccrued(0, totalFee);
            return;
        }
        uint256 totalBps = uint256(PROTOCOL_FEE_BPS) + uint256(CREATOR_FEE_BPS);
        if (totalBps == 0) return;
        uint256 creatorCut = Math.mulDiv(totalFee, CREATOR_FEE_BPS, totalBps);
        uint256 protocolCut = totalFee - creatorCut;
        creatorOwed += creatorCut;
        protocolOwed += protocolCut;
        emit FeesAccrued(creatorCut, protocolCut);
    }

    function _trySend(address to, uint256 amount) private returns (bool ok) {
        if (amount == 0) return true;
        (ok,) = payable(to).call{ value: amount, gas: _PAYOUT_GAS }("");
    }

    /// @dev Reject unsolicited ETH. Contract balance must equal
    ///      `realEthIn + creatorOwed + protocolOwed` at all times.
    receive() external payable {
        revert();
    }
}
