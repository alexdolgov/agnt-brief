// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { LibDiamond } from "./libraries/LibDiamond.sol";
import { IDiamondCut } from "./interfaces/IDiamondCut.sol";
import { IRainPool } from "../interfaces/IRainPool.sol";

// When no function exists for function called
error FunctionNotFound(bytes4 _functionSelector);

/**
 * @title RoutingEngineDiamond
 */
contract RainPoolDiamond {
    event FacetCalled(address indexed facet, bytes4 indexed functionSelector);

    constructor(IDiamondCut.FacetCut[] memory _diamondCut, IRainPool.Params memory params) payable {
        LibDiamond.initializeDiamond(params);
        LibDiamond.diamondCut(_diamondCut, address(0), "");
    }

    // Find facet for function that is called and execute the
    // function if a facet is found and return any value.
    fallback() external payable {
        LibDiamond.DiamondStorage storage ds;
        bytes32 position = LibDiamond.DIAMOND_STORAGE_POSITION;
        // get diamond storage
        assembly {
            ds.slot := position
        }
        // get facet from function selector
        address facet = ds.facetAddressAndSelectorPosition[msg.sig].facetAddress;
        if (facet == address(0)) {
            revert FunctionNotFound(msg.sig);
        }
        // Execute external function from facet using delegatecall and return any value.
        assembly {
            // copy function selector and any arguments
            calldatacopy(0, 0, calldatasize())
            // execute function call using the facet
            let result := delegatecall(gas(), facet, 0, calldatasize(), 0, 0)
            // get any return value
            returndatacopy(0, 0, returndatasize())
            // return any return value or error back to the caller
            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    // Able to receive ether
    // solhint-disable-next-line no-empty-blocks
    receive() external payable {}
}
