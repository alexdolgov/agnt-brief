// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.7.6;
pragma abicoder v2;

import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";

interface IPriceHelper {
    // Pool Data needed for get safe price
    struct PoolData {
        IAggregatorV3 feed;
        address referenceToken;
        int24 secondsAgo;
        uint256 threshold;
        uint256 stalePeriod;
    }
    // 1e30 100%

    struct PoolInput {
        address referenceToken;
        int24 secondsAgo;
        uint256 threshold;
        uint256 stalePeriod;
    }

    function normalise(address _token, uint256 _amount) external view returns (uint256 normalised);
    function getPrices(address pool) external view returns (uint256 price0, uint256 price1);
    function checkManipulation(address pool) external view returns (uint256 spot);
    function updatePoolData(address pool, PoolInput calldata _input) external;

    function amountsForLiquidity(address pool, int24 tickLower, int24 tickUpper, uint128 liquidity)
        external
        view
        returns (uint256, uint256);
    function liquidityForAmounts(address pool, int24 tickLower, int24 tickUpper, uint256 amount0, uint256 amount1)
        external
        view
        returns (uint128);
    function amountsForAmount0(address pool, int24 tickLower, int24 tickUpper, uint256 amount0)
        external
        view
        returns (uint256, uint256);
    function amountsForAmount1(address pool, int24 tickLower, int24 tickUpper, uint256 amount1)
        external
        view
        returns (uint256, uint256);
}
