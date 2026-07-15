// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "./pair/IPairState.sol";
import "./pair/IPairEvents.sol";
import "./pair/IPairActions.sol";
import "./pair/IPairDerivedState.sol";

interface IBase is IPairState, IPairEvents, IPairActions, IPairDerivedState {}
