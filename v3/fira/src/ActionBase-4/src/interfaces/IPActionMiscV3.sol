// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/router/math/MarketApproxLibV2.sol";
import "./IPAllActionTypeV3.sol";
import {IPAllEventsV3} from "./IPAllEventsV3.sol";

import "./IFiraWrappedStandardized.sol";
import "./IPMarket.sol";

/// Refer to IPAllActionTypeV3.sol for details on the parameters
interface IPActionMiscV3 is IPAllEventsV3 {
    struct Call3 {
        bool allowFailure;
        bytes callData;
    }

    struct Result {
        bool success;
        bytes returnData;
    }

    function mintFwFromToken(address receiver, address FW, uint256 minFwOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netFwOut);

    function redeemFwToToken(address receiver, address FW, uint256 netFwIn, TokenOutput calldata output)
        external
        returns (uint256 netTokenOut);

    function mintBcFromToken(address receiver, address CT, uint256 minBcOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netBcOut, uint256 netFwInterm);

    function redeemBcToToken(address receiver, address CT, uint256 netBcIn, TokenOutput calldata output)
        external
        returns (uint256 netTokenOut, uint256 netFwInterm);

    function mintBcFromFw(address receiver, address CT, uint256 netFwIn, uint256 minBcOut)
        external
        returns (uint256 netBcOut);

    function redeemBcToFw(address receiver, address CT, uint256 netBcIn, uint256 minFwOut)
        external
        returns (uint256 netFwOut);

    function redeemDueInterestAndRewards(
        address user,
        address[] calldata fws,
        address[] calldata cts,
        address[] calldata markets
    ) external;

    function redeemDueInterestAndRewardsV2(
        IFiraWrappedStandardized[] calldata FWs,
        RedeemCtIncomeToTokenStruct[] calldata CTs,
        IPMarket[] calldata markets,
        IPSwapAggregator firaSwap,
        SwapDataExtra[] calldata swaps
    ) external returns (uint256[] memory netOutFromSwaps, uint256[] memory netInterests);

    function swapTokensToTokens(IPSwapAggregator firaSwap, SwapDataExtra[] calldata swaps, uint256[] calldata netSwaps)
        external
        payable
        returns (uint256[] memory netOutFromSwaps);

    function swapTokenToTokenViaFw(
        address receiver,
        address FW,
        TokenInput calldata input,
        address tokenRedeemFw,
        uint256 minTokenOut
    ) external payable returns (uint256 netTokenOut, uint256 netFwInterm);

    function exitPreExpToToken(
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 netCtIn,
        uint256 netLpIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, ExitPreExpReturnParams memory params);

    function exitPreExpToFw(
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 netCtIn,
        uint256 netLpIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (ExitPreExpReturnParams memory params);

    function exitPostExpToToken(
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 netLpIn,
        TokenOutput calldata output
    ) external returns (uint256 netTokenOut, ExitPostExpReturnParams memory params);

    function exitPostExpToFw(address receiver, address market, uint256 netBtIn, uint256 netLpIn, uint256 minFwOut)
        external
        returns (ExitPostExpReturnParams memory params);

    function boostMarkets(address[] memory markets) external;

    function multicall(Call3[] calldata calls) external payable returns (Result[] memory res);

    function simulate(address target, bytes calldata data) external payable;
}
