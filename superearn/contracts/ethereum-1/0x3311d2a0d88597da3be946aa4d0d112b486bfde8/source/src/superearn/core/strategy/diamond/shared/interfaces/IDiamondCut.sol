// SPDX-License-Identifier: MIT
pragma solidity >=0.8.29 <0.9.0;

/**
 * @title IDiamondCut
 * @notice EIP-2535 Diamond Standard - Facet management interface
 */
interface IDiamondCut {
    enum FacetCutAction {
        Add,
        Replace,
        Remove
    }

    struct FacetCut {
        address facetAddress;
        FacetCutAction action;
        bytes4[] functionSelectors;
    }

    /// @notice Add/replace/remove facet functions
    /// @param _diamondCut Facet addresses and function selectors
    /// @param _init Address of contract to execute _calldata
    /// @param _calldata Function call data for initialization
    function diamondCut(FacetCut[] calldata _diamondCut, address _init, bytes calldata _calldata) external;

    event DiamondCut(FacetCut[] _diamondCut, address _init, bytes _calldata);
}

