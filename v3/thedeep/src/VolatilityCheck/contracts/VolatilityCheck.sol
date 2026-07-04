// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

import { IICHIVault } from "../interfaces/IICHIVault.sol";
import { UV3Math } from "./lib/UV3Math.sol";

contract VolatilityCheck {
    using SafeMath for uint256;

    uint256 private constant PRECISION = 10 ** 18;
    uint256 private constant PERCENT = 10000;

    /**
     * @notice Calculates current volatility by comparing spot, TWAP and auxTWAP prices
     * @param vault Address of the ICHIVault contract
     * @return volatility Current volatility in percentage points (1% = 100)
     */
    function currentVolatility(address vault) external view returns (uint256 volatility) {
        require(vault != address(0), "IVV: zero address");
        IICHIVault ichiVault = IICHIVault(vault);

        // Get pool info
        address pool = ichiVault.pool();
        address token0 = ichiVault.token0();
        address token1 = ichiVault.token1();
        uint32 twapPeriod = ichiVault.twapPeriod();
        uint32 auxTwapPeriod = ichiVault.auxTwapPeriod();

        require(pool != address(0), "IVV: invalid pool");

        // Get current tick and calculate spot price
        int24 tick = ichiVault.currentTick();
        uint256 spotPrice = UV3Math.getQuoteAtTick(tick, uint128(PRECISION), token0, token1);

        // Calculate TWAP price
        uint256 twapPrice = UV3Math.getQuoteAtTick(
            int24(UV3Math.consult(pool, twapPeriod)),
            uint128(PRECISION),
            token0,
            token1
        );

        // Calculate auxTWAP price if enabled
        uint256 auxTwapPrice = auxTwapPeriod > 0
            ? UV3Math.getQuoteAtTick(
                int24(UV3Math.consult(pool, auxTwapPeriod)),
                uint128(PRECISION),
                token0,
                token1
            )
            : twapPrice;

        // Calculate deltas between prices
        uint256 spotTwapDelta = spotPrice > twapPrice
            ? spotPrice.sub(twapPrice).mul(PRECISION).div(spotPrice)
            : twapPrice.sub(spotPrice).mul(PRECISION).div(twapPrice);

        uint256 spotAuxTwapDelta = spotPrice > auxTwapPrice
            ? spotPrice.sub(auxTwapPrice).mul(PRECISION).div(spotPrice)
            : auxTwapPrice.sub(spotPrice).mul(PRECISION).div(auxTwapPrice);

        uint256 twapAuxTwapDelta = twapPrice > auxTwapPrice
            ? twapPrice.sub(auxTwapPrice).mul(PRECISION).div(twapPrice)
            : auxTwapPrice.sub(twapPrice).mul(PRECISION).div(auxTwapPrice);

        // Return highest delta converted to percentage points
        volatility = max(max(spotTwapDelta, spotAuxTwapDelta), twapAuxTwapDelta)
            .mul(PERCENT)
            .div(PRECISION);
    }

    /// @notice max function
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? b : a;
    }
}