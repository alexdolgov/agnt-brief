//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

/// @dev TermAuth contains arguments needed for TermAuthenticator to authenticate a user calling a Term function
struct TermAuth {
    /// @dev The address of the user submitting transaction
    address user;
    /// @dev A unique nonce associated with the transaction
    uint256 nonce;
    ///@dev The expiration timestamp
    uint256 expirationTimestamp;
    /// @dev The signature submitted by user for the transaction
    bytes signature;
}
