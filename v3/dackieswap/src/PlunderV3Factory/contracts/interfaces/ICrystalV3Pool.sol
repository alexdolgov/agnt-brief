// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/ICrystalV3PoolImmutables.sol';
import './pool/ICrystalV3PoolState.sol';
import './pool/ICrystalV3PoolDerivedState.sol';
import './pool/ICrystalV3PoolActions.sol';
import './pool/ICrystalV3PoolOwnerActions.sol';
import './pool/ICrystalV3PoolEvents.sol';

/// @title The interface for a CrystalSwap V3 Pool
/// @notice A CrystalSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface ICrystalV3Pool is
    ICrystalV3PoolImmutables,
    ICrystalV3PoolState,
    ICrystalV3PoolDerivedState,
    ICrystalV3PoolActions,
    ICrystalV3PoolOwnerActions,
    ICrystalV3PoolEvents
{

}
