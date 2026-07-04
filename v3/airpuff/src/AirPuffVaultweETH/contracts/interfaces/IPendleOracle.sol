// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

interface IPendleOracle {
    function getExchangeRate() external view returns (uint256);
}