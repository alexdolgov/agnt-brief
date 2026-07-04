// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IPlexExtendedPoolImmutables.sol';
import './pool/IPlexExtendedPoolState.sol';
import './pool/IPlexExtendedPoolDerivedState.sol';
import './pool/IPlexExtendedPoolActions.sol';
import './pool/IPlexExtendedPoolOwnerActions.sol';
import './pool/IPlexExtendedPoolEvents.sol';

/// @title The interface for a PlexSwap Extended Pool
/// @notice A PlexSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IPlexExtendedPool is
    IPlexExtendedPoolImmutables,
    IPlexExtendedPoolState,
    IPlexExtendedPoolDerivedState,
    IPlexExtendedPoolActions,
    IPlexExtendedPoolOwnerActions,
    IPlexExtendedPoolEvents
{

}
