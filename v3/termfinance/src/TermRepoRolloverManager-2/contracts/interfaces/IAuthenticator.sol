//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import "../lib/TermAuth.sol";

/// @title IAuthenticator defines the functions of the Authenticator contract.
interface IAuthenticator {
    /// Verifies a signature
    /// @param termAuth The `TermAuth` struct containing user address, nonce, and signature
    /// @param txContract The address of the contract the user is trying to get authenticated for
    /// @param txMsgData The msg.data of the transaction getting authenticated
    /// @return bool A boolean testing whether or not a signature is valid
    function authenticate(
        TermAuth memory termAuth,
        address txContract,
        bytes calldata txMsgData
    ) external returns (bool);

    /// Verifies a signature. Reverts if the signature is not valid.
    /// @param termAuth The `TermAuth` struct containing user address, nonce, and signature
    /// @param txContract The address of the contract the user is trying to get authenticated for
    /// @param txMsgData The msg.data of the transaction getting authenticated
    function ensureAuthenticated(
        TermAuth memory termAuth,
        address txContract,
        bytes calldata txMsgData
    ) external;
}
