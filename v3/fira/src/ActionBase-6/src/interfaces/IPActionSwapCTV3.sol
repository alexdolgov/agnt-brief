// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/router/math/MarketApproxLibV2.sol";
import "./IPAllActionTypeV3.sol";
import {IPAllEventsV3} from "./IPAllEventsV3.sol";

/// Refer to IPAllActionTypeV3.sol for details on the parameters
interface IPActionSwapCTV3 is IPAllEventsV3 {
    function swapExactTokenForCt(
        address receiver,
        address market,
        uint256 minCtOut,
        ApproxParams calldata guessCtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netCtOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactFwForCt(
        address receiver,
        address market,
        uint256 exactFwIn,
        uint256 minCtOut,
        ApproxParams calldata guessCtOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netCtOut, uint256 netFwFee);

    function swapExactCtForToken(
        address receiver,
        address market,
        uint256 exactCtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactCtForFw(
        address receiver,
        address market,
        uint256 exactCtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netFwOut, uint256 netFwFee);
}
