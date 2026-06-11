// SPDX-License-Identifier: MIT
pragma solidity >=0.8.29 <0.9.0;

/**
 * @title IDiamondLoupe
 * @notice EIP-2535 Diamond Standard - Introspection interface
 */
interface IDiamondLoupe {
    struct Facet {
        address facetAddress;
        bytes4[] functionSelectors;
    }

    /// @notice Gets all facet addresses and their function selectors
    function facets() external view returns (Facet[] memory facets_);

    /// @notice Gets all function selectors supported by a facet
    function facetFunctionSelectors(address _facet) external view returns (bytes4[] memory facetFunctionSelectors_);

    /// @notice Gets all facet addresses used by the diamond
    function facetAddresses() external view returns (address[] memory facetAddresses_);

    /// @notice Gets the facet that supports a function selector
    function facetAddress(bytes4 _functionSelector) external view returns (address facetAddress_);
}

