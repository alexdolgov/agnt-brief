// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/// @title IThreePoAdapter
/// @author predict.fun protocol team
interface IThreePoAdapter {
    /// @notice Metadata for a question.
    /// @param threePoID - The 3Po protocol question identifier.
    /// @param umaCompatibleCtfAdapter - The UMA-compatible CTF adapter address.
    struct QuestionMetadata {
        bytes32 threePoID;
        address umaCompatibleCtfAdapter;
    }

    /// @notice Emitted when a new question is initialized and linked to a 3Po ID.
    /// @param questionID - The UMA CTF adapter question ID.
    /// @param threePoID  - The 3Po protocol question identifier.
    /// @param umaCompatibleCtfAdapter - The UMA-compatible CTF adapter address.
    event ThreePoAdapter__QuestionInitialized(bytes32 questionID, bytes32 threePoID, address umaCompatibleCtfAdapter);

    /// @notice Emitted when a question is resolved and the outcome is proposed to the Optimistic Oracle.
    /// @param questionID         - The UMA CTF adapter question ID.
    /// @param threePoID          - The 3Po protocol question identifier.
    /// @param outcomeValueScaled - The scaled outcome value proposed.
    event ThreePoAdapter__QuestionResolved(bytes32 questionID, bytes32 threePoID, uint256 outcomeValueScaled);

    /// @notice Emitted when a signer is added or removed from the whitelist.
    /// @param signer        - The signer address.
    /// @param isWhitelisted - Whether the signer is whitelisted.
    event ThreePoAdapter__SignerUpdated(address indexed signer, bool isWhitelisted);

    /// @notice Emitted when a UMA-compatible CTF adapter is added or removed from the whitelist.
    /// @param umaCompatibleCtfAdapters - The UMA-compatible CTF adapter addresses.
    /// @param isWhitelisted            - Whether the UMA-compatible CTF adapters are whitelisted.
    event ThreePoAdapter__UmaCompatibleCtfAdaptersWhitelisted(address[] umaCompatibleCtfAdapters, bool isWhitelisted);

    /// @notice Thrown when a UMA-compatible CTF adapter is not using the correct Optimistic Oracle.
    error ThreePoAdapter__InvalidOptimisticOracle();

    /// @notice Thrown when the outcome value scaled is invalid.
    error ThreePoAdapter__InvalidOutcomeValueScaled();

    /// @notice Thrown when the recovered signer of a resolution payload is not whitelisted.
    error ThreePoAdapter__InvalidSigner();

    /// @notice Thrown when a UMA-compatible CTF adapter is not whitelisted.
    error ThreePoAdapter__UmaCompatibleCtfAdapterNotWhitelisted();

    /// @notice Thrown when a 3Po ID is already associated with a question.
    error ThreePoAdapter__QuestionAlreadyInitialized();

    /// @notice Thrown when resolving for a 3Po ID that has no linked question.
    error ThreePoAdapter__QuestionNotFound();

    /// @notice Initializes a question in the UMA CTF adapter and links it to a 3Po question ID.
    /// @param umaCompatibleCtfAdapter - The UMA-compatible CTF adapter to use.
    /// @param ancillaryData           - Data used to resolve the condition in the UMA adapter.
    /// @param threePoID               - The 3Po protocol question identifier to associate with the new UMA question.
    function initialize(address umaCompatibleCtfAdapter, bytes memory ancillaryData, bytes32 threePoID) external;

    /// @notice Resolves a 3Po question by verifying a whitelisted signer's signature and proposing the outcome to the Optimistic Oracle.
    /// @param threePoID          - The 3Po protocol question identifier.
    /// @param outcomeValueScaled - The scaled outcome value to propose (e.g. 0, 0.5 or 1).
    /// @param signature          - ECDSA signature from a whitelisted signer over (threePoID, outcomeValueScaled).
    function resolve(bytes32 threePoID, uint256 outcomeValueScaled, bytes calldata signature) external;
}
