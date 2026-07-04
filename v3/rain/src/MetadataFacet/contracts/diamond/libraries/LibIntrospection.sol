// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/**
 * @title LibIntrospection
 * @author Rain Team
 * @notice Utility library for diamond introspection.
 * @dev Implements helpers for querying supported interfaces in compliance with ERC-165.
 */
library LibIntrospection {
    /* ========================== ERC7201 STORAGE ========================== */

    /// @dev Namespaced storage location as per ERC-7201 (raindecision.storage.Introspection).
    struct IntrospectionStorage {
        mapping(bytes4 => bool) _supportsInterface;
    }

    // keccak256(abi.encode(uint256(keccak256("raindecision.storage.Introspection")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant IntrospectionStorageLocation =
        0xcd0b8be8d8e0f4a5ed8f264bbda0477862123fe3984a820feb0b53f566bcd800;

    function getIntrospectionStorage() internal pure returns (IntrospectionStorage storage ins) {
        assembly {
            ins.slot := IntrospectionStorageLocation
        }
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) internal view returns (bool) {
        IntrospectionStorage storage ins = getIntrospectionStorage();

        return ins._supportsInterface[interfaceId];
    }
}
