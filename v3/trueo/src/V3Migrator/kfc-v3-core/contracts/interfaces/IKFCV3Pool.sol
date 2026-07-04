// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IKFCV3PoolImmutables.sol';
import './pool/IKFCV3PoolState.sol';
import './pool/IKFCV3PoolDerivedState.sol';
import './pool/IKFCV3PoolActions.sol';
import './pool/IKFCV3PoolOwnerActions.sol';
import './pool/IKFCV3PoolEvents.sol';

/// @title The interface for a KFC V3 Pool
/// @notice A Uniswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IKFCV3Pool is
    IKFCV3PoolImmutables,
    IKFCV3PoolState,
    IKFCV3PoolDerivedState,
    IKFCV3PoolActions,
    IKFCV3PoolOwnerActions,
    IKFCV3PoolEvents
{

}
