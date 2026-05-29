// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { Currency } from "./PoolKey.sol";

/// @title ICLRouterBase
/// @notice Interface for Infinity CL Router swap parameters
interface ICLRouterBase {
    struct CLSwapExactInputSingleParams {
        PoolKey poolKey;
        bool zeroForOne;
        uint128 amountIn;
        uint128 amountOutMinimum;
        bytes hookData;
    }

    struct CLSwapExactInputParams {
        Currency currencyIn;
        PathKey[] path;
        uint128 amountIn;
        uint128 amountOutMinimum;
    }
}

/// @notice PoolKey struct for Infinity pools
struct PoolKey {
    Currency currency0;
    Currency currency1;
    IHooks hooks;
    IPoolManager poolManager;
    uint24 fee;
    bytes32 parameters;
}

struct PathKey {
    Currency intermediateCurrency;
    uint24 fee;
    IHooks hooks;
    IPoolManager poolManager;
    bytes hookData;
    bytes32 parameters;
}

interface IHooks {}
interface IPoolManager {}

/// @title Actions
/// @notice Constants for Infinity action types
/// @dev Values from https://github.com/pancakeswap/infinity-periphery/blob/main/src/libraries/Actions.sol
library Actions {
    // CL pool swapping
    uint256 constant CL_SWAP_EXACT_IN_SINGLE = 0x06;
    uint256 constant CL_SWAP_EXACT_IN = 0x07;
    uint256 constant CL_SWAP_EXACT_OUT_SINGLE = 0x08;
    uint256 constant CL_SWAP_EXACT_OUT = 0x09;
    
    // Settlement actions
    uint256 constant SETTLE = 0x0b;
    uint256 constant SETTLE_ALL = 0x0c;
    uint256 constant SETTLE_PAIR = 0x0d;
    uint256 constant TAKE = 0x0e;
    uint256 constant TAKE_ALL = 0x0f;
    uint256 constant TAKE_PORTION = 0x10;
    uint256 constant TAKE_PAIR = 0x11;
    uint256 constant CLOSE_CURRENCY = 0x12;
    
    // Bin pool swapping
    uint256 constant BIN_SWAP_EXACT_IN_SINGLE = 0x1c;
    uint256 constant BIN_SWAP_EXACT_IN = 0x1d;
    uint256 constant BIN_SWAP_EXACT_OUT_SINGLE = 0x1e;
    uint256 constant BIN_SWAP_EXACT_OUT = 0x1f;
}

/// @title ActionConstants
/// @notice Constants used in Infinity actions
library ActionConstants {
    address constant MSG_SENDER = address(1);
    address constant ADDRESS_THIS = address(2);
    uint128 constant OPEN_DELTA = type(uint128).max;
    uint128 constant CONTRACT_BALANCE = 0;
}
