// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IAgaveswapV3PoolImmutables.sol';
import './pool/IAgaveswapV3PoolState.sol';
import './pool/IAgaveswapV3PoolDerivedState.sol';
import './pool/IAgaveswapV3PoolActions.sol';
import './pool/IAgaveswapV3PoolOwnerActions.sol';
import './pool/IAgaveswapV3PoolEvents.sol';

/// @title The interface for a Agaveswap V3 Pool
/// @notice A Agaveswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IAgaveswapV3Pool is
    IAgaveswapV3PoolImmutables,
    IAgaveswapV3PoolState,
    IAgaveswapV3PoolDerivedState,
    IAgaveswapV3PoolActions,
    IAgaveswapV3PoolOwnerActions,
    IAgaveswapV3PoolEvents
{

}
