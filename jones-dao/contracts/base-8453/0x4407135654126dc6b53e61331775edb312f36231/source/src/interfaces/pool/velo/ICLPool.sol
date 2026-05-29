// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import {ICLPoolConstants} from "src/interfaces/pool/velo/ICLPoolConstants.sol";
import {ICLPoolState} from "src/interfaces/pool/velo/ICLPoolState.sol";
import {ICLPoolDerivedState} from "src/interfaces/pool/velo/ICLPoolDerivedState.sol";
import {ICLPoolActions} from "src/interfaces/pool/velo/ICLPoolActions.sol";
import {ICLPoolOwnerActions} from "src/interfaces/pool/velo/ICLPoolOwnerActions.sol";
import {ICLPoolEvents} from "src/interfaces/pool/velo/ICLPoolEvents.sol";

/// @title The interface for a CL Pool
/// @notice A CL pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface ICLPool is
    ICLPoolConstants,
    ICLPoolState,
    ICLPoolDerivedState,
    ICLPoolActions,
    ICLPoolEvents,
    ICLPoolOwnerActions
{}
