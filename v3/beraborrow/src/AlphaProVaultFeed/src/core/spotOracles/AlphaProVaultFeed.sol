// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.26;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";
import {BeraborrowMath} from "src/dependencies/BeraborrowMath.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IKodiakPool} from "src/interfaces/utils/integrations/IKodiakPool.sol";
import {LiquidityAmounts, FullMath} from "lib/uniswap/LiquidityAmounts.sol";
import {PositionKey} from "lib/uniswap/PositionKey.sol";
import {TickMath} from "lib/uniswap/TickMath.sol";
import {IAlphaProVault} from "src/interfaces/utils/integrations/IAlphaProVault.sol";

/**
 * @title AlphaProVaultFeed
 * @author Beraborrow team
 * @notice Spot oracle for Alpha Pro Vault (Charm Finance)
 * @dev Doesn't support token0 and token1 with >18 decimals
 */
contract AlphaProVaultFeed is ISpotOracle {
    using SafeCast for uint;
    using TickMath for int24;

    uint256 constant WAD = 1e18;
    uint24 public constant HUNDRED_PERCENT = 1e6;

    IPriceFeed immutable priceFeed;
    IAlphaProVault immutable vault;
    IKodiakPool immutable pool;
    address immutable token0Oracle;
    address immutable token1Oracle;
    address immutable token0;
    address immutable token1;
    uint8 immutable decimals0;
    uint8 immutable decimals1;

    constructor(address _vault, address _priceFeed) {
        vault = IAlphaProVault(_vault);
        pool = IKodiakPool(vault.pool());
        priceFeed = IPriceFeed(_priceFeed);
        token0 = IAlphaProVault(_vault).token0();
        token1 = IAlphaProVault(_vault).token1();
        decimals0 = IAsset(token0).decimals();
        decimals1 = IAsset(token1).decimals();

        if (
            _vault == address(0) ||
            _priceFeed == address(0) ||
            address(pool) == address(0) ||
            token0 == address(0) ||
            token1 == address(0) ||
            decimals0 == 0 ||
            decimals1 == 0
        ) {
            revert("AlphaProVaultFeed: 0 address");
        }
    }

    function fetchPrice() external view returns (uint) {
        uint256 priceToken0 = priceFeed.fetchPrice(token0);
        uint256 priceToken1 = priceFeed.fetchPrice(token1);

        uint256 decimalMultiplier;
        uint256 decimalDivider;
        uint256 decimalDifference = BeraborrowMath._getAbsoluteDifference(decimals0, decimals1);
        if (decimals0 >= decimals1) {
            decimalMultiplier = 1;
            decimalDivider = 10 ** decimalDifference;
        } else {
            decimalMultiplier = 10 ** decimalDifference;
            decimalDivider = 1;
        }

        uint256 priceRatio = (priceToken0 * decimalMultiplier * WAD) / (priceToken1 * decimalDivider);

        uint160 priceSqrtRatioX96 = SafeCast.toUint160((Math.sqrt(priceRatio) * (2 ** 96)) / 1e9);

        (uint256 reserves0, uint256 reserves1) = _getReserves(priceSqrtRatioX96);

        uint256 normalizedReserve0 = reserves0 * (10 ** (18 - decimals0));
        uint256 normalizedReserve1 = reserves1 * (10 ** (18 - decimals1));

        uint256 totalSupply = vault.totalSupply();

        if (totalSupply == 0) return 0;

        uint256 totalValue = normalizedReserve0 * priceToken0 + normalizedReserve1 * priceToken1;

        return totalValue / totalSupply;
    }

    function _getReserves(uint160 priceSqrtRatioX96) internal view returns (uint256 reserves0, uint256 reserves1) {
        uint256 fees0;
        uint256 fees1;
        int24[2][3] memory positions = vault.getPositions();
        (, int24 tick,,,,,) = pool.slot0();
        for (uint256 i; i < 3; i++) {
            (uint256 reserve0, uint256 reserve1, uint256 fee0, uint256 fee1) = _getUnderlyingBalancesAtPrice(priceSqrtRatioX96, tick, positions[i][0], positions[i][1]);
            reserves0 += reserve0;
            reserves1 += reserve1;
            fees0 += fee0;
            fees1 += fee1;
        }

        (fees0, fees1) = _subtractManagerAndProtocolFee(fees0, fees1);

        // add any leftover in contract to current holdings, useful if `emergencyBurn` is used
        reserves0 += fees0 + vault.getBalance0();
        reserves1 += fees1 + vault.getBalance1();
    }

    function _getUnderlyingBalancesAtPrice(
        uint160 sqrtRatioX96,
        int24 tick,
        int24 lowerTick,
        int24 upperTick
    ) internal view returns (uint256 amount0Current, uint256 amount1Current, uint256 fee0, uint256 fee1) {
        (uint128 liquidity, uint256 feeGrowthInside0Last, uint256 feeGrowthInside1Last, uint128 tokensOwed0, uint128 tokensOwed1) = _position(lowerTick, upperTick);

        if (liquidity == 0) return (0, 0, 0, 0);

        // compute current holdings from liquidity
        (amount0Current, amount1Current) = LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96, lowerTick.getSqrtRatioAtTick(), upperTick.getSqrtRatioAtTick(), liquidity);

        // compute current fees earned
        fee0 = _computeFeesEarned(true, feeGrowthInside0Last, tick, lowerTick, upperTick, liquidity) + uint256(tokensOwed0);
        fee1 = _computeFeesEarned(false, feeGrowthInside1Last, tick, lowerTick, upperTick, liquidity) + uint256(tokensOwed1);
    }

    function _computeFeesEarned(bool isZero, uint256 feeGrowthInsideLast, int24 tick, int24 lowerTick, int24 upperTick, uint128 liquidity) private view returns (uint256 fee) {
        uint256 feeGrowthOutsideLower;
        uint256 feeGrowthOutsideUpper;
        uint256 feeGrowthGlobal;
        if (isZero) {
            feeGrowthGlobal = pool.feeGrowthGlobal0X128();
            (,, feeGrowthOutsideLower,,,,,) = pool.ticks(lowerTick);
            (,, feeGrowthOutsideUpper,,,,,) = pool.ticks(upperTick);
        } else {
            feeGrowthGlobal = pool.feeGrowthGlobal1X128();
            (,,, feeGrowthOutsideLower,,,,) = pool.ticks(lowerTick);
            (,,, feeGrowthOutsideUpper,,,,) = pool.ticks(upperTick);
        }

        unchecked {
            // calculate fee growth below
            uint256 feeGrowthBelow;
            if (tick >= lowerTick) {
                feeGrowthBelow = feeGrowthOutsideLower;
            } else {
                feeGrowthBelow = feeGrowthGlobal - feeGrowthOutsideLower;
            }

            // calculate fee growth above
            uint256 feeGrowthAbove;
            if (tick < upperTick) {
                feeGrowthAbove = feeGrowthOutsideUpper;
            } else {
                feeGrowthAbove = feeGrowthGlobal - feeGrowthOutsideUpper;
            }

            uint256 feeGrowthInside = feeGrowthGlobal - feeGrowthBelow - feeGrowthAbove;
            fee = FullMath.mulDiv(liquidity, feeGrowthInside - feeGrowthInsideLast, 0x100000000000000000000000000000000);
        }
    }

    function _subtractManagerAndProtocolFee(uint256 _fee0, uint256 _fee1) internal view returns (uint256 fee0, uint256 fee1) {
        uint24 managerFee = vault.managerFee();
        uint24 protocolFee = vault.protocolFee();

        uint24 _totalFee = managerFee + protocolFee;
        fee0 = _fee0 - _fee0 * _totalFee / HUNDRED_PERCENT;
        fee1 = _fee1 - _fee1 * _totalFee / HUNDRED_PERCENT;
    }

    function _position(int24 tickLower, int24 tickUpper)
        internal
        view
        returns (uint128, uint256, uint256, uint128, uint128)
    {
        bytes32 positionKey = PositionKey.compute(address(vault), tickLower, tickUpper);
        return pool.positions(positionKey);
    }
}
