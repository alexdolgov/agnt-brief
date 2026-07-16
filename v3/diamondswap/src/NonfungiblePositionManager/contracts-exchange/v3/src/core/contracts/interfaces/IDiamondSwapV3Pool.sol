// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import "./pool/IDiamondSwapV3PoolImmutables.sol";
import "./pool/IDiamondSwapV3PoolState.sol";
import "./pool/IDiamondSwapV3PoolDerivedState.sol";
import "./pool/IDiamondSwapV3PoolActions.sol";
import "./pool/IDiamondSwapV3PoolOwnerActions.sol";
import "./pool/IDiamondSwapV3PoolEvents.sol";

/// @title The interface for a DiamondSwap V3 Pool
/// @notice A DiamondSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IDiamondSwapV3Pool is
    IDiamondSwapV3PoolImmutables,
    IDiamondSwapV3PoolState,
    IDiamondSwapV3PoolDerivedState,
    IDiamondSwapV3PoolActions,
    IDiamondSwapV3PoolOwnerActions,
    IDiamondSwapV3PoolEvents
{ }
