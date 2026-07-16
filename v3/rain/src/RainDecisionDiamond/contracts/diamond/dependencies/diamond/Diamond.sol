// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

import { LibUtilsRevert } from "../../libraries/LibUtilsRevert.sol";
import { Errors } from "../../shared/Errors.sol";

import { IDiamondCut } from "./interfaces/IDiamondCut.sol";
import { LibDiamond } from "./libraries/LibDiamond.sol";

/**
 * @title Diamond
 * @author Nick Mudge (Mudgen)
 * @notice Base contract implementing the diamond proxy pattern.
 * @dev Routes external calls to facet contracts using delegatecall. Facets and function selectors are managed through
 * `LibDiamond`.
 */
abstract contract Diamond {
    /* ========================== CONSTRUCTOR ========================== */

    /**
     * @dev Executes facet cuts and optionally runs initialization logic using delegatecall.
     * @param cuts_ Initial set of facet cuts to apply.
     * @param init_ Address of the contract or facet used for initialization.
     * @param data_ Calldata executed on `init_` using delegatecall.
     */
    constructor(IDiamondCut.FacetCut[] memory cuts_, address init_, bytes memory data_) payable {
        if (cuts_.length == 0) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidArrayLength.selector);
        }

        LibDiamond.diamondCut(cuts_, init_, data_);
    }

    /* ========================== FALLBACK/RECEIVE ========================== */

    /**
     * @dev Find facet for function that is called and execute the function if a facet is found and return any value.
     * Reverts if no facet is registered for the selector.
     */
    fallback() external payable {
        LibDiamond.DiamondStorage storage ds = LibDiamond.getDiamondStorage();

        // Get facet from function selector.
        address facet = address(bytes20(ds._facets[msg.sig]));

        require(facet != address(0), "Diamond: Function does not exist");

        // Execute external function from facet using delegatecall and return any value.
        assembly {
            // Copy function selector and any arguments.
            calldatacopy(0, 0, calldatasize())
            // Execute function call using the facet.
            let result := delegatecall(gas(), facet, 0, calldatasize(), 0, 0)
            // Get any return value.
            returndatacopy(0, 0, returndatasize())
            // Return any return value or error back to the caller.
            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    receive() external payable {}
}
