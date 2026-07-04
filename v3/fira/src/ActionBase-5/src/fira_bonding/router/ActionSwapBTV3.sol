// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPActionSwapBTV3.sol";
import "./base/ActionBase.sol";
import {ActionDelegateBase} from "./base/ActionDelegateBase.sol";

/// @title ActionSwapBTV3
/// @notice Router facet for swapping tokens to/from Bond Tokens (BT) via the Fira AMM
/// @dev Provides swap functions between BT and other tokens (FW or any token via FW).
///      Bond Tokens represent fixed-rate principal claims that trade at a discount
///      to FW, with the discount reflecting the implied interest rate until expiry.
///
///      Swap directions:
///      - Token -> BT: User wants to acquire BT (e.g., to provide as collateral or LP)
///      - BT -> Token: User wants to sell BT (e.g., after receiving from redemption)
///
///      Note: LimitOrderData parameters are kept for interface compatibility but orderbook
///      is not used in this version of the protocol.
contract ActionSwapBTV3 is IPActionSwapBTV3, ActionBase, ActionDelegateBase {
    using PMath for uint256;

    // ------------------ SWAP TOKEN FOR BT ------------------

    /// @notice Swaps any input token for BT
    /// @dev Flow: input token -> FW (via mint) -> BT (via AMM swap)
    /// @param receiver Address to receive the BT
    /// @param market Address of the Fira market
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param guessBtOut Approximation parameters for calculating BT output
    /// @param input Token input configuration for minting FW
    /// @param limit Limit order data (not used in current version)
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Amount of FW minted as intermediate step
    function swapExactTokenForBt(
        address receiver,
        address market,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm) {
        if (canUseOnchainApproximation(guessBtOut, limit)) {
            return delegateToSwapExactTokenForBtSimple(receiver, market, minBtOut, input);
        }

        (IFiraWrappedStandardized FW,,) = IPMarket(market).readTokens();
        netFwInterm = _mintFwFromToken(_entry_swapExactFwForBt(market, limit), address(FW), 1, input);

        (netBtOut, netFwFee) = _swapExactFwForBt(receiver, market, netFwInterm, minBtOut, guessBtOut, limit);
        emit SwapBtAndToken(
            msg.sender, market, input.tokenIn, receiver, netBtOut.Int(), input.netTokenIn.neg(), netFwInterm
        );
    }

    /// @notice Swaps FW directly for BT
    /// @dev Most gas-efficient swap when user already has FW
    /// @param receiver Address to receive the BT
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param guessBtOut Approximation parameters for calculating BT output
    /// @param limit Limit order data (not used in current version)
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    function swapExactFwForBt(
        address receiver,
        address market,
        uint256 exactFwIn,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netBtOut, uint256 netFwFee) {
        if (canUseOnchainApproximation(guessBtOut, limit)) {
            return delegateToSwapExactFwForBtSimple(receiver, market, exactFwIn, minBtOut);
        }

        (IFiraWrappedStandardized FW,,) = IPMarket(market).readTokens();
        _transferFrom(FW, msg.sender, _entry_swapExactFwForBt(market, limit), exactFwIn);

        (netBtOut, netFwFee) = _swapExactFwForBt(receiver, market, exactFwIn, minBtOut, guessBtOut, limit);
        emit SwapBtAndFw(msg.sender, market, receiver, netBtOut.Int(), exactFwIn.neg());
    }

    /// @notice Swaps BT for any output token
    /// @dev Flow: BT -> FW (via AMM swap) -> output token (via redeem)
    /// @param receiver Address to receive the output token
    /// @param market Address of the Fira market
    /// @param exactBtIn Exact amount of BT to swap
    /// @param output Token output configuration for FW redemption
    /// @param limit Limit order data (not used in current version)
    /// @return netTokenOut Amount of output tokens received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Amount of FW as intermediate step
    function swapExactBtForToken(
        address receiver,
        address market,
        uint256 exactBtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netFwFee, uint256 netFwInterm) {
        (IFiraWrappedStandardized FW, IBondToken BT,) = IPMarket(market).readTokens();
        _transferFrom(BT, msg.sender, _entry_swapExactBtForFw(market, limit), exactBtIn);

        (netFwInterm, netFwFee) = _swapExactBtForFw(address(FW), market, exactBtIn, 0, limit);

        netTokenOut = _redeemFwToToken(receiver, address(FW), netFwInterm, output, false);

        emit SwapBtAndToken(
            msg.sender, market, output.tokenOut, receiver, exactBtIn.neg(), netTokenOut.Int(), netFwInterm
        );
    }

    /// @notice Swaps BT directly for FW
    /// @dev Most gas-efficient swap when user wants FW output
    /// @param receiver Address to receive the FW
    /// @param market Address of the Fira market
    /// @param exactBtIn Exact amount of BT to swap
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data (not used in current version)
    /// @return netFwOut Amount of FW received
    /// @return netFwFee Fees paid in FW
    function swapExactBtForFw(
        address receiver,
        address market,
        uint256 exactBtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netFwOut, uint256 netFwFee) {
        (, IBondToken BT,) = IPMarket(market).readTokens();
        _transferFrom(BT, msg.sender, _entry_swapExactBtForFw(market, limit), exactBtIn);

        (netFwOut, netFwFee) = _swapExactBtForFw(receiver, market, exactBtIn, minFwOut, limit);
        emit SwapBtAndFw(msg.sender, market, receiver, exactBtIn.neg(), netFwOut.Int());
    }
}
