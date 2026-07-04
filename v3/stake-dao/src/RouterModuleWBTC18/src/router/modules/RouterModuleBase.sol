// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IRouterModule} from "src/router/interfaces/IRouterModule.sol";

/// @title RouterModuleBase
/// @notice An abstract contract that serves as the base for all router modules
/// @dev Exposes the onlyDelegateCall modifier to restrict functions to be called only by delegatecall
abstract contract RouterModuleBase is IRouterModule {
    address private immutable THIS;

    error OnlyDelegateCall();

    constructor() {
        THIS = address(this);
    }

    modifier onlyDelegateCall() {
        require(address(this) != THIS, OnlyDelegateCall());
        _;
    }
}
