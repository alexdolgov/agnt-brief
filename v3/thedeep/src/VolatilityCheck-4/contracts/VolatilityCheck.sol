// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { IICHIVault } from "../interfaces/IICHIVault.sol";
import { UV3Math } from "./lib/UV3Math.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

/**
 * @title VolatilityCheck
 * @notice Contract to check price volatility for legacy ICHI vaults without auxTwap
 */
contract VolatilityCheck {
    using SafeMath for uint256;

    uint256 private constant PRECISION = 10 ** 18;
    uint256 private constant PERCENT = 10000;

    /**
     * @notice Calculates current volatility by comparing spot and TWAP prices
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

        // Calculate delta between spot and TWAP prices
        uint256 spotTwapDelta = spotPrice > twapPrice
            ? spotPrice.sub(twapPrice).mul(PRECISION).div(spotPrice)
            : twapPrice.sub(spotPrice).mul(PRECISION).div(twapPrice);

        // Return delta converted to percentage points
        volatility = spotTwapDelta.mul(PERCENT).div(PRECISION);
    }
}