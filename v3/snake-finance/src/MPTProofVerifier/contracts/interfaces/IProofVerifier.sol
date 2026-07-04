// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Proof verifier allows to validate witness proof about a storage slot value on a different chain.
interface IProofVerifier {

    /// Verify witness proof - proof about storage slot value on a different chain.
    /// Reverts if the slot value does not match the expected value or if the proof is invalid.
    function verifyProof(address contractAddress, bytes32 slotIndex, bytes32 expectedValue, bytes32 stateRoot, bytes calldata proof) external view;

}
