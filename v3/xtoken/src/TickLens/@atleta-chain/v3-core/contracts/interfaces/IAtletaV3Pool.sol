// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IAtletaV3PoolImmutables.sol';
import './pool/IAtletaV3PoolState.sol';
import './pool/IAtletaV3PoolDerivedState.sol';
import './pool/IAtletaV3PoolActions.sol';
import './pool/IAtletaV3PoolOwnerActions.sol';
import './pool/IAtletaV3PoolEvents.sol';

/// @title The interface for a Atleta DEX V3 Pool
/// @notice A Atleta pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IAtletaV3Pool is
    IAtletaV3PoolImmutables,
    IAtletaV3PoolState,
    IAtletaV3PoolDerivedState,
    IAtletaV3PoolActions,
    IAtletaV3PoolOwnerActions,
    IAtletaV3PoolEvents
{

}
