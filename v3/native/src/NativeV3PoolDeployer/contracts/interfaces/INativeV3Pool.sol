// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/INativeV3PoolImmutables.sol';
import './pool/INativeV3PoolState.sol';
import './pool/INativeV3PoolDerivedState.sol';
import './pool/INativeV3PoolActions.sol';
import './pool/INativeV3PoolOwnerActions.sol';
import './pool/INativeV3PoolEvents.sol';

/// @title The interface for a Native amm V3 Pool
/// @notice A Native pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface INativeV3Pool is
    INativeV3PoolImmutables,
    INativeV3PoolState,
    INativeV3PoolDerivedState,
    INativeV3PoolActions,
    INativeV3PoolOwnerActions,
    INativeV3PoolEvents
{

}
