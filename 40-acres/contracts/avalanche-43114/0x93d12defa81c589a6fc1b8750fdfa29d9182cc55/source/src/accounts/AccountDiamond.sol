// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {LibDiamond} from "../libraries/LibDiamond.sol";
import {FacetRegistry} from "./FacetRegistry.sol";

/**
 * @title AccountDiamond
 * @dev Account contract that references centralized facets
 * No individual updates needed - facets are accessed by reference
 */
contract AccountDiamond {
    // Reference to facet registry (centralized)
    FacetRegistry public immutable facetRegistry;
    
    // Events
    event AccountCreated(address indexed account, address indexed owner);
    
    constructor(address _facetRegistry) {
        require(_facetRegistry != address(0));
        
        facetRegistry = FacetRegistry(_facetRegistry);
        
        // Initialize diamond storage with msg.sender as owner
        LibDiamond.setContractOwner(msg.sender);
        
        emit AccountCreated(address(this), msg.sender);
    }

    /**
     * @dev Get facet for a function selector from centralized registry
     * This is the key - facets are accessed by reference, not copied
     */
    function _getFacetForSelector(bytes4 selector) internal view returns (address) {
        return facetRegistry.getFacetForSelector(selector);
    }

    // Fallback function that uses centralized facet registry
    fallback() external payable {
        // Get facet from centralized registry
        address facet = _getFacetForSelector(msg.sig);
        require(facet != address(0));
        
        // Delegate call to the centralized facet
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), facet, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }

    receive() external payable {}
}