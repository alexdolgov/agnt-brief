// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IOracleUSD {
    function priceUSD(address asset) external view returns (uint256);
}
