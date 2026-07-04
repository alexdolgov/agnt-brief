// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.26;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {VeilLib} from "src/lib/VeilLib.sol";

/**
 * @title VeilETHQueue v3.0.0
 * @author Veil Cash
 * @dev Adds configurable daily free deposit (fee-waived) per address per UTC day.
 */
/// @custom:oz-upgrades-from VeilETHQueueV2
contract VeilETHQueueV3 is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    /// @notice Events
    event OperatorSet(address indexed operator);
    event VeilEntrySet(address indexed veilEntry);
    event DepositQueued(uint256 indexed nonce, address indexed sender, uint256 amount, bytes depositKey);
    event DepositAccepted(uint256 indexed nonce, address indexed operator, address indexed veilEntry, uint256 amount);
    event DepositRefunded(uint256 indexed nonce, address indexed receiver, uint256 amount);
    event DepositRejected(uint256 indexed nonce, address indexed receiver, uint256 amount);
    event DailyFreeDepositUsed(address indexed depositor, uint256 indexed dayId, uint256 usedCount);

    /// @dev OnlyVeilEntry modifier
    modifier onlyVeilEntry() {
        if (msg.sender != veilEntry) revert VeilLib.NotVeilEntry();
        _;
    }

    // ============================================
    // V2 Storage Layout (do not reorder)
    // ============================================

    /// @notice VeilEntry address
    address payable public veilEntry;

    /// @notice Deposit fee in basis points
    uint256 public queueDepositFee;

    /// @notice Minimum deposit amount
    uint256 public minimumQueueDeposit;

    /// @notice Refund time period in seconds
    uint256 public refundTimePeriod;

    /// @notice Nonce of the deposit queue
    uint256 public depositQueueNonce;

    /// @notice Queue deposit enabled
    bool public queueDepositEnabled;

    /// @notice Mapping of deposit queue
    mapping(uint256 => VeilLib.DepositQueue) public depositsQueue;

    /// @notice Array of pending deposit nonces for efficient querying
    uint256[] public pendingDeposits;

    /// @notice Maps deposit nonce to its index in pendingDeposits array
    mapping(uint256 => uint256) private pendingIndex;

    // ============================================
    // V3 Storage (carved from __gap)
    // ============================================

    /// @notice Whether daily free deposits are enabled
    bool public dailyFreeEnabled;

    /// @notice Maximum free deposits per address per UTC day
    uint256 public dailyFreeLimit;

    /// @notice Tracks free deposits used: depositor -> dayId -> count
    mapping(address => mapping(uint256 => uint256)) public dailyFreeUsed;

    /// @dev Storage gap for future upgrades (50 - 3 = 47)
    uint256[47] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the VeilETHQueue contract with core parameters
     * @param _veilEntry Address of the VeilWalletEntry contract
     * @param _depositFee Fee charged on deposits in basis points
     * @param _refundTimePeriod Time period after which users can self-refund
     * @param _minimumDeposit Minimum deposit amount required
     */
    function initialize(
        address payable _veilEntry,
        uint256 _depositFee,
        uint256 _refundTimePeriod,
        uint256 _minimumDeposit
    ) public initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();
        veilEntry = _veilEntry;
        queueDepositFee = _depositFee; // e.g. 30 = 0.30%
        refundTimePeriod = _refundTimePeriod;
        minimumQueueDeposit = _minimumDeposit;
    }

    /**
     * @dev Queues a deposit for screening and processing
     * @param _sender The sender of the deposit
     * @param _amount The amount being deposited
     * @param _depositKey The deposit key to be used for building zero-knowledge proof
     */
    function queueDeposit(address _sender, uint256 _amount, bytes calldata _depositKey)
        external
        payable
        nonReentrant
        onlyVeilEntry
    {
        if (_amount != msg.value) revert VeilLib.InvalidAmount();
        if (!queueDepositEnabled) revert VeilLib.DepositsDisabled();

        (uint256 shieldAmount, uint256 fee) = _computeFee(_sender, _amount);
        if (shieldAmount < minimumQueueDeposit) revert VeilLib.MinimumDepositNotMet();

        VeilLib.DepositQueue memory deposit = VeilLib.DepositQueue({
            fallbackReceiver: _sender,
            amountIn: _amount,
            fee: fee,
            shieldAmount: shieldAmount,
            timestamp: block.timestamp,
            status: VeilLib.DepositStatus.Pending,
            depositKey: _depositKey
        });

        depositQueueNonce++;
        uint256 nonce = depositQueueNonce;

        /// @dev Add the deposit to the queue
        depositsQueue[nonce] = deposit;

        /// @dev Add to pending deposits array
        pendingIndex[nonce] = pendingDeposits.length;
        pendingDeposits.push(nonce);

        emit DepositQueued(nonce, _sender, msg.value, _depositKey);
    }

    /**
     * @dev Accepts a specific deposit by nonce and forwards funds to VeilEntry
     * @param _nonce The deposit nonce to accept
     * @return shieldAmount The amount to be shielded after fee deduction
     * @return fee The fee amount deducted from the deposit
     */
    function acceptDeposit(uint256 _nonce)
        external
        onlyVeilEntry
        nonReentrant
        returns (uint256 shieldAmount, uint256 fee)
    {
        if (_nonce == 0 || _nonce > depositQueueNonce) revert VeilLib.InvalidIndex();

        VeilLib.DepositQueue storage deposit = depositsQueue[_nonce];
        if (deposit.status != VeilLib.DepositStatus.Pending) revert VeilLib.DepositNotPending();

        // Update status to accepted (atomic - if tx fails, this reverts)
        deposit.status = VeilLib.DepositStatus.Accepted;

        // Remove from pending deposits array
        _removeFromPending(_nonce);

        // Transfer ETH to VeilEntry
        (bool success,) = veilEntry.call{value: deposit.amountIn}("");
        if (!success) revert VeilLib.TransferFailed();

        emit DepositAccepted(_nonce, msg.sender, veilEntry, deposit.amountIn);

        return (deposit.shieldAmount, deposit.fee);
    }

    /**
     * @dev Rejects a specific deposit by nonce and refunds ETH to the owner
     * @param _nonce The deposit nonce to reject
     */
    function rejectDeposit(uint256 _nonce) external onlyVeilEntry nonReentrant {
        if (_nonce == 0 || _nonce > depositQueueNonce) revert VeilLib.InvalidIndex();

        VeilLib.DepositQueue storage deposit = depositsQueue[_nonce];
        if (deposit.status != VeilLib.DepositStatus.Pending) revert VeilLib.DepositNotPending();

        // Update status to rejected
        deposit.status = VeilLib.DepositStatus.Rejected;

        // Remove from pending deposits array
        _removeFromPending(_nonce);

        // Refund ETH to fallback receiver
        (bool refundSuccess,) = deposit.fallbackReceiver.call{value: deposit.amountIn}("");
        if (!refundSuccess) revert VeilLib.TransferFailed();

        emit DepositRejected(_nonce, deposit.fallbackReceiver, deposit.amountIn);
    }

    /**
     * @dev Allows user to self-refund if deposit is still pending after screening SLA expires
     * @param _nonce The deposit nonce to refund
     */
    function refundDeposit(uint256 _nonce) external nonReentrant {
        if (_nonce == 0 || _nonce > depositQueueNonce) revert VeilLib.InvalidIndex();

        VeilLib.DepositQueue storage deposit = depositsQueue[_nonce];
        if (deposit.status != VeilLib.DepositStatus.Pending) revert VeilLib.DepositNotPending();
        if (msg.sender != deposit.fallbackReceiver) revert VeilLib.NotFallbackReceiver();
        if (block.timestamp < deposit.timestamp + refundTimePeriod) revert VeilLib.TooEarly();

        // Update status to refunded
        deposit.status = VeilLib.DepositStatus.Refunded;

        // Remove from pending deposits array
        _removeFromPending(_nonce);

        // Refund ETH to fallback receiver
        (bool refundSuccess,) = deposit.fallbackReceiver.call{value: deposit.amountIn}("");
        if (!refundSuccess) revert VeilLib.TransferFailed();

        emit DepositRefunded(_nonce, deposit.fallbackReceiver, deposit.amountIn);
    }

    // ============================================
    // Internal Functions
    // ============================================

    /**
     * @dev Determines fee for a deposit, waiving it when a daily free slot is available.
     */
    function _computeFee(address _sender, uint256 _amount) internal returns (uint256 shieldAmount, uint256 fee) {
        if (dailyFreeEnabled) {
            uint256 dayId = block.timestamp / 86400;
            uint256 used = dailyFreeUsed[_sender][dayId];
            if (used < dailyFreeLimit) {
                dailyFreeUsed[_sender][dayId] = used + 1;
                emit DailyFreeDepositUsed(_sender, dayId, used + 1);
                return (_amount, 0);
            }
        }
        return getFeeAndNetDeposit(_amount);
    }

    function _removeFromPending(uint256 _nonce) internal {
        uint256 index = pendingIndex[_nonce];
        uint256 lastIndex = pendingDeposits.length - 1;

        if (index != lastIndex) {
            uint256 lastNonce = pendingDeposits[lastIndex];
            pendingDeposits[index] = lastNonce;
            pendingIndex[lastNonce] = index;
        }

        pendingDeposits.pop();
        delete pendingIndex[_nonce];
    }

    // ============================================
    // View Functions
    // ============================================

    /**
     * @dev Calculate the net deposit and fee from a total amount sent
     * @param _totalAmount The total amount sent (including fees)
     * @return netDeposit The amount that will be deposited after fees
     * @return fee The fee amount that will be deducted
     */
    function getFeeAndNetDeposit(uint256 _totalAmount) public view returns (uint256 netDeposit, uint256 fee) {
        netDeposit = (_totalAmount * VeilLib.BASIS_POINTS) / (VeilLib.BASIS_POINTS + queueDepositFee);
        fee = _totalAmount - netDeposit;
    }

    /**
     * @dev Returns remaining free deposits for a depositor today
     * @param _depositor Address to check
     * @return remaining Number of free deposits left for the current UTC day
     */
    function getDailyFreeRemaining(address _depositor) external view returns (uint256 remaining) {
        if (!dailyFreeEnabled) return 0;
        uint256 dayId = block.timestamp / 86400;
        uint256 used = dailyFreeUsed[_depositor][dayId];
        return used >= dailyFreeLimit ? 0 : dailyFreeLimit - used;
    }

    function getDeposit(uint256 _nonce) external view returns (VeilLib.DepositQueue memory deposit) {
        if (_nonce == 0 || _nonce > depositQueueNonce) revert VeilLib.InvalidIndex();
        return depositsQueue[_nonce];
    }

    function getTotalDeposits() external view returns (uint256 total) {
        return depositQueueNonce;
    }

    function getPendingCount() external view returns (uint256 count) {
        return pendingDeposits.length;
    }

    function getPendingDeposits() external view returns (uint256[] memory nonces) {
        return pendingDeposits;
    }

    // ============================================
    // Owner Functions
    // ============================================

    function setVeilEntry(address payable _veilEntry) external onlyOwner {
        veilEntry = _veilEntry;
        emit VeilEntrySet(_veilEntry);
    }

    function setDepositFee(uint256 _depositFee) external onlyOwner {
        queueDepositFee = _depositFee;
    }

    function setMinimumDeposit(uint256 _minimumDeposit) external onlyOwner {
        minimumQueueDeposit = _minimumDeposit;
    }

    function setQueueDepositEnabled(bool _queueDepositEnabled) external onlyOwner {
        queueDepositEnabled = _queueDepositEnabled;
    }

    function setRefundTimePeriod(uint256 _refundTimePeriod) external onlyOwner {
        if (_refundTimePeriod > 7 days) revert VeilLib.InvalidTimeout();
        refundTimePeriod = _refundTimePeriod;
    }

    function setDailyFreeEnabled(bool _enabled) external onlyOwner {
        dailyFreeEnabled = _enabled;
    }

    function setDailyFreeLimit(uint256 _limit) external onlyOwner {
        dailyFreeLimit = _limit;
    }
}
