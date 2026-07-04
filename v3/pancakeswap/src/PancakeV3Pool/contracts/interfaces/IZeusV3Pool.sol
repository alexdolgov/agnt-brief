// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IZeusV3PoolImmutables.sol';
import './pool/IZeusV3PoolState.sol';
import './pool/IZeusV3PoolDerivedState.sol';
import './pool/IZeusV3PoolActions.sol';
import './pool/IZeusV3PoolOwnerActions.sol';
import './pool/IZeusV3PoolEvents.sol';

/// @title The interface for a ZeusSwap V3 Pool
/// @notice A ZeusSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IZeusV3Pool is
    IZeusV3PoolImmutables,
    IZeusV3PoolState,
    IZeusV3PoolDerivedState,
    IZeusV3PoolActions,
    IZeusV3PoolOwnerActions,
    IZeusV3PoolEvents
{

}
