// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import {IUpdateVerifier} from "./interfaces/IUpdateVerifier.sol";

/// MessageBus provides a reliable communication channel for validators to compose the state oracle update.
/// @custom:security-contact security@fantom.foundation
contract MessageBus {
    IUpdateVerifier public immutable updateVerifier;

    event Vote(bytes20 messageHash, uint32 chainId, bytes signature, address sender);

    constructor(IUpdateVerifier _updateVerifier) {
        require(address(_updateVerifier) != address(0), "UpdateVerifier address not set");
        updateVerifier = _updateVerifier;
    }

    /// Send a vote for a state oracle update.
    function vote(
        bytes20 messageHash,
        uint32 chainId,
        bytes calldata signature
    ) external {
        require(updateVerifier.validatorWeight(msg.sender) > 0, "Not a validator");
        emit Vote(messageHash, chainId, signature, msg.sender);
    }
}
