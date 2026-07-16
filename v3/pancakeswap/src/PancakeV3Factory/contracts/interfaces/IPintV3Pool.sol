// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IPintV3PoolImmutables.sol';
import './pool/IPintV3PoolState.sol';
import './pool/IPintV3PoolDerivedState.sol';
import './pool/IPintV3PoolActions.sol';
import './pool/IPintV3PoolOwnerActions.sol';
import './pool/IPintV3PoolEvents.sol';

/// @title The interface for a PintSwap V3 Pool
/// @notice A PintSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IPintV3Pool is
    IPintV3PoolImmutables,
    IPintV3PoolState,
    IPintV3PoolDerivedState,
    IPintV3PoolActions,
    IPintV3PoolOwnerActions,
    IPintV3PoolEvents
{

}
