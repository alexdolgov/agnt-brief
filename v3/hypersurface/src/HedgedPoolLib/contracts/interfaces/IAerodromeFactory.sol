// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.8.18;

interface IAerodromeFactory {
    function getPool(
        address tokenA,
        address tokenB,
        int24 tickSpacing
    ) external view returns (address pool);
}
