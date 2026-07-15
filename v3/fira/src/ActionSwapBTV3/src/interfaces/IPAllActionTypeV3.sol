// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/router/swap-aggregator/IPSwapAggregator.sol";
import "./IPLimitRouter.sol";

/*
 * NOTICE:
 * For detailed information on TokenInput, TokenOutput, ApproxParams, and LimitOrderData,
 * refer to https://docs.fira.finance/Developers/Contracts/FiraRouter
 *
 * It's recommended to use Fira's Hosted SDK to generate these parameters for:
 * 1. Optimal liquidity and gas efficiency
 * 2. Access to deeper liquidity via limit orders
 * 3. Zapping in/out using any ERC20 token
 *
 * Else, to generate these parameters fully onchain, use the following functions:
 * - For TokenInput: Use createTokenInputSimple
 * - For TokenOutput: Use createTokenOutputSimple
 * - For ApproxParams: Use createDefaultApproxParams
 * - For LimitOrderData: Use createEmptyLimitOrderData
 *
 * These generated parameters can be directly passed into the respective function calls.
 *
 * Examples:
 *
 * addLiquiditySingleToken(
 *     msg.sender,
 *     MARKET_ADDRESS,
 *     minLpOut,
 *     createDefaultApproxParams(),
 *     createTokenInputSimple(USDC_ADDRESS, 1000e6),
 *     createEmptyLimitOrderData()
 * )
 *
 * swapExactTokenForBt(
 *     msg.sender,
 *     MARKET_ADDRESS,
 *     minBtOut,
 *     createDefaultApproxParams(),
 *     createTokenInputSimple(USDC_ADDRESS, 1000e6),
 *     createEmptyLimitOrderData()
 * )
 */

/// @dev Creates a TokenInput struct without using any swap aggregator
/// @param tokenIn must be one of the FW's tokens in (obtain via `IFiraWrappedStandardized#getTokensIn`)
/// @param netTokenIn amount of token in
function createTokenInputSimple(address tokenIn, uint256 netTokenIn) pure returns (TokenInput memory) {
    return TokenInput({
        tokenIn: tokenIn,
        netTokenIn: netTokenIn,
        tokenMintFw: tokenIn,
        firaSwap: address(0),
        swapData: createSwapTypeNoAggregator()
    });
}

/// @dev Creates a TokenOutput struct without using any swap aggregator
/// @param tokenOut must be one of the FW's tokens out (obtain via
/// `IFiraWrappedStandardized#getTokensOut`)
/// @param minTokenOut minimum amount of token out
function createTokenOutputSimple(address tokenOut, uint256 minTokenOut) pure returns (TokenOutput memory) {
    return TokenOutput({
        tokenOut: tokenOut,
        minTokenOut: minTokenOut,
        tokenRedeemFw: tokenOut,
        firaSwap: address(0),
        swapData: createSwapTypeNoAggregator()
    });
}

function createEmptyLimitOrderData() pure returns (LimitOrderData memory) {}

/// @dev Creates default ApproxParams for on-chain approximation
function createDefaultApproxParams() pure returns (ApproxParams memory) {
    return ApproxParams({guessMin: 0, guessMax: type(uint256).max, guessOffchain: 0, maxIteration: 256, eps: 1e14});
}

function createSwapTypeNoAggregator() pure returns (SwapData memory) {}

struct TokenInput {
    address tokenIn;
    uint256 netTokenIn;
    address tokenMintFw;
    address firaSwap;
    SwapData swapData;
}

struct TokenOutput {
    address tokenOut;
    uint256 minTokenOut;
    address tokenRedeemFw;
    address firaSwap;
    SwapData swapData;
}

struct LimitOrderData {
    address limitRouter;
    uint256 epsSkipMarket;
    FillOrderParams[] normalFills;
    FillOrderParams[] flashFills;
    bytes optData;
}

struct ApproxParams {
    uint256 guessMin;
    uint256 guessMax;
    uint256 guessOffchain;
    uint256 maxIteration;
    uint256 eps;
}

struct ExitPreExpReturnParams {
    uint256 netBtFromRemove;
    uint256 netFwFromRemove;
    uint256 netBcRedeem;
    uint256 netFwFromRedeem;
    uint256 netBtSwap;
    uint256 netCtSwap;
    uint256 netFwFromSwap;
    uint256 netFwFee;
    uint256 totalFwOut;
}

struct ExitPostExpReturnParams {
    uint256 netBtFromRemove;
    uint256 netFwFromRemove;
    uint256 netBtRedeem;
    uint256 netFwFromRedeem;
    uint256 totalFwOut;
}

struct RedeemCtIncomeToTokenStruct {
    IBCToken ct;
    bool doRedeemInterest;
    bool doRedeemRewards;
    address tokenRedeemFw;
    uint256 minTokenRedeemOut;
}
