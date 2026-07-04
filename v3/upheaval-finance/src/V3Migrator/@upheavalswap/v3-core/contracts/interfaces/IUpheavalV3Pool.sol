// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IUpheavalV3PoolImmutables.sol';
import './pool/IUpheavalV3PoolState.sol';
import './pool/IUpheavalV3PoolDerivedState.sol';
import './pool/IUpheavalV3PoolActions.sol';
import './pool/IUpheavalV3PoolOwnerActions.sol';
import './pool/IUpheavalV3PoolEvents.sol';

/// @title The interface for a UpheavalSwap V3 Pool
/// @notice A UpheavalSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IUpheavalV3Pool is
    IUpheavalV3PoolImmutables,
    IUpheavalV3PoolState,
    IUpheavalV3PoolDerivedState,
    IUpheavalV3PoolActions,
    IUpheavalV3PoolOwnerActions,
    IUpheavalV3PoolEvents
{

}
