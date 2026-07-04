// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * @title TimelockAdmin
 * @author github.com/SifexPro
 * @notice Administrative timelock contract to secure routine operations (1-2 days)
 */
contract TimelockAdmin is AccessControl, ReentrancyGuard {
    // ============ Events ============
    event TransactionScheduled(
        bytes32 indexed txHash,
        address indexed target,
        uint256 value,
        bytes data,
        bytes32 predecessor,
        uint256 delay
    );
    event TransactionExecuted(
        bytes32 indexed txHash,
        address indexed target,
        uint256 value,
        bytes data
    );
    event TransactionCancelled(bytes32 indexed txHash);
    event MinDelayChange(uint256 oldDelay, uint256 newDelay);
    event TimelockActivated(uint256 timestamp);

    // ============ Constants ============
    bytes32 public constant TIMELOCK_ROLE = keccak256("TIMELOCK_ROLE");
    uint256 public constant MIN_DELAY = 1 days;
    uint256 public constant MAX_DELAY = 3 days;

    // ============ State Variables ============
    uint256 private _minDelay;
    mapping(bytes32 => bool) private _queuedTransactions;
    mapping(bytes32 => uint256) private _transactionTimestamps;
    bool public activated = false;

    // ============ Constructor ============
    constructor(
        address multisig
    ) {
        _minDelay = MIN_DELAY;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(TIMELOCK_ROLE, multisig);
    }

    // ============ Modifiers ============
    modifier onlyRoleOrOpenRole(bytes32 role) {
        if (!hasRole(role, address(0))) {
            _checkRole(role, msg.sender);
        }
        _;
    }

    modifier whenActivated() {
        require(activated, "TimelockAdmin: not activated");
        _;
    }

    // ============ External Functions ============
    
    /**
     * @notice Activate the timelock permanently
     * @dev Can only be called once
     */
    function activate() external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(!activated, "TimelockAdmin: already activated");
        activated = true;
        emit TimelockActivated(block.timestamp);
    }
    
    /**
     * @notice Schedule a transaction
     * @dev Can only be called after timelock activation. Uses the minimum delay defined in the contract.
     * @param target Address of the contract to call
     * @param value Amount of native tokens to send with the call
     * @param data Encoded function call data (function signature + parameters)
     * @param predecessor Transaction hash that must be executed before this one (0 for no dependency)
     * @param salt Random value to ensure uniqueness of the transaction hash
     */
    function schedule(
        address target,
        uint256 value,
        bytes calldata data,
        bytes32 predecessor,
        bytes32 salt
    ) external onlyRole(TIMELOCK_ROLE) whenActivated {
        bytes32 txHash = keccak256(
            abi.encode(target, value, data, predecessor, salt)
        );
        require(!_queuedTransactions[txHash], "TimelockAdmin: transaction already queued");
        _queuedTransactions[txHash] = true;
        _transactionTimestamps[txHash] = block.timestamp;
        emit TransactionScheduled(txHash, target, value, data, predecessor, _minDelay);
    }

    /**
     * @notice Execute a scheduled transaction
     * @dev Can only be called after timelock activation and after the delay period
     * @param target Address of the contract to call (must match scheduled transaction)
     * @param value Amount of native tokens to send (must match scheduled transaction)
     * @param data Encoded function call data (must match scheduled transaction)
     * @param predecessor Transaction hash dependency (must match scheduled transaction)
     * @param salt Random value used when scheduling (must match scheduled transaction)
     */
    function execute(
        address target,
        uint256 value,
        bytes calldata data,
        bytes32 predecessor,
        bytes32 salt
    ) external payable onlyRole(TIMELOCK_ROLE) nonReentrant whenActivated {
        bytes32 txHash = keccak256(
            abi.encode(target, value, data, predecessor, salt)
        );
        require(_queuedTransactions[txHash], "TimelockAdmin: transaction not queued");
        require(block.timestamp >= _transactionTimestamps[txHash] + _minDelay, "TimelockAdmin: delay not passed");
        _queuedTransactions[txHash] = false;
        delete _transactionTimestamps[txHash];
        (bool success, ) = target.call{value: value}(data);
        require(success, "TimelockAdmin: transaction failed");
        emit TransactionExecuted(txHash, target, value, data);
    }

    /**
     * @notice Cancel a scheduled transaction
     * @dev Can only be called after timelock activation
     */
    function cancel(bytes32 txHash) external onlyRole(TIMELOCK_ROLE) whenActivated {
        require(_queuedTransactions[txHash], "TimelockAdmin: transaction not queued");
        _queuedTransactions[txHash] = false;
        delete _transactionTimestamps[txHash];
        emit TransactionCancelled(txHash);
    }

    /**
     * @notice Modify the minimum delay
     * @dev Can only be called after timelock activation
     */
    function setMinDelay(uint256 newDelay) external onlyRole(TIMELOCK_ROLE) whenActivated {
        require(newDelay >= MIN_DELAY, "TimelockAdmin: delay too short");
        require(newDelay <= MAX_DELAY, "TimelockAdmin: delay too long");
        uint256 oldDelay = _minDelay;
        _minDelay = newDelay;
        emit MinDelayChange(oldDelay, newDelay);
    }

    // ============ View Functions ============
    function getMinDelay() external view returns (uint256) {
        return _minDelay;
    }

    function isTransactionQueued(bytes32 txHash) external view returns (bool) {
        return _queuedTransactions[txHash];
    }

    function getTransactionTimestamp(bytes32 txHash) external view returns (uint256) {
        return _transactionTimestamps[txHash];
    }

    function isTransactionReady(bytes32 txHash) external view returns (bool) {
        return _queuedTransactions[txHash] && 
               block.timestamp >= _transactionTimestamps[txHash] + _minDelay;
    }

    function getTransactionReadyTime(bytes32 txHash) external view returns (uint256) {
        return _transactionTimestamps[txHash] + _minDelay;
    }
    
    /**
     * @notice Check if the timelock is active and apply the delay
     * @dev For integration with other contracts
     */
    function checkTimelock() external view returns (bool, uint256) {
        return (activated, _minDelay);
    }
}