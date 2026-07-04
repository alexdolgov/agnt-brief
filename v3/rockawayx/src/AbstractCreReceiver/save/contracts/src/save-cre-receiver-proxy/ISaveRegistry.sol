// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.33;

/**
 * @title ISaveRegistry
 * @notice Minimal interface for the SAVE Registry contract
 * @dev This interface defines the subset of registry functions needed by the CRE receiver proxy.
 *      These functions are called by the proxy to forward attestation and verification data
 *      received from the Chainlink DON to the registry.
 */
interface ISaveRegistry {
    /**
     * @notice Set attestation data for a Proof in the registry
     * @dev Updates the latest attestation for the specified Proof. The caller must be an authorized attestor.
     *      This is typically called by the CRE receiver proxy after receiving consensus from the DON.
     *
     * @param proofId The unique identifier of the Proof being attested to
     * @param attestationHash The content hash (e.g., IPFS CID) of the attestation data
     *
     * @custom:emits AttestationSet when the attestation is successfully recorded
     */
    function setAttestation(bytes32 proofId, bytes32 attestationHash) external;

    /**
     * @notice Set verification data for a Proof attestation in the registry
     * @dev Records verification of an existing attestation. The caller must be an authorized verifier.
     *      This validates that the attestation matches the expected hash before storing the verification.
     *
     * @param proofId The unique identifier of the Proof being verified
     * @param expectedAttestationHash The attestation hash that must match the current attestation for this Proof
     * @param verificationHash The content hash (e.g., IPFS CID) of the verification data
     *
     * @custom:emits VerificationSet when the verification is successfully recorded
     */
    function setVerification(bytes32 proofId, bytes32 expectedAttestationHash, bytes32 verificationHash) external;
}
