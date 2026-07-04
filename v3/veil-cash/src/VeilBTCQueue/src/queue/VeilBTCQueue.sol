// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.26;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {VeilLib} from "src/lib/VeilLib.sol";

/**
 * @title VeilBTCQueue v1.0.0
 * @author Veil Cash
 * @dev Queue contract for BTC deposits with screening support
 */
contract VeilBTCQueue is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    /// @notice Events
    event OperatorSet(address indexed operator);
    event VeilEntrySet(address indexed veilEntry);
    event DepositQueued(uint256 indexed nonce, address indexed sender, uint256 amount, bytes depositKey);
    event DepositAccepted(uint256 indexed nonce, address indexed operator, address indexed veilEntry, uint256 amount);
    event DepositRefunded(uint256 indexed nonce, address indexed receiver, uint256 amount);
    event DepositRejected(uint256 indexed nonce, address indexed receiver, uint256 amount);
    event BTCSet(address indexed btc);

    /// @dev OnlyVeilEntry modifier
    modifier onlyVeilEntry() {
        if (msg.sender != veilEntry) revert VeilLib.NotVeilEntry();
        _;
    }

    /// @notice BTC token reference
    IERC20 public btc;

    /// @notice VeilEntry address
    address public veilEntry;

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

    /// @dev Storage gap for future upgrades
    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the VeilBTCQueue contract with core parameters
     * @param _veilEntry Address of the VeilWalletEntry contract
     * @param _btc Address of the BTC token contract
     * @param _depositFee Fee charged on deposits in basis points
     * @param _refundTimePeriod Time period after which users can self-refund
     * @param _minimumDeposit Minimum deposit amount required
     */
    function initialize(
        address _veilEntry,
        address _btc,
        uint256 _depositFee,
        uint256 _refundTimePeriod,
        uint256 _minimumDeposit
    ) public initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();
        veilEntry = _veilEntry;
        btc = IERC20(_btc);
        queueDepositFee = _depositFee; // e.g. 30 = 0.30%
        refundTimePeriod = _refundTimePeriod;
        minimumQueueDeposit = _minimumDeposit;
    }

    /**
     * @dev Queues a BTC deposit for screening and processing
     * @param _sender The sender of the deposit
     * @param _amount The amount of BTC being deposited
     * @param _depositKey The deposit key to be used for building zero-knowledge proof
     */
    function queueDeposit(address _sender, uint256 _amount, bytes calldata _depositKey)
        external
        nonReentrant
        onlyVeilEntry
    {
        if (_amount < minimumQueueDeposit) revert VeilLib.MinimumDepositNotMet();
        if (!queueDepositEnabled) revert VeilLib.DepositsDisabled();

        // Transfer BTC from VeilEntry to this contract
        bool transferSuccess = btc.transferFrom(msg.sender, address(this), _amount);
        if (!transferSuccess) revert VeilLib.BTCTransferFailed();

        (uint256 shieldAmount, uint256 fee) = getFeeAndNetDeposit(_amount);

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

        emit DepositQueued(nonce, _sender, _amount, _depositKey);
    }

    /**
     * @dev Accepts a specific deposit by nonce and forwards BTC to VeilEntry
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

        // Transfer BTC to VeilEntry
        bool transferSuccess = btc.transfer(veilEntry, deposit.amountIn);
        if (!transferSuccess) revert VeilLib.BTCTransferFailed();

        emit DepositAccepted(_nonce, msg.sender, veilEntry, deposit.amountIn);

        return (deposit.shieldAmount, deposit.fee);
    }

    /**
     * @dev Rejects a specific deposit by nonce and refunds BTC to the owner
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

        // Refund BTC to fallback receiver
        bool refundSuccess = btc.transfer(deposit.fallbackReceiver, deposit.amountIn);
        if (!refundSuccess) revert VeilLib.BTCTransferFailed();

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

        // Refund BTC to fallback receiver
        bool refundSuccess = btc.transfer(deposit.fallbackReceiver, deposit.amountIn);
        if (!refundSuccess) revert VeilLib.BTCTransferFailed();

        emit DepositRefunded(_nonce, deposit.fallbackReceiver, deposit.amountIn);
    }

    /**
     * @dev Internal function to remove a deposit from the pending array
     * @param _nonce The deposit nonce to remove from pending
     */
    function _removeFromPending(uint256 _nonce) internal {
        uint256 index = pendingIndex[_nonce];
        uint256 lastIndex = pendingDeposits.length - 1;

        if (index != lastIndex) {
            // Move the last element to the position of the element to remove
            uint256 lastNonce = pendingDeposits[lastIndex];
            pendingDeposits[index] = lastNonce;
            pendingIndex[lastNonce] = index;
        }

        // Remove the last element
        pendingDeposits.pop();
        delete pendingIndex[_nonce];
    }

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
     * @dev Retrieves deposit information by nonce
     * @param _nonce The deposit nonce (1-based)
     * @return deposit The deposit data struct
     */
    function getDeposit(uint256 _nonce) external view returns (VeilLib.DepositQueue memory deposit) {
        if (_nonce == 0 || _nonce > depositQueueNonce) revert VeilLib.InvalidIndex();
        return depositsQueue[_nonce];
    }

    /**
     * @dev Returns the total number of deposits ever created
     * @return total The total number of deposits
     */
    function getTotalDeposits() external view returns (uint256 total) {
        return depositQueueNonce;
    }

    /**
     * @dev Returns the number of pending deposits
     * @return count The number of pending deposits
     */
    function getPendingCount() external view returns (uint256 count) {
        return pendingDeposits.length;
    }

    /**
     * @dev Returns all pending deposit nonces
     * @return nonces Array of all pending deposit nonces
     */
    function getPendingDeposits() external view returns (uint256[] memory nonces) {
        return pendingDeposits;
    }

    /**
     * @notice Get all pending deposits with their full data
     * @dev Replaces N+1 calls (getPendingDeposits + N getDeposit calls) with 1 call
     * @return deposits Array of pending deposits with nonces
     */
    function getPendingDepositsWithData() external view returns (VeilLib.DepositWithNonce[] memory deposits) {
        uint256[] memory nonces = pendingDeposits;
        deposits = new VeilLib.DepositWithNonce[](nonces.length);

        for (uint256 i = 0; i < nonces.length; i++) {
            deposits[i] = _getDepositWithNonce(nonces[i]);
        }

        return deposits;
    }

    /**
     * @notice Get multiple deposits by their nonces
     * @dev Useful for fetching specific deposits in a single call
     * @param nonces Array of deposit nonces to fetch
     * @return deposits Array of deposits with their data
     */
    function getDepositsBatch(uint256[] calldata nonces) external view returns (VeilLib.DepositWithNonce[] memory deposits) {
        deposits = new VeilLib.DepositWithNonce[](nonces.length);

        for (uint256 i = 0; i < nonces.length; i++) {
            deposits[i] = _getDepositWithNonce(nonces[i]);
        }

        return deposits;
    }

    /**
     * @notice Get the most recent deposits with their full data
     * @dev Returns deposits from currentNonce down to max(1, currentNonce - limit + 1)
     * @param limit Maximum number of deposits to return
     * @return deposits Array of recent deposits (most recent first)
     */
    function getRecentDepositsWithData(uint256 limit) external view returns (VeilLib.DepositWithNonce[] memory deposits) {
        uint256 currentNonce = depositQueueNonce;

        if (currentNonce == 0) {
            return new VeilLib.DepositWithNonce[](0);
        }

        // Calculate actual count (can't return more than exist)
        uint256 count = limit > currentNonce ? currentNonce : limit;
        deposits = new VeilLib.DepositWithNonce[](count);

        // Fill array from most recent to oldest
        for (uint256 i = 0; i < count; i++) {
            uint256 nonce = currentNonce - i;
            deposits[i] = _getDepositWithNonce(nonce);
        }

        return deposits;
    }

    /**
     * @notice Internal helper to fetch and flatten a deposit by nonce
     * @param nonce The deposit nonce to fetch
     * @return deposit The flattened deposit struct with nonce
     */
    function _getDepositWithNonce(uint256 nonce) internal view returns (VeilLib.DepositWithNonce memory deposit) {
        VeilLib.DepositQueue storage d = depositsQueue[nonce];

        return VeilLib.DepositWithNonce({
            nonce: nonce,
            fallbackReceiver: d.fallbackReceiver,
            amountIn: d.amountIn,
            fee: d.fee,
            shieldAmount: d.shieldAmount,
            timestamp: d.timestamp,
            status: d.status,
            depositKey: d.depositKey
        });
    }

    /**
     * @dev Sets the Veil Entry contract address
     * @param _veilEntry Address of the VeilWalletEntry contract
     */
    function setVeilEntry(address _veilEntry) external onlyOwner {
        veilEntry = _veilEntry;
        emit VeilEntrySet(_veilEntry);
    }

    /**
     * @dev Sets the BTC token contract address
     * @param _btc Address of the BTC token contract
     */
    function setBTC(address _btc) external onlyOwner {
        btc = IERC20(_btc);
        emit BTCSet(_btc);
    }

    /**
     * @dev Function for setting the fee charged on deposits in basis points
     * @param _depositFee New deposit fee in basis points (e.g., 30 = 0.30%)
     */
    function setDepositFee(uint256 _depositFee) external onlyOwner {
        queueDepositFee = _depositFee;
    }

    /**
     * @dev Function for setting the minimum deposit amount
     * @param _minimumDeposit New minimum deposit amount in BTC units
     */
    function setMinimumDeposit(uint256 _minimumDeposit) external onlyOwner {
        minimumQueueDeposit = _minimumDeposit;
    }

    /**
     * @dev Function for setting the queue deposit enabled
     * @param _queueDepositEnabled New queue deposit enabled
     */
    function setQueueDepositEnabled(bool _queueDepositEnabled) external onlyOwner {
        queueDepositEnabled = _queueDepositEnabled;
    }

    /**
     * @dev Function for setting the refund time period in seconds
     * @param _refundTimePeriod New refund timeout period (must be between 6 hours and 7 days)
     */
    function setRefundTimePeriod(uint256 _refundTimePeriod) external onlyOwner {
        if (_refundTimePeriod > 7 days) revert VeilLib.InvalidTimeout();
        refundTimePeriod = _refundTimePeriod;
    }
}
