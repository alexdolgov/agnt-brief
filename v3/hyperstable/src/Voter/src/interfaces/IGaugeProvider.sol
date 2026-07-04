// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IGaugeProvider {
    function deployGauge(uint8 gaugeType, address pool) external returns (address, address, address);
}
