// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPActionMiscV3.sol";
import "../../interfaces/IPReflector.sol";
import "./base/ActionBase.sol";

/// @title ActionMiscV3
/// @notice Router facet for miscellaneous operations including minting, redeeming, rewards, and position exits
/// @dev Provides utility functions that don't fit into swap or liquidity categories:
///
///      Minting/Redeeming:
///      - mintFwFromToken: Any token -> FW
///      - redeemFwToToken: FW -> Any token
///      - mintBcFromToken/Fw: Create BT+CT pairs
///      - redeemBcToToken/Fw: Redeem BT+CT pairs
///
///      Rewards:
///      - redeemDueInterestAndRewards: Claim interest from CT and rewards from FW/markets
///      - redeemDueInterestAndRewardsV2: Advanced version with optional token swaps
///
///      Position Exits:
///      - exitPreExpToToken/Fw: Exit positions (LP, BT, CT) before expiry
///      - exitPostExpToToken/Fw: Exit positions after expiry (simpler, no swap needed)
///
///      Utilities:
///      - multicall: Batch multiple router calls in one transaction
///      - simulate: Simulate a call and revert with results (for off-chain queries)
contract ActionMiscV3 is IPActionMiscV3, ActionBase {
    uint256 private constant NOT_FOUND = type(uint256).max;

    /// @notice Mints FW tokens from any input token
    /// @param receiver Address to receive the FW tokens
    /// @param FW Address of the FW token to mint
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param input Token input configuration including swap routing
    /// @return netFwOut Amount of FW minted
    function mintFwFromToken(address receiver, address FW, uint256 minFwOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netFwOut)
    {
        netFwOut = _mintFwFromToken(receiver, FW, minFwOut, input);
        emit MintFwFromToken(msg.sender, input.tokenIn, FW, receiver, input.netTokenIn, netFwOut);
    }

    /// @notice Redeems FW tokens to any output token
    /// @param receiver Address to receive the output tokens
    /// @param FW Address of the FW token to redeem
    /// @param netFwIn Amount of FW to redeem
    /// @param output Token output configuration including swap routing
    /// @return netTokenOut Amount of output tokens received
    function redeemFwToToken(address receiver, address FW, uint256 netFwIn, TokenOutput calldata output)
        external
        returns (uint256 netTokenOut)
    {
        netTokenOut = _redeemFwToToken(receiver, FW, netFwIn, output, true);
        emit RedeemFwToToken(msg.sender, output.tokenOut, FW, receiver, netFwIn, netTokenOut);
    }

    /// @notice Mints BC (BT + CT pair) from any input token
    /// @dev Flow: input token -> FW -> mint BT+CT
    /// @param receiver Address to receive the BT and CT
    /// @param CT Address of the Coupon Token
    /// @param minBcOut Minimum BC to receive (slippage protection)
    /// @param input Token input configuration
    /// @return netBcOut Amount of BC minted (equal BT and CT)
    /// @return netFwInterm Amount of FW as intermediate step
    function mintBcFromToken(address receiver, address CT, uint256 minBcOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netBcOut, uint256 netFwInterm)
    {
        address FW = IBCToken(CT).FW();

        netFwInterm = _mintFwFromToken(CT, FW, 0, input);
        netBcOut = _mintBcFromFw(receiver, FW, CT, netFwInterm, minBcOut, false);

        emit MintBcFromToken(msg.sender, input.tokenIn, CT, receiver, input.netTokenIn, netBcOut, netFwInterm);
    }

    /// @notice Redeems BC (BT + CT pair) to any output token
    /// @dev Flow: BT+CT -> FW -> output token
    /// @param receiver Address to receive the output tokens
    /// @param CT Address of the Coupon Token
    /// @param netBcIn Amount of BC to redeem
    /// @param output Token output configuration
    /// @return netTokenOut Amount of output tokens received
    /// @return netFwInterm Amount of FW as intermediate step
    function redeemBcToToken(address receiver, address CT, uint256 netBcIn, TokenOutput calldata output)
        external
        returns (uint256 netTokenOut, uint256 netFwInterm)
    {
        address FW = IBCToken(CT).FW();

        netFwInterm = _redeemBcToFw(FW, CT, netBcIn, 1);
        netTokenOut = _redeemFwToToken(receiver, FW, netFwInterm, output, false);

        emit RedeemBcToToken(msg.sender, output.tokenOut, CT, receiver, netBcIn, netTokenOut, netFwInterm);
    }

    /// @notice Mints BC (BT + CT pair) directly from FW
    /// @param receiver Address to receive the BT and CT
    /// @param CT Address of the Coupon Token
    /// @param netFwIn Amount of FW to use
    /// @param minBcOut Minimum BC to receive (slippage protection)
    /// @return netBcOut Amount of BC minted
    function mintBcFromFw(address receiver, address CT, uint256 netFwIn, uint256 minBcOut)
        external
        returns (uint256 netBcOut)
    {
        netBcOut = _mintBcFromFw(receiver, IBCToken(CT).FW(), CT, netFwIn, minBcOut, true);
        emit MintBcFromFw(msg.sender, receiver, CT, netFwIn, netBcOut);
    }

    /// @notice Redeems BC (BT + CT pair) directly to FW
    /// @param receiver Address to receive the FW
    /// @param CT Address of the Coupon Token
    /// @param netBcIn Amount of BC to redeem
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @return netFwOut Amount of FW received
    function redeemBcToFw(address receiver, address CT, uint256 netBcIn, uint256 minFwOut)
        external
        returns (uint256 netFwOut)
    {
        netFwOut = _redeemBcToFw(receiver, CT, netBcIn, minFwOut);
        emit RedeemBcToFw(msg.sender, receiver, CT, netBcIn, netFwOut);
    }

    /// @notice Claims all due interest and rewards from FW tokens, CT tokens, and markets
    /// @dev Iterates through all provided addresses and claims available rewards
    /// @param user Address to claim rewards for
    /// @param fws Array of FW token addresses to claim rewards from
    /// @param cts Array of CT token addresses to claim interest/rewards from
    /// @param markets Array of market addresses to claim rewards from
    function redeemDueInterestAndRewards(
        address user,
        address[] calldata fws,
        address[] calldata cts,
        address[] calldata markets
    ) external {
        for (uint256 i = 0; i < fws.length; ++i) {
            IFiraWrappedStandardized(fws[i]).claimRewards(user);
        }

        for (uint256 i = 0; i < cts.length; ++i) {
            IBCToken(cts[i]).redeemDueInterestAndRewards(user, true, true);
        }

        for (uint256 i = 0; i < markets.length; ++i) {
            IPMarket(markets[i]).redeemRewards(user);
        }
    }

    /// @notice Advanced reward claiming with optional token swaps
    /// @dev Claims rewards and optionally swaps them to desired tokens via aggregator
    /// @param FWs Array of FW tokens to claim rewards from
    /// @param CTs Array of CT configurations for interest/reward claiming
    /// @param markets Array of markets to claim rewards from
    /// @param firaSwap Swap aggregator for token conversions
    /// @param swaps Swap configurations for converting claimed tokens
    /// @return netOutFromSwaps Amounts received from each swap
    /// @return netInterests Interest amounts claimed from each CT
    function redeemDueInterestAndRewardsV2(
        IFiraWrappedStandardized[] calldata FWs,
        RedeemCtIncomeToTokenStruct[] calldata CTs,
        IPMarket[] calldata markets,
        IPSwapAggregator firaSwap,
        SwapDataExtra[] calldata swaps
    ) external returns (uint256[] memory netOutFromSwaps, uint256[] memory netInterests) {
        if (swaps.length == 0) {
            return (netOutFromSwaps, __redeemDueInterestAndRewardsV2NoSwap(FWs, CTs, markets));
        } else {
            return __redeemDueInterestAndRewardsV2AndSwap(FWs, CTs, markets, firaSwap, swaps);
        }
    }

    function __redeemDueInterestAndRewardsV2NoSwap(
        IFiraWrappedStandardized[] calldata FWs,
        RedeemCtIncomeToTokenStruct[] calldata CTs,
        IPMarket[] calldata markets
    ) private returns (uint256[] memory netInterests) {
        netInterests = new uint256[](CTs.length);
        for (uint256 i = 0; i < FWs.length; ++i) {
            FWs[i].claimRewards(msg.sender);
        }

        for (uint256 i = 0; i < CTs.length; ++i) {
            (uint256 netFwInt,) =
                CTs[i].ct.redeemDueInterestAndRewards(msg.sender, CTs[i].doRedeemInterest, CTs[i].doRedeemRewards);

            if (netFwInt == 0) continue;

            IFiraWrappedStandardized FW = IFiraWrappedStandardized(CTs[i].ct.FW());
            _transferFrom(FW, msg.sender, address(FW), netFwInt);
            netInterests[i] = FW.redeem(msg.sender, netFwInt, CTs[i].tokenRedeemFw, CTs[i].minTokenRedeemOut, true);
        }

        for (uint256 i = 0; i < markets.length; ++i) {
            markets[i].redeemRewards(msg.sender);
        }
    }

    function __redeemDueInterestAndRewardsV2AndSwap(
        IFiraWrappedStandardized[] calldata Fws,
        RedeemCtIncomeToTokenStruct[] calldata CTs,
        IPMarket[] calldata markets,
        IPSwapAggregator firaSwap,
        SwapDataExtra[] calldata swaps
    ) private returns (uint256[] memory netOutFromSwaps, uint256[] memory netInterests) {
        netOutFromSwaps = new uint256[](swaps.length);
        uint256[] memory netSwaps = new uint256[](swaps.length);

        for (uint256 i = 0; i < Fws.length; ++i) {
            _add(swaps, netSwaps, Fws[i].getRewardTokens(), Fws[i].claimRewards(msg.sender));
        }

        netInterests = new uint256[](CTs.length);
        for (uint256 i = 0; i < CTs.length; ++i) {
            uint256[] memory netRewards;
            (netInterests[i], netRewards) =
                CTs[i].ct.redeemDueInterestAndRewards(msg.sender, CTs[i].doRedeemInterest, CTs[i].doRedeemRewards);

            if (CTs[i].doRedeemRewards) {
                _add(swaps, netSwaps, CTs[i].ct.getRewardTokens(), netRewards);
            }
        }

        for (uint256 i = 0; i < markets.length; ++i) {
            _add(swaps, netSwaps, markets[i].getRewardTokens(), markets[i].redeemRewards(msg.sender));
        }

        for (uint256 i = 0; i < swaps.length; ++i) {
            _transferIn(swaps[i].tokenIn, msg.sender, netSwaps[i]);
        }

        for (uint256 i = 0; i < CTs.length; ++i) {
            if (netInterests[i] == 0) continue;
            IFiraWrappedStandardized FW = IFiraWrappedStandardized(CTs[i].ct.FW());
            netInterests[i] =
                _redeemFwAndAdd(swaps, netSwaps, FW, netInterests[i], CTs[i].tokenRedeemFw, CTs[i].minTokenRedeemOut);
        }

        for (uint256 i = 0; i < swaps.length; ++i) {
            netOutFromSwaps[i] = _swap(swaps[i], netSwaps[i], firaSwap, true);
        }
    }

    /// @notice Swaps multiple tokens to other tokens via aggregator
    /// @param firaSwap Swap aggregator contract
    /// @param swaps Array of swap configurations
    /// @param netSwaps Amounts to swap for each configuration
    /// @return netOutFromSwaps Amounts received from each swap
    function swapTokensToTokens(IPSwapAggregator firaSwap, SwapDataExtra[] calldata swaps, uint256[] calldata netSwaps)
        external
        payable
        returns (uint256[] memory netOutFromSwaps)
    {
        netOutFromSwaps = new uint256[](swaps.length);

        for (uint256 i = 0; i < swaps.length; ++i) {
            _transferIn(swaps[i].tokenIn, msg.sender, netSwaps[i]);
        }

        for (uint256 i = 0; i < swaps.length; ++i) {
            netOutFromSwaps[i] = _swap(swaps[i], netSwaps[i], firaSwap, false);
        }
    }

    /// @notice Swaps input token to output token using FW as intermediate
    /// @dev Flow: input token -> FW -> output token (via FW mint/redeem)
    /// @param receiver Address to receive output tokens
    /// @param FW FW token to use as intermediate
    /// @param input Token input configuration
    /// @param tokenRedeemFw Token to redeem FW to
    /// @param minTokenOut Minimum output (slippage protection)
    /// @return netTokenOut Amount of output tokens received
    /// @return netFwInterm Amount of FW as intermediate
    function swapTokenToTokenViaFw(
        address receiver,
        address FW,
        TokenInput calldata input,
        address tokenRedeemFw,
        uint256 minTokenOut
    ) external payable returns (uint256 netTokenOut, uint256 netFwInterm) {
        netFwInterm = _mintFwFromToken(FW, FW, 0, input);
        netTokenOut = IFiraWrappedStandardized(FW).redeem(receiver, netFwInterm, tokenRedeemFw, minTokenOut, true);
    }

    /// @notice Exits all positions (LP, BT, CT) to a single token before expiry
    /// @dev Combines removal of LP, redemption of BT+CT, and swapping remaining to output token.
    ///      For BT without matching CT, swaps BT to FW via AMM.
    /// @param receiver Address to receive output tokens
    /// @param market Address of the Fira market
    /// @param netBtIn Amount of standalone BT to exit
    /// @param netCtIn Amount of CT to exit (will match with BT for redemption)
    /// @param netLpIn Amount of LP to remove
    /// @param output Token output configuration
    /// @param limit Limit order data (not used in current version)
    /// @return totalTokenOut Total output tokens received
    /// @return params Detailed breakdown of the exit operation
    function exitPreExpToToken(
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 netCtIn,
        uint256 netLpIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 totalTokenOut, ExitPreExpReturnParams memory params) {
        IFiraWrappedStandardized FW;

        (FW, params) = _exitPreExpToFw(true, address(0), market, netBtIn, netCtIn, netLpIn, limit);
        totalTokenOut = _redeemFwToToken(receiver, address(FW), params.totalFwOut, output, false);

        emit ExitPreExpToToken(msg.sender, market, output.tokenOut, receiver, netLpIn, totalTokenOut, params);
    }

    /// @notice Exits all positions (LP, BT, CT) to FW before expiry
    /// @param receiver Address to receive FW
    /// @param market Address of the Fira market
    /// @param netBtIn Amount of standalone BT to exit
    /// @param netCtIn Amount of CT to exit
    /// @param netLpIn Amount of LP to remove
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data (not used in current version)
    /// @return params Detailed breakdown of the exit operation
    function exitPreExpToFw(
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 netCtIn,
        uint256 netLpIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (ExitPreExpReturnParams memory params) {
        (, params) = _exitPreExpToFw(false, receiver, market, netBtIn, netCtIn, netLpIn, limit);
        require(params.totalFwOut >= minFwOut, "Slippage: INSUFFICIENT_FW_OUT");

        emit ExitPreExpToFw(msg.sender, market, receiver, netLpIn, params);
    }

    /// @dev Internal implementation for pre-expiry exit to FW
    function _exitPreExpToFw(
        bool setReceiverToFw,
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 netCtIn,
        uint256 netLpIn,
        LimitOrderData calldata limit
    ) internal returns (IFiraWrappedStandardized FW, ExitPreExpReturnParams memory p) {
        IBondToken BT;
        IBCToken CT;
        (FW, BT, CT) = IPMarket(market).readTokens();

        if (setReceiverToFw) receiver = address(FW);

        if (netLpIn > 0) {
            _transferFrom(IERC20(market), msg.sender, market, netLpIn);
            (p.netFwFromRemove, p.netBtFromRemove) = IPMarket(market).burn(receiver, address(this), netLpIn);
        }

        if (netBtIn > 0) {
            _transferIn(address(BT), msg.sender, netBtIn);
        }

        p.netBcRedeem = PMath.min(p.netBtFromRemove + netBtIn, netCtIn);

        if (p.netBcRedeem > 0) {
            _transferOut(address(BT), address(CT), p.netBcRedeem);
            _transferFrom(CT, msg.sender, address(CT), p.netBcRedeem);
            p.netFwFromRedeem = IBCToken(CT).redeemBC(receiver);
        }

        p.netBtSwap = p.netBtFromRemove + netBtIn - p.netBcRedeem;
        p.netCtSwap = netCtIn - p.netBcRedeem;

        if (p.netBtSwap > 0) {
            address btEntry = _entry_swapExactBtForFw(market, limit);
            if (btEntry != address(this)) _transferOut(address(BT), btEntry, p.netBtSwap);
            (p.netFwFromSwap, p.netFwFee) = _swapExactBtForFw(receiver, market, p.netBtSwap, 0, limit);
        } else if (p.netCtSwap > 0) {
            _transferFrom(CT, msg.sender, _entry_swapExactCtForFw(CT, limit), p.netCtSwap);
            (p.netFwFromSwap, p.netFwFee) = _swapExactCtForFw(receiver, market, FW, CT, p.netCtSwap, 0, limit);
        }

        p.totalFwOut = p.netFwFromRemove + p.netFwFromRedeem + p.netFwFromSwap;
    }

    /// @notice Exits positions (LP, BT) to a single token after expiry
    /// @dev Simpler than pre-expiry: BT redeems 1:1 for FW, no swaps needed
    /// @param receiver Address to receive output tokens
    /// @param market Address of the Fira market
    /// @param netBtIn Amount of BT to exit
    /// @param netLpIn Amount of LP to remove
    /// @param output Token output configuration
    /// @return totalTokenOut Total output tokens received
    /// @return params Detailed breakdown of the exit operation
    function exitPostExpToToken(
        address receiver,
        address market,
        uint256 netBtIn,
        uint256 netLpIn,
        TokenOutput calldata output
    ) external returns (uint256 totalTokenOut, ExitPostExpReturnParams memory params) {
        IFiraWrappedStandardized FW;

        (FW, params) = _exitPostExpToFw(true, address(0), market, netBtIn, netLpIn);
        totalTokenOut = _redeemFwToToken(receiver, address(FW), params.totalFwOut, output, false);

        emit ExitPostExpToToken(msg.sender, market, output.tokenOut, receiver, netLpIn, totalTokenOut, params);
    }

    /// @notice Exits positions (LP, BT) to FW after expiry
    /// @param receiver Address to receive FW
    /// @param market Address of the Fira market
    /// @param netFwOut Expected FW output (for validation)
    /// @param netLpIn Amount of LP to remove
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @return params Detailed breakdown of the exit operation
    function exitPostExpToFw(address receiver, address market, uint256 netFwOut, uint256 netLpIn, uint256 minFwOut)
        external
        returns (ExitPostExpReturnParams memory params)
    {
        (, params) = _exitPostExpToFw(false, receiver, market, netFwOut, netLpIn);
        require(params.totalFwOut >= minFwOut, "Slippage: INSUFFICIENT_FW_OUT");

        emit ExitPostExpToFw(msg.sender, market, receiver, netLpIn, params);
    }

    function _redeemFwAndAdd(
        SwapDataExtra[] calldata swaps,
        uint256[] memory netSwaps,
        IFiraWrappedStandardized Fw,
        uint256 netFwToRedeem,
        address tokenRedeemFw,
        uint256 minTokenRedeemFw
    ) internal returns (uint256 netTokenOut) {
        _transferFrom(Fw, msg.sender, address(Fw), netFwToRedeem);

        uint256 index = _find(swaps, tokenRedeemFw);
        if (index == NOT_FOUND) {
            return Fw.redeem(msg.sender, netFwToRedeem, tokenRedeemFw, minTokenRedeemFw, true);
        }

        netTokenOut = Fw.redeem(address(this), netFwToRedeem, tokenRedeemFw, minTokenRedeemFw, true);
        netSwaps[index] += netTokenOut;
    }

    function _add(
        SwapDataExtra[] calldata swaps,
        uint256[] memory netSwaps,
        address[] memory tokens,
        uint256[] memory amounts
    ) internal pure {
        for (uint256 i = 0; i < tokens.length; ++i) {
            uint256 index = _find(swaps, tokens[i]);
            if (index == NOT_FOUND) continue;

            netSwaps[index] += amounts[i];
        }
    }

    function _swap(SwapDataExtra calldata $, uint256 netSwap, IPSwapAggregator firaSwap, bool needScale)
        internal
        returns (uint256 netTokenOut)
    {
        SwapType swapType = $.swapData.swapType;
        assert(swapType != SwapType.NONE);

        if (swapType == SwapType.ETH_WETH) {
            _wrap_unwrap_ETH($.tokenIn, $.tokenOut, netSwap);

            netTokenOut = netSwap;
        } else {
            assert($.swapData.needScale == needScale);

            _transferOut($.tokenIn, address(firaSwap), netSwap);

            uint256 preBalance = _selfBalance($.tokenOut);
            IPSwapAggregator(firaSwap).swap($.tokenIn, netSwap, $.swapData);
            netTokenOut = _selfBalance($.tokenOut) - preBalance;
        }

        require(netTokenOut >= $.minOut, "Slippage: INSUFFICIENT_TOKEN_OUT");
        _transferOut($.tokenOut, msg.sender, netTokenOut);
    }

    function _find(SwapDataExtra[] calldata swaps, address token) internal pure returns (uint256 index) {
        for (uint256 i = 0; i < swaps.length; ++i) {
            if (swaps[i].tokenIn == token) return i;
        }
        return NOT_FOUND;
    }

    function _exitPostExpToFw(bool setReceiverToFw, address receiver, address market, uint256 netBtIn, uint256 netLpIn)
        internal
        returns (IFiraWrappedStandardized FW, ExitPostExpReturnParams memory p)
    {
        IBondToken BT;
        IBCToken CT;
        (FW, BT, CT) = IPMarket(market).readTokens();

        if (setReceiverToFw) receiver = address(FW);

        if (netLpIn > 0) {
            _transferFrom(IERC20(market), msg.sender, market, netLpIn);
            (p.netFwFromRemove, p.netBtFromRemove) = IPMarket(market).burn(receiver, address(CT), netLpIn);
        }

        if (netBtIn > 0) {
            _transferFrom(BT, msg.sender, address(CT), netBtIn);
        }

        p.netBtRedeem = p.netBtFromRemove + netBtIn;
        p.netFwFromRedeem = IBCToken(CT).redeemBC(receiver);

        p.totalFwOut = p.netFwFromRemove + p.netFwFromRedeem;
    }

    // ----------------- MISC FUNCTIONS -----------------

    /// @notice Triggers reward distribution for multiple markets
    /// @dev Calls transferFrom with 0 amount to trigger internal reward updates
    /// @param markets Array of market addresses to boost
    function boostMarkets(address[] memory markets) external {
        for (uint256 i = 0; i < markets.length; i++) {
            IPMarket(markets[i]).transferFrom(msg.sender, markets[i], 0);
        }
    }

    /// @notice Executes multiple router calls in a single transaction
    /// @dev Each call is executed via delegatecall. Failures can be allowed per-call.
    /// @param calls Array of call configurations (calldata and allowFailure flag)
    /// @return res Array of results (success flag and return data)
    function multicall(Call3[] calldata calls) external payable returns (Result[] memory res) {
        uint256 length = calls.length;
        res = new Result[](length);
        for (uint256 i = 0; i < length; i++) {
            (bool success, bytes memory result) = _delegateToSelf(calls[i].callData, calls[i].allowFailure);
            res[i] = Result(success, result);
        }
    }

    /// @notice Simulates a call and reverts with the results
    /// @dev Useful for off-chain simulation to preview transaction outcomes
    /// @param target Target contract address
    /// @param data Calldata to execute
    function simulate(address target, bytes calldata data) external payable {
        (bool success, bytes memory result) = target.delegatecall(data);
        revert Errors.SimulationResults(success, result);
    }
}
