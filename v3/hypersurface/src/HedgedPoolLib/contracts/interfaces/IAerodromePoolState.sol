// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.8.18;

interface IAerodromePoolState {
    function slot0()
        external
        view
        returns (
            uint160 sqrtPriceX96,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            bool unlocked
        );
}
