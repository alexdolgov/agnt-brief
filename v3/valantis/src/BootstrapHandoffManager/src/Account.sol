// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {IERC1271} from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {IERC2612} from "@openzeppelin/contracts/interfaces/IERC2612.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IAccount} from "./interfaces/IAccount.sol";
import {ISubAccount} from "./interfaces/ISubAccount.sol";
import {IGuardian} from "./interfaces/IGuardian.sol";

/**
 * @title Account
 * @notice Main smart contract account that orchestrates sub-accounts, agents, sessions, and guardians.
 * @dev Implements EIP-712 for owner-authorized meta-transactions on **management functions**
 *      (e.g. add/remove agents & sub-accounts, session management, guardians, allowances, withdrawals).
 *      Note: `execute()` and `executeOwner()` are NOT owner-signed meta-transactions; execution authorization
 *      for sub-account actions is enforced at the sub-account level (e.g. session signatures in `HyperCoreSubAccount`).
 *
 *      Most signed management operations include a fee mechanism to compensate the authorized sender.
 *      However, session-signed operations (`sendFromOwner`, `setAllowance`) have additional safeguards:
 *      - `sendFromOwner` has no on-chain fee payment (no fee params).
 *      - `setAllowance` fees (when fee > 0) require an additional owner signature authorizing the fee payment.
 */
contract Account is IAccount, ReentrancyGuardTransient, EIP712 {
    using Address for address payable;
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for ERC20;

    /**
     *
     *  CUSTOM ERRORS
     *
     */
    error Account__NotOwnerOrAgent();
    error Account__AgentAlreadyAdded();
    error Account__AgentNotAdded();
    error Account__ExceededMaxFee();
    error Account__InvalidNonce();
    error Account__InvalidSignature();
    error Account__InvalidERC1271Signature();
    error Account__ExpiredDeadline();
    error Account__SubAccountAlreadyAdded();
    error Account__SubAccountNotAdded();
    error Account__ZeroAddress();
    error Account__ZeroAmount();
    error Account__InsufficientAllowanceForSubAccountAndToken(address subAccount, address token);
    error Account__NotAuthorizedSender();
    error Account__ZeroCodeLength();
    error Account__InsufficientAmountReceivedFromOwner();
    error Account__NoSessionSet();
    error Account__SubAccountNotBelongsToAccount();
    error Account__InvalidSession();
    error Account__SessionExpired();
    error Account__RecoveryWalletNotAllowed();
    error Account__RecoveryAlreadyProposed();
    error Account__NoRecoveryProposed();
    error Account__RecoveryNotReady();
    error Account__RecoveryExpired();
    error Account__RecoveryOwnershipTransferInProgress();
    error Account__NotOwnerOrRecoveryManager();
    error Account__RecoveryDelayTooShort();
    error Account__RecoveryGracePeriodTooShort();
    error Account__RecoveryCooldownNotElapsed();
    error Account__RecoveryWalletRemovedDuringProposal();
    error Account__MaxAgentsExceeded();
    error Account__NoPendingOwner();
    error Account__RecoveryWalletAlreadyAdded();
    error Account__RecoveryWalletNotAdded();
    error Account__RecoveryConfigChangeWhileProposalActive();
    error Account__NotOwner();
    error Account__NotPendingOwner();
    error Account__BootstrapDisabled();
    error Account__InvalidBootstrapConfig();
    error Account__NotBootstrapAuthority();
    error Account__BootstrapAlreadyUsed();
    error Account__GuardianAlreadySet();
    error Account__InsufficientBalanceForToken(address token);
    error Account__CannotRecoverToExistingOwner();
    error Account__OwnerFeeSignatureRequired();
    error Account__InvalidFeePayment();

    /**
     *
     *  EVENTS
     *
     */
    event AgentAdded(address indexed agent);
    event AgentRemoved(address indexed agent);
    event SubAccountAdded(address indexed subAccount);
    event SubAccountRemoved(address indexed subAccount);
    event SessionStarted(address indexed sessionAccount, uint256 sessionStartAt);
    event SessionEnded(address indexed sessionAccount, uint256 sessionEndAt);
    event GuardianSet(address indexed subAccount, address indexed guardian);
    event AllowanceSet(address indexed subAccount, address indexed token, uint256 amount);
    event SentToOwner(address indexed token, uint256 amount);
    event SentFromOwner(address indexed token, uint256 amount);
    event RecoveryManagerSet(address indexed recoveryManager);
    event RecoveryWalletAdded(address indexed recoveryWallet);
    event RecoveryWalletRemoved(address indexed recoveryWallet);
    event RecoveryConfigSet(uint256 delay, uint256 gracePeriod);
    event RecoveryProposed(address indexed to, uint256 validAt, uint256 expiresAt);
    event RecoveryCancelled(address indexed to);
    event LockdownTriggered(uint256 agentsRemoved, uint256 newNonce);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);
    event SessionNonceIncremented(uint256 newSessionNonce);

    /**
     *
     *  CONSTANTS
     *
     */
    string public constant NAME = "Account";
    string public constant VERSION = "1.0.0";

    uint256 private constant MAX_SESSION_DURATION = 60 days;
    uint256 private constant MAX_AGENTS = 20;
    uint64 private constant MIN_RECOVERY_DELAY = 3 days;
    uint64 private constant MIN_RECOVERY_GRACE_PERIOD = 1 days;
    uint64 private constant RECOVERY_PROPOSAL_COOLDOWN = 1 days;

    bytes32 private constant ADD_AGENT_TYPE_HASH = keccak256(
        "AddAgent(address agent,address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant REMOVE_AGENT_TYPE_HASH = keccak256(
        "RemoveAgent(address agent,address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant ADD_SUB_ACCOUNT_TYPE_HASH = keccak256(
        "AddSubAccount(address subAccount,address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant REMOVE_SUB_ACCOUNT_TYPE_HASH = keccak256(
        "RemoveSubAccount(address subAccount,address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant START_SESSION_TYPE_HASH = keccak256(
        "StartSession(address sessionAccount,address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant END_SESSION_TYPE_HASH = keccak256(
        "EndSession(address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant SET_GUARDIAN_TYPE_HASH = keccak256(
        "SetGuardian(address subAccount,address guardian,address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant SEND_TO_OWNER_TYPE_HASH = keccak256(
        "SendToOwner(address token,uint256 amount,address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant SEND_FROM_OWNER_TYPE_HASH = keccak256(
        "SendFromOwner(address token,uint256 amount,address authorizedSender,uint256 sessionEpochId,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant SET_ALLOWANCE_TYPE_HASH = keccak256(
        "SetAllowance(address subAccount,address token,uint256 amount,address authorizedSender,uint256 maxFee,address feeToken,uint256 sessionEpochId,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant SET_ALLOWANCE_FEE_PAYMENT_TYPE_HASH = keccak256(
        "SetAllowanceFeePayment(bytes32 setAllowanceStructHash,address authorizedSender,uint256 maxFee,address feeToken)"
    );
    bytes32 private constant REVOKE_ALLOWANCE_TYPE_HASH = keccak256(
        "RevokeAllowance(address subAccount,address token,address authorizedSender,uint256 maxFee,address feeToken,uint256 nonce,uint256 deadline)"
    );

    /**
     *
     *  STORAGE
     *
     */

    /// @notice Nonce for EIP-712 signature replay protection on owner-signed operations.
    uint256 public nonce;

    /// @notice Separate nonce for session-signed operations (setAllowance, sendFromOwner).
    uint256 public sessionNonce;

    /// @notice Current session signer address. Set via startSession(), cleared via endSession().
    address public sessionAccount;

    /// @notice Timestamp when the current session was started. Used by sub-accounts for expiry checks.
    uint256 public sessionStartAt;

    /// @notice Monotonically increasing session epoch. Incremented on each startSession().
    /// @dev Used by sub-accounts to bind session signatures to a specific session epoch, preventing replay if the same
    ///      sessionAccount is later reused.
    uint256 public sessionEpochId;

    /// @notice Guardian module for each sub-account. Guardian validates pre/post execution conditions.
    mapping(address => address) public guardianBySubAccount;

    /// @notice Optional recovery manager allowed to trigger recovery flows.
    /// @dev If the owner wants third-party-assisted key-loss recovery, this must be configured in advance together
    ///      with recovery wallets.
    address public recoveryManager;

    /// @notice Recovery proposal delay (seconds). Initialized to the minimum valid default and owner-settable later.
    /// @dev Constructor initializes this to `MIN_RECOVERY_DELAY`.
    uint256 public recoveryDelay;

    /// @notice Recovery proposal grace period (seconds) after it becomes valid. Initialized to the minimum valid
    ///         default and owner-settable later.
    /// @dev Constructor initializes this to `MIN_RECOVERY_GRACE_PERIOD`.
    uint256 public recoveryGracePeriod;

    /// @notice Proposed recovery owner (must be in recoveryWallets). address(0) if none.
    address public recoveryProposedTo;

    /// @notice Timestamp after which recovery can be executed.
    uint256 public recoveryValidAt;

    /// @notice Timestamp after which recovery expires.
    uint256 public recoveryExpiresAt;

    /// @notice Timestamp of the last recovery proposal (for cooldown enforcement).
    uint256 public lastRecoveryProposalAt;

    /// @notice Optional one-time bootstrap authority for direct initial ownership handoff.
    /// @dev Set at deployment. address(0) disables bootstrap handoff.
    address public immutable bootstrapAuthority;

    /// @dev Current account owner (single canonical authority identity for EIP-712 and ERC1271 checks).
    address private _owner;

    /// @dev Pending owner for 2-step transfers. Must call acceptOwnership().
    address private _pendingOwner;

    /// @notice True once bootstrap handoff has been consumed.
    bool public bootstrapUsed;

    /// @dev Set of authorized agent addresses that can call execute().
    EnumerableSet.AddressSet private _agents;

    /// @dev Set of registered sub-account contract addresses.
    EnumerableSet.AddressSet private _subAccounts;

    /// @dev Set of whitelisted recovery wallets, to transfer ownership to.
    EnumerableSet.AddressSet private _recoveryWallets;

    /// @dev Token transfer allowances per sub-account. Maps subAccount => token => allowance.
    mapping(address => mapping(address => uint256)) private _allowanceBySubAccountByToken;

    /**
     *
     *  MODIFIERS
     *
     */
    modifier onlyOwnerOrAgent() {
        require(owner() == msg.sender || _agents.contains(msg.sender), Account__NotOwnerOrAgent());
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == _owner, Account__NotOwner());
        _;
    }

    modifier onlyOwnerOrRecoveryManager() {
        require(msg.sender == owner() || msg.sender == recoveryManager, Account__NotOwnerOrRecoveryManager());
        _;
    }

    /**
     *
     *  CONSTRUCTOR
     *
     */

    /**
     * @notice Initializes the Account with an owner and default recovery timing params.
     * @param initialOwner The initial owner address (typically an EOA).
     * @param _sessionAccount The initial session account address (Optional).
     * @param _agent The initial agent address (Optional).
     * @param bootstrapAuthority_ Optional one-time bootstrap authority for direct initial handoff.
     */
    constructor(
        address initialOwner,
        address _sessionAccount,
        address _agent,
        address[] memory subAccounts_,
        address bootstrapAuthority_
    ) EIP712(NAME, VERSION) {
        _requireNonZeroAddress(initialOwner);
        require(
            bootstrapAuthority_ == address(0) || bootstrapAuthority_ == initialOwner, Account__InvalidBootstrapConfig()
        );
        _owner = initialOwner;
        bootstrapAuthority = bootstrapAuthority_;
        recoveryDelay = MIN_RECOVERY_DELAY;
        recoveryGracePeriod = MIN_RECOVERY_GRACE_PERIOD;

        emit OwnershipTransferred(address(0), initialOwner);

        if (_sessionAccount != address(0)) {
            _startSession(_sessionAccount);
        }

        if (_agent != address(0)) {
            _agents.add(_agent);

            emit AgentAdded(_agent);
        }

        for (uint256 i = 0; i < subAccounts_.length; i++) {
            address subAccount = subAccounts_[i];

            _requireNonZeroAddress(subAccount);
            require(!_subAccounts.contains(subAccount), Account__SubAccountAlreadyAdded());
            // Sub-accounts must already be linked via setAccount(address(this)) before Account deployment
            require(ISubAccount(subAccount).account() == address(this), Account__SubAccountNotBelongsToAccount());

            _subAccounts.add(subAccount);

            emit SubAccountAdded(subAccount);
        }
    }

    /**
     *
     *  VIEW FUNCTIONS
     *
     */

    /**
     * @notice Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @notice Returns the address of the pending owner (for 2-step transfers).
     */
    function pendingOwner() public view returns (address) {
        return _pendingOwner;
    }

    /**
     * @notice Checks if the contract is currently in a locked (reentrancy guard active) state.
     * @return True if reentrancy guard is active, false otherwise.
     */
    function isLocked() external view returns (bool) {
        return _reentrancyGuardEntered();
    }

    /**
     * @notice Returns all registered agent addresses.
     * @return Array of agent addresses.
     */
    function getAgents() external view returns (address[] memory) {
        return _agents.values();
    }

    /**
     * @notice Returns an agent address by index.
     * @param _idx The index in the agents set.
     * @return The agent address at the given index.
     */
    function getAgent(uint256 _idx) external view returns (address) {
        return _agents.at(_idx);
    }

    /**
     * @notice Returns all registered sub-account addresses.
     * @return Array of sub-account addresses.
     */
    function getSubAccounts() external view returns (address[] memory) {
        return _subAccounts.values();
    }

    /**
     * @notice Returns a sub-account address by index.
     * @param _idx The index in the sub-accounts set.
     * @return The sub-account address at the given index.
     */
    function getSubAccount(uint256 _idx) external view returns (address) {
        return _subAccounts.at(_idx);
    }

    /**
     * @notice Returns all recovery destination wallets.
     * @return Array of recovery destination wallet addresses.
     */
    function getRecoveryWallets() external view returns (address[] memory) {
        return _recoveryWallets.values();
    }

    /**
     * @notice Returns a recovery wallet address by index.
     * @param _idx The index in the recovery wallets set.
     * @return The recovery wallet address at the given index.
     */
    function getRecoveryWallet(uint256 _idx) external view returns (address) {
        return _recoveryWallets.at(_idx);
    }

    /**
     * @notice Returns the token allowance for a specific sub-account.
     * @param _subAccount The sub-account address.
     * @param _token The token address (address(0) for native token).
     * @return The remaining allowance amount.
     */
    function getAllowance(address _subAccount, address _token) external view returns (uint256) {
        return _allowanceBySubAccountByToken[_subAccount][_token];
    }

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */

    /// @notice Allows the contract to receive native tokens.
    receive() external payable {}

    /**
     * @notice Accepts a pending ownership transfer (from recovery).
     */
    function acceptOwnership() public virtual nonReentrant {
        address sender = msg.sender;
        require(_pendingOwner == sender, Account__NotPendingOwner());

        address previousOwner = _owner;

        delete _pendingOwner;
        _owner = sender;

        emit OwnershipTransferred(previousOwner, sender);
    }

    /**
     * @notice Cancels a pending ownership transfer.
     * @dev Callable by owner or recoveryManager.
     *      - Owner: Has regained access to their key and recovery is no longer needed.
     *      - RecoveryManager: The proposed recovery wallet is inaccessible, allowing
     *        the recovery flow to restart with a different wallet from the allowlist.
     */
    function cancelOwnershipTransfer() external onlyOwnerOrRecoveryManager nonReentrant {
        require(_pendingOwner != address(0), Account__NoPendingOwner());

        emit OwnershipTransferStarted(_owner, address(0));

        delete _pendingOwner;
    }

    /**
     * @notice Performs a one-time direct bootstrap handoff to the final owner.
     * @dev This path is intended only for pre-deployed inventory Accounts whose current owner and bootstrapAuthority
     *      are the same trusted bootstrap contract. It must not be used as a generic transferOwnership substitute.
     */
    function bootstrapTransferOwnershipOnce(address newOwner) external nonReentrant {
        _requireNonZeroAddress(newOwner);
        require(bootstrapAuthority != address(0), Account__BootstrapDisabled());
        require(msg.sender == bootstrapAuthority, Account__NotBootstrapAuthority());
        require(!bootstrapUsed, Account__BootstrapAlreadyUsed());
        require(_owner == bootstrapAuthority, Account__NotBootstrapAuthority());
        require(_pendingOwner == address(0), Account__NoPendingOwner());
        require(recoveryProposedTo == address(0), Account__RecoveryAlreadyProposed());

        bootstrapUsed = true;

        address previousOwner = _owner;
        _owner = newOwner;

        emit OwnershipTransferred(previousOwner, newOwner);
    }

    /**
     * @notice Adds a new agent that can call execute().
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     * @param _params The AddAgent struct containing agent address and signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function addAgent(AddAgent calldata _params, bytes calldata _signature, uint256 _fee) external nonReentrant {
        _requireNonZeroAddress(_params.agent);
        require(!_agents.contains(_params.agent), Account__AgentAlreadyAdded());
        require(_agents.length() < MAX_AGENTS, Account__MaxAgentsExceeded());
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());
            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(ADD_AGENT_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        _agents.add(_params.agent);

        emit AgentAdded(_params.agent);
    }

    /**
     * @notice Removes an existing agent.
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     * @param _params The RemoveAgent struct containing agent address and signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function removeAgent(RemoveAgent calldata _params, bytes calldata _signature, uint256 _fee) external nonReentrant {
        _requireNonZeroAddress(_params.agent);
        require(_agents.contains(_params.agent), Account__AgentNotAdded());
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());

            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(REMOVE_AGENT_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        _agents.remove(_params.agent);

        emit AgentRemoved(_params.agent);
    }

    /**
     * @notice Sets the recovery manager contract/address.
     * @dev Only callable by owner. Set to address(0) to disable recovery manager access.
     *      If the owner wants third-party-assisted key-loss recovery, this must be configured before key loss.
     */
    function setRecoveryManager(address _recoveryManager) external onlyOwner nonReentrant {
        recoveryManager = _recoveryManager;

        emit RecoveryManagerSet(_recoveryManager);
    }

    /**
     * @notice Sets recovery timelock parameters.
     * @dev Only callable by owner. Enforces minimum delay and grace period.
     *      Cannot be called while a recovery proposal is active.
     *      Constructor already initializes the minimum valid defaults; this function is for overriding them.
     */
    function setRecoveryConfig(uint256 _delay, uint256 _gracePeriod) external onlyOwner nonReentrant {
        require(recoveryProposedTo == address(0), Account__RecoveryConfigChangeWhileProposalActive());
        require(_delay >= MIN_RECOVERY_DELAY, Account__RecoveryDelayTooShort());
        require(_gracePeriod >= MIN_RECOVERY_GRACE_PERIOD, Account__RecoveryGracePeriodTooShort());

        recoveryDelay = _delay;
        recoveryGracePeriod = _gracePeriod;

        emit RecoveryConfigSet(_delay, _gracePeriod);
    }

    /**
     * @notice Adds a new recovery wallet to the allowlist.
     * @dev Only callable by owner. Reverts if wallet is already in allowlist.
     *      Recovery can only transfer ownership to wallets added here, so the owner must configure these in advance
     *      if key-loss recovery is desired.
     * @param wallet The wallet address to add to the allowlist.
     */
    function addRecoveryWallet(address wallet) external onlyOwner nonReentrant {
        _requireNonZeroAddress(wallet);
        require(!_recoveryWallets.contains(wallet), Account__RecoveryWalletAlreadyAdded());

        _recoveryWallets.add(wallet);

        emit RecoveryWalletAdded(wallet);
    }

    /**
     * @notice Removes a recovery wallet from the allowlist.
     * @dev Only callable by owner. Reverts if wallet is not in allowlist.
     * @param wallet The wallet address to remove from the allowlist.
     */
    function removeRecoveryWallet(address wallet) external onlyOwner nonReentrant {
        require(_recoveryWallets.contains(wallet), Account__RecoveryWalletNotAdded());

        _recoveryWallets.remove(wallet);

        emit RecoveryWalletRemoved(wallet);
    }

    /**
     * @notice Proposes a recovery owner transfer (timelocked).
     * @dev Callable by owner or recoveryManager. Enforces that `to` is in the recovery wallet allowlist.
     *      Applies immediate lockdown: clears session, disables all agents, and increments nonce.
     *      Enforces cooldown between proposals to prevent griefing.
     *      Recovery is still opt-in at the allowlist/manager layer: if the owner wants key-loss recovery, they must
     *      configure recovery wallets in advance, and configure `recoveryManager` as well if they expect a third
     *      party to initiate recovery after owner key loss.
     */
    function proposeRecovery(address to) external onlyOwnerOrRecoveryManager nonReentrant {
        _requireNonZeroAddress(to);
        require(_recoveryWallets.contains(to), Account__RecoveryWalletNotAllowed());
        require(recoveryProposedTo == address(0), Account__RecoveryAlreadyProposed());
        require(pendingOwner() == address(0), Account__RecoveryOwnershipTransferInProgress());
        require(to != owner(), Account__CannotRecoverToExistingOwner());
        // Defensive: owner overrides must still satisfy the documented minimums
        require(recoveryDelay >= MIN_RECOVERY_DELAY, Account__RecoveryDelayTooShort());
        require(recoveryGracePeriod >= MIN_RECOVERY_GRACE_PERIOD, Account__RecoveryGracePeriodTooShort());
        // Enforce cooldown between proposals to prevent griefing (skip for first proposal)
        require(
            lastRecoveryProposalAt == 0 || block.timestamp >= lastRecoveryProposalAt + RECOVERY_PROPOSAL_COOLDOWN,
            Account__RecoveryCooldownNotElapsed()
        );

        recoveryProposedTo = to;
        recoveryValidAt = block.timestamp + recoveryDelay;
        recoveryExpiresAt = recoveryValidAt + recoveryGracePeriod;
        lastRecoveryProposalAt = block.timestamp;

        _lockdownOnRecovery();

        emit RecoveryProposed(to, recoveryValidAt, recoveryExpiresAt);
    }

    /**
     * @notice Cancels any pending recovery proposal.
     * @dev Callable by owner or recoveryManager.
     */
    function cancelRecovery() external onlyOwnerOrRecoveryManager nonReentrant {
        address to = recoveryProposedTo;
        require(to != address(0), Account__NoRecoveryProposed());

        delete recoveryProposedTo;
        delete recoveryValidAt;
        delete recoveryExpiresAt;

        emit RecoveryCancelled(to);
    }

    /**
     * @notice Executes a valid recovery proposal by setting a pending owner.
     * @dev Callable by owner or recoveryManager after timelock passes and before expiry.
     *      The proposed owner must still call {acceptOwnership} to become owner.
     *      Re-validates that the target wallet is still in the allowlist.
     */
    function executeRecovery() external onlyOwnerOrRecoveryManager nonReentrant {
        address to = recoveryProposedTo;
        require(to != address(0), Account__NoRecoveryProposed());
        require(block.timestamp >= recoveryValidAt, Account__RecoveryNotReady());
        require(block.timestamp <= recoveryExpiresAt, Account__RecoveryExpired());
        require(pendingOwner() == address(0), Account__RecoveryOwnershipTransferInProgress());
        // Re-validate wallet is still in allowlist (owner may have removed it during delay)
        require(_recoveryWallets.contains(to), Account__RecoveryWalletRemovedDuringProposal());

        _pendingOwner = to;

        emit OwnershipTransferStarted(_owner, to);

        // Clear proposal state
        delete recoveryProposedTo;
        delete recoveryValidAt;
        delete recoveryExpiresAt;
    }

    /**
     * @notice Registers a new sub-account contract.
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     *      Sub-account must be a deployed contract (code.length > 0).
     * @param _params The AddSubAccount struct containing sub-account address and signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function addSubAccount(AddSubAccount calldata _params, bytes calldata _signature, uint256 _fee)
        external
        nonReentrant
    {
        // WARNING: When re-adding a previous sub-account,
        // it might still have active Guardian and/or allowances.
        // These can be cleared by their respective functions.
        _requireNonZeroAddress(_params.subAccount);
        _requireNonZeroCodeLength(_params.subAccount);
        require(!_subAccounts.contains(_params.subAccount), Account__SubAccountAlreadyAdded());
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);
        // Only allow sub-accounts that belong to this account
        require(ISubAccount(_params.subAccount).account() == address(this), Account__SubAccountNotBelongsToAccount());

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());

            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(ADD_SUB_ACCOUNT_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        // WARNING: Sub-accounts are trusted and assumed to be safe to use.
        // The owner or authorized sender are responsible for ensuring no
        // malicious sub-accounts are added.
        _subAccounts.add(_params.subAccount);

        emit SubAccountAdded(_params.subAccount);
    }

    /**
     * @notice Unregisters an existing sub-account.
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     *      Note: Token allowances for the sub-account are NOT cleared automatically.
     * @param _params The RemoveSubAccount struct containing sub-account address and signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function removeSubAccount(RemoveSubAccount calldata _params, bytes calldata _signature, uint256 _fee)
        external
        nonReentrant
    {
        _requireNonZeroAddress(_params.subAccount);
        require(_subAccounts.contains(_params.subAccount), Account__SubAccountNotAdded());
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());

            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(REMOVE_SUB_ACCOUNT_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        // WARNING: Token allowances and Guardian persist after sub-account removal.
        // Allowances can be cleared via `revokeAllowance()` and guardians via `setGuardian()`.
        _subAccounts.remove(_params.subAccount);

        emit SubAccountRemoved(_params.subAccount);
    }

    /**
     * @notice Starts a new session by setting the session signer.
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     *      Session signatures are validated by sub-accounts with expiry based on sessionStartAt.
     * @param _params The StartSession struct containing session account and signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function startSession(StartSession calldata _params, bytes calldata _signature, uint256 _fee)
        external
        nonReentrant
    {
        _requireNonZeroAddress(_params.sessionAccount);
        // WARNING: This prevents the owner or authorized sender from setting the same session account,
        // as it is generally discouraged.
        // Although it is still possible to do it by calling `endSession()` beforehand.
        require(_params.sessionAccount != sessionAccount, Account__InvalidSession());
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());

            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(START_SESSION_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        _startSession(_params.sessionAccount);
    }

    /**
     * @notice Ends the current session by clearing the session signer.
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     *      WARNING: Pre-signed session transactions can still be front-run before this tx is mined.
     * @param _params The EndSession struct containing signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function endSession(EndSession calldata _params, bytes calldata _signature, uint256 _fee) external nonReentrant {
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);
        // Only end session if a session is currently active
        require(sessionAccount != address(0), Account__NoSessionSet());

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());

            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(END_SESSION_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        _endSession();
    }

    /**
     * @notice Sets or removes a Guardian module for a sub-account.
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     *      Guardian must be a deployed contract if not address(0). Sub-account must be registered.
     * @param _params The SetGuardian struct containing sub-account, guardian, and signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function setGuardian(SetGuardian calldata _params, bytes calldata _signature, uint256 _fee) external nonReentrant {
        _requireNonZeroAddress(_params.subAccount);
        if (_params.guardian != address(0)) {
            _requireNonZeroCodeLength(_params.guardian);
        }
        // Only set a Guardian for an existing sub-account
        require(_subAccounts.contains(_params.subAccount), Account__SubAccountNotAdded());
        // Only set a Guardian if it is not already set
        require(guardianBySubAccount[_params.subAccount] != _params.guardian, Account__GuardianAlreadySet());
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());

            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(SET_GUARDIAN_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        guardianBySubAccount[_params.subAccount] = _params.guardian;

        emit GuardianSet(_params.subAccount, _params.guardian);
    }

    /**
     * @notice Transfers tokens from this Account to the owner.
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     * @param _params The SendToOwner struct containing token, amount, and signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function sendToOwner(SendToOwner calldata _params, bytes calldata _signature, uint256 _fee) external nonReentrant {
        _requireNonZeroAmount(_params.amount);
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());

            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(SEND_TO_OWNER_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        _send(_params.token, owner_, _params.amount);

        emit SentToOwner(_params.token, _params.amount);
    }

    /**
     * @notice Transfers tokens from owner's wallet into this Account.
     * @dev Can be called by owner directly, or by an authorized sender with a valid session signature.
     *      If the token supports ERC2612 permit signatures, we can use it for gasless approvals.
     *      Otherwise, this will be skipped and it is assumed that the owner has already approved the token for this contract.
     * @param _permitSig The TokenPermitSignature containing the permit signature.
     * @param _params The SendFromOwner struct containing token, amount, and signature parameters.
     * @param _signature EIP-712 signature from the session account (ignored if caller is owner).
     *      This is signed by the session account, to avoid requiring the owner to construct an extra signature.
     */
    function sendFromOwner(
        TokenPermitSignature calldata _permitSig,
        SendFromOwner calldata _params,
        bytes calldata _signature
    ) external nonReentrant {
        _requireNonZeroAmount(_params.amount);
        _requireNonZeroAddress(_params.token);
        _requireDeadlineNotExpired(_params.deadline);
        // Fees are intentionally disabled for this session-signed operation to prevent draining Account-held tokens
        // via a compromised session key.

        uint256 preBalance = ERC20(_params.token).balanceOf(address(this));
        address owner_ = owner();

        // If the token supports ERC2612 permit signatures,
        // we can use it for gasless approvals
        // Otherwise, this will be skipped and it is assumed that
        // the owner has already approved the token for this contract
        if (_permitSig.v != 0) {
            try IERC2612(_params.token)
                .permit(
                    owner_, address(this), _params.amount, _params.deadline, _permitSig.v, _permitSig.r, _permitSig.s
                ) {}
                catch {
                // Permit signature was potentially already consumed, so we can continue
            }
        }

        ERC20(_params.token).safeTransferFrom(owner_, address(this), _params.amount);

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());
            require(sessionAccount != address(0), Account__NoSessionSet());
            require(block.timestamp <= sessionStartAt + MAX_SESSION_DURATION, Account__SessionExpired());
            // Bind session-signed operations to the current session epoch to prevent cross-session replay.
            require(_params.sessionEpochId == sessionEpochId, Account__InvalidSession());

            // This action is signed by the session account,
            // to avoid requiring the owner to construct an extra signature
            _validateSessionSignature(
                _params.nonce, keccak256(abi.encode(SEND_FROM_OWNER_TYPE_HASH, _params)), _signature, sessionAccount
            );
        } else {
            _incrementSessionNonce();
        }

        uint256 postBalance = ERC20(_params.token).balanceOf(address(this));
        // Balance check for safety,
        // this explicitly excludes fee-on-transfer tokens
        require(postBalance - preBalance >= _params.amount, Account__InsufficientAmountReceivedFromOwner());

        emit SentFromOwner(_params.token, _params.amount);
    }

    /**
     * @notice Sets the token transfer allowance for a sub-account.
     * @dev Can be called by owner directly, or by an authorized sender with a valid session signature.
     *      Requires sub-account to be registered.
     *      Note: This uses session account signature instead of owner signature
     *      to improve UX, since sub-accounts are already trusted.
     * @param _params The SetAllowance struct containing sub-account, token, amount, and signature parameters.
     * @param _signature EIP-712 signature from the session account (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     * @param _feePayment Owner-signed fee authorization (required only when `_fee > 0` and caller is not owner).
     * @param _ownerFeeSignature EIP-712 signature from the owner authorizing `_feePayment` (same conditions as above).
     */
    function setAllowance(
        SetAllowance calldata _params,
        bytes calldata _signature,
        uint256 _fee,
        SetAllowanceFeePayment calldata _feePayment,
        bytes calldata _ownerFeeSignature
    ) external nonReentrant {
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);
        require(_subAccounts.contains(_params.subAccount), Account__SubAccountNotAdded());

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());
            require(sessionAccount != address(0), Account__NoSessionSet());
            require(block.timestamp <= sessionStartAt + MAX_SESSION_DURATION, Account__SessionExpired());
            // Bind session-signed operations to the current session epoch to prevent cross-session replay.
            require(_params.sessionEpochId == sessionEpochId, Account__InvalidSession());
            // This action is signed by the session account,
            // to improve UX for the owner.
            // SubAccounts are already assumed to be trusted and have limited privileges.
            _validateSessionSignature(
                _params.nonce, keccak256(abi.encode(SET_ALLOWANCE_TYPE_HASH, _params)), _signature, sessionAccount
            );

            if (_fee > 0) {
                require(_ownerFeeSignature.length != 0, Account__OwnerFeeSignatureRequired());
                require(_fee <= _feePayment.maxFee, Account__ExceededMaxFee());

                bytes32 setAllowanceStructHash = keccak256(abi.encode(SET_ALLOWANCE_TYPE_HASH, _params));
                require(_feePayment.setAllowanceStructHash == setAllowanceStructHash, Account__InvalidFeePayment());
                require(_feePayment.authorizedSender == _params.authorizedSender, Account__InvalidFeePayment());
                require(_feePayment.maxFee == _params.maxFee, Account__InvalidFeePayment());
                require(_feePayment.feeToken == _params.feeToken, Account__InvalidFeePayment());

                // Owner co-signs fee payment authorization for this exact session-signed `setAllowance` payload.
                // This prevents a compromised session key from draining Account-held tokens via the fee mechanism.
                bytes32 feePaymentStructHash = keccak256(
                    abi.encode(
                        SET_ALLOWANCE_FEE_PAYMENT_TYPE_HASH,
                        _feePayment.setAllowanceStructHash,
                        _feePayment.authorizedSender,
                        _feePayment.maxFee,
                        _feePayment.feeToken
                    )
                );
                bytes32 digest = _hashTypedDataV4(feePaymentStructHash);

                if (owner_.code.length == 0) {
                    require(ECDSA.recover(digest, _ownerFeeSignature) == owner_, Account__InvalidSignature());
                } else {
                    require(
                        IERC1271(owner_).isValidSignature(digest, _ownerFeeSignature)
                            == IERC1271.isValidSignature.selector,
                        Account__InvalidERC1271Signature()
                    );
                }

                _send(_params.feeToken, msg.sender, _fee);
            }
        } else {
            _incrementSessionNonce();
        }

        _allowanceBySubAccountByToken[_params.subAccount][_params.token] = _params.amount;

        emit AllowanceSet(_params.subAccount, _params.token, _params.amount);
    }

    /**
     * @notice Revokes the token transfer allowance for any sub-account (sets allowance to 0).
     * @dev Can be called by owner directly, or by an authorized sender with a valid owner signature.
     *      This function does NOT require the sub-account to be registered, enabling cleanup after removal.
     * @param _params The RevokeAllowance struct containing sub-account, token, and signature parameters.
     * @param _signature EIP-712 signature from the owner (ignored if caller is owner).
     * @param _fee Fee to pay the authorized sender (must be <= maxFee).
     */
    function revokeAllowance(RevokeAllowance calldata _params, bytes calldata _signature, uint256 _fee)
        external
        nonReentrant
    {
        _requireNonZeroAddress(_params.subAccount);
        _requireDeadlineNotExpired(_params.deadline);
        _requireFeeNotExceededMaxFee(_fee, _params.maxFee);

        address owner_ = owner();

        if (msg.sender != owner_) {
            require(msg.sender == _params.authorizedSender, Account__NotAuthorizedSender());

            _validateOwnerSignature(
                _params.nonce, keccak256(abi.encode(REVOKE_ALLOWANCE_TYPE_HASH, _params)), _signature, owner_
            );

            _send(_params.feeToken, msg.sender, _fee);
        } else {
            _incrementOwnerNonce();
        }

        delete _allowanceBySubAccountByToken[_params.subAccount][_params.token];

        emit AllowanceSet(_params.subAccount, _params.token, 0);
    }

    /**
     * @notice Owner escape hatch to invalidate outstanding session signatures.
     * @dev Increments the session nonce without requiring a session signature.
     *      This allows the owner to revoke leaked session signatures during an active session.
     */
    function invalidateSessionNonce() external onlyOwner nonReentrant {
        _incrementSessionNonce();
    }

    /**
     * @notice Executes actions on sub-accounts with owner-level privileges.
     * @dev Only callable by owner. Passes _isExecuteOwner=true to sub-accounts, granting access
     *      to owner-only action types (e.g., admin management in HyperCoreSubAccount).
     * @param _executeParams Array of ExecuteParams specifying sub-account, data, token, and amount for each call.
     */
    function executeOwner(ExecuteParams[] calldata _executeParams) external onlyOwner nonReentrant {
        _execute(_executeParams, true);
    }

    /**
     * @notice Executes actions on sub-accounts.
     * @dev Callable by owner or agents. Passes _isExecuteOwner=false to sub-accounts.
     *      Transfers tokens to sub-accounts (deducting from allowance) before executing.
     * @param _executeParams Array of ExecuteParams specifying sub-account, data, token, and amount for each call.
     */
    function execute(ExecuteParams[] calldata _executeParams) external onlyOwnerOrAgent nonReentrant {
        _execute(_executeParams, false);
    }

    /**
     *
     *  PRIVATE FUNCTIONS
     *
     */

    function _lockdownOnRecovery() private {
        // End session immediately (invalidate all session-signed operations)
        if (sessionAccount != address(0)) {
            _endSession();
        }

        // Remove all agents (bounded by MAX_AGENTS)
        // NOTE: Must iterate backwards to avoid index shifting issues when removing from EnumerableSet
        uint256 agentsRemoved = _agents.length();
        for (uint256 i = agentsRemoved; i > 0; i--) {
            address agent = _agents.at(i - 1);
            _agents.remove(agent);

            emit AgentRemoved(agent);
        }

        // Increment nonce to invalidate any pre-signed owner transactions
        nonce++;

        emit LockdownTriggered(agentsRemoved, nonce);
    }

    function _startSession(address sessionAccount_) private {
        sessionEpochId++;
        sessionAccount = sessionAccount_;
        sessionStartAt = block.timestamp;

        emit SessionStarted(sessionAccount_, block.timestamp);
    }

    function _endSession() private {
        emit SessionEnded(sessionAccount, block.timestamp);

        sessionAccount = address(0);
        sessionStartAt = 0;
    }

    function _execute(ExecuteParams[] calldata executeParams, bool isExecuteOwner) private {
        for (uint256 i = 0; i < executeParams.length; i++) {
            address subAccount = executeParams[i].subAccount;
            require(_subAccounts.contains(subAccount), Account__SubAccountNotAdded());

            // 1. Check that the subAccount has sufficient allowance for the token
            require(
                _allowanceBySubAccountByToken[subAccount][executeParams[i].token] >= executeParams[i].amount,
                Account__InsufficientAllowanceForSubAccountAndToken(subAccount, executeParams[i].token)
            );

            _allowanceBySubAccountByToken[subAccount][executeParams[i].token] -= executeParams[i].amount;

            // 2. Send tokens to subAccount (if any)
            _send(executeParams[i].token, subAccount, executeParams[i].amount);

            // 3. Check that the Guardian approves the execution of the subAccount's `execute` call,
            // if a Guardian is set
            address guardian = guardianBySubAccount[subAccount];
            bool requiresAfterExecuteCallback;
            bytes memory beforeExecuteData;
            if (guardian != address(0)) {
                // The Guardian should revert if it does not approve the execution
                // of the subAccount's `execute` call
                (requiresAfterExecuteCallback, beforeExecuteData) = IGuardian(guardian)
                    .beforeExecute(
                        msg.sender,
                        executeParams[i].token,
                        executeParams[i].amount,
                        executeParams[i].data,
                        isExecuteOwner
                    );
            }

            // 4. Execute the subAccount's `execute` call
            _requireNonZeroCodeLength(subAccount);
            ISubAccount(subAccount)
                .execute(
                    msg.sender, executeParams[i].token, executeParams[i].amount, executeParams[i].data, isExecuteOwner
                );

            // 5. Call the Guardian's `afterExecute` callback, if it is set
            if (requiresAfterExecuteCallback) {
                // The Guardian should revert if it does not approve the post-execution state
                IGuardian(guardian).afterExecute(beforeExecuteData);
            }
        }
    }

    function _send(address token, address to, uint256 amount) private {
        require(to != address(0), Account__ZeroAddress());

        if (amount == 0) return;

        if (token == address(0)) {
            payable(to).sendValue(amount);
        } else {
            require(amount <= ERC20(token).balanceOf(address(this)), Account__InsufficientBalanceForToken(token));
            ERC20(token).safeTransfer(to, amount);
        }
    }

    function _incrementSessionNonce() private {
        sessionNonce++;

        emit SessionNonceIncremented(sessionNonce);
    }

    function _incrementOwnerNonce() private {
        nonce++;
    }

    function _validateOwnerSignature(uint256 claimedNonce, bytes32 structHash, bytes calldata signature, address signer)
        private
    {
        require(claimedNonce == nonce, Account__InvalidNonce());

        bytes32 hash = _hashTypedDataV4(structHash);

        _incrementOwnerNonce();

        if (signer.code.length == 0) {
            require(ECDSA.recover(hash, signature) == signer, Account__InvalidSignature());
        } else {
            require(
                IERC1271(signer).isValidSignature(hash, signature) == IERC1271.isValidSignature.selector,
                Account__InvalidERC1271Signature()
            );
        }
    }

    function _validateSessionSignature(
        uint256 claimedNonce,
        bytes32 structHash,
        bytes calldata signature,
        address signer
    ) private {
        require(claimedNonce == sessionNonce, Account__InvalidNonce());

        bytes32 hash = _hashTypedDataV4(structHash);

        _incrementSessionNonce();

        if (signer.code.length == 0) {
            require(ECDSA.recover(hash, signature) == signer, Account__InvalidSignature());
        } else {
            require(
                IERC1271(signer).isValidSignature(hash, signature) == IERC1271.isValidSignature.selector,
                Account__InvalidERC1271Signature()
            );
        }
    }

    function _requireNonZeroAddress(address who) private pure {
        require(who != address(0), Account__ZeroAddress());
    }

    function _requireNonZeroAmount(uint256 amount) private pure {
        require(amount > 0, Account__ZeroAmount());
    }

    function _requireDeadlineNotExpired(uint256 deadline) private view {
        require(block.timestamp <= deadline, Account__ExpiredDeadline());
    }

    function _requireFeeNotExceededMaxFee(uint256 fee, uint256 maxFee) private pure {
        require(fee <= maxFee, Account__ExceededMaxFee());
    }

    function _requireNonZeroCodeLength(address who) private view {
        require(who.code.length > 0, Account__ZeroCodeLength());
    }
}
