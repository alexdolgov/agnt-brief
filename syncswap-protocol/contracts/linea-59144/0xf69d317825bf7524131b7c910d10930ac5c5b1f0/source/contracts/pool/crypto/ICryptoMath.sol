// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

interface ICryptoMath {
    function getY(
        uint a,
        uint gamma,
        uint x0,
        uint x1,
        uint d,
        uint i
    ) external view returns (uint y, uint k0_prev);

    function computeD(
        uint a,
        uint gamma,
        uint xp0,
        uint xp1,
        uint k0_prev
    ) external view returns (uint);

    function getLastPrices(
        uint a,
        uint gamma,
        uint xp0,
        uint xp1,
        uint d,
        uint priceScale
    ) external view returns (uint);

    function getPriceOracle(
        uint lastTimestamp,
        uint maTime,
        uint lastPrices,
        uint priceScale,
        uint priceOracle
    ) external view returns (uint);
}