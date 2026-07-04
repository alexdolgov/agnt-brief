// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { EnumerableMap } from "@oz/utils/structs/EnumerableMap.sol";

/// @title TokenStorage
/// @dev storage library to leverage unstructured storage pattern
library TokenStorage {
    /// @dev struct containing all state for the Token contract
    /// @custom:storage-location erc7201:animoca.contracts.storage.Token
    struct Layout {
        /// @dev mapping of accounts to their requested burn amount
        EnumerableMap.AddressToUintMap burnRequests;
    }

    // keccak256(abi.encode(uint256(keccak256("animoca.contracts.storage.Token")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 internal constant STORAGE_SLOT =
        0x1d4e0ed1a5e553672821f91d0ee7a9283f7f0e9abb3ae504683fd8b43d7dc700;

    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}
