// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/**
 * @author Altitude Protocol
 **/

interface IBorrowVerifier {
    // Borrow Verifier Errors
    error BV_DEADLINE_PASSED();
    error BV_INVALID_SIGNATURE();

    function nonce(address) external returns (uint256);

    function verifyAndBurnNonce(
        uint256 amount,
        address onBehalfOf,
        address receiver,
        uint256 deadline,
        bytes calldata signature
    ) external;
}
