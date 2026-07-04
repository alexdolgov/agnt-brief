// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

/**
 * @title Poll Status Enum
 * @notice Shared enumeration for poll status
 */
enum PollStatus {
    Pending, // 0 - Initial state, awaiting answer
    Yes, // 1 - Positive answer
    No, // 2 - Negative answer
    Unknown // 3 - Cannot determine answer at check time
}

/**
 * @title PollInfo
 * @notice Complete poll information for backend processing
 */
struct PollInfo {
    address pollAddress;
    string question;
    string rules;
    string[] sources;
    uint256 checkBlock;
    address creator;
    PollStatus status;
}

/**
 * @title IPredictionPoll
 * @notice Interface for PredictionPoll contract
 */
interface IPredictionPoll {
    // ============================================
    // EVENTS
    // ============================================

    event AnswerSet(PollStatus status, address indexed setter);

    event CheckBlockUpdated(uint256 oldCheckBlock, uint256 newCheckBlock);

    // ============================================
    // FUNCTIONS
    // ============================================

    function factory() external view returns (address);

    function setAnswer(PollStatus _status) external;

    function updateCheckBlock(uint256 _newCheckBlock) external;

    function getCheckBlock() external view returns (uint256);

    function getStatus() external view returns (PollStatus);

    function getCreator() external view returns (address);
}

/**
 * @title IPredictionOracle
 * @notice Interface for PredictionOracle contract
 */
interface IPredictionOracle {
    // ============================================
    // EVENTS
    // ============================================

    event PollCreated(
        address indexed pollAddress,
        address indexed creator,
        uint256 checkBlock,
        string question
    );

    event PollRefreshed(
        address indexed pollAddress,
        uint256 oldCheckBlock,
        uint256 newCheckBlock,
        bool wasFree
    );

    event OperatorAdded(address indexed operator);
    event OperatorRemoved(address indexed operator);
    event GuardianUpdated(
        address indexed oldGuardian,
        address indexed newGuardian
    );
    event OperatorGasFeeUpdated(uint256 newFee);
    event ProtocolFeeUpdated(uint256 newFee);
    event ProtocolFeesWithdrawn(address indexed to, uint256 amount);

    // ============================================
    // POLL MANAGEMENT
    // ============================================

    function createPoll(
        string calldata _question,
        string calldata _rules,
        string[] calldata _sources,
        uint256 _checkBlock
    ) external payable returns (address pollAddress);

    function refreshPollFree(
        address _pollAddress,
        uint256 _newCheckBlock
    ) external;

    function refreshPollPaid(
        address _pollAddress,
        uint256 _newCheckBlock
    ) external payable;

    // ============================================
    // OPERATOR MANAGEMENT
    // ============================================

    function addOperator(address _operator) external;

    function removeOperator(address _operator) external;

    function getOperators() external view returns (address[] memory);

    function getOperatorCount() external view returns (uint256);

    function isOperator(address _addr) external view returns (bool);

    function isOperatorOrGuardian(
        address _addr
    ) external view returns (bool isAllowed, bool isGuardian);

    // ============================================
    // QUERY METHODS
    // ============================================

    function getPollsByBlockRange(
        uint256 _fromBlock,
        uint256 _toBlock,
        uint8 _statusFilter,
        uint256 _maxResults,
        uint256 _startIndex
    )
        external
        view
        returns (PollInfo[] memory polls, uint256 nextBlock, uint256 nextIndex);

    function getPollsByCreator(
        address _creator,
        uint256 _maxResults,
        uint256 _offset
    ) external view returns (PollInfo[] memory polls, bool hasMore);

    // ============================================
    // CONFIGURATION
    // ============================================

    function setOperatorGasFee(uint256 _fee) external;

    function setProtocolFee(uint256 _fee) external;

    function setGuardian(address _guardian) external;

    function pause() external;

    function unpause() external;

    // ============================================
    // WITHDRAWAL
    // ============================================

    function withdrawProtocolFees(address payable _to) external;

    // ============================================
    // VIEW FUNCTIONS
    // ============================================

    function operatorGasFee() external view returns (uint256);

    function protocolFee() external view returns (uint256);

    function guardian() external view returns (address);

    function accumulatedProtocolFees() external view returns (uint256);

    function freeRefreshCount(
        address _pollAddress
    ) external view returns (uint256);

    function pollsByCheckBlock(
        uint256 _blockNumber,
        uint256 _index
    ) external view returns (address);

    function pollsByCreator(
        address _creator,
        uint256 _index
    ) external view returns (address);
}
