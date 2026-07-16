// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/INineMMV3PoolImmutables.sol';
import './pool/INineMMV3PoolState.sol';
import './pool/INineMMV3PoolDerivedState.sol';
import './pool/INineMMV3PoolActions.sol';
import './pool/INineMMV3PoolOwnerActions.sol';
import './pool/INineMMV3PoolEvents.sol';

/// @title The interface for a NineMMSwap V3 Pool
/// @notice A NineMMSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface INineMMV3Pool is
    INineMMV3PoolImmutables,
    INineMMV3PoolState,
    INineMMV3PoolDerivedState,
    INineMMV3PoolActions,
    INineMMV3PoolOwnerActions,
    INineMMV3PoolEvents
{

}
