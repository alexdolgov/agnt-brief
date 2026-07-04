// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {SafeCast} from "openzeppelin/utils/math/SafeCast.sol";
import {Math} from "openzeppelin/utils/math/Math.sol";
import {Strings} from "openzeppelin/utils/Strings.sol";
import {TickMath} from "algebra-core/libraries/TickMath.sol";
import {TokenDeltaMath} from "algebra-core/libraries/TokenDeltaMath.sol";
import {LiquidityMath} from "algebra-core/libraries/LiquidityMath.sol";
import "forge-std/console.sol";

int256 constant UNIT = 1 << 96;

library MarketMaking {
    using SafeCast for uint256;
    using SafeCast for int256;

    struct PositionState {
        int24 floorBeginTick;
        int24 anchorBeginTick;
        int24 discoveryBeginTick;
        int24 discoveryEndTick;
        uint128 floorLiquidity;
        uint128 anchorLiquidity;
        uint128 discoveryLiquidity;
    }

    struct MarketState {
        uint256 marketMakerAsset;
        uint256 marketMakerMoney;
        uint256 circulatingAsset;
        uint160 price;
        int24 tickSpacing;
    }

    struct MarketMakingParam {
        uint128 anchorLiquidity;
        uint128 discoveryLiquidity;
    }

    function print(string memory name, PositionState memory ps) internal view {
        console.log("PositionState", name, "{");
        console.log("        floorBeginTick:", Strings.toString(ps.floorBeginTick));
        console.log("       anchorBeginTick:", Strings.toString(ps.anchorBeginTick));
        console.log("    discoveryBeginTick:", Strings.toString(ps.discoveryBeginTick));
        console.log("      discoveryEndTick:", Strings.toString(ps.discoveryEndTick));
        console.log("                       ");
        console.log("        floorLiquidity:", ps.floorLiquidity);
        console.log("       anchorLiquidity:", ps.anchorLiquidity);
        console.log("    discoveryLiquidity:", ps.discoveryLiquidity);
        console.log("}");
    }

    function print(string memory name, MarketState memory ms) internal view {
        console.log("MarketState", name, "{");
        console.log("        marketMakerMoney:", ms.marketMakerMoney);
        console.log("        marketMakerAsset:", ms.marketMakerAsset);
        console.log("        circulatingAsset:", ms.circulatingAsset);
        console.log("                       ");
        console.log("                  price:", ms.price);
        console.log("            tickSpacing:", Strings.toString(ms.tickSpacing));
        console.log("}");
    }

    function roundDownTick(int24 tick, int24 tickSpacing) internal pure returns (int24) {
        if (tick >= 0) {
            return (tick / tickSpacing) * tickSpacing;
        } else if (tick % tickSpacing == 0) {
            return tick;
        } else {
            return ((tick / tickSpacing) * tickSpacing) - tickSpacing;
        }
    }

    function initialPosition() internal pure returns (PositionState memory) {
        return PositionState({
            floorBeginTick: TickMath.MIN_TICK,
            anchorBeginTick: TickMath.MIN_TICK,
            discoveryBeginTick: TickMath.MAX_TICK,
            discoveryEndTick: TickMath.MAX_TICK,
            floorLiquidity: 0,
            anchorLiquidity: 0,
            discoveryLiquidity: 0
        });
    }

    function rebalance(
        MarketMakingParam memory params,
        MarketState memory market,
        PositionState memory currentPositions
    ) internal pure returns (PositionState memory ps) {
        (ps,) = _rebalance(params, market, currentPositions);
    }

    function bumpProgress(
        MarketMakingParam memory params,
        MarketState memory market,
        PositionState memory currentPositions
    ) internal pure returns (uint256 bp) {
        PositionState memory newp;
        (newp, bp) = _rebalance(params, market, currentPositions);
        return newp.floorBeginTick > currentPositions.floorBeginTick ? 1e18 : bp;
    }

    function calcRebalanceProfit(MarketState memory market, PositionState memory ps) internal pure returns (uint256) {
        int24 currentTick = TickMath.getTickAtSqrtRatio(market.price);
        int24 tickLower = roundDownTick(currentTick, market.tickSpacing);
        if (tickLower > ps.discoveryBeginTick && ps.discoveryLiquidity != 0) {
            return TokenDeltaMath.getToken1Delta(
                TickMath.getSqrtRatioAtTick(ps.discoveryBeginTick),
                TickMath.getSqrtRatioAtTick(tickLower),
                ps.discoveryLiquidity - ps.anchorLiquidity,
                false
            );
        }
        return 0;
    }

    function _rebalance(
        MarketMakingParam memory params,
        MarketState memory market,
        PositionState memory currentPositions
    ) internal pure returns (PositionState memory, uint256) {
        int24 currentTick = TickMath.getTickAtSqrtRatio(market.price);
        if (currentTick < currentPositions.anchorBeginTick) {
            return (
                PositionState({
                    floorBeginTick: currentPositions.floorBeginTick,
                    anchorBeginTick: currentPositions.anchorBeginTick,
                    discoveryBeginTick: currentPositions.anchorBeginTick,
                    discoveryEndTick: _calcDiscoveryEndTick(
                        currentPositions.anchorBeginTick,
                        params.discoveryLiquidity,
                        market.marketMakerAsset
                            - TokenDeltaMath.getToken0Delta(
                                market.price,
                                TickMath.getSqrtRatioAtTick(currentPositions.anchorBeginTick),
                                currentPositions.floorLiquidity,
                                true
                            ),
                        market.tickSpacing
                    ),
                    floorLiquidity: currentPositions.floorLiquidity,
                    anchorLiquidity: params.anchorLiquidity,
                    discoveryLiquidity: params.discoveryLiquidity
                }),
                0
            );
        } else {
            int24 tickLower = roundDownTick(currentTick, market.tickSpacing);
            int24 tickUpper = tickLower + market.tickSpacing;
            bool onAnchor = currentTick < currentPositions.discoveryBeginTick;
            uint256 spotLiquidity = onAnchor ? params.anchorLiquidity : params.discoveryLiquidity;

            (uint256 spotAsset, uint256 spotMoney,) = LiquidityMath.getAmountsForLiquidity(
                tickLower, tickUpper, uint256(spotLiquidity).toInt256().toInt128(), currentTick, market.price
            );

            (int24 anchorBeginTickNew, uint256 floorLiquidityNew, int256 virtualFloorPrice) = _calculateFloor(
                params.anchorLiquidity,
                tickLower,
                market.tickSpacing,
                (market.marketMakerMoney - spotMoney).toInt256(),
                (
                    market.circulatingAsset
                        - TokenDeltaMath.getToken0Delta(
                            TickMath.getSqrtRatioAtTick(tickLower), market.price, spotLiquidity.toUint128(), false
                        )
                ).toInt256()
            );

            return (
                PositionState({
                    floorBeginTick: anchorBeginTickNew - market.tickSpacing,
                    anchorBeginTick: anchorBeginTickNew,
                    discoveryBeginTick: onAnchor ? tickUpper : tickLower,
                    discoveryEndTick: _calcDiscoveryEndTick(
                        onAnchor ? tickUpper : tickLower,
                        params.discoveryLiquidity,
                        market.marketMakerAsset - spotAsset,
                        market.tickSpacing
                    ),
                    floorLiquidity: floorLiquidityNew.toUint128(),
                    anchorLiquidity: params.anchorLiquidity,
                    discoveryLiquidity: params.discoveryLiquidity
                }),
                uint256(
                    ((virtualFloorPrice - int160(TickMath.getSqrtRatioAtTick(anchorBeginTickNew))) * 1e18)
                        / (
                            int256(
                                uint256(
                                    TickMath.getSqrtRatioAtTick(anchorBeginTickNew + market.tickSpacing)
                                        - TickMath.getSqrtRatioAtTick(anchorBeginTickNew)
                                )
                            )
                        )
                )
            );
        }
    }

    function _calcDiscoveryEndTick(int24 tickDiscoveryBegin, uint128 liquidity, uint256 inventory, int24 tickSpacing)
        internal
        pure
        returns (int24)
    {
        uint256 sqrtPriceUpper = TickMath.getSqrtRatioAtTick(tickDiscoveryBegin);
        if ((sqrtPriceUpper * inventory) / uint256(UNIT) >= liquidity) {
            return roundDownTick(TickMath.MAX_TICK, tickSpacing);
        } else {
            uint256 sqrtPriceDiscoveryEnd = Math.min(
                TickMath.MAX_SQRT_RATIO,
                (liquidity * sqrtPriceUpper) / (liquidity - (sqrtPriceUpper * inventory) / uint256(UNIT))
            );
            return roundDownTick(TickMath.getTickAtSqrtRatio(sqrtPriceDiscoveryEnd.toUint160()), tickSpacing);
        }
    }

    function _calculateFloor(
        uint128 anchorLiquidity,
        int24 tickLower,
        int24 tickSpacing,
        int256 reserve,
        int256 circulatingSupply
    ) internal pure returns (int24 tickAnchorBegin, uint128 floorLiquidity, int256 virtualFloorPrice) {
        int256 p = int256(uint256(TickMath.getSqrtRatioAtTick(tickLower)));
        int256 r = int256(uint256(TickMath.getSqrtRatioAtTick(tickSpacing)));

        int256 xv = (int128(anchorLiquidity) * UNIT) / p;

        int256 d = int256(
            Math.mulDiv(
                uint256(uint256(anchorLiquidity) * anchorLiquidity),
                uint256((r - UNIT) * (r - UNIT)),
                uint256(UNIT * UNIT)
            )
        )
            + (
                4 * r
                    * (
                        int128(anchorLiquidity) * ((reserve * UNIT) / p - (circulatingSupply * p) / UNIT)
                            + circulatingSupply * reserve
                    )
            ) / UNIT;

        int256 sqrtPriceAnchorBegin = (int256(Math.sqrt(d.toUint256())) * UNIT + int128(anchorLiquidity) * (UNIT + r))
            / (2 * (circulatingSupply + xv));
        virtualFloorPrice = sqrtPriceAnchorBegin;
        tickAnchorBegin = TickMath.getTickAtSqrtRatio(sqrtPriceAnchorBegin.toUint256().toUint160());
        tickAnchorBegin = tickAnchorBegin > tickLower ? tickLower : roundDownTick(tickAnchorBegin, tickSpacing);

        uint256 anchorCapacity = tickAnchorBegin == tickLower
            ? 0
            : TokenDeltaMath.getToken0Delta(
                TickMath.getSqrtRatioAtTick(tickAnchorBegin), TickMath.getSqrtRatioAtTick(tickLower), anchorLiquidity, false
            );
        floorLiquidity = Math.ceilDiv(
            (uint256(circulatingSupply) - anchorCapacity) * uint256(UNIT),
            uint256(
                TokenDeltaMath.getToken0Delta(
                    TickMath.getSqrtRatioAtTick(tickAnchorBegin - tickSpacing),
                    TickMath.getSqrtRatioAtTick(tickAnchorBegin),
                    uint128(uint256(UNIT)),
                    false
                )
            )
        ).toUint128();
    }
}
