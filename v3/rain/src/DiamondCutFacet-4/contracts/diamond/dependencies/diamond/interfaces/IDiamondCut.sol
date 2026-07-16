// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

/**
 * @title IDiamondCut
 * @author Nick Mudge (Mudgen)
 * @notice Interface for managing facets in a diamond contract.
 * @dev Defines the `diamondCut` function, events, errors, and related types according to EIP-2535.
 */
interface IDiamondCut {
    /* ========================== TYPES ========================== */

    /// @dev Represents the type of action to perform on a facet.
    enum FacetCutAction {
        Add,
        Replace,
        Remove
    }

    /// @dev Represents a single facet cut operation.
    struct FacetCut {
        /// @custom:member facetAddress Address of the facet contract.
        address facetAddress;
        /// @custom:member action Type of action: Add, Replace, or Remove.
        FacetCutAction action;
        /// @custom:member functionSelectors Array of function selectors to add/replace/remove.
        bytes4[] functionSelectors;
    }

    /* ========================== EVENTS ========================== */

    /**
     * @notice Emitted when facets are added, replaced, or removed.
     * @param cuts Array of facet cut operations.
     * @param init Address of the contract or facet to execute data.
     * @param data Function call data executed with delegatecall on init.
     */
    event DiamondCut(FacetCut[] cuts, address init, bytes data);

    /* ========================== ERRORS ========================== */

    /**
     * @notice Revert error for failed initialization during diamond cut.
     * @param initializationContractAddress Address of the contract that was called.
     * @param data Calldata passed to the initialization function.
     */
    error InitializationFunctionReverted(address initializationContractAddress, bytes data);

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Add/replace/remove any number of functions and optionally execute a function with delegatecall.
     * @param cuts Contains the facet addresses and function selectors.
     * @param init Address of the contract or facet to execute data.
     * @param data Function call, including function selector and arguments. Executed with a delegatecall on `init`.
     */
    function diamondCut(FacetCut[] calldata cuts, address init, bytes calldata data) external;
}
