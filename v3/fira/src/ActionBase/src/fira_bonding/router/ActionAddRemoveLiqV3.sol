// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

import "../../interfaces/IPActionAddRemoveLiqV3.sol";
import "./base/ActionBase.sol";

import {ActionDelegateBase} from "./base/ActionDelegateBase.sol";

/// @title ActionAddRemoveLiqV3
/// @notice Router facet for adding and removing liquidity in Fira AMM markets
/// @dev Provides multiple entry points for liquidity operations with different input token configurations:
///
///      Adding Liquidity:
///      - Dual: Provide both FW and BT in the exact ratio the market needs
///      - Single BT: Provide only BT, automatically swap portion to FW for balanced deposit
///      - Single FW: Provide only FW, automatically swap portion to BT for balanced deposit
///      - Single Token: Provide any token, mint to FW, then add as single FW
///      - Keep CT: Add liquidity while keeping the CT tokens (for yield strategies)
///
///      Removing Liquidity:
///      - Dual: Receive both FW and BT proportionally
///      - Single BT: Receive only BT (FW portion swapped to BT)
///      - Single FW: Receive only FW (BT portion swapped to FW, or redeemed if expired)
///      - Single Token: Receive any token (liquidity -> FW -> desired token)
///
///      Note: LimitOrderData parameters are kept for interface compatibility but orderbook
///      is not used in this version of the protocol.
contract ActionAddRemoveLiqV3 is IPActionAddRemoveLiqV3, ActionBase, ActionDelegateBase {
    using PMath for uint256;
    using PMath for int256;
    using MarketMathCore for MarketState;
    using MarketApproxBtInLibV2 for MarketState;
    using MarketApproxBtOutLibV2 for MarketState;
    using BCIndexLib for IBCToken;
    using BCIndexLib for BCIndex;

    // ------------------ ADD LIQUIDITY DUAL ------------------

    /// @notice Adds liquidity using an input token (converted to FW) and BT
    /// @dev Mints FW from the input token, then adds both FW and BT to the market.
    ///      Reverts if not all minted FW is used (exact ratio required).
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param input Token input configuration for minting FW
    /// @param netBtDesired Maximum BT to use for liquidity
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @return netLpOut Amount of LP tokens minted
    /// @return netBtUsed Amount of BT actually used
    /// @return netFwInterm Amount of FW minted as intermediate step
    function addLiquidityDualTokenAndBt(
        address receiver,
        address market,
        TokenInput calldata input,
        uint256 netBtDesired,
        uint256 minLpOut
    ) external payable returns (uint256 netLpOut, uint256 netBtUsed, uint256 netFwInterm) {
        (IFiraWrappedStandardized FW, IBondToken BT,) = IPMarket(market).readTokens();

        netFwInterm = _mintFwFromToken(market, address(FW), 1, input);
        uint256 netFwUsed;

        (,, netFwUsed, netBtUsed) = _readMarket(market).addLiquidity(netFwInterm, netBtDesired, block.timestamp);

        if (netFwInterm != netFwUsed) {
            revert("Slippage: NOT_ALL_FW_USED");
        }

        // FW has been minted and transferred to the market
        _transferFrom(BT, msg.sender, market, netBtUsed);
        (netLpOut,,) = IPMarket(market).mint(receiver, netFwUsed, netBtUsed);

        if (netLpOut < minLpOut) revert("Slippage: INSUFFICIENT_LP_OUT");

        emit AddLiquidityDualTokenAndBt(
            msg.sender, market, input.tokenIn, receiver, input.netTokenIn, netBtUsed, netLpOut, netFwInterm
        );
    }

    /// @notice Adds liquidity using both FW and BT directly
    /// @dev Most gas-efficient method when user already has both FW and BT.
    ///      Calculates optimal amounts and may not use all of both tokens.
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param netFwDesired Maximum FW to use for liquidity
    /// @param netBtDesired Maximum BT to use for liquidity
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @return netLpOut Amount of LP tokens minted
    /// @return netFwUsed Amount of FW actually used
    /// @return netBtUsed Amount of BT actually used
    function addLiquidityDualFwAndBt(
        address receiver,
        address market,
        uint256 netFwDesired,
        uint256 netBtDesired,
        uint256 minLpOut
    ) external returns (uint256 netLpOut, uint256 netFwUsed, uint256 netBtUsed) {
        (IFiraWrappedStandardized FW, IBondToken BT,) = IPMarket(market).readTokens();

        // calculate the amount of FW and BT to be used
        (, netLpOut, netFwUsed, netBtUsed) =
            _readMarket(market).addLiquidity(netFwDesired, netBtDesired, block.timestamp);

        _transferFrom(FW, msg.sender, market, netFwUsed);
        _transferFrom(BT, msg.sender, market, netBtUsed);
        (netLpOut,,) = IPMarket(market).mint(receiver, netFwUsed, netBtUsed);

        if (netLpOut < minLpOut) revert("Slippage: INSUFFICIENT_LP_OUT");

        emit AddLiquidityDualFwAndBt(msg.sender, market, receiver, netFwUsed, netBtUsed, netLpOut);
    }

    // ------------------ ADD LIQUIDITY SINGLE BT ------------------

    /// @notice Adds liquidity using only BT, automatically swapping a portion to FW
    /// @dev Calculates optimal BT amount to swap to FW for balanced liquidity provision.
    ///      Uses approximation parameters for swap amount calculation.
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param netBtIn Total BT amount to use
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @param guessBtSwapToFw Approximation parameters for calculating swap amount
    /// @param limit Limit order data (not used in current version)
    /// @return netLpOut Amount of LP tokens minted
    /// @return netFwFee Total fees paid in FW
    function addLiquiditySingleBt(
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 minLpOut,
        ApproxParams calldata guessBtSwapToFw,
        LimitOrderData calldata limit
    ) external returns (uint256 netLpOut, uint256 netFwFee) {
        if (canUseOnchainApproximation(guessBtSwapToFw, limit)) {
            return delegateToAddLiquiditySingleBtSimple(receiver, market, netBtIn, minLpOut);
        }
        (, IBondToken BT, IBCToken CT) = IPMarket(market).readTokens();
        _transferFrom(BT, msg.sender, _entry_addLiquiditySingleBt(market, limit), netBtIn);

        uint256 netBtLeft = netBtIn;
        uint256 netFwReceived;

        if (!_isEmptyLimit(limit)) {
            (netBtLeft, netFwReceived, netFwFee,) = _fillLimit(market, BT, netBtLeft, limit);
            _transferOut(address(BT), market, netBtLeft);
        }

        (uint256 netBtSwapMarket,,) = _readMarket(market)
            .approxSwapBtToAddLiquidityV2(CT.newIndex(), netBtLeft, netFwReceived, block.timestamp, guessBtSwapToFw);

        // execute the swap
        (uint256 netFwOutMarket, uint256 netFwFeeMarket) =
            IPMarket(market).swapExactBtForFw(market, netBtSwapMarket, EMPTY_BYTES);

        netBtLeft -= netBtSwapMarket;
        netFwReceived += netFwOutMarket;
        netFwFee += netFwFeeMarket;

        // execute the addLiquidity
        (netLpOut,,) = IPMarket(market).mint(receiver, netFwReceived, netBtLeft);

        if (netLpOut < minLpOut) revert("Slippage: INSUFFICIENT_LP_OUT");

        emit AddLiquiditySingleBt(msg.sender, market, receiver, netBtIn, netLpOut);
    }

    // ------------------ ADD LIQUIDITY SINGLE TOKEN ------------------

    /// @notice Adds liquidity using any input token (converted to FW first)
    /// @dev Flow: input token -> FW -> partial swap to BT -> add liquidity
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @param guessBtReceivedFromFw Approximation parameters for FW->BT swap calculation
    /// @param input Token input configuration for minting FW
    /// @param limit Limit order data (not used in current version)
    /// @return netLpOut Amount of LP tokens minted
    /// @return netFwFee Total fees paid in FW
    /// @return netFwInterm Amount of FW minted as intermediate step
    function addLiquiditySingleToken(
        address receiver,
        address market,
        uint256 minLpOut,
        ApproxParams calldata guessBtReceivedFromFw,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netLpOut, uint256 netFwFee, uint256 netFwInterm) {
        if (canUseOnchainApproximation(guessBtReceivedFromFw, limit)) {
            return delegateToAddLiquiditySingleTokenSimple(receiver, market, minLpOut, input);
        }

        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();

        netFwInterm = _mintFwFromToken(_entry_addLiquiditySingleFw(market, limit), address(FW), 1, input);

        (netLpOut, netFwFee) =
            _addLiquiditySingleFw(receiver, market, FW, CT, netFwInterm, minLpOut, guessBtReceivedFromFw, limit);

        emit AddLiquiditySingleToken(
            msg.sender, market, input.tokenIn, receiver, input.netTokenIn, netLpOut, netFwInterm
        );
    }

    /// @notice Adds liquidity using only FW, automatically swapping a portion to BT
    /// @dev Calculates optimal FW amount to swap to BT for balanced liquidity provision
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param netFwIn Total FW amount to use
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @param guessBtReceivedFromFw Approximation parameters for FW->BT swap calculation
    /// @param limit Limit order data (not used in current version)
    /// @return netLpOut Amount of LP tokens minted
    /// @return netFwFee Total fees paid in FW
    function addLiquiditySingleFw(
        address receiver,
        address market,
        uint256 netFwIn,
        uint256 minLpOut,
        ApproxParams calldata guessBtReceivedFromFw,
        LimitOrderData calldata limit
    ) external returns (uint256 netLpOut, uint256 netFwFee) {
        if (canUseOnchainApproximation(guessBtReceivedFromFw, limit)) {
            return delegateToAddLiquiditySingleFwSimple(receiver, market, netFwIn, minLpOut);
        }

        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();

        _transferFrom(FW, msg.sender, _entry_addLiquiditySingleFw(market, limit), netFwIn);

        (netLpOut, netFwFee) =
            _addLiquiditySingleFw(receiver, market, FW, CT, netFwIn, minLpOut, guessBtReceivedFromFw, limit);

        emit AddLiquiditySingleFw(msg.sender, market, receiver, netFwIn, netLpOut);
    }

    /// @dev Internal implementation for adding liquidity with single FW
    function _addLiquiditySingleFw(
        address receiver,
        address market,
        IFiraWrappedStandardized FW,
        IBCToken CT,
        uint256 netFwIn,
        uint256 minLpOut,
        ApproxParams calldata guessBtReceivedFromFw,
        LimitOrderData calldata limit
    ) internal returns (uint256 netLpOut, uint256 netFwFee) {
        uint256 netFwLeft = netFwIn;
        uint256 netBtReceived;

        if (!_isEmptyLimit(limit)) {
            (netFwLeft, netBtReceived, netFwFee,) = _fillLimit(market, FW, netFwLeft, limit);
            _transferOut(address(FW), market, netFwLeft);
        }

        (uint256 netBtOutMarket,,) = _readMarket(market)
            .approxSwapFwToAddLiquidityV2(
                CT.newIndex(), netFwLeft, netBtReceived, block.timestamp, guessBtReceivedFromFw
            );

        (uint256 netFwSwapMarket, uint256 netFwFeeMarket) =
            IPMarket(market).swapFwForExactBt(market, netBtOutMarket, EMPTY_BYTES);

        netFwLeft -= netFwSwapMarket;
        netBtReceived += netBtOutMarket;
        netFwFee += netFwFeeMarket;

        (netLpOut,,) = IPMarket(market).mint(receiver, netFwLeft, netBtReceived);

        if (netLpOut < minLpOut) revert("Slippage: INSUFFICIENT_LP_OUT");
    }

    // ------------------ ADD LIQUIDITY SINGLE TOKEN KEEP CT ------------------

    /// @notice Adds liquidity while keeping CT tokens for yield strategies
    /// @dev Instead of swapping, mints BT+CT from FW. BT goes to market, CT to receiver.
    ///      Useful for users who want LP exposure plus floating yield from CT.
    /// @param receiver Address to receive LP and CT tokens
    /// @param market Address of the Fira market
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @param minCtOut Minimum CT tokens to receive (slippage protection)
    /// @param input Token input configuration for minting FW
    /// @return netLpOut Amount of LP tokens minted
    /// @return netCtOut Amount of CT tokens received
    /// @return netFwMintBc Amount of FW used to mint BT+CT
    /// @return netFwInterm Total FW minted as intermediate step
    function addLiquiditySingleTokenKeepCt(
        address receiver,
        address market,
        uint256 minLpOut,
        uint256 minCtOut,
        TokenInput calldata input
    ) external payable returns (uint256 netLpOut, uint256 netCtOut, uint256 netFwMintBc, uint256 netFwInterm) {
        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();

        netFwInterm = _mintFwFromToken(address(this), address(FW), 1, input);

        (netLpOut, netCtOut, netFwMintBc) =
            _addLiquiditySingleFwKeepCt(receiver, market, FW, CT, netFwInterm, minLpOut, minCtOut);

        emit AddLiquiditySingleTokenKeepCt(
            msg.sender, market, input.tokenIn, receiver, input.netTokenIn, netLpOut, netCtOut, netFwMintBc, netFwInterm
        );
    }

    /// @notice Adds liquidity with FW while keeping CT tokens
    /// @dev Direct FW version of addLiquiditySingleTokenKeepCt
    /// @param receiver Address to receive LP and CT tokens
    /// @param market Address of the Fira market
    /// @param netFwIn Amount of FW to use
    /// @param minLpOut Minimum LP tokens to receive
    /// @param minCtOut Minimum CT tokens to receive
    /// @return netLpOut Amount of LP tokens minted
    /// @return netCtOut Amount of CT tokens received
    /// @return netFwMintBc Amount of FW used to mint BT+CT
    function addLiquiditySingleFwKeepCt(
        address receiver,
        address market,
        uint256 netFwIn,
        uint256 minLpOut,
        uint256 minCtOut
    ) external returns (uint256 netLpOut, uint256 netCtOut, uint256 netFwMintBc) {
        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();

        _transferIn(address(FW), msg.sender, netFwIn);

        (netLpOut, netCtOut, netFwMintBc) =
            _addLiquiditySingleFwKeepCt(receiver, market, FW, CT, netFwIn, minLpOut, minCtOut);

        emit AddLiquiditySingleFwKeepCt(msg.sender, market, receiver, netFwIn, netFwMintBc, netLpOut, netCtOut);
    }

    /// @dev Internal implementation for adding liquidity while keeping CT
    function _addLiquiditySingleFwKeepCt(
        address receiver,
        address market,
        IFiraWrappedStandardized FW,
        IBCToken CT,
        uint256 netFwIn,
        uint256 minLpOut,
        uint256 minCtOut
    ) internal returns (uint256 netLpOut, uint256 netCtOut, uint256 netFwMintBc) {
        MarketState memory state = _readMarket(market);

        BCIndex bcIndex = CT.newIndex();

        netFwMintBc =
            (netFwIn * state.totalBt.Uint()) / (state.totalBt.Uint() + bcIndex.fwToAsset(state.totalFw.Uint()));

        uint256 netFwAddLiquidity = netFwIn - netFwMintBc;

        // transfer FW to mint PY
        _transferOut(address(FW), address(CT), netFwMintBc);

        // the rest of FW goes to market
        _transferOut(address(FW), market, netFwAddLiquidity);

        // BT goes to market, CT goes to receiver
        netCtOut = CT.mintBC(market, receiver);

        (netLpOut,,) = IPMarket(market).mint(receiver, netFwAddLiquidity, netCtOut);

        if (netLpOut < minLpOut) revert("Slippage: INSUFFICIENT_LP_OUT");
        if (netCtOut < minCtOut) revert("Slippage: INSUFFICIENT_CT_OUT");
    }

    // ------------------ REMOVE LIQUIDITY DUAL ------------------

    /// @notice Removes liquidity receiving an output token and BT
    /// @dev Burns LP tokens, converts FW portion to desired token, sends BT directly
    /// @param receiver Address to receive the output tokens and BT
    /// @param market Address of the Fira market
    /// @param netLpToRemove Amount of LP tokens to burn
    /// @param output Token output configuration for FW redemption
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @return netTokenOut Amount of output tokens received
    /// @return netBtOut Amount of BT received
    /// @return netFwInterm Amount of FW as intermediate step
    function removeLiquidityDualTokenAndBt(
        address receiver,
        address market,
        uint256 netLpToRemove,
        TokenOutput calldata output,
        uint256 minBtOut
    ) external returns (uint256 netTokenOut, uint256 netBtOut, uint256 netFwInterm) {
        (IFiraWrappedStandardized FW,,) = IPMarket(market).readTokens();

        // burn LP, FW sent to FW, BT sent to receiver
        _transferFrom(IERC20(market), msg.sender, market, netLpToRemove);

        (netFwInterm, netBtOut) = IPMarket(market).burn(address(FW), receiver, netLpToRemove);
        if (netBtOut < minBtOut) revert("Slippage: INSUFFICIENT_BT_OUT");

        // redeem FW to token
        netTokenOut = _redeemFwToToken(receiver, address(FW), netFwInterm, output, false);
        emit RemoveLiquidityDualTokenAndBt(
            msg.sender, market, output.tokenOut, receiver, netLpToRemove, netBtOut, netTokenOut, netFwInterm
        );
    }

    /// @notice Removes liquidity receiving both FW and BT directly
    /// @dev Most gas-efficient removal method, returns both tokens proportionally
    /// @param receiver Address to receive the tokens
    /// @param market Address of the Fira market
    /// @param netLpToRemove Amount of LP tokens to burn
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @return netFwOut Amount of FW received
    /// @return netBtOut Amount of BT received
    function removeLiquidityDualFwAndBt(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minFwOut,
        uint256 minBtOut
    ) external returns (uint256 netFwOut, uint256 netBtOut) {
        _transferFrom(IERC20(market), msg.sender, market, netLpToRemove);

        (netFwOut, netBtOut) = IPMarket(market).burn(receiver, receiver, netLpToRemove);

        if (netFwOut < minFwOut) revert("Slippage: INSUFFICIENT_FW_OUT");
        if (netBtOut < minBtOut) revert("Slippage: INSUFFICIENT_BT_OUT");

        emit RemoveLiquidityDualFwAndBt(msg.sender, market, receiver, netLpToRemove, netBtOut, netFwOut);
    }

    // ------------------ REMOVE LIQUIDITY SINGLE BT ------------------

    /// @notice Removes liquidity receiving only BT (FW swapped to BT)
    /// @dev Burns LP, swaps FW portion to BT via AMM, returns all as BT
    /// @param receiver Address to receive the BT
    /// @param market Address of the Fira market
    /// @param netLpToRemove Amount of LP tokens to burn
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param guessBtReceivedFromFw Approximation parameters for FW->BT swap
    /// @param limit Limit order data (not used in current version)
    /// @return netBtOut Total BT received
    /// @return netFwFee Total fees paid in FW
    function removeLiquiditySingleBt(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minBtOut,
        ApproxParams calldata guessBtReceivedFromFw,
        LimitOrderData calldata limit
    ) external returns (uint256 netBtOut, uint256 netFwFee) {
        if (canUseOnchainApproximation(guessBtReceivedFromFw, limit)) {
            return delegateToRemoveLiquiditySingleBtSimple(receiver, market, netLpToRemove, minBtOut);
        }

        uint256 netFwLeft;

        // execute the burn
        _transferFrom(IERC20(market), msg.sender, market, netLpToRemove);
        (uint256 netFwOutBurn, uint256 netBtOutBurn) =
            IPMarket(market).burn(_entry_swapExactFwForBt(market, limit), receiver, netLpToRemove);
        netFwLeft += netFwOutBurn;
        netBtOut += netBtOutBurn;

        (uint256 netBtOutSwap, uint256 netFwFeeSwap) =
            _swapExactFwForBt(receiver, market, netFwLeft, 0, guessBtReceivedFromFw, limit);
        netBtOut += netBtOutSwap;
        netFwFee += netFwFeeSwap;

        if (netBtOut < minBtOut) revert("Slippage: INSUFFICIENT_BT_OUT");

        emit RemoveLiquiditySingleBt(msg.sender, market, receiver, netLpToRemove, netBtOut);
    }

    // ------------------ REMOVE LIQUIDITY SINGLE TOKEN ------------------

    /// @notice Removes liquidity receiving any output token
    /// @dev Burns LP, converts all to FW (swapping BT), then redeems to desired token
    /// @param receiver Address to receive the output token
    /// @param market Address of the Fira market
    /// @param netLpToRemove Amount of LP tokens to burn
    /// @param output Token output configuration for FW redemption
    /// @param limit Limit order data (not used in current version)
    /// @return netTokenOut Amount of output tokens received
    /// @return netFwFee Total fees paid in FW
    /// @return netFwInterm Amount of FW as intermediate step
    function removeLiquiditySingleToken(
        address receiver,
        address market,
        uint256 netLpToRemove,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netFwFee, uint256 netFwInterm) {
        (IFiraWrappedStandardized FW,,) = IPMarket(market).readTokens();

        _transferFrom(IERC20(market), msg.sender, market, netLpToRemove);

        (netFwInterm, netFwFee) = _removeLiquiditySingleFw(address(FW), market, netLpToRemove, 1, limit);

        netTokenOut = _redeemFwToToken(receiver, address(FW), netFwInterm, output, false);

        emit RemoveLiquiditySingleToken(
            msg.sender, market, output.tokenOut, receiver, netLpToRemove, netTokenOut, netFwInterm
        );
    }

    /// @notice Removes liquidity receiving only FW
    /// @dev Burns LP, swaps BT portion to FW (or redeems if expired)
    /// @param receiver Address to receive the FW
    /// @param market Address of the Fira market
    /// @param netLpToRemove Amount of LP tokens to burn
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data (not used in current version)
    /// @return netFwOut Total FW received
    /// @return netFwFee Total fees paid in FW
    function removeLiquiditySingleFw(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netFwOut, uint256 netFwFee) {
        _transferFrom(IERC20(market), msg.sender, market, netLpToRemove);

        (netFwOut, netFwFee) = _removeLiquiditySingleFw(receiver, market, netLpToRemove, minFwOut, limit);

        emit RemoveLiquiditySingleFw(msg.sender, market, receiver, netLpToRemove, netFwOut);
    }

    /// @dev Internal implementation for removing liquidity to FW
    ///      Handles both pre-expiry (swap BT) and post-expiry (redeem BT+CT) cases
    function _removeLiquiditySingleFw(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netFwOut, uint256 netFwFee) {
        if (IPMarket(market).isExpired()) {
            netFwOut = __removeLpToFwAfterExpiry(receiver, market, netLpToRemove);
        } else {
            (netFwOut, netFwFee) = __removeLpToFwBeforeExpiry(receiver, market, netLpToRemove, limit);
        }
        if (netFwOut < minFwOut) revert("Slippage: INSUFFICIENT_FW_OUT");
    }

    /// @dev Removes LP to FW after market expiry by redeeming BT for FW (1:1)
    function __removeLpToFwAfterExpiry(address receiver, address market, uint256 netLpToRemove)
        internal
        returns (uint256 netFwOut)
    {
        (,, IBCToken CT) = IPMarket(market).readTokens();
        (uint256 fwFromBurn,) = IPMarket(market).burn(receiver, address(CT), netLpToRemove);
        netFwOut = fwFromBurn + CT.redeemBC(receiver);
    }

    /// @dev Removes LP to FW before expiry by swapping BT to FW via AMM
    function __removeLpToFwBeforeExpiry(
        address receiver,
        address market,
        uint256 netLpToRemove,
        LimitOrderData calldata limit
    ) internal returns (uint256 netFwOut, uint256 netFwFee) {
        uint256 netBtLeft;

        (uint256 netFwOutBurn, uint256 netBtOutBurn) =
            IPMarket(market).burn(receiver, _entry_swapExactBtForFw(market, limit), netLpToRemove);
        netFwOut += netFwOutBurn;
        netBtLeft += netBtOutBurn;

        (uint256 netFwOutSwap, uint256 netFwFeeSwap) = _swapExactBtForFw(receiver, market, netBtLeft, 0, limit);
        netFwOut += netFwOutSwap;
        netFwFee += netFwFeeSwap;
    }
}
