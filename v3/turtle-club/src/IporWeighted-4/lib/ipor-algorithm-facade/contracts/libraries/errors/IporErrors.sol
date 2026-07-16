// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

library IporErrors {
    /// @notice General problem, address is wrong
    string public constant EMPTY_ADDRESS = "IPOR_050";
    string public constant NOT_SUPPORTED_ASSET = "IPOR_051";

    //@notice msg.sender is not an appointed owner, so cannot confirm his appointment to be an owner of a specific smart contract
    string public constant SENDER_NOT_APPOINTED_OWNER = "IPOR_052";
    string public constant EMPTY_NEW_OWNER_ADDRESS = "IPOR_053";
}
