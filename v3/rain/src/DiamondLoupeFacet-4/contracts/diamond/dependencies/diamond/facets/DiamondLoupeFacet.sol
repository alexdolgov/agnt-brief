// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

import { IDiamondLoupe } from "../interfaces/IDiamondLoupe.sol";
import { LibDiamond } from "../libraries/LibDiamond.sol";

/**
 * @title DiamondLoupeFacet
 * @author Nick Mudge (Mudgen)
 * @notice Provides read-only introspection of a diamond contract.
 * @dev Implements the EIP-2535 Diamond standard functions. Useful for querying which facets and functions are currently
 * part of the diamond.
 */
contract DiamondLoupeFacet is IDiamondLoupe {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IDiamondLoupe
     */
    function facets() external view override returns (Facet[] memory) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.getDiamondStorage();

        uint16 selectorCount = ds._selectorCount;
        Facet[] memory facetsList = new Facet[](selectorCount);
        uint16[] memory numFacetSelectors = new uint16[](selectorCount);
        uint256 numFacets;
        uint256 selectorIndex;

        // Loop through function selectors.
        for (uint256 slotIndex; selectorIndex < selectorCount; ) {
            bytes32 slot = ds._selectorSlots[slotIndex];

            for (uint256 selectorSlotIndex; selectorSlotIndex < 8; ) {
                selectorIndex++;

                if (selectorIndex > selectorCount) {
                    break;
                }

                // " << 5 is the same as multiplying by 32 ( * 32).
                bytes4 selector = bytes4(slot << (selectorSlotIndex << 5));
                address facetAddress_ = address(bytes20(ds._facets[selector]));
                bool continueLoop;

                for (uint256 facetIndex; facetIndex < numFacets; ) {
                    if (facetsList[facetIndex].facetAddress == facetAddress_) {
                        facetsList[facetIndex].functionSelectors[numFacetSelectors[facetIndex]] = selector;

                        // Probably will never have more than 256 functions from one facet contract.
                        require(numFacetSelectors[facetIndex] < 255);

                        numFacetSelectors[facetIndex]++;
                        continueLoop = true;

                        break;
                    }

                    unchecked {
                        ++facetIndex;
                    }
                }

                if (continueLoop) {
                    unchecked {
                        ++selectorSlotIndex;
                    }

                    continue;
                }

                facetsList[numFacets].facetAddress = facetAddress_;
                facetsList[numFacets].functionSelectors = new bytes4[](selectorCount);
                facetsList[numFacets].functionSelectors[0] = selector;
                numFacetSelectors[numFacets] = 1;
                numFacets++;

                unchecked {
                    ++selectorSlotIndex;
                }
            }

            unchecked {
                ++slotIndex;
            }
        }

        for (uint256 facetIndex; facetIndex < numFacets; ) {
            uint256 numSelectors = numFacetSelectors[facetIndex];
            bytes4[] memory selectors = facetsList[facetIndex].functionSelectors;

            // Setting the number of selectors.
            assembly {
                mstore(selectors, numSelectors)
            }

            unchecked {
                ++facetIndex;
            }
        }

        // Setting the number of facets.
        assembly {
            mstore(facetsList, numFacets)
        }

        return facetsList;
    }

    /**
     * @inheritdoc IDiamondLoupe
     */
    function facetFunctionSelectors(address facet) external view override returns (bytes4[] memory) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.getDiamondStorage();

        uint16 selectorCount = ds._selectorCount;
        uint256 numSelectors;
        bytes4[] memory facetFunctionSelectorsList = new bytes4[](selectorCount);
        uint256 selectorIndex;

        // Loop through function selectors.
        for (uint256 slotIndex; selectorIndex < selectorCount; ) {
            bytes32 slot = ds._selectorSlots[slotIndex];

            for (uint256 selectorSlotIndex; selectorSlotIndex < 8; ) {
                selectorIndex++;

                if (selectorIndex > selectorCount) {
                    break;
                }

                // " << 5 is the same as multiplying by 32 ( * 32).
                bytes4 selector = bytes4(slot << (selectorSlotIndex << 5));
                address facetFromSelector = address(bytes20(ds._facets[selector]));

                if (facet == facetFromSelector) {
                    facetFunctionSelectorsList[numSelectors] = selector;
                    numSelectors++;
                }

                unchecked {
                    ++selectorSlotIndex;
                }
            }

            unchecked {
                ++slotIndex;
            }
        }

        // Set the number of selectors in the array.
        assembly {
            mstore(facetFunctionSelectorsList, numSelectors)
        }

        return facetFunctionSelectorsList;
    }

    /**
     * @inheritdoc IDiamondLoupe
     */
    function facetAddresses() external view override returns (address[] memory) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.getDiamondStorage();

        uint256 selectorCount = ds._selectorCount;
        address[] memory facetAddressesList = new address[](selectorCount);
        uint256 numFacets;
        uint256 selectorIndex;

        // Loop through function selectors.
        for (uint256 slotIndex; selectorIndex < selectorCount; ) {
            bytes32 slot = ds._selectorSlots[slotIndex];

            for (uint256 selectorSlotIndex; selectorSlotIndex < 8; ) {
                selectorIndex++;

                if (selectorIndex > selectorCount) {
                    break;
                }

                // " << 5 is the same as multiplying by 32 ( * 32).
                bytes4 selector = bytes4(slot << (selectorSlotIndex << 5));
                address facetAddress_ = address(bytes20(ds._facets[selector]));
                bool continueLoop;

                for (uint256 facetIndex; facetIndex < numFacets; ) {
                    if (facetAddress_ == facetAddressesList[facetIndex]) {
                        continueLoop = true;

                        break;
                    }

                    unchecked {
                        ++facetIndex;
                    }
                }

                if (continueLoop) {
                    unchecked {
                        ++selectorSlotIndex;
                    }

                    continue;
                }

                facetAddressesList[numFacets] = facetAddress_;
                numFacets++;

                unchecked {
                    ++selectorSlotIndex;
                }
            }

            unchecked {
                ++slotIndex;
            }
        }

        // Set the number of facet addresses in the array.
        assembly {
            mstore(facetAddressesList, numFacets)
        }

        return facetAddressesList;
    }

    /**
     * @inheritdoc IDiamondLoupe
     */
    function facetAddress(bytes4 functionSelector) external view override returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.getDiamondStorage();

        return address(bytes20(ds._facets[functionSelector]));
    }
}
