// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

abstract contract Constants {
    address public constant USCC = 0x14d60E7FDC0D71d8611742720E4C50E7a974020c; // decimals: 6
    address public constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7; // decimals: 6
    address public constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48; // decimals: 6
    address public constant USDS = 0xdC035D45d973E3EC169d2276DDab16f1e407384F; // decimals: 18
    address public constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F; // decimales: 18

    // Time check for price update, 100 hours
    uint256 public constant MAX_ORACLE_PRICE_UPDATED_PERIOD = 100 hours;
}
