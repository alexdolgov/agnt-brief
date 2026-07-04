// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {PredictionPoll} from "./PredictionPoll.sol";
import {PollStatus, PollInfo, IPredictionOracle} from "./interfaces/IPredictionOracle.sol";

/**
 * @title PredictionOracle
 * @notice Factory contract for creating and managing prediction polls
 * @dev Handles poll creation, operator management, payment distribution, and queries
 */
contract PredictionOracle is
    Ownable,
    Pausable,
    ReentrancyGuard,
    IPredictionOracle
{
    // ============================================
    // STATE VARIABLES
    // ============================================

    /// @notice Operator gas fee amount
    uint256 public operatorGasFee;

    /// @notice Protocol fee amount
    uint256 public protocolFee;

    /// @notice Guardian address for emergency interventions
    address public guardian;

    /// @notice Last operator index used for round-robin
    /// @dev uint8 is sufficient (max 256 operators), packed with guardian
    uint8 private _lastOperatorIndex;

    /// @notice List of whitelisted operator addresses
    address[] private _operators;

    /// @notice Mapping to check if address is operator
    mapping(address => bool) public isOperator;

    /// @notice Mapping: blockNumber => poll addresses[]
    mapping(uint256 => address[]) public pollsByCheckBlock;

    /// @notice Mapping: creator => poll addresses[]
    mapping(address => address[]) public pollsByCreator;

    /// @notice Mapping: poll address => free refresh count
    mapping(address => uint256) public freeRefreshCount;

    /// @notice Accumulated protocol fees
    uint256 public accumulatedProtocolFees;

    // ============================================
    // CONSTANTS
    // ============================================

    /// @notice Maximum question length
    uint256 public constant MAX_QUESTION_LENGTH = 50;

    /// @notice Maximum rules length
    uint256 public constant MAX_RULES_LENGTH = 500;

    /// @notice Maximum number of sources
    uint256 public constant MAX_SOURCES = 3;

    /// @notice Maximum source length
    uint256 public constant MAX_SOURCE_LENGTH = 200;

    /// @notice Minimum blocks ahead for check block
    uint256 public constant MIN_BLOCKS_AHEAD = 10;

    /// @notice Blocks to wait before free refresh allowed
    uint256 public constant PENDING_TIMEOUT = 1000;

    /// @notice Maximum free refresh attempts per poll
    uint256 public constant MAX_FREE_REFRESHES = 2;

    // ============================================
    // ERRORS
    // ============================================

    error InvalidQuestionLength();
    error InvalidRulesLength();
    error TooManySources();
    error InvalidSourceLength();
    error InvalidCheckBlock();
    error InsufficientPayment();
    error NoOperatorsAvailable();
    error OperatorAlreadyExists();
    error OperatorNotFound();
    error CannotRemoveLastOperator();
    error InvalidAddress();
    error CannotRefreshYet();
    error InvalidRefreshBlock();
    error RefreshPaymentRequired();
    error PollNotFound();
    error WithdrawalFailed();
    error InsufficientBalance();

    // ============================================
    // CONSTRUCTOR
    // ============================================

    /**
     * @notice Initialize factory with initial configuration
     * @dev Sets msg.sender as both owner and initial guardian
     * @param _operatorGasFee Initial operator gas fee in wei
     * @param _protocolFee Initial protocol fee in wei
     */
    constructor(
        uint256 _operatorGasFee,
        uint256 _protocolFee
    ) Ownable(msg.sender) {
        operatorGasFee = _operatorGasFee;
        protocolFee = _protocolFee;
        guardian = msg.sender; // Initially set to owner
    }

    // ============================================
    // EXTERNAL FUNCTIONS - POLL MANAGEMENT
    // ============================================

    /**
     * @notice Create a new prediction poll
     * @dev Requires payment of (operatorGasFee + protocolFee) in msg.value
     * @dev At least one operator must be registered
     * @param _question Question text (1-50 chars)
     * @param _rules Rules description (1-500 chars)
     * @param _sources Source URLs (0-3, max 200 chars each)
     * @param _checkBlock Block number for verification (must be >= current block + MIN_BLOCKS_AHEAD)
     * @return pollAddress Address of deployed poll contract
     */
    function createPoll(
        string calldata _question,
        string calldata _rules,
        string[] calldata _sources,
        uint256 _checkBlock
    )
        external
        payable
        whenNotPaused
        nonReentrant
        returns (address pollAddress)
    {
        // Validate inputs and payment
        _validatePollInputs(_question, _rules, _sources, _checkBlock);

        // Deploy new poll contract
        pollAddress = address(
            new PredictionPoll(
                _question,
                _rules,
                _sources,
                _checkBlock,
                msg.sender
            )
        );

        // Store mappings and distribute
        _storePollMappings(pollAddress, _checkBlock);
        _distributePayment();

        emit PollCreated(pollAddress, msg.sender, _checkBlock, _question);
    }

    /**
     * @notice Free refresh poll with new check block
     * @dev Only available after Pending status + PENDING_TIMEOUT blocks
     * @dev Limited to MAX_FREE_REFRESHES (2) attempts per poll
     * @dev Cannot be used if status is Yes/No/Unknown
     * @param _pollAddress Poll contract address
     * @param _newCheckBlock New check block number (must be >= current block + MIN_BLOCKS_AHEAD)
     */
    function refreshPollFree(
        address _pollAddress,
        uint256 _newCheckBlock
    ) external whenNotPaused nonReentrant {
        _refreshPoll(_pollAddress, _newCheckBlock, true);
    }

    /**
     * @notice Paid refresh poll with new check block
     * @dev Requires payment of (operatorGasFee + protocolFee)
     * @dev Can be used after Unknown status or when free refreshes exhausted
     * @dev Cannot be used if status is Yes/No
     * @param _pollAddress Poll contract address
     * @param _newCheckBlock New check block number (must be >= current block + MIN_BLOCKS_AHEAD)
     */
    function refreshPollPaid(
        address _pollAddress,
        uint256 _newCheckBlock
    ) external payable whenNotPaused nonReentrant {
        _refreshPoll(_pollAddress, _newCheckBlock, false);
    }

    /**
     * @notice Check if address is operator or guardian
     * @dev Used by PredictionPoll contracts to verify permissions
     * @param _address Address to check
     * @return isAllowed True if address is operator or guardian
     * @return isGuardian True if address is guardian (false if operator)
     */
    function isOperatorOrGuardian(
        address _address
    ) external view returns (bool isAllowed, bool isGuardian) {
        isGuardian = _address == guardian;
        isAllowed = isGuardian || isOperator[_address];
    }

    // ============================================
    // EXTERNAL FUNCTIONS - OPERATOR MANAGEMENT
    // ============================================

    /**
     * @notice Add operator to whitelist
     * @dev Operators can set answers for polls and receive gas fees via round-robin
     * @param _operator Operator address to add (must not be zero address)
     */
    function addOperator(address _operator) external onlyOwner {
        if (_operator == address(0)) revert InvalidAddress();
        if (isOperator[_operator]) revert OperatorAlreadyExists();

        _operators.push(_operator);
        isOperator[_operator] = true;

        emit OperatorAdded(_operator);
    }

    /**
     * @notice Remove operator from whitelist
     * @dev Cannot remove the last operator to ensure system remains operational
     * @dev Uses swap-and-pop pattern for gas efficiency
     * @param _operator Operator address to remove
     */
    function removeOperator(address _operator) external onlyOwner {
        if (!isOperator[_operator]) revert OperatorNotFound();
        if (_operators.length == 1) revert CannotRemoveLastOperator();

        // Find and remove operator
        uint256 length = _operators.length;
        for (uint256 i = 0; i < length; i++) {
            if (_operators[i] == _operator) {
                _operators[i] = _operators[length - 1];
                _operators.pop();
                break;
            }
        }

        isOperator[_operator] = false;

        emit OperatorRemoved(_operator);
    }

    /**
     * @notice Get all registered operators
     * @return Array of operator addresses
     */
    function getOperators() external view returns (address[] memory) {
        return _operators;
    }

    /**
     * @notice Get number of registered operators
     * @return Number of operators
     */
    function getOperatorCount() external view returns (uint256) {
        return _operators.length;
    }

    // ============================================
    // EXTERNAL FUNCTIONS - QUERY METHODS
    // ============================================

    /**
     * @notice Get polls by block range with filtering and pagination
     * @dev Backend usage: call repeatedly using returned nextBlock/nextIndex until nextBlock is 0
     * @dev If _maxResults is 0, returns all matching polls without pagination
     * @param _fromBlock Start block (inclusive)
     * @param _toBlock End block (exclusive, 0 = current block)
     * @param _statusFilter Bit flags (1=Pending, 8=Unknown, 9=Both)
     * @param _maxResults Maximum results to return (0 = no limit)
     * @param _startIndex Index to start from within the first block (for pagination)
     * @return polls Array of poll information (length < maxResults means all data retrieved)
     * @return nextBlock Next block number to continue from (0 if all data retrieved)
     * @return nextIndex Next index within block to continue from (0 if all data retrieved)
     */
    function getPollsByBlockRange(
        uint256 _fromBlock,
        uint256 _toBlock,
        uint8 _statusFilter,
        uint256 _maxResults,
        uint256 _startIndex
    )
        external
        view
        returns (PollInfo[] memory polls, uint256 nextBlock, uint256 nextIndex)
    {
        // If no limit specified, set to max value
        _maxResults = _maxResults > 0 ? _maxResults : type(uint256).max;

        polls = new PollInfo[](_maxResults);
        uint256 count;
        uint256 toBlock = _toBlock == 0 ? block.number : _toBlock;

        // Iterate through blocks
        for (uint256 blockNum = _fromBlock; blockNum < toBlock; blockNum++) {
            address[] memory pollAddrs = pollsByCheckBlock[blockNum];

            // Start from _startIndex only for first block, otherwise from 0
            uint256 startIdx = (blockNum == _fromBlock) ? _startIndex : 0;

            for (uint256 i = startIdx; i < pollAddrs.length; i++) {
                // Check status filter
                PollStatus status = PredictionPoll(pollAddrs[i]).getStatus();

                if (
                    _statusFilter == 0 ||
                    (_statusFilter & uint8(1 << uint8(status))) != 0
                ) {
                    if (count < _maxResults) {
                        polls[count] = _buildPollInfo(pollAddrs[i]);
                        unchecked {
                            count++;
                        }
                    } else {
                        // Limit reached, return cursor to continue
                        assembly {
                            mstore(polls, count)
                        }
                        return (polls, blockNum, i);
                    }
                }
            }
        }

        // All data retrieved
        assembly {
            mstore(polls, count)
        }
        return (polls, 0, 0);
    }

    /**
     * @notice Get polls by creator with pagination
     * @dev Call repeatedly incrementing _offset by maxResults until hasMore is false
     * @dev If _maxResults is 0, returns all polls for creator without pagination
     * @param _creator Creator address
     * @param _maxResults Maximum results to return (0 = no limit)
     * @param _offset Starting position for pagination
     * @return polls Array of poll information
     * @return hasMore True if there are more polls to fetch
     */
    function getPollsByCreator(
        address _creator,
        uint256 _maxResults,
        uint256 _offset
    ) external view returns (PollInfo[] memory polls, bool hasMore) {
        address[] memory pollAddrs = pollsByCreator[_creator];
        uint256 totalPolls = pollAddrs.length;

        // Return empty if offset beyond total
        if (_offset >= totalPolls) {
            return (new PollInfo[](0), false);
        }

        // If no limit specified, set to max remaining
        uint256 remaining = totalPolls - _offset;
        uint256 count = _maxResults > 0 && _maxResults < remaining
            ? _maxResults
            : remaining;

        polls = new PollInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            polls[i] = _buildPollInfo(pollAddrs[_offset + i]);
        }

        // HasMore if there are polls after current batch (only when limit is set)
        hasMore = _maxResults > 0 && (_offset + count < totalPolls);

        return (polls, hasMore);
    }

    // ============================================
    // EXTERNAL FUNCTIONS - CONFIGURATION
    // ============================================

    /**
     * @notice Set operator gas fee
     * @dev Affects the cost required to create polls and paid refreshes
     * @param _fee New fee amount in wei
     */
    function setOperatorGasFee(uint256 _fee) external onlyOwner {
        operatorGasFee = _fee;
        emit OperatorGasFeeUpdated(_fee);
    }

    /**
     * @notice Set protocol fee
     * @dev Affects the cost required to create polls and paid refreshes
     * @param _fee New fee amount in wei
     */
    function setProtocolFee(uint256 _fee) external onlyOwner {
        protocolFee = _fee;
        emit ProtocolFeeUpdated(_fee);
    }

    /**
     * @notice Set guardian address
     * @dev Guardian has same permissions as operators to set answers
     * @param _guardian New guardian address (must not be zero address)
     */
    function setGuardian(address _guardian) external onlyOwner {
        if (_guardian == address(0)) revert InvalidAddress();
        address oldGuardian = guardian;
        guardian = _guardian;
        emit GuardianUpdated(oldGuardian, _guardian);
    }

    /**
     * @notice Pause contract
     * @dev Prevents poll creation, refreshes, and answer setting when paused
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause contract
     * @dev Re-enables poll creation, refreshes, and answer setting
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    // ============================================
    // EXTERNAL FUNCTIONS - WITHDRAWAL
    // ============================================

    /**
     * @notice Withdraw all accumulated protocol fees
     * @dev Protected by nonReentrant modifier for security
     * @dev Transfers entire balance of accumulatedProtocolFees
     * @param _to Recipient address (must not be zero address)
     */
    function withdrawProtocolFees(
        address payable _to
    ) external onlyOwner nonReentrant {
        if (_to == address(0)) revert InvalidAddress();

        uint256 amount = accumulatedProtocolFees;
        if (amount == 0) revert InsufficientBalance();

        accumulatedProtocolFees = 0;

        (bool success, ) = _to.call{value: amount}("");
        if (!success) revert WithdrawalFailed();

        emit ProtocolFeesWithdrawn(_to, amount);
    }

    // ============================================
    // INTERNAL FUNCTIONS
    // ============================================

    /**
     * @notice Build PollInfo struct from poll address
     * @dev Helper function to avoid code duplication in query methods
     * @param _pollAddress Poll contract address to build info for
     * @return PollInfo struct with all poll data
     */
    function _buildPollInfo(
        address _pollAddress
    ) private view returns (PollInfo memory) {
        PredictionPoll.PollData memory data = PredictionPoll(_pollAddress)
            .getPollData();

        return
            PollInfo({
                pollAddress: _pollAddress,
                question: data.question,
                rules: data.rules,
                sources: data.sources,
                checkBlock: data.checkBlock,
                creator: data.creator,
                status: data.status
            });
    }

    /**
     * @notice Validate poll input parameters
     * @dev Validates question, rules, sources, checkBlock, payment, and operator availability
     * @param _question Question text to validate
     * @param _rules Rules text to validate
     * @param _sources Array of source URLs to validate
     * @param _checkBlock Check block number to validate
     */
    function _validatePollInputs(
        string calldata _question,
        string calldata _rules,
        string[] calldata _sources,
        uint256 _checkBlock
    ) private view {
        if (
            bytes(_question).length == 0 ||
            bytes(_question).length > MAX_QUESTION_LENGTH
        ) {
            revert InvalidQuestionLength();
        }
        if (
            bytes(_rules).length == 0 || bytes(_rules).length > MAX_RULES_LENGTH
        ) {
            revert InvalidRulesLength();
        }
        if (_sources.length > MAX_SOURCES) {
            revert TooManySources();
        }
        for (uint256 i = 0; i < _sources.length; i++) {
            if (bytes(_sources[i]).length > MAX_SOURCE_LENGTH) {
                revert InvalidSourceLength();
            }
        }
        if (_checkBlock < block.number + MIN_BLOCKS_AHEAD) {
            revert InvalidCheckBlock();
        }
        if (msg.value != operatorGasFee + protocolFee) {
            revert InsufficientPayment();
        }
        if (_operators.length == 0) {
            revert NoOperatorsAvailable();
        }
    }

    /**
     * @notice Internal function to execute poll refresh
     * @dev Contains all validation and refresh logic for both free and paid refresh
     * @param _pollAddress Address of poll contract
     * @param _newCheckBlock New check block to set
     * @param _isFree Whether this is a free refresh attempt
     */
    function _refreshPoll(
        address _pollAddress,
        uint256 _newCheckBlock,
        bool _isFree
    ) private {
        // Validate poll address
        if (_pollAddress == address(0)) revert PollNotFound();

        // Validate new check block
        if (_newCheckBlock < block.number + MIN_BLOCKS_AHEAD) {
            revert InvalidRefreshBlock();
        }

        PredictionPoll poll = PredictionPoll(_pollAddress);
        PollStatus status = poll.getStatus();
        uint256 oldCheckBlock = poll.getCheckBlock();

        // Cannot refresh if already resolved
        if (status == PollStatus.Yes || status == PollStatus.No) {
            revert CannotRefreshYet();
        }

        if (_isFree) {
            // Free refresh validation
            if (
                status != PollStatus.Pending ||
                block.number < oldCheckBlock + PENDING_TIMEOUT
            ) {
                revert CannotRefreshYet();
            }

            if (freeRefreshCount[_pollAddress] >= MAX_FREE_REFRESHES) {
                revert RefreshPaymentRequired();
            }

            // Increment free refresh counter
            unchecked {
                freeRefreshCount[_pollAddress]++;
            }
        } else {
            // Paid refresh validation
            uint256 requiredPayment = operatorGasFee + protocolFee;
            if (msg.value != requiredPayment) revert RefreshPaymentRequired();

            // For Pending status, check if timeout reached
            if (
                status == PollStatus.Pending &&
                block.number < oldCheckBlock + PENDING_TIMEOUT
            ) {
                revert CannotRefreshYet();
            }

            freeRefreshCount[_pollAddress] = 0;

            // Distribute payment
            if (_operators.length > 0) {
                _distributePayment();
            }
        }

        // Update check block in poll
        poll.updateCheckBlock(_newCheckBlock);

        // Update mappings
        _removeFromCheckBlockMapping(oldCheckBlock, _pollAddress);
        pollsByCheckBlock[_newCheckBlock].push(_pollAddress);

        emit PollRefreshed(
            _pollAddress,
            oldCheckBlock,
            _newCheckBlock,
            _isFree
        );
    }

    /**
     * @notice Store poll in all relevant mappings
     * @dev Updates pollsByCheckBlock and pollsByCreator
     * @param _pollAddress Address of deployed poll contract
     * @param _checkBlock Block number for verification
     */
    function _storePollMappings(
        address _pollAddress,
        uint256 _checkBlock
    ) private {
        pollsByCheckBlock[_checkBlock].push(_pollAddress);
        pollsByCreator[msg.sender].push(_pollAddress);
    }

    /**
     * @notice Distribute payment to operator and protocol
     * @dev Uses round-robin to select operator; if payment fails, adds to protocol fees
     * @dev Does not revert on operator payment failure to prevent DoS attacks
     */
    function _distributePayment() private {
        // Send operator fee to next operator (round-robin)
        if (operatorGasFee > 0 && _operators.length > 0) {
            address operator = _operators[_lastOperatorIndex];
            _lastOperatorIndex = uint8(
                (uint256(_lastOperatorIndex) + 1) % _operators.length
            );

            // Use low-level call and don't revert on failure to prevent DoS
            // If operator cannot receive, fee stays in contract
            (bool success, ) = operator.call{value: operatorGasFee}("");

            // If payment failed, add to protocol fees instead of reverting
            if (!success) {
                accumulatedProtocolFees += operatorGasFee;
            }
        }

        // Accumulate protocol fee
        accumulatedProtocolFees += protocolFee;
    }

    /**
     * @notice Remove poll from check block mapping
     * @dev Uses swap-and-pop pattern for gas efficiency
     * @dev Called when poll is refreshed with new check block
     * @param _blockNumber Block number to remove poll from
     * @param _pollAddress Poll contract address to remove
     */
    function _removeFromCheckBlockMapping(
        uint256 _blockNumber,
        address _pollAddress
    ) private {
        address[] storage pollAddrs = pollsByCheckBlock[_blockNumber];
        uint256 length = pollAddrs.length;

        for (uint256 i = 0; i < length; i++) {
            if (pollAddrs[i] == _pollAddress) {
                pollAddrs[i] = pollAddrs[length - 1];
                pollAddrs.pop();
                break;
            }
        }
    }

    // ============================================
    // RECEIVE
    // ============================================

    /**
     * @notice Accept ETH donations
     * @dev All received ETH is added to accumulated protocol fees
     */
    receive() external payable {
        // Accept ETH for protocol fees
        accumulatedProtocolFees += msg.value;
    }
}
