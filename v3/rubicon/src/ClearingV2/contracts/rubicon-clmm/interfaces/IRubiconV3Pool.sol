// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IRubiconV3PoolImmutables.sol';
import './pool/IRubiconV3PoolState.sol';
import './pool/IRubiconV3PoolDerivedState.sol';
import './pool/IRubiconV3PoolActions.sol';
import './pool/IRubiconV3PoolOwnerActions.sol';
import './pool/IRubiconV3PoolEvents.sol';

/// @title The interface for a Rubicon V3 Pool
/// @notice A Uniswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IRubiconV3Pool is
    IRubiconV3PoolImmutables,
    IRubiconV3PoolState,
    IRubiconV3PoolDerivedState,
    IRubiconV3PoolActions,
    IRubiconV3PoolOwnerActions,
    IRubiconV3PoolEvents
{

}
