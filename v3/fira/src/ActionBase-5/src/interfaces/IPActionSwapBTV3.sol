// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/router/math/MarketApproxLibV2.sol";
import "./IPAllActionTypeV3.sol";
import {IPAllEventsV3} from "./IPAllEventsV3.sol";

/// Refer to IPAllActionTypeV3.sol for details on the parameters
interface IPActionSwapBTV3 is IPAllEventsV3 {
    function swapExactTokenForBt(
        address receiver,
        address market,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactFwForBt(
        address receiver,
        address market,
        uint256 exactFwIn,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netBtOut, uint256 netFwFee);

    function swapExactBtForToken(
        address receiver,
        address market,
        uint256 exactBtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactBtForFw(
        address receiver,
        address market,
        uint256 exactBtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netFwOut, uint256 netFwFee);
}
