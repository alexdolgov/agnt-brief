// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {SignedOrder, SignedOrderLib} from "./SignedOrderLib.sol";
import {Response} from "../interfaces/IRubiconRFQ.sol";

/// @dev All 'validate*' functions revert in case of an error.
library RfqResponseLib {
    using SignedOrderLib for SignedOrder[];

    error InvalidSignature();
    error ResponseExpired();

    bytes internal constant RESPONSE_TYPE =
        abi.encodePacked(
            "Response(",
            "SignedOrder[] orders,",
            "uint256[] quantities,",
            "uint256 deadline)",
            SignedOrderLib.SIGNED_ORDER_TYPE
        );
    bytes32 internal constant RESPONSE_TYPE_HASH = keccak256(RESPONSE_TYPE);

    function validateDeadline(Response memory r) internal view {
        if (r.deadline > block.timestamp) revert ResponseExpired();
    }    

    function hash(Response memory r) internal pure returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    RESPONSE_TYPE_HASH,
                    r.orders.hash(),
                    keccak256(abi.encode(r.quantities)),
                    r.deadline
                )
            );
    }
}
