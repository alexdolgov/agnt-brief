// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import {IPancakeV3PoolImmutables} from "src/interfaces/pool/pancake/IPancakeV3PoolImmutables.sol";
import {IPancakeV3PoolState} from "src/interfaces/pool/pancake/IPancakeV3PoolState.sol";
import {IPancakeV3PoolDerivedState} from "src/interfaces/pool/pancake/IPancakeV3PoolDerivedState.sol";
import {IPancakeV3PoolActions} from "src/interfaces/pool/pancake/IPancakeV3PoolActions.sol";
import {IPancakeV3PoolOwnerActions} from "src/interfaces/pool/pancake/IPancakeV3PoolOwnerActions.sol";
import {IPancakeV3PoolEvents} from "src/interfaces/pool/pancake/IPancakeV3PoolEvents.sol";
import {IPancakeV3LmPool} from "src/interfaces/pool/pancake/IPancakeV3LmPool.sol";

/// @title The interface for a PancakeSwap V3 Pool
/// @notice A PancakeSwap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IPancakeV3Pool is
    IPancakeV3PoolImmutables,
    IPancakeV3PoolState,
    IPancakeV3PoolDerivedState,
    IPancakeV3PoolActions,
    IPancakeV3PoolOwnerActions,
    IPancakeV3PoolEvents
{
    function lmPool() external view returns (IPancakeV3LmPool);
}
