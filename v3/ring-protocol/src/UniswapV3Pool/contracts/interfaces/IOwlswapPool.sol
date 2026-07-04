// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IOwlswapPoolImmutables.sol';
import './pool/IOwlswapPoolState.sol';
import './pool/IOwlswapPoolDerivedState.sol';
import './pool/IOwlswapPoolActions.sol';
import './pool/IOwlswapPoolOwnerActions.sol';
import './pool/IOwlswapPoolEvents.sol';

/// @title The interface for a Owlswap V1 Pool
/// @notice A Uniswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IOwlswapPool is
    IOwlswapPoolImmutables,
    IOwlswapPoolState,
    IOwlswapPoolDerivedState,
    IOwlswapPoolActions,
    IOwlswapPoolOwnerActions,
    IOwlswapPoolEvents
{

}
