// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {PollStatus, IPredictionPoll, IPredictionOracle} from "./interfaces/IPredictionOracle.sol";

/**
 * @title PredictionPoll
 * @notice Individual poll contract storing question data and answer
 * @dev Deployed by PredictionOracle for each poll
 */
contract PredictionPoll is IPredictionPoll {
    /// @notice Poll data structure
    /// @dev Struct packing: address (20 bytes) + PollStatus (1 byte) = 21 bytes in one slot
    struct PollData {
        string question; // Question text (max 50 chars)
        string rules; // Rules description (max 500 chars)
        string[] sources; // Source URLs (max 3, 200 chars each)
        address creator; // Poll creator address (20 bytes)
        PollStatus status; // Current poll status (1 byte) - packed with creator
        uint256 checkBlock; // Block number for verification (32 bytes, separate slot)
    }

    /// @notice Factory contract address
    address public immutable factory;

    /// @notice Poll data storage
    PollData private _pollData;

    // ============================================
    // ERRORS
    // ============================================

    /// @notice Only factory can call this function
    error OnlyFactory();

    /// @notice Only operator or guardian can call this function
    error OnlyOperatorOrGuardian();

    /// @notice Check block not reached yet
    error CheckBlockNotReached();

    /// @notice Only guardian can set answer for non-Pending status
    error OnlyGuardianCanOverride();

    // ============================================
    // EVENTS
    // ============================================

    // Events are declared in IPredictionPoll interface

    // ============================================
    // MODIFIERS
    // ============================================

    /// @notice Restrict function to factory only
    modifier onlyFactory() {
        if (msg.sender != factory) revert OnlyFactory();
        _;
    }

    // ============================================
    // CONSTRUCTOR
    // ============================================

    /**
     * @notice Initialize poll with data
     * @param _question Question text
     * @param _rules Rules description
     * @param _sources Source URLs array
     * @param _checkBlock Block number for verification
     * @param _creator Poll creator address
     */
    constructor(
        string memory _question,
        string memory _rules,
        string[] memory _sources,
        uint256 _checkBlock,
        address _creator
    ) {
        factory = msg.sender;

        _pollData = PollData({
            question: _question,
            rules: _rules,
            sources: _sources,
            creator: _creator,
            status: PollStatus.Pending,
            checkBlock: _checkBlock
        });
    }

    // ============================================
    // EXTERNAL FUNCTIONS
    // ============================================

    /**
     * @notice Set poll answer
     * @dev Can be called directly by operators or guardian for parallel processing
     * @dev Operators can only set answer when:
     *      - Current block >= checkBlock
     *      - Current status is Pending
     * @dev Guardian can set answer at any time and override any status
     * @param _status New status to set (Yes, No, or Unknown)
     */
    function setAnswer(PollStatus _status) external {
        // Check permissions and get role
        (bool isAllowed, bool isGuardian) = IPredictionOracle(factory)
            .isOperatorOrGuardian(msg.sender);

        if (!isAllowed) revert OnlyOperatorOrGuardian();
        // Check block must be reached
        if (block.number < _pollData.checkBlock) {
            revert CheckBlockNotReached();
        }

        // Can only set answer if status is Pending
        if (!isGuardian && _pollData.status != PollStatus.Pending) {
            revert OnlyGuardianCanOverride();
        }

        _pollData.status = _status;

        emit AnswerSet(_status, msg.sender);
    }

    /**
     * @notice Update check block during refresh
     * @param _newCheckBlock New check block number
     * @dev Only callable by factory
     */
    function updateCheckBlock(uint256 _newCheckBlock) external onlyFactory {
        uint256 oldCheckBlock = _pollData.checkBlock;
        _pollData.checkBlock = _newCheckBlock;

        emit CheckBlockUpdated(oldCheckBlock, _newCheckBlock);
    }

    // ============================================
    // VIEW FUNCTIONS
    // ============================================

    /**
     * @notice Get current check block
     * @return Current check block number
     */
    function getCheckBlock() external view returns (uint256) {
        return _pollData.checkBlock;
    }

    /**
     * @notice Get current poll status
     * @return Current status
     */
    function getStatus() external view returns (PollStatus) {
        return _pollData.status;
    }

    /**
     * @notice Get complete poll data
     * @return Complete PollData structure
     */
    function getPollData() external view returns (PollData memory) {
        return _pollData;
    }

    /**
     * @notice Get poll creator address
     * @return Creator address
     */
    function getCreator() external view returns (address) {
        return _pollData.creator;
    }
}
