// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

interface IZivoeGlobals {
    function stablecoinWhitelist(address token) external view returns (bool);
}
