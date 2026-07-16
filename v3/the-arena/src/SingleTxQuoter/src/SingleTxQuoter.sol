pragma solidity ^0.8.23;
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { IHooks } from "lib/v4-core/src/interfaces/IHooks.sol";
import { IUniswapV4Router04 } from "hookmate/interfaces/router/IUniswapV4Router04.sol";
import {ITokenManager} from "./interfaces/ITokenManager.sol";
import {ITokenManagerERC20} from "./interfaces/ITokenManagerERC20.sol";
import {IArenaPoolDeployer} from "./interfaces/IArenaPoolDeployer.sol";
import {IInverseHelper} from "./interfaces/IInverseHelper.sol";
import "@uniswap/v4-core/src/libraries/TickMath.sol";
import "@uniswap/v4-core/src/libraries/SwapMath.sol";
import "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import "forge-std/console.sol";


interface ITokenManagerPriceHelper {
    function calculatePurchaseAmountAndPriceParametric(
        uint256 avaxAmount,
        uint16 a,
        uint8 b,
        uint128 curveScaler,
        uint256 creatorFeeBasisPoints,
        uint256 tokenSplit
    ) external view returns (uint256 tokenAmount, uint256 price);
}



contract SingleTxQuoter {
    address constant PROD_TOKEN_MANAGER = 0x8315f1eb449Dd4B779495C3A0b05e5d194446c6e;
    address constant STAGING_TOKEN_MANAGER = 0xB9794E1BF5D79cD851a38024752DfF800B6b1cE1;
    address constant PROD_TOKEN_MANAGER_ERC20 = 0x2196E106Af476f57618373ec028924767c758464;
    address constant STAGING_TOKEN_MANAGER_ERC20 = 0x58e94b00cd4680C12d1B929e8cA88B595cDE491A;

    address constant PROD_HELPER = 0xBE3F25BF9Bc1bDae9238f3c9153Da93Fd4E7B927;
    address constant STAGING_HELPER = 0x238C47619a0Cd1f72eeF260C44DfdF6BA2A72d79;
    address constant PROD_HELPER_ERC20 = 0x76b52e15062ee75df1EB153915E7A138F14D8fE6;
    address constant STAGING_HELPER_ERC20 = 0xe2C98991721780b1F847e5D81da238171246C12c;
    struct QuoteParams {
        address tokenManager;
        uint32 a;
        uint8 b;
        uint128 curveScaler;
        uint8 creatorFeeBasisPoints;
        uint256 tokenSplit;
        uint256 amountIn;
    }

    struct QuoteResult {
        uint256 preBondTokenOut;
        uint256 preBondCost;
        uint256 postBondTokenOut;
        uint256 postBondCost;
        uint256 totalTokenOut;
        bool tokenBonds;
    }
    

    struct QuoteToken1InForExactToken0OutParams {
        uint256 token0Amount;
        uint256 token1Amount;
        uint160 sqrtPriceX96;
        uint24 lpFeePips;
        uint24 hookFeePips;
        int24 tickSpacing;
        uint256 token0AmountOut;
        int24 tickLower;
        int24 tickUpper;
    }

    error AmountOutZero();
    error InvalidTicks();
    error TickSpacingViolation();
    error PriceNotInRange();
    error InvalidFee();
    error InsufficientLiquidity();
    error LiquidityZero();

    uint256 internal constant FEE_DENOMINATOR = 1e6; // 3000 => 0.3%
    uint24 public protocolFeePpm = 3000;

    function getParams(
        ITokenManager tokenManager
    )
        internal
        view
        returns (QuoteToken1InForExactToken0OutParams memory params)
    {
        ITokenManager.V4PoolInitParams memory v4PoolInitParams = tokenManager
            .getV4PoolInitParams();
        params.token0Amount = v4PoolInitParams.poolInitParams.token0Amount;
        params.token1Amount = v4PoolInitParams.poolInitParams.token1Amount;
        params.sqrtPriceX96 = v4PoolInitParams.invertedStartingPrice;
        params.lpFeePips = v4PoolInitParams.poolInitParams.fee;
        params.hookFeePips = v4PoolInitParams.creatorFeePpm + protocolFeePpm;
        params.tickSpacing = v4PoolInitParams.poolInitParams.tickSpacing;
        params.tickLower = -v4PoolInitParams.poolInitParams.tickUpper;
        params.tickUpper = -v4PoolInitParams.poolInitParams.tickLower;
    }


    function quotePairedTokenAmountOutForExactTokenIn(
        ITokenManager tokenManager,
        uint256 tokenAmountToBond,
        uint256 pairedTokenAmountToBond,
        uint256 pairedTokenAmountIn
    ) public view returns (uint256 tokenAmountOut) {
        QuoteToken1InForExactToken0OutParams memory params = getParams(
            tokenManager
        );

        if (pairedTokenAmountIn == 0) revert AmountOutZero();

        // --- Fee checks (each < 100%, sum < 100%) ---
        if (params.lpFeePips >= FEE_DENOMINATOR) revert InvalidFee();
        if (params.hookFeePips >= FEE_DENOMINATOR) revert InvalidFee();
        if (
            uint256(params.lpFeePips) + uint256(params.hookFeePips) >=
            FEE_DENOMINATOR
        ) {
            revert InvalidFee();
        }

        // --- Tick sanity ---
        if (params.tickLower >= params.tickUpper) revert InvalidTicks();
        if (params.tickSpacing <= 0) revert TickSpacingViolation();
        if (
            params.tickLower % params.tickSpacing != 0 ||
            params.tickUpper % params.tickSpacing != 0
        ) {
            revert TickSpacingViolation();
        }

        // Boundaries
        uint160 sqrtLowerX96 = TickMath.getSqrtPriceAtTick(params.tickLower);
        uint160 sqrtUpperX96 = TickMath.getSqrtPriceAtTick(params.tickUpper);

        // Starting price must be strictly inside [lower, upper]
        if (
            params.sqrtPriceX96 <= sqrtLowerX96 ||
            params.sqrtPriceX96 >= sqrtUpperX96
        ) {
            revert PriceNotInRange();
        }

        // --- Derive liquidity from your hypothetical deposits ---
        uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            params.sqrtPriceX96,
            sqrtLowerX96,
            sqrtUpperX96,
            tokenAmountToBond,
            pairedTokenAmountToBond
        );
        if (liquidity == 0) revert LiquidityZero();

        // token1 in -> token0 out (oneForZero), EXACT INPUT in token1.
        bool zeroForOne = false; // token1 -> token0

        // First apply hook fee on the *input* leg:
        //
        //   grossIn         = pairedTokenAmountIn
        //   hookFee         = grossIn * hookFeePips / 1e6  (rounded down)
        //   poolSideToken1  = grossIn - hookFee
        //
        uint256 poolSideToken1 = (pairedTokenAmountIn *
            (FEE_DENOMINATOR - params.hookFeePips)) / FEE_DENOMINATOR;

        if (poolSideToken1 == 0) {
            // Input is too small after hook fee to move price at all
            return 0;
        }

        // For exact INPUT, amountRemaining is NEGATIVE and denominated
        // in the input token (token1) for this direction.
        int256 amountRemaining = -int256(poolSideToken1);

        (
            uint160 sqrtPriceNextX96,
            uint256 amountInNet, // net token1 actually consumed (after LP fee)
            uint256 amountOut, // token0 out
            uint256 lpFeeAmount // LP fee in token1
        ) = SwapMath.computeSwapStep(
                params.sqrtPriceX96,
                sqrtUpperX96,
                liquidity,
                amountRemaining,
                params.lpFeePips
            );

        // Monotonicity sanity for oneForZero: price shouldn’t go down.
        if (!zeroForOne && sqrtPriceNextX96 < params.sqrtPriceX96) {
            revert();
        }

        // amountInNet + lpFeeAmount <= poolSideToken1  (by SwapMath guarantees)
        // We don’t care if we hit sqrtUpperX96 or not here – for exactIn,
        // we just return the amountOut that this band can produce.

        tokenAmountOut = amountOut;
    }

    function _getPriceHelperAddress(address tokenManagerAddress) internal pure returns (address) { 
        if (tokenManagerAddress == PROD_TOKEN_MANAGER) { // prod TokenManager
            return PROD_HELPER;
        } else if (tokenManagerAddress == STAGING_TOKEN_MANAGER) { // staging TokenManager
            return STAGING_HELPER;
        } else if (tokenManagerAddress == PROD_TOKEN_MANAGER_ERC20) { // prod TokenManagerERC20
            return PROD_HELPER_ERC20;
        } else if (tokenManagerAddress == STAGING_TOKEN_MANAGER_ERC20) { // staging TokenManagerERC20
            return STAGING_HELPER_ERC20;
        }
        revert("Invalid TokenManager");
    }
        

    function getTokenOutOnCreationForAvax(QuoteParams memory params) public view returns (QuoteResult memory quote) { 
        uint256 amountToBond = 10_000_000_000 ether * params.tokenSplit / 100;
        uint256 buyFee = ITokenManager(params.tokenManager).tokenCreationBuyFeeAmount();
        uint256 avaxAmountIn = params.amountIn - buyFee;
        (quote.preBondTokenOut, quote.preBondCost) = ITokenManagerPriceHelper(_getPriceHelperAddress(params.tokenManager)).calculatePurchaseAmountAndPriceParametric(avaxAmountIn, uint16(params.a), params.b, params.curveScaler, params.creatorFeeBasisPoints, params.tokenSplit);
        quote.preBondCost += buyFee;
        if(quote.preBondTokenOut < amountToBond) {
            quote.totalTokenOut = quote.preBondTokenOut;
            return quote;
        }
        quote.tokenBonds = true;
        quote.postBondCost = avaxAmountIn - (quote.preBondCost + buyFee);
        uint256 avaxSentToLp = ITokenManager(params.tokenManager).calculateCostScaledParametric(amountToBond, 0, uint16(params.a), params.b, params.curveScaler); // There is a very small discrepancy here, since some excess will be left
        uint256 tokenSentToLp =   10_000_000_000 ether - (10_000_000_000 ether * 25 / 1000) - amountToBond; // total - champs amount - amount to bond
        quote.postBondTokenOut = quotePairedTokenAmountOutForExactTokenIn(ITokenManager(params.tokenManager), tokenSentToLp, avaxSentToLp, quote.postBondCost);
        quote.totalTokenOut = quote.postBondTokenOut + quote.preBondTokenOut;
        return quote;
    }

    function getTokenOutOnCreationForArena(QuoteParams memory params) public view returns (QuoteResult memory quote) {
        uint256 amountToBond = 10_000_000_000 ether * params.tokenSplit / 100;
        uint256 buyFee = ITokenManager(params.tokenManager).tokenCreationBuyFeeAmount();
        uint256 arenaAmountIn = params.amountIn;
        // buy fee is factored in here unlike Avax
        (quote.preBondTokenOut, quote.preBondCost) = IInverseHelper(_getPriceHelperAddress(params.tokenManager)).getPurchaseAmountAndPriceWithGivenArenaForNewToken(params.a, params.curveScaler, params.tokenSplit, params.creatorFeeBasisPoints, arenaAmountIn);
        quote.preBondCost += buyFee;
        if(quote.preBondTokenOut < amountToBond) {
            quote.totalTokenOut = quote.preBondTokenOut;
            return quote;
        }
        quote.tokenBonds = true;
        quote.postBondCost = arenaAmountIn - quote.preBondCost;
        uint256 arenaSentToLp = ITokenManager(params.tokenManager).calculateCostScaledParametric(amountToBond, 0, params.a, params.b, params.curveScaler); // There is a very small discrepancy here, since some excess will be left
        uint256 tokenSentToLp =   10_000_000_000 ether - (10_000_000_000 ether * 25 / 1000) - amountToBond; // total - champs amount - amount to bond
        quote.postBondTokenOut = quotePairedTokenAmountOutForExactTokenIn(ITokenManager(params.tokenManager), tokenSentToLp, arenaSentToLp, quote.postBondCost);
        quote.totalTokenOut = quote.postBondTokenOut + quote.preBondTokenOut;
        return quote;
    }

    function getTokenOutOnCreation(QuoteParams memory params) external view returns (QuoteResult memory quote) {
        if(params.tokenManager == PROD_TOKEN_MANAGER || params.tokenManager == STAGING_TOKEN_MANAGER) {
            return getTokenOutOnCreationForAvax(params);
        } else if(params.tokenManager == PROD_TOKEN_MANAGER_ERC20 || params.tokenManager == STAGING_TOKEN_MANAGER_ERC20) {
            return getTokenOutOnCreationForArena(params);
        }
        revert("Invalid TokenManager");
     }

}