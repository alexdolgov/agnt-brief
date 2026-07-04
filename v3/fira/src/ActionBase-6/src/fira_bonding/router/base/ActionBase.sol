// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../../interfaces/IBCToken.sol";
import "../../../interfaces/IFiraWrappedStandardized.sol";
import "../../../interfaces/IPAllActionTypeV3.sol";
import "../../../interfaces/IPMarket.sol";

import "../../libraries/Errors.sol";
import "../../libraries/TokenHelper.sol";
import "../math/MarketApproxLibV2.sol";
import "../swap-aggregator/IPSwapAggregator.sol";
import "./CallbackHelper.sol";

/// @title ActionBase
/// @notice Abstract base contract providing core functionality for router actions including FW/BC token
///         minting/redeeming, BT/CT swaps, limit order fills, and liquidity operations.
/// @dev Inherited by action facets in the diamond router pattern. Combines TokenHelper for transfers,
///      CallbackHelper for swap callbacks, and limit order type definitions.
abstract contract ActionBase is TokenHelper, CallbackHelper, IPLimitOrderType {
    using MarketApproxBtInLibV2 for MarketState;
    using MarketApproxBtOutLibV2 for MarketState;
    using PMath for uint256;
    using BCIndexLib for IBCToken;
    using BCIndexLib for BCIndex;

    bytes internal constant EMPTY_BYTES = abi.encode();

    /// @dev Internal state for swapExactBtForFw operations, tracking BT input, FW output, fees, and market order status
    struct SwapExactBtForFw {
        IBondToken BT;
        uint256 netBtLeft;
        uint256 netFwOut;
        uint256 netFwFee;
        bool doMarketOrder;
        uint256 netFwOutMarket;
        uint256 netFwFeeMarket;
    }

    /// @dev Internal state for swapExactFwForBt operations, tracking FW input, BT output, fees, and market order status
    struct SwapExactFwForBt {
        IFiraWrappedStandardized FW;
        IBCToken CT;
        uint256 netFwLeft;
        uint256 netBtOut;
        uint256 netFwFee;
        bool doMarketOrder;
        uint256 netBtOutMarket;
        uint256 netFwFeeMarket;
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // MINT / REDEEM FW AND BC TOKENS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Mints FW tokens from an input token, optionally swapping through an aggregator first
    /// @param receiver Address to receive the minted FW tokens
    /// @param FW Address of the FW token contract to mint
    /// @param minFwOut Minimum FW tokens to receive (slippage protection)
    /// @param inp Token input parameters including swap data if conversion is needed
    /// @return netFwOut Amount of FW tokens minted
    function _mintFwFromToken(address receiver, address FW, uint256 minFwOut, TokenInput calldata inp)
        internal
        returns (uint256 netFwOut)
    {
        SwapType swapType = inp.swapData.swapType;

        uint256 netTokenMintFw;

        if (swapType == SwapType.NONE) {
            _transferIn(inp.tokenIn, msg.sender, inp.netTokenIn);
            netTokenMintFw = inp.netTokenIn;
        } else if (swapType == SwapType.ETH_WETH) {
            _transferIn(inp.tokenIn, msg.sender, inp.netTokenIn);
            _wrap_unwrap_ETH(inp.tokenIn, inp.tokenMintFw, inp.netTokenIn);
            netTokenMintFw = inp.netTokenIn;
        } else {
            _swapTokenInput(inp);
            netTokenMintFw = _selfBalance(inp.tokenMintFw);
        }

        netFwOut = __mintFw(receiver, FW, netTokenMintFw, minFwOut, inp);
    }

    /// @notice Executes a token swap through the configured swap aggregator
    /// @param inp Token input parameters containing swap routing data
    function _swapTokenInput(TokenInput calldata inp) internal {
        if (inp.tokenIn == NATIVE) _transferIn(NATIVE, msg.sender, inp.netTokenIn);
        else _transferFrom(IERC20(inp.tokenIn), msg.sender, inp.firaSwap, inp.netTokenIn);

        IPSwapAggregator(inp.firaSwap)
        .swap{value: inp.tokenIn == NATIVE ? inp.netTokenIn : 0}(inp.tokenIn, inp.netTokenIn, inp.swapData);
    }

    /// @dev Internal helper to deposit tokens into FW contract
    function __mintFw(address receiver, address FW, uint256 netTokenMintFw, uint256 minFwOut, TokenInput calldata inp)
        private
        returns (uint256 netFwOut)
    {
        uint256 netNative = inp.tokenMintFw == NATIVE ? netTokenMintFw : 0;
        _safeApproveInf(inp.tokenMintFw, FW);
        netFwOut =
            IFiraWrappedStandardized(FW).deposit{value: netNative}(receiver, inp.tokenMintFw, netTokenMintFw, minFwOut);
    }

    /// @notice Redeems FW tokens to an output token, optionally swapping through an aggregator
    /// @param receiver Address to receive the output tokens
    /// @param FW Address of the FW token contract to redeem from
    /// @param netFwIn Amount of FW tokens to redeem
    /// @param out Token output parameters including swap data if conversion is needed
    /// @param doPull Whether to pull FW tokens from msg.sender
    /// @return netTokenOut Amount of output tokens received
    function _redeemFwToToken(address receiver, address FW, uint256 netFwIn, TokenOutput calldata out, bool doPull)
        internal
        returns (uint256 netTokenOut)
    {
        SwapType swapType = out.swapData.swapType;

        if (swapType == SwapType.NONE) {
            netTokenOut = __redeemFw(receiver, FW, netFwIn, out, doPull);
        } else if (swapType == SwapType.ETH_WETH) {
            netTokenOut = __redeemFw(address(this), FW, netFwIn, out, doPull); // ETH:WETH is 1:1

            _wrap_unwrap_ETH(out.tokenRedeemFw, out.tokenOut, netTokenOut);

            _transferOut(out.tokenOut, receiver, netTokenOut);
        } else {
            uint256 netTokenRedeemed = __redeemFw(out.firaSwap, FW, netFwIn, out, doPull);

            IPSwapAggregator(out.firaSwap).swap(out.tokenRedeemFw, netTokenRedeemed, out.swapData);

            netTokenOut = _selfBalance(out.tokenOut);

            _transferOut(out.tokenOut, receiver, netTokenOut);
        }

        if (netTokenOut < out.minTokenOut) revert("Slippage: INSUFFICIENT_TOKEN_OUT");
    }

    /// @dev Internal helper to redeem FW tokens to underlying
    function __redeemFw(address receiver, address FW, uint256 netFwIn, TokenOutput calldata out, bool doPull)
        private
        returns (uint256 netTokenRedeemed)
    {
        if (doPull) {
            _transferFrom(IERC20(FW), msg.sender, FW, netFwIn);
        }

        netTokenRedeemed = IFiraWrappedStandardized(FW).redeem(receiver, netFwIn, out.tokenRedeemFw, 0, true);
    }

    /// @notice Mints BC (Bond + Coupon) tokens from FW tokens
    /// @param receiver Address to receive the minted BT and CT tokens
    /// @param FW Address of the FW token used for minting
    /// @param CT Address of the Coupon Token contract
    /// @param netFwIn Amount of FW tokens to use for minting
    /// @param minBcOut Minimum BC tokens to receive (slippage protection)
    /// @param doPull Whether to pull FW tokens from msg.sender
    /// @return netBcOut Amount of BC tokens minted (equal amounts of BT and CT)
    function _mintBcFromFw(address receiver, address FW, address CT, uint256 netFwIn, uint256 minBcOut, bool doPull)
        internal
        returns (uint256 netBcOut)
    {
        if (doPull) {
            _transferFrom(IERC20(FW), msg.sender, CT, netFwIn);
        }

        netBcOut = IBCToken(CT).mintBC(receiver, receiver);
        if (netBcOut < minBcOut) revert("Slippage: INSUFFICIENT_BT_CT_OUT");
    }

    /// @notice Redeems BC (Bond + Coupon) tokens back to FW tokens
    /// @param receiver Address to receive the redeemed FW tokens
    /// @param CT Address of the Coupon Token contract
    /// @param netBcIn Amount of BC tokens to redeem
    /// @param minFwOut Minimum FW tokens to receive (slippage protection)
    /// @return netFwOut Amount of FW tokens received
    function _redeemBcToFw(address receiver, address CT, uint256 netBcIn, uint256 minFwOut)
        internal
        returns (uint256 netFwOut)
    {
        address BT = IBCToken(CT).BT();

        _transferFrom(IERC20(BT), msg.sender, CT, netBcIn);

        bool needToBurnCt = (!IBCToken(CT).isExpired());
        if (needToBurnCt) _transferFrom(IERC20(CT), msg.sender, CT, netBcIn);

        netFwOut = IBCToken(CT).redeemBC(receiver);
        if (netFwOut < minFwOut) revert("Slippage: INSUFFICIENT_FW_OUT");
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // MARKET STATE HELPERS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Reads the current state of a Fira market
    /// @param market Address of the Fira market
    /// @return MarketState struct containing current market parameters
    function _readMarket(address market) internal view returns (MarketState memory) {
        return IPMarket(market).readState(address(this));
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // BT (BOND TOKEN) SWAPS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Determines the entry point address for swapExactBtForFw based on limit order presence
    /// @param market Address of the Fira market
    /// @param limit Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the market
    function _entry_swapExactBtForFw(address market, LimitOrderData calldata limit) internal view returns (address) {
        return _entry_swapExactBtForFw(market, !_isEmptyLimit(limit));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_swapExactBtForFw(address market, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : market;
    }

    /// @notice Swaps an exact amount of BT for FW, optionally filling limit orders first
    /// @param receiver Address to receive the FW tokens
    /// @param market Address of the Fira market
    /// @param exactBtIn Exact amount of BT to swap
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data for off-chain order matching
    /// @return netFwOut Total FW received
    /// @return netFwFee Total fees paid in FW
    function _swapExactBtForFw(
        address receiver,
        address market,
        uint256 exactBtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netFwOut, uint256 netFwFee) {
        SwapExactBtForFw memory vars;

        (, vars.BT,) = IPMarket(market).readTokens();
        vars.netBtLeft = exactBtIn;
        vars.doMarketOrder = true;

        if (!_isEmptyLimit(limit)) {
            (vars.netBtLeft, vars.netFwOut, vars.netFwFee, vars.doMarketOrder) =
                _fillLimit(receiver, vars.BT, vars.netBtLeft, limit);
            if (vars.doMarketOrder) {
                _transferOut(address(vars.BT), market, vars.netBtLeft);
            } else {
                _transferOut(address(vars.BT), receiver, vars.netBtLeft);
            }
        }

        if (vars.doMarketOrder) {
            (vars.netFwOutMarket, vars.netFwFeeMarket) =
                IPMarket(market).swapExactBtForFw(receiver, vars.netBtLeft, EMPTY_BYTES);

            vars.netFwOut += vars.netFwOutMarket;
            vars.netFwFee += vars.netFwFeeMarket;
        }

        if (vars.netFwOut < minFwOut) revert("Slippage: INSUFFICIENT_FW_OUT");

        return (vars.netFwOut, vars.netFwFee);
    }

    /// @notice Determines the entry point address for swapExactFwForBt based on limit order presence
    /// @param market Address of the Fira market
    /// @param limit Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the market
    function _entry_swapExactFwForBt(address market, LimitOrderData calldata limit) internal view returns (address) {
        return _entry_swapExactFwForBt(market, !_isEmptyLimit(limit));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_swapExactFwForBt(address market, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : market;
    }

    /// @notice Swaps an exact amount of FW for BT, optionally filling limit orders first
    /// @param receiver Address to receive the BT tokens
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param guessBtOut Approximation parameters for calculating BT output
    /// @param limit Limit order data for off-chain order matching
    /// @return netBtOut Total BT received
    /// @return netFwFee Total fees paid in FW
    function _swapExactFwForBt(
        address receiver,
        address market,
        uint256 exactFwIn,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netBtOut, uint256 netFwFee) {
        SwapExactFwForBt memory vars;

        (vars.FW,, vars.CT) = IPMarket(market).readTokens();
        vars.netFwLeft = exactFwIn;
        vars.doMarketOrder = true;

        if (!_isEmptyLimit(limit)) {
            (vars.netFwLeft, vars.netBtOut, vars.netFwFee, vars.doMarketOrder) =
                _fillLimit(receiver, vars.FW, vars.netFwLeft, limit);
            if (vars.doMarketOrder) {
                _transferOut(address(vars.FW), market, vars.netFwLeft);
            } else {
                _transferOut(address(vars.FW), receiver, vars.netFwLeft);
            }
        }

        if (vars.doMarketOrder) {
            (vars.netBtOutMarket,) = _readMarket(market)
                .approxSwapExactFwForBtV2(vars.CT.newIndex(), vars.netFwLeft, block.timestamp, guessBtOut);

            (, vars.netFwFeeMarket) = IPMarket(market).swapFwForExactBt(receiver, vars.netBtOutMarket, EMPTY_BYTES);

            vars.netBtOut += vars.netBtOutMarket;
            vars.netFwFee += vars.netFwFeeMarket;
        }

        if (vars.netBtOut < minBtOut) revert("Slippage: INSUFFICIENT_BT_OUT");

        return (vars.netBtOut, vars.netFwFee);
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // CT (COUPON TOKEN) SWAPS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Determines the entry point address for swapExactCtForFw based on limit order presence
    /// @param CT The Coupon Token contract
    /// @param limit Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the CT contract
    function _entry_swapExactCtForFw(IBCToken CT, LimitOrderData calldata limit) internal view returns (address) {
        return _entry_swapExactCtForFw(CT, !_isEmptyLimit(limit));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_swapExactCtForFw(IBCToken CT, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : address(CT);
    }

    /// @notice Swaps an exact amount of CT for FW via the market's BT-FW pool
    /// @dev CT is swapped by first acquiring BT through the market, then redeeming BT+CT for FW
    /// @param receiver Address to receive the FW tokens
    /// @param market Address of the Fira market
    /// @param FW The FW token contract
    /// @param CT The Coupon Token contract
    /// @param exactCtIn Exact amount of CT to swap
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data for off-chain order matching
    /// @return netFwOut Total FW received
    /// @return netFwFee Total fees paid in FW
    function _swapExactCtForFw(
        address receiver,
        address market,
        IFiraWrappedStandardized FW,
        IBCToken CT,
        uint256 exactCtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netFwOut, uint256 netFwFee) {
        uint256 netCtLeft = exactCtIn;
        bool doMarketOrder = true;

        if (!_isEmptyLimit(limit)) {
            (netCtLeft, netFwOut, netFwFee, doMarketOrder) = _fillLimit(receiver, CT, netCtLeft, limit);
            if (doMarketOrder) {
                _transferOut(address(CT), address(CT), netCtLeft);
            } else {
                _transferOut(address(CT), receiver, netCtLeft);
            }
        }

        if (doMarketOrder) {
            uint256 preFwBalance = FW.balanceOf(receiver);

            (, uint256 netFwFeeMarket) = IPMarket(market)
                .swapFwForExactBt(
                    address(CT),
                    netCtLeft, // exactPtOut = netCtLeft
                    _encodeSwapCtForFw(receiver, CT)
                );

            // avoid stack issue
            netFwFee += netFwFeeMarket;
            netFwOut += FW.balanceOf(receiver) - preFwBalance;
        }

        if (netFwOut < minFwOut) revert("Slippage: INSUFFICIENT_FW_OUT");
    }

    /// @notice Determines the entry point address for swapExactFwForCt based on limit order presence
    /// @param CT The Coupon Token contract
    /// @param limit Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the CT contract
    function _entry_swapExactFwForCt(IBCToken CT, LimitOrderData calldata limit) internal view returns (address) {
        return _entry_swapExactFwForCt(CT, !_isEmptyLimit(limit));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_swapExactFwForCt(IBCToken CT, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : address(CT);
    }

    /// @notice Swaps an exact amount of FW for CT via the market's BT-FW pool
    /// @dev FW is first minted into BT+CT, then BT is sold for more FW, netting CT output
    /// @param receiver Address to receive the CT tokens
    /// @param market Address of the Fira market
    /// @param FW The FW token contract
    /// @param CT The Coupon Token contract
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minCtOut Minimum CT to receive (slippage protection)
    /// @param guessCtOut Approximation parameters for calculating CT output
    /// @param limit Limit order data for off-chain order matching
    /// @return netCtOut Total CT received
    /// @return netFwFee Total fees paid in FW
    function _swapExactFwForCt(
        address receiver,
        address market,
        IFiraWrappedStandardized FW,
        IBCToken CT,
        uint256 exactFwIn,
        uint256 minCtOut,
        ApproxParams calldata guessCtOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netCtOut, uint256 netFwFee) {
        uint256 netFwLeft = exactFwIn;
        bool doMarketOrder = true;

        if (!_isEmptyLimit(limit)) {
            (netFwLeft, netCtOut, netFwFee, doMarketOrder) = _fillLimit(receiver, FW, netFwLeft, limit);
            if (doMarketOrder) {
                _transferOut(address(FW), address(CT), netFwLeft);
            } else {
                _transferOut(address(FW), receiver, netFwLeft);
            }
        }

        if (doMarketOrder) {
            (uint256 netCtOutMarket,) =
                _readMarket(market).approxSwapExactFwForCtV2(CT.newIndex(), netFwLeft, block.timestamp, guessCtOut);

            (, uint256 netFwFeeMarket) = IPMarket(market)
                .swapExactBtForFw(
                    address(CT),
                    netCtOutMarket, // exactPtIn = netCtOut
                    _encodeSwapExactFwForCt(receiver, CT)
                );

            netCtOut += netCtOutMarket;
            netFwFee += netFwFeeMarket;
        }

        if (netCtOut < minCtOut) revert("Slippage: INSUFFICIENT_CT_OUT");
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // LIMIT ORDERS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Fills limit orders from the order book before executing remaining amount on AMM
    /// @param receiver Address to receive output tokens from filled orders
    /// @param tokenIn Token being sold to fill orders
    /// @param netInput Total input amount available
    /// @param lim Limit order data containing normal and flash fills
    /// @return netLeft Remaining input after filling orders
    /// @return netOut Total output received from filled orders
    /// @return netFwFee Total fees paid
    /// @return doMarketOrder Whether remaining amount warrants a market order (based on epsSkipMarket)
    function _fillLimit(address receiver, IERC20 tokenIn, uint256 netInput, LimitOrderData calldata lim)
        internal
        returns (uint256 netLeft, uint256 netOut, uint256 netFwFee, bool doMarketOrder)
    {
        IPLimitRouter router = IPLimitRouter(lim.limitRouter);
        netLeft = netInput;

        if (lim.normalFills.length != 0) {
            _safeApproveInf(address(tokenIn), lim.limitRouter);
            (uint256 actualMaking, uint256 actualTaking, uint256 totalFee,) =
                router.fill(lim.normalFills, receiver, netLeft, lim.optData, EMPTY_BYTES);
            netOut += actualMaking;
            netLeft -= actualTaking;
            netFwFee += totalFee;
        }

        if (lim.flashFills.length != 0) {
            address CT = lim.flashFills[0].order.CT;
            OrderType orderType = lim.flashFills[0].order.orderType;

            (,, uint256 totalFee, bytes memory ret) = router.fill(
                lim.flashFills, CT, type(uint256).max, lim.optData, abi.encode(orderType, CT, netLeft, receiver)
            );
            (uint256 netUse, uint256 netReceived) = abi.decode(ret, (uint256, uint256));

            netOut += netReceived;
            netLeft -= netUse;
            netFwFee += totalFee;
        }

        doMarketOrder = netLeft > netInput.mulDown(lim.epsSkipMarket);
    }

    /// @notice Checks if limit order data is empty (no orders to fill)
    /// @param a Limit order data to check
    /// @return True if both normalFills and flashFills are empty
    function _isEmptyLimit(LimitOrderData calldata a) internal pure returns (bool) {
        return a.normalFills.length == 0 && a.flashFills.length == 0;
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // LIQUIDITY ENTRY POINTS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Determines the entry point for adding liquidity with single BT
    /// @param market Address of the Fira market
    /// @param lim Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the market
    function _entry_addLiquiditySingleBt(address market, LimitOrderData calldata lim) internal view returns (address) {
        return _entry_addLiquiditySingleBt(market, !_isEmptyLimit(lim));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_addLiquiditySingleBt(address market, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : market;
    }

    /// @notice Determines the entry point for adding liquidity with single FW
    /// @param market Address of the Fira market
    /// @param lim Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the market
    function _entry_addLiquiditySingleFw(address market, LimitOrderData calldata lim) internal view returns (address) {
        return _entry_addLiquiditySingleFw(market, !_isEmptyLimit(lim));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_addLiquiditySingleFw(address market, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : market;
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // DELEGATE CALL HELPERS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Executes a delegatecall to this contract itself
    /// @dev Used for calling other facet functions while preserving storage context
    /// @param data Encoded function call data
    /// @param allowFailure If false, reverts on delegatecall failure; if true, returns failure status
    /// @return success Whether the delegatecall succeeded
    /// @return result Return data from the delegatecall
    function _delegateToSelf(bytes memory data, bool allowFailure)
        internal
        returns (bool success, bytes memory result)
    {
        (success, result) = address(this).delegatecall(data);

        if (!success && !allowFailure) {
            assembly {
                // We use Yul's revert() to bubble up errors from the target contract.
                revert(add(32, result), mload(result))
            }
        }
    }
}
