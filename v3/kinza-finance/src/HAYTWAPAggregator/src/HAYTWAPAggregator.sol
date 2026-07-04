// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import "@uniswap/v3-core/contracts/interfaces/pool/IUniswapV3PoolDerivedState.sol";
import "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import "@uniswap/v3-core/contracts/libraries/FixedPoint96.sol";
import "@uniswap/v3-core/contracts/libraries/FullMath.sol";

import {ITWAPAggregator} from "./interfaces/ITWAPAggregator.sol";
import {IPriceOracleGetter} from "./interfaces/IPriceOracleGetter.sol";

contract HAYTWAPAggregator is ITWAPAggregator {
    address internal immutable v3PoolAddress;
    address internal immutable AaveOracleAddress;
    address internal immutable WBNB_ADDRESS;

    constructor(
        address _poolAddress,
        address _aaveOracleAddress,
        address _wbnb_address
    ) {
        v3PoolAddress = _poolAddress;
        AaveOracleAddress = _aaveOracleAddress;
        WBNB_ADDRESS = _wbnb_address;
    }

    // already known: token0 is HAY, token1 is BNB
    function _getHAYTWAPInBNB(
        uint32 twapInterval
    ) private view returns (uint256 priceX96) {
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapInterval;
        secondsAgos[1] = 0;
        (int56[] memory tickCumulatives, ) = IUniswapV3PoolDerivedState(
            v3PoolAddress
        ).observe(secondsAgos);
        uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(
            int24((tickCumulatives[1] - tickCumulatives[0]) / twapInterval)
        );
        return FullMath.mulDiv(sqrtPriceX96, sqrtPriceX96, FixedPoint96.Q96);
    }

    function _getOracleBNBPrice() private view returns (uint256) {
        return
            IPriceOracleGetter(AaveOracleAddress).getAssetPrice(WBNB_ADDRESS);
    }

    function getTWAP() external view override returns (uint256) {
        uint256 HAYPriceX96 = _getHAYTWAPInBNB(300); // 300 seconds period
        uint256 oracleBNBPrice = _getOracleBNBPrice();
        return (HAYPriceX96 * oracleBNBPrice) / FixedPoint96.Q96;
    }
}
