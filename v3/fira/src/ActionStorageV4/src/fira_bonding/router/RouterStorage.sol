// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title RouterStorage
/// @notice Abstract contract providing namespaced storage for the Fira Router
/// @dev Uses ERC-7201 namespaced storage pattern to avoid storage collisions in the
///      diamond-like proxy architecture. All router state is stored at a deterministic
///      slot derived from "fira.routerv4.Core".
///
///      This pattern allows facets to share storage safely and enables upgrades
///      without storage layout conflicts.
abstract contract RouterStorage {
    /// @notice Core storage struct containing router state
    /// @param owner Current owner address with admin privileges
    /// @param pendingOwner Address that can claim ownership (for two-step transfer)
    /// @param selectorToFacet Mapping of function selectors to their implementation facets
    struct CoreStorage {
        address owner;
        address pendingOwner;
        mapping(bytes4 => address) selectorToFacet;
    }

    // keccak256(abi.encode(uint256(keccak256("fira.routerv4.Core")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant CORE_STORAGE_LOCATION = 0x76869e0e64e8c296a2019055b290aee738d2502c92798a50d3ffc89d61abe800;

    /// @notice Returns the CoreStorage struct at the designated storage slot
    /// @return $ Storage pointer to the CoreStorage struct
    function _getCoreStorage() internal pure returns (CoreStorage storage $) {
        assembly {
            $.slot := CORE_STORAGE_LOCATION
        }
    }
}
