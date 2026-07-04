// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IPool} from "@src/Interfaces/IPool.sol";
import {IICNProtocolMini} from "@src/Interfaces/IICNProtocolMini.sol";
import {StorageLocations} from "@src/Utils/StorageSlotAllocator.sol";

contract PeripheryStore {
    // ERC-7201: Namespaced Storage
    bytes32 private constant PERIPHERY_STORAGE_LOCATION = StorageLocations.PERIPHERY;

    struct PeripheryStorage {
        IPool pool;
        IICNProtocolMini icnp;
    }

    /// @custom:storage-location erc7201:glif.storage.Periphery
    function _getStorage() internal pure returns (PeripheryStorage storage $) {
        bytes32 position = PERIPHERY_STORAGE_LOCATION;
        assembly {
            $.slot := position
        }
    }
}
