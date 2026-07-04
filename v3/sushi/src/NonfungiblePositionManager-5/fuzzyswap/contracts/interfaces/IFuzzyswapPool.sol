// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import './pool/IFuzzyswapPoolImmutables.sol';
import './pool/IFuzzyswapPoolState.sol';
import './pool/IFuzzyswapPoolDerivedState.sol';
import './pool/IFuzzyswapPoolActions.sol';
import './pool/IFuzzyswapPoolOwnerActions.sol';
import './pool/IFuzzyswapPoolEvents.sol';

/// @title The interface for a Fuzzyswap Pool
/// @notice A Fuzzyswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IFuzzyswapPool is
    IFuzzyswapPoolImmutables,
    IFuzzyswapPoolState,
    IFuzzyswapPoolDerivedState,
    IFuzzyswapPoolActions,
    IFuzzyswapPoolOwnerActions,
    IFuzzyswapPoolEvents
{

}
