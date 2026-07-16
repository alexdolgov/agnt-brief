// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { EnumerableSet } from "@solidstate/data/EnumerableSet.sol";

using EnumerableSet for EnumerableSet.AddressSet;

struct DiamondSwapV2FactoryLayout {
    // The total amount of pairs created
    uint256 totalPairs;
    // Whether or not the factory is active
    bool active;
    // An AddressSet of pair addresses
    EnumerableSet.AddressSet pairAddresses;
}

library DiamondSwapV2FactoryStorage {
    bytes32 constant STORAGE_POSITION = keccak256("com.diamondswap.storage.DiamondSwapV2FactoryStorageV1");

    function layout() internal pure returns (DiamondSwapV2FactoryLayout storage l) {
        bytes32 position = STORAGE_POSITION;
        assembly {
            l.slot := position
        }
    }
}
