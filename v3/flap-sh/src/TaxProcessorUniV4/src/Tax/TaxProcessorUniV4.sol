// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {IPortal, IPortalTradeV2, IPortalTypes} from "src/interfaces/IPortal.sol";
import {TaxProcessorCore, TaxProcessorV2DispatchImpl, TaxProcessorAdminImpl, IWETH} from "src/Tax/TaxProcessorBase.sol";
import {V4PendingFeeMath} from "src/Tax/libraries/V4PendingFeeMath.sol";
import {TaxProcessorV2InitParams} from "src/interfaces/Tax/ITaxProcessorV2.sol";

/// @title TaxProcessorUniV4DispatchImpl
/// @notice Dispatch implementation for V4/PCS Infinity tokens.
///         Overrides `_swapQuoteForTokens` to use Portal's `swapExactInput` instead of
///         the V2 router, since V4 tokens trade on V4 pools after graduation.
///         Also holds cold-path V4-specific admin functions (setDispatchThreshold,
///         checkAndNotifyDispatch) to keep TaxProcessorUniV4 lean.
///
/// @dev Storage layout MUST match TaxProcessorBase exactly (TaxProcessorBaseStorage fields).
contract TaxProcessorUniV4DispatchImpl is TaxProcessorV2DispatchImpl {
    using SafeERC20 for IERC20;

    constructor(address weth_, address flapBlackHole_, address portal_, address swapRegistry_)
        TaxProcessorV2DispatchImpl(weth_, flapBlackHole_, portal_, swapRegistry_)
    {}

    /// @notice Override executeDispatch to collect V4 LP fees before dispatching.
    function executeDispatch() external override {
        // ── Step 1: Collect V4 LP fees ───────────────────────────────────────
        // Portal.collectV4Fees → PortalUniV4Locker._forwardFeesToTaxProcessor.
        // The locker forwards raw quote/token balances only; it does NOT bucket-account them.
        // Reconcile immediately so the freshly collected fees are included in this dispatch cycle
        // rather than being deferred to the next one.
        try IPortal(portal).collectV4Fees(taxToken) {}
        catch (bytes memory reason) {
            emit FlapV4FeeCollectFailed(taxToken, reason);
        }
        lastDispatchCheckAt = block.timestamp;

        // ── Step 2: Reconcile freshly collected raw balances into tracked buckets ──────────────
        _reconcileBalance();

        // ── Step 3: Run parent dispatch logic ────────────────────────────────
        _executeDispatchInternal();
    }
}

/// @title TaxProcessorUniV4
/// @notice TaxProcessor for tokens that graduate to Uniswap V4 / PCS Infinity pools.
///         Implements `_swapTokensForQuote` and `_addLiquidity` using Portal's swap routing
///         and pluggable LP modules.
///
/// @dev For V4 tokens:
///   - `_swapTokensForQuote`: uses Portal's swapExactInput (which routes through V4 pool)
///   - `_addLiquidity`: delegates to Portal's addV4LPLiquidity for V4 pool positions
///
///   Deployed as a Minimal Proxy (clone) — constructor sets immutables shared by all clones.
contract TaxProcessorUniV4 is TaxProcessorCore {
    using SafeERC20 for IERC20;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address weth_, address flapBlackHole_, address portal_, address swapRegistry_, address adminImpl_)
        TaxProcessorCore(
            weth_,
            flapBlackHole_,
            portal_,
            swapRegistry_,
            address(new TaxProcessorUniV4DispatchImpl(weth_, flapBlackHole_, portal_, swapRegistry_)),
            adminImpl_
        )
    {}

    // ─────────────────────────────────────────────────────────────────────────
    // V4 DEX-specific implementations
    // ─────────────────────────────────────────────────────────────────────────

    /// @notice Swap tax tokens for quote tokens via Portal's swapExactInput.
    /// @dev Portal routes through the correct DEX (V4 pool) for graduated V4 tokens.
    ///      When isWeth (native quote), Portal expects address(0) as outputToken and returns
    ///      native ETH/MON — we wrap it back to WETH/WMON after the swap.
    function _swapTokensForQuote(uint256 amount) internal override returns (uint256 quoteReceived) {
        uint256 quoteBefore = IERC20(quoteToken).balanceOf(address(this));

        // Approve Portal to pull tax tokens
        IERC20(taxToken).safeApprove(portal, 0);
        IERC20(taxToken).safeApprove(portal, amount);

        if (_feeConfig.isWeth) {
            // Native quote: Portal expects address(0) as outputToken and sends native ETH/MON
            IPortalTradeV2.ExactInputParams memory params = IPortalTradeV2.ExactInputParams({
                inputToken: taxToken,
                outputToken: address(0), // native
                inputAmount: amount,
                minOutputAmount: 0,
                permitData: ""
            });

            try IPortal(portal).swapExactInput(params) returns (uint256 received) {
                quoteReceived = received;
                // Wrap received native tokens back to WETH/WMON
                uint256 ethBalance = address(this).balance;
                if (ethBalance > 0) {
                    IWETH(weth).deposit{value: ethBalance}();
                }
            } catch {
                quoteReceived = 0;
            }
        } else {
            // ERC20 quote: use quoteToken address directly
            IPortalTradeV2.ExactInputParams memory params = IPortalTradeV2.ExactInputParams({
                inputToken: taxToken, outputToken: quoteToken, inputAmount: amount, minOutputAmount: 0, permitData: ""
            });

            try IPortal(portal).swapExactInput(params) returns (uint256 received) {
                quoteReceived = received;
            } catch {
                quoteReceived = 0;
            }
        }

        // Fallback: measure balance change
        if (quoteReceived == 0) {
            uint256 quoteAfter = IERC20(quoteToken).balanceOf(address(this));
            if (quoteAfter > quoteBefore) {
                quoteReceived = quoteAfter - quoteBefore;
            }
        }
    }

    /// @notice Add liquidity to V4/PCS Infinity locked LP positions.
    /// @dev Transfers tokens to Portal, then calls Portal.addV4LPLiquidity() which
    ///      delegatecalls to PortalUniV4Locker. The locker calls increaseLiquidity
    ///      on both the quote-only (lower) and token-only (upper) positions.
    ///      If the call fails (e.g. no locks yet), returns (0, 0) gracefully so the
    ///      LP-share tokens are swapped for quote instead (existing fallback in base).
    function _addLiquidity(uint256 tokenAmount, uint256 quoteAmount)
        internal
        override
        returns (uint256 actualTokenUsed, uint256 actualQuoteUsed)
    {
        // Approve Portal to pull tokens (Portal.addV4LPLiquidity will transferFrom).
        // If the call reverts, the transferFrom inside it also reverts, so tokens stay here.
        IERC20(taxToken).safeApprove(portal, 0);
        IERC20(taxToken).safeApprove(portal, tokenAmount);
        IERC20(quoteToken).safeApprove(portal, 0);
        IERC20(quoteToken).safeApprove(portal, quoteAmount);

        // Portal pulls tokens, adds liquidity, and returns excess back to us.
        try IPortal(portal).addV4LPLiquidity(taxToken, tokenAmount, quoteAmount) returns (
            uint256 tokenUsed, uint256 quoteUsed
        ) {
            actualTokenUsed = tokenUsed;
            actualQuoteUsed = quoteUsed;
        } catch {
            // addV4LPLiquidity reverted — all state changes inside (including transferFrom)
            // are rolled back, so tokens remain with us. Reset approvals and return (0, 0).
            IERC20(taxToken).safeApprove(portal, 0);
            IERC20(quoteToken).safeApprove(portal, 0);
            return (0, 0);
        }

        // Reset approvals
        IERC20(taxToken).safeApprove(portal, 0);
        IERC20(quoteToken).safeApprove(portal, 0);

        totalTokenAddedToLiquidity += actualTokenUsed;
        totalQuoteAddedToLiquidity += actualQuoteUsed;
    }

    /// @notice Register the V4 / PCS Infinity LP fee source metadata for this processor.
    /// @dev Called by Portal during migration after both LP position NFTs are minted.
    function registerV4LPFeeSource(
        uint8 migratorType,
        address poolManager,
        address positionManager,
        uint256 tokenId0,
        uint256 tokenId1
    ) external {
        _delegateToAdminImpl();
    }

    // ─────────────────────────────────────────────────────────────────────────
    // V4 view — kept here (view function; delegatecall not needed)
    // ─────────────────────────────────────────────────────────────────────────

    /// @notice Query the pending (uncollected) V4 LP fees from the locker via Portal.
    /// @return pendingQuote Total pending quote-token fees across both lock positions
    /// @return pendingToken Total pending meme-token fees across both lock positions
    /// @return estimatedQuoteValue Spot-price estimate of the combined pending fee value in quote-token units
    function getPendingLPFees()
        external
        view
        returns (uint256 pendingQuote, uint256 pendingToken, uint256 estimatedQuoteValue)
    {
        return _getPendingLPFees();
    }

    // ─────────────────────────────────────────────────────────────────────────
    // V4 cold-path admin — delegated to TaxProcessorUniV4DispatchImpl
    // ─────────────────────────────────────────────────────────────────────────

    /// @notice Set the dispatch threshold. Implementation in TaxProcessorAdminImpl.
    function setDispatchThreshold(uint256 threshold) external override {
        _delegateToAdminImpl();
    }

    /// @notice Set the dispatch-check cooldown. Implementation in TaxProcessorAdminImpl.
    function setDispatchCheckCooldown(uint256 cooldown) external override {
        _delegateToAdminImpl();
    }

    /// @notice Check pending fees vs threshold and emit DispatchReady if exceeded.
    ///         Uses the local V4 fee-math library so UniV4 processors do not roundtrip through PortalLensV2.
    function checkAndNotifyDispatch() external override {
        uint256 threshold = dispatchThreshold;
        if (threshold == 0) return;

        uint256 cooldown = dispatchCheckCooldown;
        uint256 lastCheckAt = lastDispatchCheckAt;
        if (cooldown != 0 && lastCheckAt != 0 && block.timestamp < lastCheckAt + cooldown) return;
        lastDispatchCheckAt = block.timestamp;

        (bool ok, bytes memory returnData) =
            address(this).staticcall(abi.encodeWithSelector(this.getPendingLPFees.selector));
        if (!ok || returnData.length < 96) return;

        (uint256 pendingQuote, uint256 pendingToken, uint256 estimatedQuoteValue) =
            abi.decode(returnData, (uint256, uint256, uint256));
        if (pendingQuote == 0 && pendingToken == 0) return;

        if (estimatedQuoteValue >= threshold) {
            emit FlapDispatchReady(taxToken, quoteToken, pendingQuote, pendingToken, estimatedQuoteValue);
        }
    }

    function _getPendingLPFees()
        internal
        view
        returns (uint256 pendingQuote, uint256 pendingToken, uint256 estimatedQuoteValue)
    {
        V4LPFeeSource memory feeSource = v4LPFeeSource;
        if (feeSource.poolManager == address(0) || feeSource.positionManager == address(0)) {
            return (0, 0, 0);
        }

        if (feeSource.migratorType == uint8(IPortalTypes.MigratorType.V4_UNI_MIGRATOR)) {
            return V4PendingFeeMath.getPendingFeesWithQuoteValueUni(
                taxToken,
                quoteToken,
                feeSource.tokenId0,
                feeSource.tokenId1,
                feeSource.poolManager,
                feeSource.positionManager
            );
        }

        if (feeSource.migratorType == uint8(IPortalTypes.MigratorType.PCS_INFINITY_CL_MIGRATOR)) {
            return V4PendingFeeMath.getPendingFeesWithQuoteValuePCS(
                taxToken,
                quoteToken,
                feeSource.tokenId0,
                feeSource.tokenId1,
                feeSource.poolManager,
                feeSource.positionManager
            );
        }

        return (0, 0, 0);
    }
}
