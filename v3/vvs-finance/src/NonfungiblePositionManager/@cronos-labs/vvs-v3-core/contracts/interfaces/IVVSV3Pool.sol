// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IVVSV3PoolImmutables.sol';
import './pool/IVVSV3PoolState.sol';
import './pool/IVVSV3PoolDerivedState.sol';
import './pool/IVVSV3PoolActions.sol';
import './pool/IVVSV3PoolOwnerActions.sol';
import './pool/IVVSV3PoolEvents.sol';

/// @title The interface for a VVS V3 Pool
/// @notice A VVS pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IVVSV3Pool is
    IVVSV3PoolImmutables,
    IVVSV3PoolState,
    IVVSV3PoolDerivedState,
    IVVSV3PoolActions,
    IVVSV3PoolOwnerActions,
    IVVSV3PoolEvents
{

}
