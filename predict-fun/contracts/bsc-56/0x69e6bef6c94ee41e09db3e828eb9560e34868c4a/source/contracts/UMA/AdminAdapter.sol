// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {IAdminAdapter} from "./interfaces/IAdminAdapter.sol";
import {IOptimisticOracleV2} from "./interfaces/IOptimisticOracleV2.sol";
import {IUmaCtfAdapter, QuestionData} from "./interfaces/IUmaCtfAdapter.sol";

/**
 * @title AdminAdapter
 * @author predict.fun protocol team
 * @notice Adapter that allows predict.fun admins to resolve questions.
 * @dev Initializers create questions via a whitelisted CTF adapter; voters submit yes/no/50-50 votes;
 *      once a threshold is reached the contract proposes the price to UMA and triggers resolution.
 */
contract AdminAdapter is AccessControl, IAdminAdapter {
    /**
     * @notice Role allowed to initialize new questions.
     */
    bytes32 private constant INITIALIZER_ROLE = keccak256("INITIALIZER_ROLE");

    /**
     * @notice Role allowed to switch the resolution provider for a question.
     */
    bytes32 private constant SWITCHER_ROLE = keccak256("SWITCHER_ROLE");

    /**
     * @notice Role allowed to vote on questions.
     */
    bytes32 private constant VOTER_ROLE = keccak256("VOTER_ROLE");

    /**
     * @notice The UMA-compatible Optimistic Oracle used to propose and settle prices.
     */
    IOptimisticOracleV2 public immutable UMA_COMPATIBLE_OPTIMISTIC_ORACLE;

    /**
     * @notice Whitelist of UMA-compatible CTF adapters that are allowed to be called.
     */
    mapping(address umaCompatibleCtfAdapter => bool isWhitelisted) public isUmaCompatibleCtfAdapterWhitelisted;

    /**
     * @notice Maps question ID to question data.
     */
    mapping(bytes32 questionID => Question question) public questions;

    /**
     * @notice Maps vote key to the vote. The key is a hash of the question ID and the voter's address.
     */
    mapping(bytes32 key => Vote vote) public votes;

    /**
     * @notice Minimum number of votes required to resolve any new question.
     */
    uint8 public minRequiredVotes = 2;

    /**
     * @notice Sets the Optimistic Oracle address and grants the admin role.
     * @param _optimisticOracle Address of the UMA-compatible Optimistic Oracle.
     * @param _admin Address to grant `DEFAULT_ADMIN_ROLE`.
     */
    constructor(address _optimisticOracle, address _admin) {
        UMA_COMPATIBLE_OPTIMISTIC_ORACLE = IOptimisticOracleV2(_optimisticOracle);
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    /**
     * @inheritdoc IAdminAdapter
     */
    function initialize(
        address umaCompatibleCtfAdapter,
        bytes memory ancillaryData,
        uint8 requiredVotes
    ) external onlyRole(INITIALIZER_ROLE) returns (bytes32 questionID) {
        _validateUmaCompatibleCtfAdapterIsWhitelisted(umaCompatibleCtfAdapter);

        if (requiredVotes < minRequiredVotes) {
            revert AdminAdapter__RequiredVotesTooLow();
        }

        questionID = IUmaCtfAdapter(umaCompatibleCtfAdapter).initialize(
            ancillaryData,
            0x000000000000000000000000000000000000dEaD,
            0,
            0,
            0
        );

        _validateQuestionIsNotInitialized(questionID);

        questions[questionID].status = Status.Active;
        questions[questionID].requiredVotes = requiredVotes;
        questions[questionID].umaCompatibleCtfAdapter = umaCompatibleCtfAdapter;

        emit AdminAdapter__QuestionInitialized(questionID, umaCompatibleCtfAdapter, requiredVotes);
    }

    /**
     * @notice Switches the resolution provider for a question. The purpose of this function is to allow
     * the switcher to switch the resolution provider from 3PO or any upcoming resolution providers to the AdminAdapter
     * if they fail.
     * @param questionIDs The UMA CTF adapter question IDs.
     * @param umaCompatibleCtfAdapter The UMA-compatible CTF adapter to switch to.
     * @param requiredVotes The number of votes required to resolve the question.
     */
    function switchResolutionProvider(
        bytes32[] calldata questionIDs,
        address umaCompatibleCtfAdapter,
        uint8 requiredVotes
    ) external onlyRole(SWITCHER_ROLE) {
        _validateUmaCompatibleCtfAdapterIsWhitelisted(umaCompatibleCtfAdapter);

        if (requiredVotes < minRequiredVotes) {
            revert AdminAdapter__RequiredVotesTooLow();
        }

        uint256 length = questionIDs.length;
        if (length == 0) {
            revert AdminAdapter__NoQuestionIDsProvided();
        }

        for (uint256 i; i < length; i++) {
            bytes32 questionID = questionIDs[i];
            QuestionData memory adapterQuestion = IUmaCtfAdapter(umaCompatibleCtfAdapter).getQuestion(questionID);
            if (adapterQuestion.requestTimestamp == 0) {
                revert AdminAdapter__QuestionNotInitialized();
            }
            if (adapterQuestion.resolved) {
                revert AdminAdapter__QuestionAlreadyResolved();
            }

            _validateQuestionIsNotInitialized(questionID);

            questions[questionID].status = Status.Active;
            questions[questionID].requiredVotes = requiredVotes;
            questions[questionID].umaCompatibleCtfAdapter = umaCompatibleCtfAdapter;
        }

        emit AdminAdapter__ResolutionProviderSwitched(umaCompatibleCtfAdapter, questionIDs, requiredVotes);
    }

    /**
     * @inheritdoc IAdminAdapter
     */
    function vote(bytes32 questionID, uint64 outcome, bytes memory reason) external onlyRole(VOTER_ROLE) {
        if (outcome != 0 && outcome != 0.5 ether && outcome != 1 ether) {
            revert AdminAdapter__InvalidOutcome();
        }

        Question storage question = questions[questionID];
        if (question.status != Status.Active) {
            revert AdminAdapter__QuestionNotActive();
        }

        Vote storage voteData = votes[voteKey(questionID, msg.sender)];
        if (voteData.submitted) {
            revert AdminAdapter__VoteAlreadySubmitted();
        }

        voteData.submitted = true;
        voteData.outcome = outcome;
        voteData.reason = reason;

        emit AdminAdapter__VoteSubmitted(questionID, msg.sender, outcome, reason);

        uint256 requiredVotes = question.requiredVotes;

        if (outcome == 0) {
            question.noVotes++;

            if (question.noVotes >= requiredVotes) {
                question.status = Status.Resolved;
                _resolve(questionID, question.umaCompatibleCtfAdapter, 0);
            }
        } else if (outcome == 0.5 ether) {
            question.fiftyFiftyVotes++;

            if (question.fiftyFiftyVotes >= requiredVotes) {
                question.status = Status.Resolved;
                _resolve(questionID, question.umaCompatibleCtfAdapter, 0.5 ether);
            }
        } else if (outcome == 1 ether) {
            question.yesVotes++;

            if (question.yesVotes >= requiredVotes) {
                question.status = Status.Resolved;
                _resolve(questionID, question.umaCompatibleCtfAdapter, 1 ether);
            }
        }
    }

    /**
     * @inheritdoc IAdminAdapter
     */
    function updateIsUmaCompatibleCtfAdapterWhitelisted(
        address[] calldata umaCompatibleCtfAdapters,
        bool isWhitelisted
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        for (uint256 i; i < umaCompatibleCtfAdapters.length; i++) {
            address umaCompatibleCtfAdapter = umaCompatibleCtfAdapters[i];
            if (isWhitelisted) {
                if (IUmaCtfAdapter(umaCompatibleCtfAdapter).optimisticOracle() != UMA_COMPATIBLE_OPTIMISTIC_ORACLE) {
                    revert AdminAdapter__InvalidOptimisticOracle();
                }
            }

            isUmaCompatibleCtfAdapterWhitelisted[umaCompatibleCtfAdapter] = isWhitelisted;
        }
        emit AdminAdapter__UmaCompatibleCtfAdaptersWhitelisted(umaCompatibleCtfAdapters, isWhitelisted);
    }

    /**
     * @inheritdoc IAdminAdapter
     */
    function updateRequiredVotes(bytes32 questionID, uint8 newRequiredVotes) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newRequiredVotes < minRequiredVotes) {
            revert AdminAdapter__RequiredVotesTooLow();
        }

        Question storage question = questions[questionID];

        if (question.status != Status.Active) {
            revert AdminAdapter__QuestionNotActive();
        }

        if (
            question.yesVotes >= newRequiredVotes ||
            question.noVotes >= newRequiredVotes ||
            question.fiftyFiftyVotes >= newRequiredVotes
        ) {
            revert AdminAdapter__RequiredVotesAlreadyReached();
        }

        question.requiredVotes = newRequiredVotes;
        emit AdminAdapter__RequiredVotesUpdated(questionID, newRequiredVotes);
    }

    /**
     * @inheritdoc IAdminAdapter
     */
    function updateMinRequiredVotes(uint8 newMinRequiredVotes) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newMinRequiredVotes < 2) {
            revert AdminAdapter__MinRequiredVotesTooLow();
        }

        minRequiredVotes = newMinRequiredVotes;
        emit AdminAdapter__MinRequiredVotesUpdated(newMinRequiredVotes);
    }

    /**
     * @notice Derives a unique storage key for a voter's vote on a given question.
     * @param questionID The UMA CTF adapter question ID.
     * @param voter The address of the voter.
     * @return voteKey The keccak256 hash of the encoded question ID and voter address.
     */
    function voteKey(bytes32 questionID, address voter) public pure returns (bytes32) {
        return keccak256(abi.encode(questionID, voter));
    }

    /**
     * @notice Proposes the winning outcome to the UMA Optimistic Oracle and triggers CTF adapter resolution.
     * @dev Uses ancillary data stored in the CTF adapter, which includes the initializer suffix appended
     *      by the OO at request time. That exact bytes value must be reused to match the pending request.
     * @param questionID The UMA CTF adapter question ID.
     * @param umaCompatibleCtfAdapter The CTF adapter that owns the question.
     * @param outcome The winning outcome value to propose: 0, 0.5 ether, or 1 ether.
     */
    function _resolve(bytes32 questionID, address umaCompatibleCtfAdapter, uint256 outcome) private {
        QuestionData memory adapterQuestion = IUmaCtfAdapter(umaCompatibleCtfAdapter).getQuestion(questionID);
        UMA_COMPATIBLE_OPTIMISTIC_ORACLE.proposePrice(
            umaCompatibleCtfAdapter,
            bytes32("YES_OR_NO_QUERY"),
            adapterQuestion.requestTimestamp,
            adapterQuestion.ancillaryData,
            int256(outcome)
        );

        IUmaCtfAdapter(umaCompatibleCtfAdapter).resolve(questionID);

        emit AdminAdapter__QuestionResolved(questionID, umaCompatibleCtfAdapter, outcome);
    }

    /**
     * @notice Validates that the UMA-compatible CTF adapter is whitelisted.
     * @param umaCompatibleCtfAdapter The UMA-compatible CTF adapter to validate.
     */
    function _validateUmaCompatibleCtfAdapterIsWhitelisted(address umaCompatibleCtfAdapter) private view {
        if (!isUmaCompatibleCtfAdapterWhitelisted[umaCompatibleCtfAdapter]) {
            revert AdminAdapter__UmaCompatibleCtfAdapterNotWhitelisted();
        }
    }

    /**
     * @notice Validates that the question is not initialized.
     * @param questionID The UMA CTF adapter question ID to validate.
     */
    function _validateQuestionIsNotInitialized(bytes32 questionID) private view {
        if (questions[questionID].status != Status.None) {
            revert AdminAdapter__QuestionAlreadyInitialized();
        }
    }
}
