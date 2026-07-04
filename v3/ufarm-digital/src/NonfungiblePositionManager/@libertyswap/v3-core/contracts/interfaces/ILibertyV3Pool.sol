// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/ILibertyV3PoolImmutables.sol';
import './pool/ILibertyV3PoolState.sol';
import './pool/ILibertyV3PoolDerivedState.sol';
import './pool/ILibertyV3PoolActions.sol';
import './pool/ILibertyV3PoolOwnerActions.sol';
import './pool/ILibertyV3PoolEvents.sol';

/// @title The interface for a LibertySwap V3 Pool
/// @notice A LibertySwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface ILibertyV3Pool is
    ILibertyV3PoolImmutables,
    ILibertyV3PoolState,
    ILibertyV3PoolDerivedState,
    ILibertyV3PoolActions,
    ILibertyV3PoolOwnerActions,
    ILibertyV3PoolEvents
{

}
