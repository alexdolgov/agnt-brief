// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

/**
 * @title IDiamondLoupe
 * @author Nick Mudge (Mudgen)
 * @notice Interface for querying facets and function selectors of a diamond contract.
 * @dev Part of the EIP-2535 Diamond standard. All functions are read-only and provide introspection into the diamond's
 * current facet configuration.
 */
interface IDiamondLoupe {
    /* ========================== TYPES ========================== */

    /// @dev Represents a facet and its supported function selectors.
    struct Facet {
        /// @custom:member facetAddress Address of the facet contract.
        address facetAddress;
        /// @custom:member functionSelectors Function selectors supported by the facet.
        bytes4[] functionSelectors;
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Gets all facet addresses and their four-byte function selectors.
     * @return facets Array of facets and their supported selectors.
     */
    function facets() external view returns (Facet[] memory);

    /**
     * @notice Gets all the function selectors supported by a specific facet.
     * @param facet Address of the facet.
     * @return facetFunctionSelectors Array of function selectors supported by the facet.
     */
    function facetFunctionSelectors(address facet) external view returns (bytes4[] memory);

    /**
     * @notice Get all the facet addresses used by a diamond.
     * @return facetAddresses Array of facet addresses.
     */
    function facetAddresses() external view returns (address[] memory);

    /**
     * @notice Gets the facet that supports the given selector.
     * @dev Returns `address(0)` if the facet is not found.
     * @param functionSelector Selector of the function to query.
     * @return facetAddress Address of the facet.
     */
    function facetAddress(bytes4 functionSelector) external view returns (address);
}
