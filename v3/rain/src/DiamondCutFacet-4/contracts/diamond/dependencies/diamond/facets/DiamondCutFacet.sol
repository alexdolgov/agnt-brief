// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

import { LibConstants } from "../../../libraries/LibConstants.sol";
import { Modifiers } from "../../../utils/Modifiers.sol";

import { IDiamondCut } from "../interfaces/IDiamondCut.sol";
import { LibDiamond } from "../libraries/LibDiamond.sol";

/**
 * @title DiamondCutFacet
 * @author Nick Mudge (Mudgen)
 * @notice Provides functionality to add, replace, or remove facets in a diamond contract.
 * @dev Implements the EIP-2535 Diamond standard `diamondCut` function. Allows atomic updates to the diamond's
 * functionality and supports calling an optional initialization function.
 */
contract DiamondCutFacet is IDiamondCut, Modifiers {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IDiamondCut
     */
    function diamondCut(
        FacetCut[] calldata cuts,
        address init,
        bytes calldata data
    ) external override onlyRole(LibConstants.OWNER_ROLE) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.getDiamondStorage();

        uint256 originalSelectorCount = ds._selectorCount;
        uint256 selectorCount = originalSelectorCount;
        bytes32 selectorSlot;

        // Check if last selector slot is not full.
        // "selectorCount & 7" is a gas efficient modulo by eight "selectorCount % 8".
        if (selectorCount & 7 > 0) {
            // Get last selectorSlot.
            // "selectorCount >> 3" is a gas efficient division by 8 "selectorCount / 8".
            selectorSlot = ds._selectorSlots[selectorCount >> 3];
        }

        // Loop through diamond cut.
        for (uint256 facetIndex; facetIndex < cuts.length; ) {
            (selectorCount, selectorSlot) = LibDiamond.addReplaceRemoveFacetSelectors(
                selectorCount,
                selectorSlot,
                cuts[facetIndex].facetAddress,
                cuts[facetIndex].action,
                cuts[facetIndex].functionSelectors
            );

            unchecked {
                ++facetIndex;
            }
        }

        if (selectorCount != originalSelectorCount) {
            ds._selectorCount = uint16(selectorCount);
        }

        // If last selector slot is not full.
        // "selectorCount & 7" is a gas efficient modulo by eight "selectorCount % 8".
        if (selectorCount & 7 > 0) {
            // "selectorCount >> 3" is a gas efficient division by 8 "selectorCount / 8".
            ds._selectorSlots[selectorCount >> 3] = selectorSlot;
        }

        emit DiamondCut({ cuts: cuts, init: init, data: data });

        LibDiamond.initializeDiamondCut(init, data);
    }
}
