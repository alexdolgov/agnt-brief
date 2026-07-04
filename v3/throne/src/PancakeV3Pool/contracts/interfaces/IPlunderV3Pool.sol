// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IPlunderV3PoolImmutables.sol';
import './pool/IPlunderV3PoolState.sol';
import './pool/IPlunderV3PoolDerivedState.sol';
import './pool/IPlunderV3PoolActions.sol';
import './pool/IPlunderV3PoolOwnerActions.sol';
import './pool/IPlunderV3PoolEvents.sol';

/// @title The interface for a PlunderSwap V3 Pool
/// @notice A PlunderSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IPlunderV3Pool is
    IPlunderV3PoolImmutables,
    IPlunderV3PoolState,
    IPlunderV3PoolDerivedState,
    IPlunderV3PoolActions,
    IPlunderV3PoolOwnerActions,
    IPlunderV3PoolEvents
{

}
