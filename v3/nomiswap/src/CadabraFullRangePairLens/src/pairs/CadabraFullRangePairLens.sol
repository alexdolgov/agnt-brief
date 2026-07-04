// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.6;

import {IUniswapV3Pool} from "uniswap-v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {INonfungiblePositionManager} from "../interfaces/uniswap/INonfungiblePositionManager.sol";

import {TickMath} from "src/libraries/TickMath.sol";
import {LiquidityAmounts} from "src/libraries/uniswap/LiquidityAmounts.sol";

contract CadabraFullRangePairLens {

    address public immutable pool;
    INonfungiblePositionManager public immutable positionManager;
    address public immutable fullRangePair;
    uint256 public immutable protocolTokenId;

    address public immutable token0;
    address public immutable token1;

    int24 constant TICK_LOWER = -887200;
    int24 constant TICK_UPPER = 887200;

    constructor(address _pool, address _positionManager, address _fullRangePair, uint256 _protocolTokenId) {
        pool = _pool;
        positionManager = INonfungiblePositionManager(_positionManager);
        fullRangePair = _fullRangePair;
        protocolTokenId = _protocolTokenId;

        token0 = IUniswapV3Pool(_pool).token0();
        token1 = IUniswapV3Pool(_pool).token1();
    }

    function fullRangePairReserves()
    external
    view
    returns (uint256 reserve0, uint256 reserve1) {
        (uint128 liquidity,,,,) = IUniswapV3Pool(pool).positions(_positionKey(fullRangePair));
        return _calculateReserves(TICK_LOWER, TICK_UPPER, liquidity);
    }

    function polReserves()
    external
    view
    returns (uint256 reserve0, uint256 reserve1) {
        (,,,,,int24 tickLower,int24 tickUpper,uint128 liquidity,,,,) = positionManager.positions(protocolTokenId);
        return _calculateReserves(tickLower, tickUpper, liquidity);
    }

    function _calculateReserves(int24 tickLower,int24 tickUpper, uint128 liquidity)
    internal
    view
    returns (uint256 amount0, uint256 amount1)
    {
        (uint160 sqrtPriceX96,,,,,,) = IUniswapV3Pool(pool).slot0();

        uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);
        uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

        (amount0, amount1) =
        LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, sqrtRatioAX96, sqrtRatioBX96, liquidity);
    }

    function _positionKey(address _owner) internal view returns (bytes32) {
        return keccak256(abi.encodePacked(_owner, TICK_LOWER, TICK_UPPER));
    }

}
