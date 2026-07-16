// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {SignedOrder} from "../base/ReactorStructs.sol";

/// @notice Helpers for handling 'SignedOrder' objects.
library SignedOrderLib {
    bytes internal constant SIGNED_ORDER_TYPE =
        "SignedOrder(bytes orders,bytes sig)";
    bytes32 internal constant SIGNED_ORDER_TYPE_HASH =
        keccak256(SIGNED_ORDER_TYPE);

    /// @notice Hash the given 'SignedOrder' array.
    /// @param ss - orders to hash.
    /// @return The EIP-712 outputs hash.
    function hash(
        SignedOrder[] memory ss
    ) internal pure returns (bytes32) {
        unchecked {
            bytes memory packedHashes = new bytes(32 * ss.length);

            for (uint256 i = 0; i < ss.length; i++) {
                bytes32 sHash = hash(ss[i]);
                assembly {
                    mstore(
                        add(add(packedHashes, 0x20), mul(i, 0x20)),
                        sHash
                    )
                }
            }

            return keccak256(packedHashes);
        }
    }

    /// @notice Hash a 'SignedOrder' object.
    /// @param s - The 'SignedOrder' object to hash.
    function hash(SignedOrder memory s) internal pure returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    SIGNED_ORDER_TYPE_HASH,
                    keccak256(s.order),
                    keccak256(s.sig)
                )
            );
    }
}
