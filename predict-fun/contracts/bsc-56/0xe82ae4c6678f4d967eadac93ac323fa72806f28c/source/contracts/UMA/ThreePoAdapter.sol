// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";

import {IUmaCtfAdapter, QuestionData} from "./interfaces/IUmaCtfAdapter.sol";
import {IThreePoAdapter} from "./interfaces/IThreePoAdapter.sol";
import {IOptimisticOracleV2} from "./interfaces/IOptimisticOracleV2.sol";

/// @title ThreePoAdapter
/// @notice Adapter that bridges the 3Po protocol to the UMA-compatible CTF adapter and Optimistic Oracle.
/// @dev Initializers create questions via the CTF adapter; resolvers submit signed outcomes which are proposed to the Optimistic Oracle.
/// @author predict.fun protocol team
contract ThreePoAdapter is AccessControl, IThreePoAdapter {
    /// @notice Role allowed to initialize new questions (3Po ID → internal question).
    bytes32 private constant INITIALIZER_ROLE = keccak256("INITIALIZER_ROLE");
    /// @notice Role allowed to resolve questions by submitting a signed outcome.
    bytes32 private constant RESOLVER_ROLE = keccak256("RESOLVER_ROLE");

    /// @notice The UMA-compatible Optimistic Oracle used to propose and settle prices.
    IOptimisticOracleV2 public immutable UMA_COMPATIBLE_OPTIMISTIC_ORACLE;

    /// @notice Whitelist of UMA-compatible CTF adapters that are allowed to be called.
    mapping(address umaCompatibleCtfAdapter => bool isWhitelisted) public isUmaCompatibleCtfAdapterWhitelisted;
    /// @notice Maps internal question ID to the corresponding QuestionData.
    mapping(bytes32 questionID => QuestionMetadata metadata) public questionMetadata;
    /// @notice Maps 3Po question ID to the corresponding internal question ID.
    mapping(bytes32 threePoID => bytes32 questionID) public threePoIDToQuestionID;
    /// @notice Whitelist of addresses whose EIP-191 signed-message signatures are accepted for resolution.
    mapping(address signer => bool isWhitelisted) public signers;

    /// @notice Sets the Optimistic Oracle address.
    /// @param _optimisticOracle - Address of the UMA-compatible Optimistic Oracle.
    /// @param _admin            - Address of the admin.
    constructor(address _optimisticOracle, address _admin) {
        UMA_COMPATIBLE_OPTIMISTIC_ORACLE = IOptimisticOracleV2(_optimisticOracle);

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    /// @notice Initializes a question in the UMA-compatible CTF adapter and links it to a 3Po question ID.
    /// @dev Calls the CTF adapter's initialize with fixed params (dead reward token, zero reward/bond/liveness). Initializer only.
    /// @param ancillaryData - Data used to resolve the condition in the CTF adapter.
    /// @param threePoID     - The 3Po protocol question identifier to associate with the new internal question.
    function initialize(
        address umaCompatibleCtfAdapter,
        bytes memory ancillaryData,
        bytes32 threePoID
    ) external onlyRole(INITIALIZER_ROLE) {
        if (threePoIDToQuestionID[threePoID] != bytes32(0)) {
            revert ThreePoAdapter__QuestionAlreadyInitialized();
        }

        if (!isUmaCompatibleCtfAdapterWhitelisted[umaCompatibleCtfAdapter]) {
            revert ThreePoAdapter__UmaCompatibleCtfAdapterNotWhitelisted();
        }

        bytes32 questionID = IUmaCtfAdapter(umaCompatibleCtfAdapter).initialize(
            ancillaryData,
            0x000000000000000000000000000000000000dEaD,
            0,
            0,
            0
        );
        questionMetadata[questionID] = QuestionMetadata({
            threePoID: threePoID,
            umaCompatibleCtfAdapter: umaCompatibleCtfAdapter
        });
        threePoIDToQuestionID[threePoID] = questionID;

        emit ThreePoAdapter__QuestionInitialized(questionID, threePoID, umaCompatibleCtfAdapter);
    }

    /// @notice Resolves a 3Po question by verifying a whitelisted signer's signature and proposing the outcome to the Optimistic Oracle.
    /// @dev Reverts if the 3Po ID is unknown or the signature is from a non-whitelisted signer.
    /// @param threePoID          - The 3Po protocol question identifier.
    /// @param outcomeValueScaled - The scaled outcome value to propose (e.g. 0, 0.5 or 1 for binary).
    /// @param signature          - ECDSA signature from a whitelisted signer over (threePoID, outcomeValueScaled).
    function resolve(
        bytes32 threePoID,
        uint256 outcomeValueScaled,
        bytes calldata signature
    ) external onlyRole(RESOLVER_ROLE) {
        bytes32 questionID = threePoIDToQuestionID[threePoID];
        if (questionID == bytes32(0)) {
            revert ThreePoAdapter__QuestionNotFound();
        }

        if (outcomeValueScaled != 0 && outcomeValueScaled != 0.5 ether && outcomeValueScaled != 1 ether) {
            revert ThreePoAdapter__InvalidOutcomeValueScaled();
        }

        _verifyResolution(threePoID, outcomeValueScaled, signature);

        IUmaCtfAdapter umaCompatibleCtfAdapter = IUmaCtfAdapter(questionMetadata[questionID].umaCompatibleCtfAdapter);

        // Use the CTF adapter's stored question data: the OO request was made with appended ancillary
        // data (initializer suffix) and that exact bytes must be used to identify the request.
        QuestionData memory adapterQuestion = umaCompatibleCtfAdapter.getQuestion(questionID);
        UMA_COMPATIBLE_OPTIMISTIC_ORACLE.proposePrice(
            address(umaCompatibleCtfAdapter),
            bytes32("YES_OR_NO_QUERY"),
            adapterQuestion.requestTimestamp,
            adapterQuestion.ancillaryData,
            int256(outcomeValueScaled)
        );

        umaCompatibleCtfAdapter.resolve(questionID);

        emit ThreePoAdapter__QuestionResolved(questionID, threePoID, outcomeValueScaled);
    }

    /// @notice Adds or removes UMA-compatible CTF adapters from the whitelist. Admin only.
    /// @param umaCompatibleCtfAdapters - The UMA-compatible CTF adapter addresses to update.
    /// @param isWhitelisted            - Whether the UMA-compatible CTF adapters are whitelisted.
    function updateIsUmaCompatibleCtfAdapterWhitelisted(
        address[] calldata umaCompatibleCtfAdapters,
        bool isWhitelisted
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        for (uint256 i; i < umaCompatibleCtfAdapters.length; i++) {
            address umaCompatibleCtfAdapter = umaCompatibleCtfAdapters[i];
            if (isWhitelisted) {
                if (IUmaCtfAdapter(umaCompatibleCtfAdapter).optimisticOracle() != UMA_COMPATIBLE_OPTIMISTIC_ORACLE) {
                    revert ThreePoAdapter__InvalidOptimisticOracle();
                }
            }

            isUmaCompatibleCtfAdapterWhitelisted[umaCompatibleCtfAdapter] = isWhitelisted;
        }
        emit ThreePoAdapter__UmaCompatibleCtfAdaptersWhitelisted(umaCompatibleCtfAdapters, isWhitelisted);
    }

    /// @notice Adds or removes a signer from the whitelist. Admin only.
    /// @param signer        - The signer address to update.
    /// @param isWhitelisted - True to allow this signer's signatures for resolve, false to revoke.
    function updateSigner(address signer, bool isWhitelisted) external onlyRole(DEFAULT_ADMIN_ROLE) {
        signers[signer] = isWhitelisted;
        emit ThreePoAdapter__SignerUpdated(signer, isWhitelisted);
    }

    /// @dev Verifies that the resolution signature was produced by a whitelisted signer.
    /// @param threePoID          - The 3Po question ID included in the signed payload.
    /// @param outcomeValueScaled - The outcome value included in the signed payload.
    /// @param signature          - ECDSA signature to recover and check against the signer whitelist.
    function _verifyResolution(bytes32 threePoID, uint256 outcomeValueScaled, bytes calldata signature) private view {
        bytes32 payloadHash = keccak256(abi.encode(threePoID, outcomeValueScaled));
        bytes32 digest = MessageHashUtils.toEthSignedMessageHash(payloadHash);
        address signer = ECDSA.recover(digest, signature);
        if (!signers[signer]) {
            revert ThreePoAdapter__InvalidSigner();
        }
    }
}
