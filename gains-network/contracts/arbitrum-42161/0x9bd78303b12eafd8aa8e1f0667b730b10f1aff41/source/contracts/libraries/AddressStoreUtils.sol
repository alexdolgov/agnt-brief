// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "../interfaces/IGNSMultiCollatDiamond.sol";

import "./StorageUtils.sol";

/**
 * @custom:version 7
 *
 * @dev This is an internal library that all libraries used in GNSMultiCollatDiamond should use to access addresses.
 */
library AddressStoreUtils {
    /**
     * @dev Returns storage slot to use when fetching addresses
     */
    function getSlot() internal pure returns (uint256) {
        return StorageUtils.GLOBAL_ADDRESSES_STORAGE_SLOT;
    }

    /**
     * @dev Returns storage pointer for Addresses struct in global diamond contract, at defined slot
     */
    function getAddresses() internal pure returns (IGNSMultiCollatDiamond.Addresses storage s) {
        uint256 storageSlot = getSlot();
        assembly {
            s.slot := storageSlot
        }
    }
}
