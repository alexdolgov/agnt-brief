// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IVeilETHPool} from "src/Interfaces/IVeilETHPool.sol";
import {IVeilVerifiedOnchain} from "src/Interfaces/iVerify.sol";
import {IVeilLimits} from "src/Interfaces/IVeilLimits.sol";
import {IVeilDepositQueue} from "src/Interfaces/IVeilDepositQueue.sol";
import {VeilLib} from "src/lib/VeilLib.sol";

/**
 * @title VeilWalletEntry v5.0.0
 * @author Veil Cash
 * @dev Veil Wallet - Entry point for depositing ETH into the Veil pools with seperate queue contract
 */
/// @custom:oz-upgrades-from VeilWalletEntryV4
contract VeilWalletEntryV5 is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    /// @dev OnlyQueueContract modifier
    modifier onlyQueueContract() {
        if (msg.sender != address(queueContract)) revert VeilLib.OnlyQueueContractAllowed();
        _;
    }

    /// @dev OnlyOperator modifier
    modifier onlyOperator() {
        if (msg.sender != operator) revert VeilLib.OnlyOperatorAllowed();
        _;
    }

    /// @dev Events
    event DepositedETH(address indexed depositor, uint256 amount);
    event DepositKey(address indexed owner, bytes key);

    /// @dev Veil Wallet Entry variables
    uint256 public depositFee;
    address public feeRecipient;
    bool public depositETHEnabled;
    uint256 public minimumDeposit;

    /// @dev Onchain verification helper contract
    IVeilVerifiedOnchain public veilVerifiedOnchain;

    /// @dev Reference to the Veil pools
    IVeilETHPool public veilETHPool;

    /// @dev Reference to the Veil limits contract
    IVeilLimits public veilLimits;

    /// @dev Verified depositors details
    mapping(address => VeilLib.DepositorInfo) public allowedDepositors;

    /// @dev Deposit keys
    mapping(address => bytes) public depositKeys;

    /// @dev Tracking variables
    uint256 public totalETHDeposits;
    uint256 public totalRegisteredUsers;

    /// @dev Deposit Queue contract
    IVeilDepositQueue public queueContract;

    /// @dev Operator address
    address public operator;

    /// @dev Storage gap for future upgrades
    uint256[48] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the VeilWalletEntry contract with core dependencies
     * @param _veilETHPool Address of the VeilETHPool contract
     * @param _veilVerifiedOnchain Address of the verification contract
     * @param _feeRecipient Address that receives deposit fees
     * @param _depositFee Fee charged on deposits in basis points
     * @param _minimumDeposit Minimum deposit amount required
     */
    function initialize(
        address _veilETHPool,
        address _veilVerifiedOnchain,
        address _feeRecipient,
        uint256 _depositFee,
        uint256 _minimumDeposit
    ) public initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();
        veilETHPool = IVeilETHPool(_veilETHPool);
        veilVerifiedOnchain = IVeilVerifiedOnchain(_veilVerifiedOnchain);
        depositFee = _depositFee;
        feeRecipient = _feeRecipient;
        minimumDeposit = _minimumDeposit;
    }

    /**
     * @dev Registers a new account to enable deposits and fund reception
     * @param _account Account struct containing owner address and deposit key
     */
    function register(VeilLib.Account memory _account) public {
        if (_account.owner != msg.sender) revert VeilLib.OnlyOwnerCanRegister();
        if (depositKeys[_account.owner].length > 0) revert VeilLib.UserAlreadyRegistered();
        depositKeys[_account.owner] = _account.depositKey;
        totalRegisteredUsers++;
        emit DepositKey(_account.owner, _account.depositKey);
    }

    /**
     * @dev Deposits ETH into the ETH pool after verification and fee deduction
     * @param _args Zero-knowledge proof arguments for the deposit
     * @param _extData External data required for the deposit transaction
     */
    function depositETH(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) external payable nonReentrant {
        if (!depositETHEnabled) revert VeilLib.DepositsDisabled();
        if (depositKeys[msg.sender].length == 0) revert VeilLib.UserNotRegistered();
        if (!isAllowedDepositor(msg.sender)) revert VeilLib.NotAllowedToDeposit();

        /// @dev Get the deposit amount and fee
        (uint256 netDeposit, uint256 fee) = getFeeAndNetDeposit(msg.value);

        /// @dev Check minimum deposit after fee deduction
        if (netDeposit < minimumDeposit) revert VeilLib.MinimumDepositNotMet();

        /// @dev Check rate limits
        _checkLimits(msg.sender, netDeposit);

        /// @dev Transfer the fee to the fee recipient
        (bool success,) = feeRecipient.call{value: fee}("");
        if (!success) revert VeilLib.FeeTransferFailed();

        /// @dev Deposit the ETH into the pool
        veilETHPool.depositETH{value: netDeposit}(_args, _extData);
        totalETHDeposits++;

        /// @dev Emit the deposit event
        emit DepositedETH(msg.sender, netDeposit);
    }

    /**
     * @dev Queues ETH deposit for screening before processing
     * @param _depositKey Deposit key used for building zero-knowledge proof
     */
    function queueETH(bytes calldata _depositKey) external payable nonReentrant {
        /// user must be registered to queue a deposit
        if (depositKeys[msg.sender].length == 0) revert VeilLib.UserNotRegistered();

        /// _depositKey must not be empty
        if (_depositKey.length == 0) revert VeilLib.InvalidDepositKey();

        uint256 amount = msg.value;
        queueContract.queueDeposit{value: msg.value}(msg.sender, amount, _depositKey);
    }

    /**
     * @dev Queues ETH deposit for screening before processing for another user
     * @param _depositKey Deposit key used for building zero-knowledge proof
     */
    function queueEthFor(bytes calldata _depositKey) external payable nonReentrant {
        /// _depositKey must not be empty
        if (_depositKey.length == 0) revert VeilLib.InvalidDepositKey();

        uint256 amount = msg.value;
        queueContract.queueDeposit{value: msg.value}(msg.sender, amount, _depositKey);
    }

    /**
     * @dev Processes and accepts a queued ETH deposit after screening approval
     * @param _nonce The deposit nonce to accept from the queue
     * @param _args Zero-knowledge proof arguments for the deposit
     * @param _extData External data required for the deposit transaction
     */
    function acceptETH(uint256 _nonce, VeilLib.Proof memory _args, VeilLib.ExtData memory _extData)
        external
        onlyOperator
        nonReentrant
    {
        /// @dev Process next deposit in queue (marks as completed atomically)
        (uint256 shieldAmount, uint256 fee) = queueContract.acceptDeposit(_nonce);

        /// @dev Transfer the fee to the fee recipient
        (bool success,) = feeRecipient.call{value: fee}("");
        if (!success) revert VeilLib.FeeTransferFailed();

        /// @dev Deposit the ETH into the pool
        veilETHPool.depositETH{value: shieldAmount}(_args, _extData);
    }

    /**
     * @dev Rejects a queued ETH deposit and refunds to the sender
     * @param _nonce The deposit nonce to reject from the queue
     */
    function rejectETH(uint256 _nonce) external onlyOperator nonReentrant {
        queueContract.rejectDeposit(_nonce);
    }

    /**
     * @dev Internal function to check rate limits
     * @param depositor The address making the deposit
     * @param amount The amount being deposited
     */
    function _checkLimits(address depositor, uint256 amount) internal {
        if (address(veilLimits) != address(0)) {
            veilLimits.checkAndUpdateLimits(depositor, amount);
        }
    }

    /**
     * @dev Function for checking if an address is allowed to deposit
     * @param _depositor The address to check
     * @return True if allowed, false otherwise
     */
    function isAllowedDepositor(address _depositor) public view returns (bool) {
        // Then check onchain verification contract
        if (address(veilVerifiedOnchain) == address(0)) return false;
        return veilVerifiedOnchain.isVerified(_depositor);
    }

    /**
     * @dev Calculate the total amount to send for a desired net deposit amount
     * @param _netDepositAmount The desired amount to deposit after fees
     * @return totalAmount The total amount to send (including fees)
     */
    function getDepositAmountWithFee(uint256 _netDepositAmount) public view returns (uint256) {
        return (_netDepositAmount * (VeilLib.BASIS_POINTS + depositFee)) / VeilLib.BASIS_POINTS;
    }

    /**
     * @dev Calculate the net deposit and fee from a total amount sent
     * @param _totalAmount The total amount sent (including fees)
     * @return netDeposit The amount that will be deposited after fees
     * @return fee The fee amount that will be deducted
     */
    function getFeeAndNetDeposit(uint256 _totalAmount) public view returns (uint256 netDeposit, uint256 fee) {
        netDeposit = (_totalAmount * VeilLib.BASIS_POINTS) / (VeilLib.BASIS_POINTS + depositFee);
        fee = _totalAmount - netDeposit;
    }

    /**
     * @dev Sets the fee charged on deposits in basis points
     */
    function setDepositFee(uint256 _depositFee) external onlyOwner {
        depositFee = _depositFee;
    }

    /**
     * @dev Sets the minimum deposit amount required after fee deduction
     */
    function setMinimumDeposit(uint256 _minimumDeposit) external onlyOwner {
        minimumDeposit = _minimumDeposit;
    }

    /**
     * @dev Sets the address that receives deposit fees
     */
    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        feeRecipient = _feeRecipient;
    }

    /**
     * @dev Enables or disables deposits for the ETH pool
     */
    function setDepositsEnabled(bool _depositEnabled) external onlyOwner {
        depositETHEnabled = _depositEnabled;
    }

    /**
     * @dev Sets the VeilLimits contract address for rate limiting
     */
    function setVeilLimits(address _veilLimits) external onlyOwner {
        veilLimits = IVeilLimits(_veilLimits);
    }

    /**
     * @dev Sets the VeilVerifiedOnchain contract address for user verification
     */
    function setVeilVerifiedOnchain(address _veilVerifiedOnchain) external onlyOwner {
        veilVerifiedOnchain = IVeilVerifiedOnchain(_veilVerifiedOnchain);
    }

    /**
     * @dev Sets the deposit queue contract address
     */
    function setQueueContract(address _queueContract) external onlyOwner {
        queueContract = IVeilDepositQueue(_queueContract);
    }

    /**
     * @dev Sets the operator address authorized to process queued deposits
     */
    function setOperator(address _operator) external onlyOwner {
        operator = _operator;
    }

    /// @dev Receive function to accept ETH from queue contract
    receive() external payable onlyQueueContract {}
}
