// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/* ========================== FREE VARIABLES ========================== */

/// @dev Arbitrum `USDT` token address.
address constant USDT = 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9;

/// @dev Arbitrum `WETH` token address.
address constant WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;

/// @dev Arbitrum `Rain` token address.
address constant RAIN_TOKEN = 0x25118290e6A5f4139381D072181157035864099d;

/// @dev Uniswap-V4 `poolManager` address.
address constant POOL_MANAGER = 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32;

/// @dev Minimum allowable sqrt price for a Uniswap-V4 pool.
uint160 constant MIN_SQRT_PRICE = 4295128739;

/// @dev Maximum allowable sqrt price for a Uniswap-V4 pool.
uint160 constant MAX_SQRT_PRICE = 1461446703485210103287273052203988822378723970342;

/// @dev Uniswap-V4 `Rain-WETH` pool fee.
uint24 constant RAIN_WETH_FEE = 100;
