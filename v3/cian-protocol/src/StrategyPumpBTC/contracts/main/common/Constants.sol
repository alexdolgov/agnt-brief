// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

abstract contract Constants {
    address public constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address public constant FBTC = 0xC96dE26018A54D51c097160568752c4E3BD6C364;
    address public constant WBTC = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;
    // Define a constant for precision, typically used for scaling up values to 1e18 for precise arithmetic operations.
    uint256 public constant PRECISION = 1e18;
    uint256 public constant BTC_PRECISION = 1e8;
}
