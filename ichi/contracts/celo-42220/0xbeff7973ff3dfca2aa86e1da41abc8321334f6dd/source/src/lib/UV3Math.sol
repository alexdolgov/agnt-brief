// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;
pragma abicoder v2;

import "../base/Constants.sol";

import { Math } from "@openzeppelin/contracts/math/Math.sol";
import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { OracleLibrary } from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

import "../interfaces/external/ichi/IICHIVault.sol";

/// @title Uniswap V3 Math Library for Aegis
/// @notice A library for performing calculations related to Uniswap V3 and ICHI vaults
library UV3Math {
    using SafeMath for uint256;

    /// @dev this function is instead to protect against spot price manipulations within a block
    ///      however it's possible for the oracle to be updated in the current block within a swap occuring
    ///      this is because pool mints & mints also update the oracle, which could be triggered by ICHIVault interactions
    ///      in future consider improving this function to only return true if a swap occured in current block
    /// @notice Checks if the last price change did not happen in the current block.
    /// @param ichiVault The ICHI vault to check.
    /// @return aged True if the last TWAP oracle observation was not in the current block, false otherwise.
    function isOracleAged(IICHIVault ichiVault) external view returns (bool aged) {
        IUniswapV3Pool pool = IUniswapV3Pool(ichiVault.pool());
        (,, uint16 observationIndex,,,,) = pool.slot0();
        (uint32 lastBlockTimestamp,,,) = pool.observations(observationIndex);
        aged = (block.timestamp != lastBlockTimestamp);
    }

    /// @notice Fetches the spot price for a given pair and amount
    /// @param tokenIn The address of the input token
    /// @param tokenOut The address of the output token
    /// @param tick The current tick of the pool
    /// @param amountIn The input amount
    /// @return amountOut The output amount based on the spot price
    function fetchSpot(address tokenIn, address tokenOut, int24 tick, uint256 amountIn) public pure returns (uint256 amountOut) {
        return OracleLibrary.getQuoteAtTick(tick, toUint128(amountIn), tokenIn, tokenOut);
    }

    /// @notice Fetches the TWAP (Time-Weighted Average Price) for a given pair and amount
    /// @param pool The address of the Uniswap V3 pool
    /// @param tokenIn The address of the input token
    /// @param tokenOut The address of the output token
    /// @param twapPeriod The period over which to calculate the TWAP
    /// @param amountIn The input amount
    /// @return amountOut The output amount based on the TWAP
    function fetchTwap(
        address pool,
        address tokenIn,
        address tokenOut,
        uint32 twapPeriod,
        uint256 amountIn
    )
        private
        view
        returns (uint256 amountOut)
    {
        // Leave twapTick as a int256 to avoid solidity casting
        int256 twapTick = OracleLibrary.consult(pool, twapPeriod);
        return OracleLibrary.getQuoteAtTick(
            int24(twapTick), // can assume safe being result from consult()
            toUint128(amountIn),
            tokenIn,
            tokenOut
        );
    }

    /// @notice Calculates the token amounts owned by the Aegis vault in a specific ICHI vault
    ///         excluding any uncollected swap fees
    /// @param ichiVault The ICHI vault to calculate amounts for
    /// @return amount0 The amount of token0
    /// @return amount1 The amount of token1
    function calculateAegisVaultAmountsInICHIVault(IICHIVault ichiVault) public view returns (uint256 amount0, uint256 amount1) {
        (uint256 token0Amt, uint256 token1Amt) = ichiVault.getTotalAmounts(); // NB: excluding any uncollected swap fees
        uint256 tSupply = ichiVault.totalSupply();

        require(tSupply > 0, "ZTS");

        uint256 balance = ichiVault.balanceOf(address(this));
        (amount0, amount1) = (_mulDiv(token0Amt, balance, tSupply), _mulDiv(token1Amt, balance, tSupply));
    }

    struct CalculateVolatilityParams {
        address token0;
        address token1;
        IICHIVault depositVault;
        IICHIVault targetVault;
        uint32 aegisTwapPeriod;
        bool isSamePool;
    }

    /// @notice Calculates the volatility between spot and TWAP prices for the deposit and target vaults
    /// @param cvp The parameters required for volatility calculation
    /// @return depositSpotPrice The spot price in the deposit vault
    /// @return targetSpotPrice The spot price in the target vault
    /// @return volatility The calculated volatility (maximum price delta) expressed as a FP U18
    function calculateVolatility(CalculateVolatilityParams memory cvp)
        external
        view
        returns (uint256 depositSpotPrice, uint256 targetSpotPrice, uint256 volatility)
    {
        // Spot price for depositVault's pool, accurate to within ~1 BSP
        depositSpotPrice = fetchSpot(cvp.token0, cvp.token1, cvp.depositVault.currentTick(), PRECISION);
        // TWAP price for depositVault's pool
        uint256 depositTwapPrice = fetchTwap(cvp.depositVault.pool(), cvp.token0, cvp.token1, cvp.aegisTwapPeriod, PRECISION);

        uint256 depositPriceDelta = _calculatePriceDelta(depositSpotPrice, depositTwapPrice);

        volatility = depositPriceDelta; // NB: if isSamePool then the volatility for both underlying ICHIVaults are the same
        targetSpotPrice = depositSpotPrice; // NB: this is true if isSamePool

        if (!cvp.isSamePool) {
            // Spot price for targetVault's pool, accurate to within ~1 BSP
            targetSpotPrice = fetchSpot(cvp.token0, cvp.token1, cvp.targetVault.currentTick(), PRECISION);
            // TWAP price for targetVault's pool
            uint256 targetTwapPrice = fetchTwap(cvp.targetVault.pool(), cvp.token0, cvp.token1, cvp.aegisTwapPeriod, PRECISION);

            uint256 targetPriceDelta = _calculatePriceDelta(targetSpotPrice, targetTwapPrice);

            // We also check if spot prices in both underlying ICHIVaults' pools are too far apart
            uint256 vaultsSpotPriceDelta = _calculatePriceDelta(targetSpotPrice, depositSpotPrice);

            volatility = Math.max(depositPriceDelta, targetPriceDelta);
            volatility = Math.max(volatility, vaultsSpotPriceDelta);
        }

        return (depositSpotPrice, targetSpotPrice, volatility);
    }

    struct DepositCtx {
        // user's effective deposit amounts
        uint256 userDepositAmount0; // user's effective token0 deposit amount in the depositVault
        uint256 userDepositAmount1; // user's effective token1 deposit amount in the depositVault
        // AegisVault amounts in depositVault prior to this.deposit
        uint256 aegisAmount0InDepositVault; // AegisVault's total token0 amount in the depositVault
        uint256 aegisAmount1InDepositVault; // AegisVault's total token1 amount in the depositVault
        // AegisVault amounts in targetVault prior to this.deposit
        uint256 aegisAmount0InTargetVault; // AegisVault's total token0 amount in the targetVault
        uint256 aegisAmount1InTargetVault; // AegisVault's total token1 amount in the targetVault
        // total value of amounts denominated in token1 using the spot price for the underlying pool
        uint256 userDepositValueU18; // value of user's deposit using the depositVault's pool spot price
        uint256 aegisValueInDepositVaultU18; // value of Aegis's depositVault shares using the depositVault's pool spot price
        uint256 aegisValueInTargetVaultU18; // value of Aegis's targetVault shares using the targetVault's pool spot price
        // NOTE: expressed with U18 fixed-point precision
        uint256 userValueContributionU18; // user's value contribution share to both ICHIVaults
        // basically the amount{0|1} that the owner is entitled to from the total{0|1} in both ICHIVaults
        uint256 userContributionToTotal0; // user's token0 value share in only both vaults (i.e. not any custodied in the Aegis vault)
        uint256 userContributionToTotal1; // user's token1 value share in only both vaults (i.e. not any custodied in the Aegis vault)
    }

    function prepareDepositCtx(
        IICHIVault depositVault,
        IICHIVault targetVault,
        uint256 depositSharesAmount,
        uint256 depositSpotPrice,
        uint256 targetSpotPrice
    )
        external
        view
        returns (DepositCtx memory ctx)
    {
        // get the total token0 and token1 amount of the depositVault
        // NB: since we just collected uncollected swap fees above the _prepareDepositCtx invocation this total include those fees
        (uint256 depositToken0Amt, uint256 depositToken1Amt) = depositVault.getTotalAmounts();
        // get total supply/shares of the depositVault
        uint256 depositTotalSupply = depositVault.totalSupply();

        // calculate how many of each token the user is depositing to the depositVault
        // i.e. what is the token{0&1} worth of the depositSharesAmount
        // depositTotalSupply can't be 0 because depositShares exists
        ctx.userDepositAmount0 = _mulDiv(depositToken0Amt, depositSharesAmount, depositTotalSupply);
        ctx.userDepositAmount1 = _mulDiv(depositToken1Amt, depositSharesAmount, depositTotalSupply);

        // get the Aegis vault's token{0&1} amounts in the depositVault and targetVault
        (ctx.aegisAmount0InDepositVault, ctx.aegisAmount1InDepositVault) = calculateAegisVaultAmountsInICHIVault(depositVault);
        (ctx.aegisAmount0InTargetVault, ctx.aegisAmount1InTargetVault) = calculateAegisVaultAmountsInICHIVault(targetVault);

        // calculate the token1 denominated value of user's deposit
        // and also the token1 denominated value of the Aegis vault's shares in both ICHIVaults using spot prices
        // NOTE: it's okay to use spot prices as the volatility check was passed successfully
        ctx.userDepositValueU18 = _calculateValueU18(ctx.userDepositAmount0, ctx.userDepositAmount1, depositSpotPrice);
        ctx.aegisValueInDepositVaultU18 =
            _calculateValueU18(ctx.aegisAmount0InDepositVault, ctx.aegisAmount1InDepositVault, depositSpotPrice);
        ctx.aegisValueInTargetVaultU18 = _calculateValueU18(ctx.aegisAmount0InTargetVault, ctx.aegisAmount1InTargetVault, targetSpotPrice);

        // user value share in only both vaults (i.e. not any custodied directly by the Aegis vault, e.g. due to donations)
        ctx.userValueContributionU18 =
            _mulDiv(ctx.userDepositValueU18, PRECISION, ctx.aegisValueInDepositVaultU18.add(ctx.aegisValueInTargetVaultU18));
        ctx.userContributionToTotal0 =
            _mulDiv(ctx.aegisAmount0InDepositVault.add(ctx.aegisAmount0InTargetVault), ctx.userValueContributionU18, PRECISION);
        ctx.userContributionToTotal1 =
            _mulDiv(ctx.aegisAmount1InDepositVault.add(ctx.aegisAmount1InTargetVault), ctx.userValueContributionU18, PRECISION);
    }

    /// @notice Calculates the relative absolute price delta between 2 prices
    /// @param priceA The first price
    /// @param priceB The second price
    /// @return priceDelta The calculated price delta expressed as a FP U18
    function _calculatePriceDelta(uint256 priceA, uint256 priceB) private pure returns (uint256 priceDelta) {
        priceDelta = (priceA > priceB) ? _mulDiv(priceA.sub(priceB), PRECISION, priceA) : _mulDiv(priceB.sub(priceA), PRECISION, priceB);
    }

    /// @notice Casts a uint256 to a uint128, reverting on overflow
    /// @param y The uint256 to be downcasted
    /// @return z The downcasted integer, now type uint128
    function toUint128(uint256 y) private pure returns (uint128 z) {
        require((z = uint128(y)) == y, "SafeUint128: overflow");
    }

    /// @notice Performs multiplication followed by division
    /// @param a The first operand
    /// @param b The second operand
    /// @param c The divisor
    /// @return result The result of (a * b) / c
    function _mulDiv(uint256 a, uint256 b, uint256 c) private pure returns (uint256 result) {
        result = a.mul(b).div(c);
    }

    /// @dev takes in amounts{0,1} and a price(in terms of token1/token0) and returns a total value denominated in token1 * PRESICION
    function _calculateValueU18(uint256 amount0, uint256 amount1, uint256 price) private pure returns (uint256 value) {
        value = amount0.mul(price).add(amount1.mul(PRECISION));
    }

    /// @notice Checks if deposits are allowed on both ICHI vaults
    /// @param depositVault The deposit ICHI vault
    /// @param targetVault The target ICHI vault
    /// @param isInverted Whether the token order is inverted
    /// @return True if deposit token can be deposited to depositVault AND target token can be deposited to targetVault
    function areICHIDepositsAllowed(IICHIVault depositVault, IICHIVault targetVault, bool isInverted) external view returns (bool) {
        if (isInverted) {
            return depositVault.deposit1Max() > 0 && targetVault.deposit0Max() > 0;
        } else {
            return depositVault.deposit0Max() > 0 && targetVault.deposit1Max() > 0;
        }
    }

    /// @notice Applies implied slippage adjustment to user's value contribution
    /// @param ctx The deposit context containing user deposit amounts and values
    /// @param token0Gt True if user's token0 stake exceeds their effective token0 deposit
    /// @param targetSpotPrice The spot price in the target vault
    /// @param targetVault The target ICHI vault
    /// @param quoter The Uniswap V3 quoter
    /// @param token0 Address of token0
    /// @param token1 Address of token1
    /// @return adjustedUserValueContributionU18 The adjusted user value contribution
    function applyImpliedSlippageAdjustment(
        DepositCtx memory ctx,
        bool token0Gt,
        uint256 targetSpotPrice,
        IICHIVault targetVault,
        IQuoter quoter,
        address token0,
        address token1
    )
        external
        returns (uint256 adjustedUserValueContributionU18)
    {
        int24 currentTick = targetVault.currentTick();
        uint24 fee = targetVault.fee();

        uint256 deltaValue;
        if (token0Gt) {
            uint256 deltaAmountIn = ctx.userDepositAmount1.sub(ctx.userContributionToTotal1);
            uint256 actualDeltaOut0 = ctx.userContributionToTotal0.sub(ctx.userDepositAmount0);
            if (fetchSpot(token1, token0, currentTick, deltaAmountIn) > 0) {
                uint256 realDeltaOut0 = quoter.quoteExactInputSingle(token1, token0, fee, deltaAmountIn, 0);
                require(actualDeltaOut0 >= realDeltaOut0, "USW");
                deltaValue = _mulDiv(actualDeltaOut0.sub(realDeltaOut0), targetSpotPrice, PRECISION);
            } else {
                deltaValue = actualDeltaOut0;
            }
        } else {
            uint256 deltaAmountIn = ctx.userDepositAmount0.sub(ctx.userContributionToTotal0);
            uint256 actualDeltaOut1 = ctx.userContributionToTotal1.sub(ctx.userDepositAmount1);
            if (fetchSpot(token0, token1, currentTick, deltaAmountIn) > 0) {
                uint256 realDeltaOut1 = quoter.quoteExactInputSingle(token0, token1, fee, deltaAmountIn, 0);
                require(actualDeltaOut1 >= realDeltaOut1, "USW");
                deltaValue = actualDeltaOut1.sub(realDeltaOut1);
            } else {
                deltaValue = actualDeltaOut1;
            }
        }

        adjustedUserValueContributionU18 = _mulDiv(
            ctx.userDepositValueU18.sub(deltaValue.mul(PRECISION)),
            PRECISION,
            ctx.aegisValueInDepositVaultU18.add(ctx.aegisValueInTargetVaultU18)
        );
    }
}
