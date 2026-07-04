// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "../fira_bonding/router/math/MarketApproxLibV2.sol";
import "./IPAllActionTypeV3.sol";
import {IPAllEventsV3} from "./IPAllEventsV3.sol";

/// Refer to IPAllActionTypeV3.sol for details on the parameters
interface IPActionAddRemoveLiqV3 is IPAllEventsV3 {
    function addLiquidityDualTokenAndBt(
        address receiver,
        address market,
        TokenInput calldata input,
        uint256 netBtDesired,
        uint256 minLpOut
    ) external payable returns (uint256 netLpOut, uint256 netBtUsed, uint256 netFwInterm);

    function addLiquidityDualFwAndBt(
        address receiver,
        address market,
        uint256 netFwDesired,
        uint256 netBtDesired,
        uint256 minLpOut
    ) external returns (uint256 netLpOut, uint256 netFwUsed, uint256 netBtUsed);

    function addLiquiditySingleBt(
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 minLpOut,
        ApproxParams calldata guessBtSwapToFw,
        LimitOrderData calldata limit
    ) external returns (uint256 netLpOut, uint256 netFwFee);

    function addLiquiditySingleToken(
        address receiver,
        address market,
        uint256 minLpOut,
        ApproxParams calldata guessBtReceivedFromFw,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netLpOut, uint256 netFwFee, uint256 netFwInterm);

    function addLiquiditySingleFw(
        address receiver,
        address market,
        uint256 netFwIn,
        uint256 minLpOut,
        ApproxParams calldata guessBtReceivedFromFw,
        LimitOrderData calldata limit
    ) external returns (uint256 netLpOut, uint256 netFwFee);

    function addLiquiditySingleTokenKeepCt(
        address receiver,
        address market,
        uint256 minLpOut,
        uint256 minCtOut,
        TokenInput calldata input
    ) external payable returns (uint256 netLpOut, uint256 netCtOut, uint256 netFwMintBc, uint256 netFwInterm);

    function addLiquiditySingleFwKeepCt(
        address receiver,
        address market,
        uint256 netFwIn,
        uint256 minLpOut,
        uint256 minCtOut
    ) external returns (uint256 netLpOut, uint256 netCtOut, uint256 netFwMintBc);

    function removeLiquidityDualTokenAndBt(
        address receiver,
        address market,
        uint256 netLpToRemove,
        TokenOutput calldata output,
        uint256 minBtOut
    ) external returns (uint256 netTokenOut, uint256 netBtOut, uint256 netFwInterm);

    function removeLiquidityDualFwAndBt(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minFwOut,
        uint256 minBtOut
    ) external returns (uint256 netFwOut, uint256 netBtOut);

    function removeLiquiditySingleBt(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minBtOut,
        ApproxParams calldata guessBtReceivedFromFw,
        LimitOrderData calldata limit
    ) external returns (uint256 netBtOut, uint256 netFwFee);

    function removeLiquiditySingleToken(
        address receiver,
        address market,
        uint256 netLpToRemove,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netFwFee, uint256 netFwInterm);

    function removeLiquiditySingleFw(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netFwOut, uint256 netFwFee);
}
