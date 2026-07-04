// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IBondToken} from "../../interfaces/IBondToken.sol";

import {IFiraWrappedStandardized} from "../../interfaces/IFiraWrappedStandardized.sol";
import {IPActionSimple} from "../../interfaces/IPActionSimple.sol";
import {IPMarket} from "../../interfaces/IPMarket.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {BCIndex, BCIndexLib, IBCToken} from "../StandardizedYield/BCIndex.sol";
import {MarketState} from "../core/Market/MarketMathCore.sol";
import {TokenHelper} from "../libraries/TokenHelper.sol";
import {PMath} from "../libraries/math/PMath.sol";

import {TokenInput, TokenOutput} from "../../interfaces/IPAllActionTypeV3.sol";
import {ActionBase} from "./base/ActionBase.sol";
import {CallbackHelper} from "./base/CallbackHelper.sol";
import {MarketApproxBtInLibOnchain, MarketApproxBtOutLibOnchain} from "./math/MarketApproxLibOnchain.sol";

/// @title ActionSimple
/// @notice Router facet providing simplified swap and liquidity functions using on-chain approximation
/// @dev These functions are optimized for gas efficiency when no off-chain approximation is provided
///      and no limit orders are present. They use MarketApproxLibOnchain for swap amount calculations
///      instead of relying on off-chain computed values.
///
///      IMPORTANT: These functions are for internal router use only and should not be called directly.
///      Use the corresponding functions in ActionSwapBTV3, ActionSwapCTV3, or ActionAddRemoveLiqV3
///      which will automatically delegate to these simple versions when appropriate.
///
///      The "Simple" suffix indicates:
///      - No limit order support
///      - On-chain approximation for swap amounts
///      - Simplified control flow for better gas efficiency
contract ActionSimple is ActionBase, IPActionSimple {
    using MarketApproxBtInLibOnchain for MarketState;
    using MarketApproxBtOutLibOnchain for MarketState;
    using BCIndexLib for IBCToken;
    using BCIndexLib for BCIndex;
    using PMath for uint256;

    // ------------------ SWAP TOKEN FOR BT ------------------
    // / @notice This function is for internal router use only and should not be called directly.
    // / @dev Use swapExactTokenForBt from the main router instead.
    // / @dev The interface of this simple function is subject to change without notice.
    function swapExactTokenForBtSimple(address receiver, address market, uint256 minBtOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm)
    {
        (IFiraWrappedStandardized FW,,) = IPMarket(market).readTokens();
        netFwInterm = _mintFwFromToken(_entry_swapExactFwForBt(market, false), address(FW), 1, input);

        (netBtOut, netFwFee) = _swapExactFwForBtSimple(receiver, market, netFwInterm, minBtOut);
        emit SwapBtAndToken(
            msg.sender, market, input.tokenIn, receiver, netBtOut.Int(), input.netTokenIn.neg(), netFwInterm
        );
    }

    /// @notice This function is for internal router use only and should not be called directly.
    /// @dev Use swapExactFwForBt from the main router instead.
    /// @dev The interface of this simple function is subject to change without notice.
    function swapExactFwForBtSimple(address receiver, address market, uint256 exactFwIn, uint256 minBtOut)
        external
        returns (uint256 netBtOut, uint256 netFwFee)
    {
        (IFiraWrappedStandardized FW,,) = IPMarket(market).readTokens();
        _transferFrom(FW, msg.sender, _entry_swapExactFwForBt(market, false), exactFwIn);

        (netBtOut, netFwFee) = _swapExactFwForBtSimple(receiver, market, exactFwIn, minBtOut);
        emit SwapBtAndFw(msg.sender, market, receiver, netBtOut.Int(), exactFwIn.neg());
    }

    /// @notice This function is for internal router use only and should not be called directly.
    /// @dev Use swapExactTokenForCt from the main router instead.
    /// @dev The interface of this simple function is subject to change without notice.
    function swapExactTokenForCtSimple(address receiver, address market, uint256 minCtOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netCtOut, uint256 netFwFee, uint256 netFwInterm)
    {
        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();

        netFwInterm = _mintFwFromToken(_entry_swapExactFwForCt(CT, false), address(FW), 1, input);
        (netCtOut, netFwFee) = _swapExactFwForCtSimple(receiver, market, FW, CT, netFwInterm, minCtOut);

        emit SwapCtAndToken(
            msg.sender, market, input.tokenIn, receiver, netCtOut.Int(), input.netTokenIn.neg(), netFwInterm
        );
    }

    /// @notice This function is for internal router use only and should not be called directly.
    /// @dev Use swapExactFwForCt from the main router instead.
    /// @dev The interface of this simple function is subject to change without notice.
    function swapExactFwForCtSimple(address receiver, address market, uint256 exactFwIn, uint256 minCtOut)
        external
        returns (uint256 netCtOut, uint256 netFwFee)
    {
        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();
        _transferFrom(FW, msg.sender, _entry_swapExactFwForCt(CT, false), exactFwIn);

        (netCtOut, netFwFee) = _swapExactFwForCtSimple(receiver, market, FW, CT, exactFwIn, minCtOut);
        emit SwapCtAndFw(msg.sender, market, receiver, netCtOut.Int(), exactFwIn.neg());
    }

    /// @notice This function is for internal router use only and should not be called directly.
    /// @dev Use addLiquiditySingleBt from the main router instead.
    /// @dev The interface of this simple function is subject to change without notice.
    function addLiquiditySingleBtSimple(address receiver, address market, uint256 netBtIn, uint256 minLpOut)
        external
        returns (uint256 netLpOut, uint256 netFwFee)
    {
        (, IBondToken BT, IBCToken CT) = IPMarket(market).readTokens();
        _transferFrom(BT, msg.sender, _entry_addLiquiditySingleBt(market, false), netBtIn);

        uint256 netBtLeft = netBtIn;
        uint256 netFwReceived;

        (uint256 netBtSwapMarket,,,) = _readMarket(market)
            .approxSwapBtToAddLiquidityOnchain(CT.newIndex(), netBtLeft, netFwReceived, block.timestamp);

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

    /// @notice This function is for internal router use only and should not be called directly.
    /// @dev Use addLiquiditySingleToken from the main router instead.
    /// @dev The interface of this simple function is subject to change without notice.
    function addLiquiditySingleTokenSimple(
        address receiver,
        address market,
        uint256 minLpOut,
        TokenInput calldata input
    ) external payable returns (uint256 netLpOut, uint256 netFwFee, uint256 netFwInterm) {
        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();

        netFwInterm = _mintFwFromToken(_entry_addLiquiditySingleFw(market, false), address(FW), 1, input);

        (netLpOut, netFwFee) = _addLiquiditySingleFwSimple(receiver, market, FW, CT, netFwInterm, minLpOut);

        emit AddLiquiditySingleToken(
            msg.sender, market, input.tokenIn, receiver, input.netTokenIn, netLpOut, netFwInterm
        );
    }

    /// @notice This function is for internal router use only and should not be called directly.
    /// @dev Use addLiquiditySingleFw from the main router instead.
    /// @dev The interface of this simple function is subject to change without notice.
    function addLiquiditySingleFwSimple(address receiver, address market, uint256 netFwIn, uint256 minLpOut)
        external
        returns (uint256 netLpOut, uint256 netFwFee)
    {
        (IFiraWrappedStandardized FW,, IBCToken CT) = IPMarket(market).readTokens();

        _transferFrom(FW, msg.sender, _entry_addLiquiditySingleFw(market, false), netFwIn);

        (netLpOut, netFwFee) = _addLiquiditySingleFwSimple(receiver, market, FW, CT, netFwIn, minLpOut);

        emit AddLiquiditySingleFw(msg.sender, market, receiver, netFwIn, netLpOut);
    }

    function _addLiquiditySingleFwSimple(
        address receiver,
        address market,
        IFiraWrappedStandardized, /* FW*/
        IBCToken CT,
        uint256 netFwIn,
        uint256 minLpOut
    ) internal returns (uint256 netLpOut, uint256 netFwFee) {
        uint256 netFwLeft = netFwIn;
        uint256 netBtReceived;

        (uint256 netBtOutMarket,,,) = _readMarket(market)
            .approxSwapFwToAddLiquidityOnchain(CT.newIndex(), netFwLeft, netBtReceived, block.timestamp);

        (uint256 netFwSwapMarket, uint256 netFwFeeMarket) =
            IPMarket(market).swapFwForExactBt(market, netBtOutMarket, EMPTY_BYTES);

        netFwLeft -= netFwSwapMarket;
        netBtReceived += netBtOutMarket;
        netFwFee += netFwFeeMarket;

        (netLpOut,,) = IPMarket(market).mint(receiver, netFwLeft, netBtReceived);

        if (netLpOut < minLpOut) revert("Slippage: INSUFFICIENT_LP_OUT");
    }

    // ------------------ REMOVE LIQUIDITY SINGLE BT ------------------
    // / @notice This function is for internal router use only and should not be called directly.
    // / @dev Use removeLiquiditySingleBt from the main router instead.
    // / @dev The interface of this simple function is subject to change without notice.
    function removeLiquiditySingleBtSimple(address receiver, address market, uint256 netLpToRemove, uint256 minBtOut)
        external
        returns (uint256 netBtOut, uint256 netFwFee)
    {
        uint256 netFwLeft;

        // execute the burn
        _transferFrom(IERC20(market), msg.sender, market, netLpToRemove);
        (uint256 netFwOutBurn, uint256 netBtOutBurn) =
            IPMarket(market).burn(_entry_swapExactFwForBt(market, false), receiver, netLpToRemove);
        netFwLeft += netFwOutBurn;
        netBtOut += netBtOutBurn;

        (uint256 netBtOutSwap, uint256 netFwFeeSwap) = _swapExactFwForBtSimple(receiver, market, netFwLeft, 0);
        netBtOut += netBtOutSwap;
        netFwFee += netFwFeeSwap;

        if (netBtOut < minBtOut) revert("Slippage: INSUFFICIENT_BT_OUT");

        emit RemoveLiquiditySingleBt(msg.sender, market, receiver, netLpToRemove, netBtOut);
    }

    function _swapExactFwForBtSimple(address receiver, address market, uint256 exactFwIn, uint256 minBtOut)
        internal
        returns (uint256 netBtOut, uint256 netFwFee)
    {
        (,, IBCToken CT) = IPMarket(market).readTokens();
        uint256 netFwLeft = exactFwIn;

        (uint256 netBtOutMarket,,) =
            _readMarket(market).approxSwapExactFwForBtOnchain(CT.newIndex(), netFwLeft, block.timestamp);

        (, uint256 netFwFeeMarket) = IPMarket(market).swapFwForExactBt(receiver, netBtOutMarket, "");

        netBtOut += netBtOutMarket;
        netFwFee += netFwFeeMarket;

        if (netBtOut < minBtOut) revert("Slippage: INSUFFICIENT_BT_OUT");
    }

    function _swapExactFwForCtSimple(
        address receiver,
        address market,
        IFiraWrappedStandardized, /* FW */
        IBCToken CT,
        uint256 exactFwIn,
        uint256 minCtOut
    ) internal returns (uint256 netCtOut, uint256 netFwFee) {
        uint256 netFwLeft = exactFwIn;

        (uint256 netCtOutMarket,,) =
            _readMarket(market).approxSwapExactFwForCtOnchain(CT.newIndex(), netFwLeft, block.timestamp);

        (, uint256 netFwFeeMarket) = IPMarket(market)
            .swapExactBtForFw(
                address(CT),
                netCtOutMarket, // exactBtIn = netCtOut
                _encodeSwapExactFwForCt(receiver, CT)
            );

        netCtOut += netCtOutMarket;
        netFwFee += netFwFeeMarket;

        if (netCtOut < minCtOut) revert("Slippage: INSUFFICIENT_CT_OUT");
    }
}
