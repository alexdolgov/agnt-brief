// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPActionSwapCTV3.sol";
import "./base/ActionBase.sol";
import {ActionDelegateBase} from "./base/ActionDelegateBase.sol";
import "./base/CallbackHelper.sol";

/// @title ActionSwapCTV3
/// @notice Router facet for swapping tokens to/from Coupon Tokens (CT) via the Fira AMM
/// @dev Provides swap functions between CT and other tokens (FW or any token via FW).
///      Coupon Tokens represent floating yield claims. CT swaps are more complex than
///      BT swaps because CT is not directly traded in the AMM - instead, swaps are
///      executed by minting/redeeming BT+CT pairs and trading the BT component.
///
///      Swap directions:
///      - Token -> CT: User wants to acquire CT for yield exposure
///        Flow: token -> FW -> mint BT+CT -> sell BT for more FW -> net CT output
///      - CT -> Token: User wants to sell CT
///        Flow: buy BT with FW -> redeem BT+CT for FW -> FW -> token
///
///      Note: LimitOrderData parameters are kept for interface compatibility but orderbook
///      is not used in this version of the protocol.
contract ActionSwapCTV3 is CallbackHelper, IPActionSwapCTV3, ActionBase, ActionDelegateBase {
    using PMath for uint256;
    using MarketApproxBtInLibV2 for MarketState;
    using MarketApproxBtOutLibV2 for MarketState;
    using BCIndexLib for IBCToken;

    // ------------------ SWAP TOKEN FOR CT ------------------

    /// @notice Swaps any input token for CT
    /// @dev Flow: input token -> FW -> mint BT+CT -> sell BT -> net CT output
    /// @param receiver Address to receive the CT
    /// @param market Address of the Fira market
    /// @param minCtOut Minimum CT to receive (slippage protection)
    /// @param guessCtOut Approximation parameters for calculating CT output
    /// @param input Token input configuration for minting FW
    /// @param limit Limit order data (not used in current version)
    /// @return netCtOut Amount of CT received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Amount of FW minted as intermediate step
    function swapExactTokenForCt(
        address receiver,
        address market,
        uint256 minCtOut,
        ApproxParams calldata guessCtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netCtOut, uint256 netFwFee, uint256 netFwInterm) {
        if (canUseOnchainApproximation(guessCtOut, limit)) {
            return delegateToSwapExactTokenForCtSimple(receiver, market, minCtOut, input);
        }

        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();

        netFwInterm = _mintFwFromToken(_entry_swapExactFwForCt(CT, limit), address(FW), 1, input);
        (netCtOut, netFwFee) = _swapExactFwForCt(receiver, market, FW, CT, netFwInterm, minCtOut, guessCtOut, limit);

        emit SwapCtAndToken(
            msg.sender, market, input.tokenIn, receiver, netCtOut.Int(), input.netTokenIn.neg(), netFwInterm
        );
    }

    /// @notice Swaps FW directly for CT
    /// @dev Flow: FW -> mint BT+CT -> sell BT for FW -> net CT output
    /// @param receiver Address to receive the CT
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minCtOut Minimum CT to receive (slippage protection)
    /// @param guessCtOut Approximation parameters for calculating CT output
    /// @param limit Limit order data (not used in current version)
    /// @return netCtOut Amount of CT received
    /// @return netFwFee Fees paid in FW
    function swapExactFwForCt(
        address receiver,
        address market,
        uint256 exactFwIn,
        uint256 minCtOut,
        ApproxParams calldata guessCtOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netCtOut, uint256 netFwFee) {
        if (canUseOnchainApproximation(guessCtOut, limit)) {
            return delegateToSwapExactFwForCtSimple(receiver, market, exactFwIn, minCtOut);
        }

        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();
        _transferFrom(FW, msg.sender, _entry_swapExactFwForCt(CT, limit), exactFwIn);

        (netCtOut, netFwFee) = _swapExactFwForCt(receiver, market, FW, CT, exactFwIn, minCtOut, guessCtOut, limit);
        emit SwapCtAndFw(msg.sender, market, receiver, netCtOut.Int(), exactFwIn.neg());
    }

    // ------------------ SWAP CT FOR TOKEN ------------------

    /// @notice Swaps CT for any output token
    /// @dev Flow: CT + buy matching BT -> redeem BT+CT for FW -> FW -> output token
    /// @param receiver Address to receive the output token
    /// @param market Address of the Fira market
    /// @param exactCtIn Exact amount of CT to swap
    /// @param output Token output configuration for FW redemption
    /// @param limit Limit order data (not used in current version)
    /// @return netTokenOut Amount of output tokens received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Amount of FW as intermediate step
    function swapExactCtForToken(
        address receiver,
        address market,
        uint256 exactCtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netFwFee, uint256 netFwInterm) {
        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();
        _transferFrom(CT, msg.sender, _entry_swapExactCtForFw(CT, limit), exactCtIn);

        (netFwInterm, netFwFee) = _swapExactCtForFw(address(FW), market, FW, CT, exactCtIn, 0, limit);

        netTokenOut = _redeemFwToToken(receiver, address(FW), netFwInterm, output, false);

        emit SwapCtAndToken(
            msg.sender, market, output.tokenOut, receiver, exactCtIn.neg(), netTokenOut.Int(), netFwInterm
        );
    }

    /// @notice Swaps CT directly for FW
    /// @dev Flow: CT + buy matching BT -> redeem BT+CT for FW
    /// @param receiver Address to receive the FW
    /// @param market Address of the Fira market
    /// @param exactCtIn Exact amount of CT to swap
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data (not used in current version)
    /// @return netFwOut Amount of FW received
    /// @return netFwFee Fees paid in FW
    function swapExactCtForFw(
        address receiver,
        address market,
        uint256 exactCtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netFwOut, uint256 netFwFee) {
        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();
        _transferFrom(CT, msg.sender, _entry_swapExactCtForFw(CT, limit), exactCtIn);

        (netFwOut, netFwFee) = _swapExactCtForFw(receiver, market, FW, CT, exactCtIn, minFwOut, limit);
        emit SwapCtAndFw(msg.sender, market, receiver, exactCtIn.neg(), netFwOut.Int());
    }
}
