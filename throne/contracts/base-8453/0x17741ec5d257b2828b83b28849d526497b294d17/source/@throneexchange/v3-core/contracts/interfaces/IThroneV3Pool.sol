// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IThroneV3PoolImmutables.sol';
import './pool/IThroneV3PoolState.sol';
import './pool/IThroneV3PoolDerivedState.sol';
import './pool/IThroneV3PoolActions.sol';
import './pool/IThroneV3PoolOwnerActions.sol';
import './pool/IThroneV3PoolEvents.sol';

/// @title The interface for a ThroneExchange V3 Pool
/// @notice A ThroneExchange pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IThroneV3Pool is
    IThroneV3PoolImmutables,
    IThroneV3PoolState,
    IThroneV3PoolDerivedState,
    IThroneV3PoolActions,
    IThroneV3PoolOwnerActions,
    IThroneV3PoolEvents
{

}
