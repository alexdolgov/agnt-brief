// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

/**
 * @title DelegateController
 * @notice Provides a secure, controlled execution environment that only allows delegatecall entry.
 * @dev Stores `SELF` at construction to detect delegatecall at runtime. Use the `_onlyDelegateCall` modifier
 *      to restrict functions to be callable exclusively via delegatecall. Contracts inheriting this must consider
 *      storage layout and trust boundaries of the caller. Revert conditions are explicit via custom error.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
abstract contract DelegateController {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Reverts when a function guarded by `_onlyDelegateCall` is invoked directly
     */
    error OnlyDelegateCall();

    /*//////////////////////////////////////////////////////////////
                                STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    address private immutable SELF;

    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Ensures the function is executed through delegatecall.
     * @custom:reverts OnlyDelegateCall when `address(this) == SELF` (i.e., not delegatecall)
     */
    modifier _onlyDelegateCall() {
        if (address(this) == SELF) revert OnlyDelegateCall();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initializes the delegatecall sentinel
     * @dev Captures the contract address at deploy time to compare against during calls.
     */
    constructor() {
        SELF = address(this);
    }
}
