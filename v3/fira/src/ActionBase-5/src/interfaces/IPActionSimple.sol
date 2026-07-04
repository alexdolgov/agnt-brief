// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {TokenInput} from "./IPAllActionTypeV3.sol";

import "./IPAllActionTypeV3.sol";
import {IPAllEventsV3} from "./IPAllEventsV3.sol";

/// All of these functions are for internal router use only and should not be called directly.
interface IPActionSimple is IPAllEventsV3 {
    function addLiquiditySingleBtSimple(address receiver, address market, uint256 netBtIn, uint256 minLpOut)
        external
        returns (uint256 netLpOut, uint256 netFwFee);

    function addLiquiditySingleTokenSimple(
        address receiver,
        address market,
        uint256 minLpOut,
        TokenInput calldata input
    ) external payable returns (uint256 netLpOut, uint256 netFwFee, uint256 netFwInterm);

    function addLiquiditySingleFwSimple(address receiver, address market, uint256 netFwIn, uint256 minLpOut)
        external
        returns (uint256 netLpOut, uint256 netFwFee);

    function removeLiquiditySingleBtSimple(address receiver, address market, uint256 netLpToRemove, uint256 minBtOut)
        external
        returns (uint256 netBtOut, uint256 netFwFee);

    function swapExactTokenForBtSimple(address receiver, address market, uint256 minBtOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactFwForBtSimple(address receiver, address market, uint256 exactFwIn, uint256 minBtOut)
        external
        returns (uint256 netBtOut, uint256 netFwFee);

    function swapExactTokenForCtSimple(address receiver, address market, uint256 minCtOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netCtOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactFwForCtSimple(address receiver, address market, uint256 exactFwIn, uint256 minCtOut)
        external
        returns (uint256 netCtOut, uint256 netFwFee);
}
