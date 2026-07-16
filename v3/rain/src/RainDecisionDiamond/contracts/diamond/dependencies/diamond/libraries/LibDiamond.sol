// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

import { LibUtilsRevert } from "../../../libraries/LibUtilsRevert.sol";

import { IDiamondCut } from "../interfaces/IDiamondCut.sol";

/**
 * @title LibDiamond
 * @author Nick Mudge (Mudgen)
 * @notice Core library implementing diamond storage and diamondCut logic.
 * @dev Provides internal functionality for adding, replacing, and removing function selectors and facets according to
 * EIP-2535.
 */
library LibDiamond {
    /* ========================== STATE VARIABLES ========================== */

    /// @dev Mask used to clear an address from a packed bytes32 value.
    bytes32 private constant CLEAR_ADDRESS_MASK = bytes32(uint256(0xffffffffffffffffffffffff));

    /// @dev Mask used to clear a selector from a selector slot.
    bytes32 private constant CLEAR_SELECTOR_MASK = bytes32(uint256(0xffffffff << 224));

    /* ========================== ERC7201 Storage ========================== */

    /// @dev Namespaced storage location as per ERC-7201 (diamond.storage.Diamond).
    struct DiamondStorage {
        /// @custom:member _facets Maps function selectors to the facets that execute the functions and maps the
        /// selectors to their position in `_selectorSlots`.
        mapping(bytes4 functionSelector => bytes32 facetAndSelectorPosition) _facets;
        /// @custom:member _selectorSlots Array of slots of function selectors. Each slot holds 8 function selectors.
        mapping(uint256 index => bytes32 selectorSlot) _selectorSlots;
        /// @custom:member _selectorCount Number of function selectors in `_selectorSlots`.
        uint16 _selectorCount;
    }

    // keccak256(abi.encode(uint256(keccak256("diamond.storage.Diamond")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant DiamondStorageLocation =
        0xd9466fa46e3c47ca7640a99547f8223c783ea10d0ae2ac09439719fcd34a7900;

    function getDiamondStorage() internal pure returns (DiamondStorage storage ds) {
        assembly {
            ds.slot := DiamondStorageLocation
        }
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Internal version of `diamondCut`. Adds, replaces, or removes function selectors and optionally executes
     * initialization logic using delegatecall.
     *
     * NOTE: This implementation uses memory instead of calldata to avoid copying two-dimensional calldata arrays.
     *
     * @param cuts Contains the facet addresses and function selectors.
     * @param init Address of the contract or facet to execute data.
     * @param data Function call, including function selector and arguments. Executed with a delegatecall on `init`.
     */
    function diamondCut(IDiamondCut.FacetCut[] memory cuts, address init, bytes memory data) internal {
        DiamondStorage storage ds = getDiamondStorage();

        uint256 originalSelectorCount = ds._selectorCount;
        uint256 selectorCount = originalSelectorCount;
        bytes32 selectorSlot;

        // Check if last selector slot is not full.
        // "selectorCount & 7" is a gas efficient modulo by eight "selectorCount % 8".
        if (selectorCount & 7 > 0) {
            // Get last selectorSlot.
            // "selectorSlot >> 3" is a gas efficient division by 8 "selectorSlot / 8".
            selectorSlot = ds._selectorSlots[selectorCount >> 3];
        }

        // Loop through diamond cut.
        for (uint256 facetIndex; facetIndex < cuts.length; ) {
            (selectorCount, selectorSlot) = addReplaceRemoveFacetSelectors(
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
            // "selectorSlot >> 3" is a gas efficient division by 8 "selectorSlot / 8".
            ds._selectorSlots[selectorCount >> 3] = selectorSlot;
        }

        emit IDiamondCut.DiamondCut({ cuts: cuts, init: init, data: data });

        initializeDiamondCut(init, data);
    }

    /**
     * @dev Adds, replaces, or removes selectors for a given facet.
     * @return selectorCount Updated selector count.
     * @return selectorSlot Updated selector slot.
     */
    function addReplaceRemoveFacetSelectors(
        uint256 selectorCount,
        bytes32 selectorSlot,
        address newFacetAddress,
        IDiamondCut.FacetCutAction action,
        bytes4[] memory selectors
    ) internal returns (uint256, bytes32) {
        DiamondStorage storage ds = getDiamondStorage();

        require(selectors.length > 0, "LibDiamondCut: No selectors in facet to cut");

        if (action == IDiamondCut.FacetCutAction.Add) {
            enforceHasContractCode(newFacetAddress, "LibDiamondCut: Add facet has no code");

            for (uint256 selectorIndex; selectorIndex < selectors.length; ) {
                bytes4 selector = selectors[selectorIndex];
                bytes32 oldFacet = ds._facets[selector];

                require(
                    address(bytes20(oldFacet)) == address(0),
                    "LibDiamondCut: Can't add function that already exists"
                );

                // Add facet for selector.
                ds._facets[selector] = bytes20(newFacetAddress) | bytes32(selectorCount);
                // "selectorCount & 7" is a gas efficient modulo by eight "selectorCount % 8".
                // " << 5 is the same as multiplying by 32 ( * 32).
                uint256 selectorInSlotPosition = (selectorCount & 7) << 5;
                // Clear selector position in slot and add selector.
                selectorSlot =
                    (selectorSlot & ~(CLEAR_SELECTOR_MASK >> selectorInSlotPosition)) |
                    (bytes32(selector) >> selectorInSlotPosition);

                // If slot is full then write it to storage.
                if (selectorInSlotPosition == 224) {
                    // "selectorSlot >> 3" is a gas efficient division by 8 "selectorSlot / 8".
                    ds._selectorSlots[selectorCount >> 3] = selectorSlot;
                    selectorSlot = 0;
                }

                selectorCount++;

                unchecked {
                    ++selectorIndex;
                }
            }
        } else if (action == IDiamondCut.FacetCutAction.Replace) {
            enforceHasContractCode(newFacetAddress, "LibDiamondCut: Replace facet has no code");

            for (uint256 selectorIndex; selectorIndex < selectors.length; ) {
                bytes4 selector = selectors[selectorIndex];
                bytes32 oldFacet = ds._facets[selector];
                address oldFacetAddress = address(bytes20(oldFacet));

                // Only useful if immutable functions exist.
                require(oldFacetAddress != address(this), "LibDiamondCut: Can't replace immutable function");

                require(oldFacetAddress != newFacetAddress, "LibDiamondCut: Can't replace function with same function");

                require(oldFacetAddress != address(0), "LibDiamondCut: Can't replace function that doesn't exist");

                // Replace previous facet address.
                ds._facets[selector] = (oldFacet & CLEAR_ADDRESS_MASK) | bytes20(newFacetAddress);

                unchecked {
                    ++selectorIndex;
                }
            }
        } else if (action == IDiamondCut.FacetCutAction.Remove) {
            require(newFacetAddress == address(0), "LibDiamondCut: Remove facet address must be address(0)");

            // "selectorCount >> 3" is a gas efficient division by 8 "selectorCount / 8".
            uint256 selectorSlotCount = selectorCount >> 3;
            // "selectorCount & 7" is a gas efficient modulo by eight "selectorCount % 8".
            uint256 selectorInSlotIndex = selectorCount & 7;

            for (uint256 selectorIndex; selectorIndex < selectors.length; ) {
                if (selectorInSlotIndex == 0) {
                    // Get last selectorSlot.
                    selectorSlotCount--;
                    selectorSlot = ds._selectorSlots[selectorSlotCount];
                    selectorInSlotIndex = 7;
                } else {
                    selectorInSlotIndex--;
                }

                bytes4 lastSelector;
                uint256 oldSelectorsSlotCount;
                uint256 oldSelectorInSlotPosition;

                // Adding a block here prevents stack too deep error.
                {
                    bytes4 selector = selectors[selectorIndex];
                    bytes32 oldFacet = ds._facets[selector];

                    require(
                        address(bytes20(oldFacet)) != address(0),
                        "LibDiamondCut: Can't remove function that doesn't exist"
                    );

                    // Only useful if immutable functions exist.
                    require(
                        address(bytes20(oldFacet)) != address(this),
                        "LibDiamondCut: Can't remove immutable function"
                    );

                    // Replace selector with last selector in ds._facets gets the last selector.
                    // " << 5 is the same as multiplying by 32 ( * 32).
                    lastSelector = bytes4(selectorSlot << (selectorInSlotIndex << 5));

                    if (lastSelector != selector) {
                        // Update last selector slot position info.
                        ds._facets[lastSelector] = (oldFacet & CLEAR_ADDRESS_MASK) | bytes20(ds._facets[lastSelector]);
                    }

                    delete ds._facets[selector];

                    uint256 oldSelectorCount = uint16(uint256(oldFacet));
                    // "oldSelectorCount >> 3" is a gas efficient division by 8 "oldSelectorCount / 8".
                    oldSelectorsSlotCount = oldSelectorCount >> 3;
                    // "oldSelectorCount & 7" is a gas efficient modulo by eight "oldSelectorCount % 8".
                    // " << 5 is the same as multiplying by 32 ( * 32).
                    oldSelectorInSlotPosition = (oldSelectorCount & 7) << 5;
                }

                if (oldSelectorsSlotCount != selectorSlotCount) {
                    bytes32 oldSelectorSlot = ds._selectorSlots[oldSelectorsSlotCount];
                    // Clears the selector we are deleting and puts the last selector in its place.
                    oldSelectorSlot =
                        (oldSelectorSlot & ~(CLEAR_SELECTOR_MASK >> oldSelectorInSlotPosition)) |
                        (bytes32(lastSelector) >> oldSelectorInSlotPosition);
                    // Update storage with the modified slot.
                    ds._selectorSlots[oldSelectorsSlotCount] = oldSelectorSlot;
                } else {
                    // Clears the selector we are deleting and puts the last selector in its place.
                    selectorSlot =
                        (selectorSlot & ~(CLEAR_SELECTOR_MASK >> oldSelectorInSlotPosition)) |
                        (bytes32(lastSelector) >> oldSelectorInSlotPosition);
                }

                if (selectorInSlotIndex == 0) {
                    delete ds._selectorSlots[selectorSlotCount];

                    selectorSlot = 0;
                }

                unchecked {
                    ++selectorIndex;
                }
            }
            selectorCount = selectorSlotCount * 8 + selectorInSlotIndex;
        } else {
            revert("LibDiamondCut: Incorrect FacetCutAction");
        }

        return (selectorCount, selectorSlot);
    }

    /**
     * @dev Executes optional initialization logic after a diamond cut.
     * @param init Address of the contract or facet to execute data.
     * @param data Function call, including function selector and arguments. Executed with a delegatecall on `init`.
     */
    function initializeDiamondCut(address init, bytes memory data) internal {
        if (init == address(0)) {
            return;
        }

        enforceHasContractCode(init, "LibDiamondCut: init address has no code");

        (bool success, bytes memory error) = init.delegatecall(data);

        if (!success) {
            if (error.length > 0) {
                // Bubble up error.
                assembly ("memory-safe") {
                    let returnDataSize := mload(error)
                    revert(add(32, error), returnDataSize)
                }
            } else {
                LibUtilsRevert.revertWithData(
                    abi.encodeWithSelector(IDiamondCut.InitializationFunctionReverted.selector, init, data)
                );
            }
        }
    }

    /**
     * @dev Reverts if the target address does not contain contract code.
     */
    function enforceHasContractCode(address contractAddress, string memory errorMessage) internal view {
        uint256 contractSize;

        assembly {
            contractSize := extcodesize(contractAddress)
        }

        require(contractSize > 0, errorMessage);
    }
}
