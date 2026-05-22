// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

/**
 * @title IAdminAdapter
 * @author predict.fun protocol team
 * @notice Interface for the AdminAdapter contract.
 */
interface IAdminAdapter {
    /**
     * @notice Status of a question.
     * @param None The question has not been initialized.
     * @param Active The question is active and awaiting vote resolution.
     * @param Resolved The question has been resolved and sent to the UMA oracle.
     */
    enum Status {
        None,
        Active,
        Resolved
    }

    /**
     * @notice A question tracked in the adapter.
     * @param status The current status of the question.
     * @param requiredVotes The number of votes needed to trigger resolution.
     * @param yesVotes Count of votes for outcome = 1 ether.
     * @param noVotes Count of votes for outcome = 0.
     * @param fiftyFiftyVotes Count of votes for outcome = 0.5 ether.
     * @param umaCompatibleCtfAdapter The UMA-compatible CTF adapter that created this question.
     */
    struct Question {
        Status status;
        uint8 requiredVotes;
        uint8 yesVotes;
        uint8 noVotes;
        uint8 fiftyFiftyVotes;
        address umaCompatibleCtfAdapter;
    }

    /**
     * @notice A vote cast on a question.
     * @param submitted Whether this vote slot has been filled.
     * @param outcome The outcome value: 0, 0.5 ether, or 1 ether.
     * @param reason Optional UTF-8 encoded string explaining the vote rationale.
     */
    struct Vote {
        bool submitted;
        uint64 outcome;
        bytes reason;
    }

    /**
     * @notice Emitted when a question is initialized.
     * @param questionID The UMA CTF adapter question ID.
     * @param umaCompatibleCtfAdapter The UMA-compatible CTF adapter that owns the question.
     * @param requiredVotes The number of votes required to resolve the question.
     */
    event AdminAdapter__QuestionInitialized(
        bytes32 indexed questionID,
        address indexed umaCompatibleCtfAdapter,
        uint256 requiredVotes
    );

    /**
     * @notice Emitted when the resolution provider for a question is switched.
     * @param umaCompatibleCtfAdapter The UMA-compatible CTF adapter that owns the question.
     * @param questionIDs The UMA CTF adapter question IDs.
     * @param requiredVotes The number of votes required to resolve the question.
     */
    event AdminAdapter__ResolutionProviderSwitched(
        address indexed umaCompatibleCtfAdapter,
        bytes32[] questionIDs,
        uint256 requiredVotes
    );

    /**
     * @notice Emitted when a vote is submitted.
     * @param questionID The UMA CTF adapter question ID.
     * @param voter The address of the voter.
     * @param outcome The outcome value: 0, 0.5 ether, or 1 ether.
     * @param reason The reason for the vote.
     */
    event AdminAdapter__VoteSubmitted(bytes32 indexed questionID, address indexed voter, uint256 outcome, bytes reason);

    /**
     * @notice Emitted when a question is resolved.
     * @param questionID The UMA CTF adapter question ID.
     * @param umaCompatibleCtfAdapter The UMA-compatible CTF adapter that owns the question.
     * @param outcome The winning outcome value.
     */
    event AdminAdapter__QuestionResolved(
        bytes32 indexed questionID,
        address indexed umaCompatibleCtfAdapter,
        uint256 outcome
    );

    /**
     * @notice Emitted when UMA-compatible CTF adapters are added or removed from the whitelist.
     * @param umaCompatibleCtfAdapters The CTF adapter addresses affected.
     * @param isWhitelisted Whether the adapters were whitelisted or removed.
     */
    event AdminAdapter__UmaCompatibleCtfAdaptersWhitelisted(address[] umaCompatibleCtfAdapters, bool isWhitelisted);

    /**
     * @notice Emitted when the global minimum required votes is updated.
     * @param newMinRequiredVotes The new minimum value.
     */
    event AdminAdapter__MinRequiredVotesUpdated(uint8 newMinRequiredVotes);

    /**
     * @notice Emitted when the required votes for a question is updated.
     * @param questionID The UMA CTF adapter question ID.
     * @param newRequiredVotes The new required votes.
     */
    event AdminAdapter__RequiredVotesUpdated(bytes32 indexed questionID, uint8 newRequiredVotes);

    /// @notice Thrown when a CTF adapter's optimistic oracle does not match `UMA_COMPATIBLE_OPTIMISTIC_ORACLE`.
    error AdminAdapter__InvalidOptimisticOracle();

    /// @notice Thrown when the outcome is not one of: 0, 0.5 ether, 1 ether.
    error AdminAdapter__InvalidOutcome();

    /// @notice Thrown when `newMinRequiredVotes` is less than 2.
    error AdminAdapter__MinRequiredVotesTooLow();

    /// @notice Thrown when `switchResolutionProvider` is called with no question IDs.
    error AdminAdapter__NoQuestionIDsProvided();

    /// @notice Thrown when `initialize` is called for a question that already exists.
    error AdminAdapter__QuestionAlreadyInitialized();

    /// @notice Thrown when `switchResolutionProvider` is called for a question that is already resolved.
    error AdminAdapter__QuestionAlreadyResolved();

    /// @notice Thrown when an operation requires the question to be in `Status.Active`.
    error AdminAdapter__QuestionNotActive();

    /// @notice Thrown when `switchResolutionProvider` is called for a question that is not initialized.
    error AdminAdapter__QuestionNotInitialized();

    /// @notice Thrown when `updateRequiredVotes` is called for a question that has already reached the required votes.
    error AdminAdapter__RequiredVotesAlreadyReached();

    /// @notice Thrown when `requiredVotes` is below `minRequiredVotes`.
    error AdminAdapter__RequiredVotesTooLow();

    /// @notice Thrown when the caller has already submitted a vote for the given question.
    error AdminAdapter__VoteAlreadySubmitted();

    /// @notice Thrown when the CTF adapter is not in the whitelist.
    error AdminAdapter__UmaCompatibleCtfAdapterNotWhitelisted();

    /**
     * @notice Initializes a question in the UMA-compatible CTF adapter.
     * @dev Calls the CTF adapter's `initialize` with a dead reward token and zero reward/bond/liveness.
     *      Reverts if the adapter is not whitelisted, `requiredVotes` is below `minRequiredVotes`,
     *      or the question has already been initialized.
     * @param umaCompatibleCtfAdapter The whitelisted UMA-compatible CTF adapter address.
     * @param ancillaryData Data used to resolve the condition in the CTF adapter.
     * @param requiredVotes The number of votes required to resolve the question.
     * @return questionID The UMA CTF adapter question ID.
     */
    function initialize(
        address umaCompatibleCtfAdapter,
        bytes memory ancillaryData,
        uint8 requiredVotes
    ) external returns (bytes32 questionID);

    /**
     * @notice Cast a vote on a question.
     * @dev Triggers resolution if the vote tips the question over `requiredVotes` for any outcome.
     *      Each caller may only vote once per question.
     * @param questionID The UMA CTF adapter question ID.
     * @param outcome The outcome to vote for. Must be 0, 0.5 ether, or 1 ether.
     * @param reason Optional reason for the vote.
     */
    function vote(bytes32 questionID, uint64 outcome, bytes memory reason) external;

    /**
     * @notice Adds or removes UMA-compatible CTF adapters from the whitelist.
     * @dev When whitelisting, validates that the adapter's optimistic oracle matches
     *      `UMA_COMPATIBLE_OPTIMISTIC_ORACLE`. Admin only.
     * @param umaCompatibleCtfAdapters The CTF adapter addresses to update.
     * @param isWhitelisted Whether to whitelist or remove the adapters.
     */
    function updateIsUmaCompatibleCtfAdapterWhitelisted(
        address[] calldata umaCompatibleCtfAdapters,
        bool isWhitelisted
    ) external;

    /**
     * @notice Updates the global minimum number of votes required to resolve any new question.
     * @dev Does not affect already-initialized questions. Admin only.
     * @param newMinRequiredVotes The new minimum. Must be at least 2.
     */
    function updateMinRequiredVotes(uint8 newMinRequiredVotes) external;

    /**
     * @notice Updates the required votes for a question.
     * @dev Does not affect already-initialized questions. Admin only.
     * @param questionID The UMA CTF adapter question ID.
     * @param newRequiredVotes The new required votes. Must be at least `minRequiredVotes`.
     */
    function updateRequiredVotes(bytes32 questionID, uint8 newRequiredVotes) external;
}
