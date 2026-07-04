// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {CoreWriterLib} from "@hyper-evm-lib/src/CoreWriterLib.sol";
import {HLConstants} from "@hyper-evm-lib/src/common/HLConstants.sol";
import {HLConversions} from "@hyper-evm-lib/src/common/HLConversions.sol";
import {PrecompileLib} from "@hyper-evm-lib/src/PrecompileLib.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {IERC1271} from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

import {IAccount} from "./interfaces/IAccount.sol";
import {ISubAccount} from "./interfaces/ISubAccount.sol";

/**
 * @title HyperCoreSubAccount
 * @notice Sub-account implementation for Hyperliquid HyperEVM ↔ HyperCore interactions.
 * @dev Implements ISubAccount interface. Supports role-based access control per action type,
 *      session signatures for agent authorization, and CoreWriter interactions.
 *      Can be called via Account contract or directly by per-action authorized senders.
 */
contract HyperCoreSubAccount is ISubAccount, IERC1271, EIP712, ReentrancyGuardTransient {
    using Address for address payable;
    using SafeERC20 for ERC20;

    /**
     *
     *  CUSTOM ERRORS
     *
     */
    error HyperCoreSubAccount__AccountNotSet();
    error HyperCoreSubAccount__CoreWriterOneBlockDelay();
    error HyperCoreSubAccount__HyperCoreAccountNotActivated();
    error HyperCoreSubAccount__NotAccount();
    error HyperCoreSubAccount__Unauthorized();
    error HyperCoreSubAccount__ZeroAddress();
    error HyperCoreSubAccount__ZeroAmount();
    error HyperCoreSubAccount__NonZeroAmount();
    error HyperCoreSubAccount__InvalidSession();
    error HyperCoreSubAccount__InvalidSignature();
    error HyperCoreSubAccount__InvalidParameter();
    error HyperCoreSubAccount__InvalidApiWallet();
    error HyperCoreSubAccount__AccountAlreadySet();
    error HyperCoreSubAccount__NotAccountInitializer();
    error HyperCoreSubAccount__InvalidSessionExpiry();

    /**
     *
     *  EVENTS
     *
     */
    event AdminSet(ExecuteActionType indexed actionType, address indexed admin);
    event PendingAdminSet(ExecuteActionType indexed actionType, address indexed pendingAdmin);
    event AuthorizedSenderSet(ExecuteActionType indexed actionType, address indexed authorizedSender);
    event SkipSessionSignatureSet(ExecuteActionType indexed actionType, bool skip);
    event SessionExpirySet(ExecuteActionType indexed actionType, uint256 expiry);
    event SentToAccount(address indexed token, uint256 amount);
    event AccountSet(address indexed account);
    event ExternalSpotHypeRecipientSet(address indexed externalSpotHypeRecipient);

    /**
     *
     *  ENUMS
     *
     */
    enum OwnerActionType {
        SET_PENDING_ADMIN_BY_ACTION_TYPE,
        SET_SKIP_SESSION_SIGNATURE_BY_ACTION_TYPE,
        SET_AUTHORIZED_SENDER_BY_ACTION_TYPE,
        SET_SESSION_EXPIRY_BY_ACTION_TYPE,
        SEND_TO_ACCOUNT
    }

    enum ExecuteActionType {
        ADD_API_WALLET,
        APPROVE_BUILDER_FEE,
        BRIDGE_TO_CORE,
        BRIDGE_TO_EVM,
        BRIDGE_PERPS_SPOT,
        CANCEL_ORDER_BY_CLOID,
        CANCEL_ORDER_BY_OID,
        PLACE_LIMIT_ORDER,
        SEND_ASSET,
        SEND_HYPE_TO_EXTERNAL_RECIPIENT,
        SEND_TO_ACCOUNT,
        STAKING_DELEGATE,
        STAKING_DEPOSIT,
        STAKING_WITHDRAW,
        VAULT_TRANSFER,
        BORROW_LEND
    }

    /**
     *
     *  STRUCTS
     *
     */

    struct OwnerAction {
        OwnerActionType actionType;
        bytes actionData;
    }

    struct Action {
        ExecuteActionType actionType;
        bytes actionData;
        uint256 nonce;
        uint256 sessionEpochId;
    }

    /**
     *
     *  CONSTANTS
     *
     */
    bytes32 private constant ACTION_TYPE_HASH =
        keccak256("Action(uint256 actionType,bytes actionData,uint256 nonce,uint256 sessionEpochId)");
    uint256 private constant DEFAULT_SESSION_EXPIRATION_TIME = 1 hours;
    uint256 private constant MAX_SESSION_EXPIRATION_TIME = 60 days;
    bytes4 private constant ERC1271_INVALID_SIGNATURE = 0xffffffff;

    string public constant NAME = "HyperCoreSubAccount";
    string public constant VERSION = "1.0.0";

    /**
     *
     *  IMMUTABLES
     *
     */

    /**
     * @notice The address that can call setAccount() to link this sub-account to an Account.
     * @dev Set to msg.sender in constructor. Can only call setAccount() once.
     */
    address public immutable accountInitializer;

    /**
     * @notice The external spot hype recipient address.
     * @dev A pre-approved address to receive spot hype from HyperCore.
     */
    address public immutable externalSpotHypeRecipient;

    /**
     *
     *  STORAGE
     *
     */

    /**
     * @notice The Account instance that this contract belongs to.
     * @dev Immutable after setup via setAccount() (callable once).
     */
    address public account;

    /**
     * @notice The last block number when this contract has interacted with CoreWriter.
     * @dev Used to enforce >= 1 block delays between consecutive interactions with CoreWriter.
     */
    uint256 public lastBlockInteractionCheckpoint;

    /**
     * @notice The nonce used for signature validation against the `account`'s session account.
     * @dev This nonce is local to HyperCoreSubAccount and is independent from `Account.sessionNonce`.
     *      Calling `Account.invalidateSessionNonce()` does NOT invalidate already signed HyperCoreSubAccount actions.
     *      To invalidate outstanding HyperCoreSubAccount signatures, the Account owner must call `endSession()`
     *      so `sessionAccount` is cleared; if a later session is started, `sessionEpochId` also changes.
     *      There is intentionally no sub-account-only analogue of `invalidateSessionNonce()`.
     */
    uint256 public nonce;

    /**
     * @notice The admin address for each action type.
     * @dev Admin role is for configuration only: setting authorized sender, skipSessionSignature, and pending admin.
     * @dev Admin does NOT have execution rights by default - must set itself as authorized sender to execute.
     * @dev If admin is set: only that admin can configure the action type.
     * @dev If admin is not set (address(0)): owner (via Account.executeOwner) can configure.
     */
    mapping(ExecuteActionType => address) public adminByActionType;

    /**
     * @notice The pending admin address for each action type.
     * @dev Set via `Account.executeOwner()` with `OwnerActionType.SET_PENDING_ADMIN_BY_ACTION_TYPE`.
     * @dev The pending admin can accept the admin role by calling `acceptAdminForActionType()`.
     * @dev Note: Admin delegation is intentionally semi-permanent.
     *      - If no external admin is set (admin == address(0) or admin == Account.owner()),
     *        the Account owner can set/overwrite pending admin.
     *      - Once an external admin is set, it cannot be transferred; only the admin can self-revoke.
     *      - The Account owner cannot forcibly reclaim admin once delegated (escape hatch: SEND_TO_ACCOUNT).
     */
    mapping(ExecuteActionType => address) public pendingAdminByActionType;

    /**
     * @notice Whether to skip session signature validation for each action type.
     * @dev Defaults to `false`, meaning all actions require session signature.
     * @dev Can be set to `true` by the admin to allow execution without session signature.
     * @dev Can be modified via:
     *      1. `setSkipSessionSignature()` - only callable by explicit admin (requires admin != address(0))
     *      2. `Account.executeOwner()` with `SET_SKIP_SESSION_SIGNATURE_BY_ACTION_TYPE` - callable by
     *         current admin, or via Account (owner) if no admin is set
     */
    mapping(ExecuteActionType => bool) public skipSessionSignature;

    /**
     * @notice The authorized sender address for each action type.
     * @dev The authorized sender is the only address that can execute the action type.
     * @dev If authorized sender is set: only that address can execute (via Account or directly).
     * @dev If authorized sender is not set (address(0)): must go through Account (owner/agents).
     * @dev Can be modified by the admin for the action type, or by owner (via Account.executeOwner)
     *      if no admin is set.
     */
    mapping(ExecuteActionType => address) public authorizedSenderByActionType;

    /**
     * @notice The session expiry duration for each action type.
     * @dev If expiry is 0: use default SESSION_EXPIRATION_TIME (1 hour).
     * @dev If expiry is non-zero: use the custom expiry duration.
     * @dev Can be modified by the admin for the action type, or by owner (via Account.executeOwner)
     *      if no admin is set.
     */
    mapping(ExecuteActionType => uint256) public sessionExpiryByActionType;

    /**
     *
     *  MODIFIERS
     *
     */
    modifier checkAccountIsSet() {
        require(account != address(0), HyperCoreSubAccount__AccountNotSet());
        _;
    }

    /**
     *
     *  CONSTRUCTOR
     *
     */

    /**
     * @notice Initializes the sub-account.
     * @dev The deployer (msg.sender) becomes the accountInitializer who can call setAccount().
     * @param _externalSpotHypeRecipient The external spot hype recipient address (immutable after deployment).
     * @param _skipSessionSignature Whether to skip session signature for each action type.
     * @param _adminByActionType The admin address for each action type.
     * @param _authorizedSenderByActionType The authorized sender address for each action type.
     * @param _sessionExpiryByActionType The session expiry duration for each action type (0 = use default 1 hour).
     */
    constructor(
        address _externalSpotHypeRecipient,
        bool[16] memory _skipSessionSignature,
        address[16] memory _adminByActionType,
        address[16] memory _authorizedSenderByActionType,
        uint256[16] memory _sessionExpiryByActionType
    ) EIP712(NAME, VERSION) {
        accountInitializer = msg.sender;

        // WARNING: Security-critical deployment configuration.
        // The Account owner MUST verify this sub-account's initial configuration (e.g. externalSpotHypeRecipient,
        // per-action admins/authorized senders, skipSessionSignature, session expiry) before registering it in Account.
        // A malicious or incorrect configuration can lead to permanent loss of funds.
        if (_externalSpotHypeRecipient != address(0)) {
            _requireCoreUserExists(_externalSpotHypeRecipient);
            externalSpotHypeRecipient = _externalSpotHypeRecipient;

            emit ExternalSpotHypeRecipientSet(_externalSpotHypeRecipient);
        }

        for (uint256 i = 0; i < 16; i++) {
            skipSessionSignature[ExecuteActionType(i)] = _skipSessionSignature[i];
            adminByActionType[ExecuteActionType(i)] = _adminByActionType[i];
            authorizedSenderByActionType[ExecuteActionType(i)] = _authorizedSenderByActionType[i];

            require(
                _sessionExpiryByActionType[i] <= MAX_SESSION_EXPIRATION_TIME,
                HyperCoreSubAccount__InvalidSessionExpiry()
            );
            sessionExpiryByActionType[ExecuteActionType(i)] = _sessionExpiryByActionType[i];
        }
    }

    /**
     *
     *  VIEW FUNCTIONS
     *
     */

    /**
     * @notice Checks if the contract is currently in a locked (reentrancy guard active) state.
     * @return True if reentrancy guard is active, false otherwise.
     */
    function isLocked() external view returns (bool) {
        return _reentrancyGuardEntered();
    }

    /**
     * @notice Verifies a signature against the current owner of the parent Account.
     * @dev This exposes the sub-account as a standard ERC1271 signer for ownership proofs.
     *      It is intentionally distinct from the execution/session model used by `execute(...)`.
     *      Returns the ERC1271 magic value when `Account.owner()` validates the hash, otherwise
     *      returns `0xffffffff` without reverting.
     */
    function isValidSignature(bytes32 hash, bytes memory signature) external view override returns (bytes4) {
        address account_ = account;
        if (account_ == address(0) || account_ == address(this) || account_.code.length == 0) {
            return ERC1271_INVALID_SIGNATURE;
        }

        address accountOwner;
        try IAccount(account_).owner() returns (address owner_) {
            accountOwner = owner_;
        } catch {
            return ERC1271_INVALID_SIGNATURE;
        }
        if (accountOwner == address(0) || accountOwner == address(this)) {
            return ERC1271_INVALID_SIGNATURE;
        }

        if (accountOwner.code.length == 0) {
            (address recoveredSigner, ECDSA.RecoverError err,) = ECDSA.tryRecover(hash, signature);
            return err == ECDSA.RecoverError.NoError && recoveredSigner == accountOwner
                ? IERC1271.isValidSignature.selector
                : ERC1271_INVALID_SIGNATURE;
        }

        try IERC1271(accountOwner).isValidSignature(hash, signature) returns (bytes4 result) {
            return result == IERC1271.isValidSignature.selector ? result : ERC1271_INVALID_SIGNATURE;
        } catch {
            return ERC1271_INVALID_SIGNATURE;
        }
    }

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */

    /**
     * @notice Allows this contract to receive native token.
     * @dev Required for bridging operations and receiving native token from Account.
     */
    receive() external payable {}

    /**
     * @notice Allows the account initializer to set the Account address for this sub-account.
     * @dev Only callable once by the accountInitializer (deployer).
     * @param _account The Account contract address to link this sub-account to.
     */
    function setAccount(address _account) external nonReentrant {
        require(account == address(0), HyperCoreSubAccount__AccountAlreadySet());
        require(msg.sender == accountInitializer, HyperCoreSubAccount__NotAccountInitializer());
        _requireNonZeroAddress(_account);

        account = _account;

        emit AccountSet(_account);
    }

    /**
     * @notice Allows the pending admin for a given action type to become the admin.
     * @param actionType The action type to become the admin for.
     */
    function acceptAdminForActionType(ExecuteActionType actionType) external nonReentrant {
        address pendingAdmin = pendingAdminByActionType[actionType];
        require(msg.sender == pendingAdmin, HyperCoreSubAccount__Unauthorized());

        // WARNING: Once `pendingAdmin` accepts the admin role,
        // there is no way to force them to revoke it,
        // which could lead to permanent freeze or loss of funds.
        // Therefore, any `pendingAdmin` is assumed to be a trusted external account,
        // with least-privilege permissions and ability to self-revoke safely.

        adminByActionType[actionType] = pendingAdmin;
        delete pendingAdminByActionType[actionType];

        emit AdminSet(actionType, pendingAdmin);
    }

    /**
     * @notice Allows the current admin for a given action type to revoke their admin status.
     * @param actionType The action type to revoke the admin status for.
     */
    function selfRevokeAdminForActionType(ExecuteActionType actionType) external nonReentrant {
        address currentAdmin = adminByActionType[actionType];
        // Only the current admin can self-revoke their admin status
        require(msg.sender == currentAdmin, HyperCoreSubAccount__Unauthorized());

        // Automatically sets the owner of `account` as the admin
        // for `actionType`
        delete adminByActionType[actionType];

        delete pendingAdminByActionType[actionType];

        emit AdminSet(actionType, address(0));
    }

    /**
     * @notice Allows the admin to set the authorized sender for a given action type.
     * @param actionType The action type to set the authorized sender for.
     * @param authorizedSender The authorized sender address to set.
     */
    function setAuthorizedSender(ExecuteActionType actionType, address authorizedSender)
        external
        nonReentrant
        checkAccountIsSet
    {
        require(msg.sender == adminByActionType[actionType], HyperCoreSubAccount__Unauthorized());

        authorizedSenderByActionType[actionType] = authorizedSender;

        emit AuthorizedSenderSet(actionType, authorizedSender);
    }

    /**
     * @notice Allows the admin to set whether session signature is required for an action type.
     * @dev Only callable by an explicit admin (adminByActionType[actionType] != address(0)).
     *      If no admin is set, use `Account.executeOwner()` with `SET_SKIP_SESSION_SIGNATURE_BY_ACTION_TYPE`.
     * @param actionType The action type to configure.
     * @param skip If true, session signature validation is skipped for this action type.
     */
    function setSkipSessionSignature(ExecuteActionType actionType, bool skip) external nonReentrant checkAccountIsSet {
        require(msg.sender == adminByActionType[actionType], HyperCoreSubAccount__Unauthorized());

        skipSessionSignature[actionType] = skip;

        emit SkipSessionSignatureSet(actionType, skip);
    }

    /**
     * @notice Allows the admin to set the session expiry duration for an action type.
     * @dev Only callable by an explicit admin (adminByActionType[actionType] != address(0)).
     *      If no admin is set, use `Account.executeOwner()` with `SET_SESSION_EXPIRY_BY_ACTION_TYPE`.
     * @param actionType The action type to configure.
     * @param expiry The session expiry duration in seconds. 0 means use default (1 hour).
     */
    function setSessionExpiry(ExecuteActionType actionType, uint256 expiry) external nonReentrant checkAccountIsSet {
        require(msg.sender == adminByActionType[actionType], HyperCoreSubAccount__Unauthorized());
        require(expiry <= MAX_SESSION_EXPIRATION_TIME, HyperCoreSubAccount__InvalidSessionExpiry());
        sessionExpiryByActionType[actionType] = expiry;

        emit SessionExpirySet(actionType, expiry);
    }

    /**
     * @notice Main entry point for executing actions on this sub-account.
     * @dev Can be called via Account contract (execute/executeOwner) or directly by the per-action authorized sender.
     *      When called via Account, `_accountSender` is the original caller (owner/agent).
     *
     *      Two execution paths exist based on `_isExecuteOwner`:
     *      - Owner path (_isExecuteOwner=true): For admin operations (SET_PENDING_ADMIN, SET_SKIP_SESSION_SIGNATURE,
     *        SET_AUTHORIZED_SENDER). Only callable via Account.executeOwner(). Allows the Account owner to configure
     *        action type settings only while `adminByActionType[actionType]` is unset or equals the owner.
     *      - Execute path (_isExecuteOwner=false): For CoreWriter operations (bridging, trading, staking, etc.).
     *        Only authorized sender (or Account owner/agents if none set) can execute.
     *        Requires session signature unless `skipSessionSignature[actionType]` is true.
     *
     * @param _accountSender The original sender from Account contract (ignored if called directly).
     * @param _token The token sent to this contract via Account.execute() or Account.executeOwner(),
     *        when msg.sender is `account`. address(0) for native token.
     * @param _amount The amount of the token sent to this contract via Account.execute() or Account.executeOwner(),
     *        when msg.sender is `account`.
     * @param _data Encoded action data. For owner path: (OwnerAction, ownerActionData).
     *              For execute path: (Action, signature).
     * @param _isExecuteOwner True if called via Account.executeOwner(), false otherwise.
     */
    function execute(
        address _accountSender,
        address _token,
        uint256 _amount,
        bytes calldata _data,
        bool _isExecuteOwner
    ) external nonReentrant checkAccountIsSet {
        bool isAccountSender = msg.sender == account;
        // If msg.sender is `account`, we can trust that `_accountSender` is its msg.sender
        address accountSender = isAccountSender ? _accountSender : msg.sender;
        // WARNING: If msg.sender is not account, no Guardian module's checks will be performed.
        // This is intentional, since Guardian modules are a property of Account.
        // If Guardian module checks are required,
        // it is assumed that those are made by msg.sender before calling this function.
        // msg.sender is assumed to be the authorized sender for its respective action type,
        // hence a trusted role with sufficient internal security checks.

        if (_isExecuteOwner) {
            // Only `account` can call this execution path
            require(isAccountSender, HyperCoreSubAccount__NotAccount());
            // `Account.executeOwner()` is being called
            (OwnerAction memory ownerAction, bytes memory ownerActionData) = abi.decode(_data, (OwnerAction, bytes));

            // None of the owner restricted actions need to receive tokens
            // via Account.executeOwner() calls, since no token balances
            // are needed to execute them.
            _requireZeroAmount(_amount);

            if (ownerAction.actionType == OwnerActionType.SET_PENDING_ADMIN_BY_ACTION_TYPE) {
                (address pendingAdmin, ExecuteActionType actionType) =
                    abi.decode(ownerActionData, (address, ExecuteActionType));

                // Validate that `accountSender` is authorized to
                // set the pending admin for this action type
                _validateAdminForActionType(actionType, accountSender, isAccountSender);

                // `pendingAdmin` cannot be the same as the current admin
                require(pendingAdmin != adminByActionType[actionType], HyperCoreSubAccount__InvalidParameter());

                pendingAdminByActionType[actionType] = pendingAdmin;

                // WARNING: Once `pendingAdmin` accepts the admin role,
                // there is no way to force them to revoke it,
                // which could lead to permanent freeze or loss of funds.
                // Therefore, any `pendingAdmin` is assumned to be a trusted external account,
                // with the ability to self-revoke safely.

                emit PendingAdminSet(actionType, pendingAdmin);
            } else if (ownerAction.actionType == OwnerActionType.SET_SKIP_SESSION_SIGNATURE_BY_ACTION_TYPE) {
                (ExecuteActionType actionType, bool skip) = abi.decode(ownerActionData, (ExecuteActionType, bool));

                // Validate that `accountSender` is authorized to
                // set the skip session signature for this action type
                // WARNING: Skipping session signatures means that the owner's
                // session account cannot validate/authorize execution of this action type,
                // hence the admin for this action type is a trusted role.
                _validateAdminForActionType(actionType, accountSender, isAccountSender);

                skipSessionSignature[actionType] = skip;

                emit SkipSessionSignatureSet(actionType, skip);
            } else if (ownerAction.actionType == OwnerActionType.SET_AUTHORIZED_SENDER_BY_ACTION_TYPE) {
                (ExecuteActionType actionType, address authorizedSender) =
                    abi.decode(ownerActionData, (ExecuteActionType, address));

                // Validate that `accountSender` is authorized to
                // set the authorized sender for this action type
                // WARNING: `authorizedSender` has the ability to execute its actionType,
                // hence it is assumed to be trusted and with sufficient internal security checks.
                _validateAdminForActionType(actionType, accountSender, isAccountSender);

                authorizedSenderByActionType[actionType] = authorizedSender;

                emit AuthorizedSenderSet(actionType, authorizedSender);
            } else if (ownerAction.actionType == OwnerActionType.SET_SESSION_EXPIRY_BY_ACTION_TYPE) {
                (ExecuteActionType actionType, uint256 expiry) =
                    abi.decode(ownerActionData, (ExecuteActionType, uint256));

                // Validate that `accountSender` is authorized to
                // set the session expiry for this action type
                // WARNING: Setting the session expiry can lead to DoS attacks or
                // long windows for session signatures to be valid.
                // Hence the admin for this action type
                // is a trusted role.
                _validateAdminForActionType(actionType, accountSender, isAccountSender);

                require(expiry <= MAX_SESSION_EXPIRATION_TIME, HyperCoreSubAccount__InvalidSessionExpiry());

                sessionExpiryByActionType[actionType] = expiry;

                emit SessionExpirySet(actionType, expiry);
            } else if (ownerAction.actionType == OwnerActionType.SEND_TO_ACCOUNT) {
                // SEND_TO_ACCOUNT via executeOwner path does NOT validate admin.
                // Owner can always withdraw funds to Account regardless of any admin delegation.
                // This prevents a malicious SEND_TO_ACCOUNT admin from holding funds hostage.
                _sendToAccount(ownerActionData);
            }
        } else {
            // Execute action - can be called via Account or directly by authorized sender
            (Action memory action, bytes memory signature) = abi.decode(_data, (Action, bytes));

            // Validate that `accountSender` is authorized to execute this action type
            // If authorized sender is set, only that address can execute (via Account or directly)
            // If no authorized sender is set, must go through Account (owner/agents)
            _validateAuthorizedSenderForActionType(action.actionType, accountSender, isAccountSender);

            // If the action type is set to skip session signature, skip the signature validation
            // WARNING: Skipping session signatures removes explicit authorization from the owner
            // via the session account's signature,
            // hence compromised agents would be able to execute certain actions that lead to loss of funds.
            // For example, briding from EVM to HyperCore spot balance, where a malicious API wallet
            // would trade into unwanted/illiquid spot tokens.
            // The threat model assumes that each action's admin is aware of these risks,
            // and that agents are trusted to not execute actions that lead to loss of funds.
            // This can be mitigated via the per-sub account and per-token allowance in `Account`.
            if (!skipSessionSignature[action.actionType]) {
                bytes32 structHash = keccak256(
                    abi.encode(
                        ACTION_TYPE_HASH,
                        uint256(action.actionType),
                        keccak256(action.actionData),
                        action.nonce,
                        action.sessionEpochId
                    )
                );
                _validateSignature(action.actionType, action.nonce, action.sessionEpochId, structHash, signature);
            }

            // All actions except BRIDGE_TO_CORE require zero input amount.
            // BRIDGE_TO_CORE may receive tokens from Account.execute()
            if (action.actionType != ExecuteActionType.BRIDGE_TO_CORE) {
                _requireZeroAmount(_amount);
            }

            if (action.actionType == ExecuteActionType.ADD_API_WALLET) {
                // Add or remove API wallet from HyperCore
                _addApiWallet(action.actionData);
            } else if (action.actionType == ExecuteActionType.APPROVE_BUILDER_FEE) {
                // Approve builder codes fee for HyperCore
                _approveBuilderFee(action.actionData);
            } else if (action.actionType == ExecuteActionType.BRIDGE_TO_CORE) {
                // Bridge tokens from EVM to HyperCore spot balance
                if (isAccountSender) {
                    (address token, uint256 evmAmount) = abi.decode(action.actionData, (address, uint256));
                    require(_amount == evmAmount, HyperCoreSubAccount__InvalidParameter());
                    require(_token == token, HyperCoreSubAccount__InvalidParameter());
                }
                _bridge(action.actionData, false);
            } else if (action.actionType == ExecuteActionType.BRIDGE_TO_EVM) {
                // Bridge tokens from HyperCore spot balance to EVM
                _bridge(action.actionData, true);
            } else if (action.actionType == ExecuteActionType.BRIDGE_PERPS_SPOT) {
                // Transfer USDC between perps/spot
                _transferUsdClass(action.actionData);
            } else if (action.actionType == ExecuteActionType.CANCEL_ORDER_BY_CLOID) {
                // Cancel order by client order ID
                _cancelOrder(action.actionData, true);
            } else if (action.actionType == ExecuteActionType.CANCEL_ORDER_BY_OID) {
                // Cancel order by HyperCore order ID
                _cancelOrder(action.actionData, false);
            } else if (action.actionType == ExecuteActionType.PLACE_LIMIT_ORDER) {
                // Place limit order (GTC/IOC/ALO)
                _placeLimitOrder(action.actionData);
            } else if (action.actionType == ExecuteActionType.SEND_ASSET) {
                // Transfers between HIP-3 DEX balances, perps and/or spot balance on HyperCore
                _sendAsset(action.actionData);
            } else if (action.actionType == ExecuteActionType.SEND_HYPE_TO_EXTERNAL_RECIPIENT) {
                // Send HYPE to a pre-approved immutable recipient's spot balance
                _sendHypeToExternalRecipient(action.actionData);
            } else if (action.actionType == ExecuteActionType.STAKING_DELEGATE) {
                // Delegate/undelegate HYPE in staking balance
                _stakingDelegate(action.actionData);
            } else if (action.actionType == ExecuteActionType.STAKING_DEPOSIT) {
                // Deposit HYPE from spot balance into staking balance
                _stakingDepositOrWithdraw(action.actionData, true);
            } else if (action.actionType == ExecuteActionType.STAKING_WITHDRAW) {
                // Withdraw HYPE from staking balance into spot balance
                // subject to a 7 days lockup period
                _stakingDepositOrWithdraw(action.actionData, false);
            } else if (action.actionType == ExecuteActionType.VAULT_TRANSFER) {
                // Deposit/withdraw USDC on perps vaults (e.g. HLP)
                _vaultTransfer(action.actionData);
            } else if (action.actionType == ExecuteActionType.SEND_TO_ACCOUNT) {
                // Return tokens to parent Account
                _sendToAccount(action.actionData);
            } else if (action.actionType == ExecuteActionType.BORROW_LEND) {
                // Borrow or lend tokens on HyperCore (BLP)
                _borrowLend(action.actionData);
            }
        }
    }

    /**
     *
     *  PRIVATE FUNCTIONS
     *
     */
    function _addApiWallet(bytes memory actionData) private {
        (address apiWallet, string memory name) = abi.decode(actionData, (address, string));
        // API wallets should not have any state on HyperCore
        // address(0) is allowed as it delists the API wallet by name
        if (apiWallet != address(0)) {
            require(!PrecompileLib.coreUserExists(apiWallet), HyperCoreSubAccount__InvalidApiWallet());
        }
        // WARNING: API wallets can expire, there is no guarantee that `apiWallet` is valid,
        // or that the API wallet is already listed for `name`.

        // WARNING: API wallets, once listed, can execute arbitrary agent-signable L1 actions on
        // HyperCore. This is broader than simple spot/perps trading. Depending on current
        // Hyperliquid rules, a compromised API wallet can also trigger slash-capable flows such
        // as HIP-3 deployer registration or quote-asset enablement if the sub-account has enough
        // stake. The threat model therefore assumes API wallets are trusted, or that protocol-level
        // stake caps keep managed stake below the smallest slash-capable threshold.
        _beforeCoreWriter();
        CoreWriterLib.addApiWallet(apiWallet, name);
    }

    function _bridge(bytes memory actionData, bool toEvm) private {
        _beforeCoreWriter();
        if (toEvm) {
            (address token, uint64 amountWei) = abi.decode(actionData, (address, uint64));
            uint64 tokenIndex = _getTokenIndex(token);
            _requireNonZeroAmount(amountWei);
            uint256 evmAmount = HLConversions.weiToEvm(tokenIndex, amountWei);
            // Prevent losses by ensuring there are no rounding errors
            require(amountWei == HLConversions.evmToWei(tokenIndex, evmAmount), HyperCoreSubAccount__InvalidParameter());
            CoreWriterLib.bridgeToEvm(tokenIndex, amountWei, false);
        } else {
            (address token, uint256 evmAmount) = abi.decode(actionData, (address, uint256));
            uint64 tokenIndex = _getTokenIndex(token);
            _requireNonZeroAmount(evmAmount);
            uint64 coreAmount = HLConversions.evmToWei(tokenIndex, evmAmount);
            // Prevent losses by ensuring there are no rounding errors
            require(
                evmAmount == HLConversions.weiToEvm(tokenIndex, coreAmount), HyperCoreSubAccount__InvalidParameter()
            );
            CoreWriterLib.bridgeToCore(tokenIndex, evmAmount);
        }
    }

    function _approveBuilderFee(bytes memory actionData) private {
        (uint64 maxFeeRate, address builder) = abi.decode(actionData, (uint64, address));
        _requireNonZeroAddress(builder);
        _beforeCoreWriter();
        CoreWriterLib.approveBuilderFee(maxFeeRate, builder);
    }

    function _transferUsdClass(bytes memory actionData) private {
        (uint64 ntl, bool toPerp) = abi.decode(actionData, (uint64, bool));
        _requireNonZeroAmount(ntl);
        _beforeCoreWriter();
        CoreWriterLib.transferUsdClass(ntl, toPerp);
    }

    function _vaultTransfer(bytes memory actionData) private {
        (address vault, bool isDeposit, uint64 usdAmount) = abi.decode(actionData, (address, bool, uint64));
        _requireNonZeroAddress(vault);
        _requireNonZeroAmount(usdAmount);
        _beforeCoreWriter();
        CoreWriterLib.vaultTransfer(vault, isDeposit, usdAmount);
    }

    function _placeLimitOrder(bytes memory actionData) private {
        (uint32 asset, bool isBuy, uint64 limitPx, uint64 sz, bool reduceOnly, uint8 encodedTif, uint128 cloid) =
            abi.decode(actionData, (uint32, bool, uint64, uint64, bool, uint8, uint128));
        require(limitPx > 0, HyperCoreSubAccount__InvalidParameter());
        require(sz > 0, HyperCoreSubAccount__InvalidParameter());
        require(
            encodedTif == HLConstants.LIMIT_ORDER_TIF_ALO || encodedTif == HLConstants.LIMIT_ORDER_TIF_GTC
                || encodedTif == HLConstants.LIMIT_ORDER_TIF_IOC,
            HyperCoreSubAccount__InvalidParameter()
        );
        require(cloid > 0, HyperCoreSubAccount__InvalidParameter());
        _beforeCoreWriter();
        CoreWriterLib.placeLimitOrder(asset, isBuy, limitPx, sz, reduceOnly, encodedTif, cloid);
    }

    function _cancelOrder(bytes memory actionData, bool byCloid) private {
        _beforeCoreWriter();
        if (byCloid) {
            (uint32 asset, uint128 cloid) = abi.decode(actionData, (uint32, uint128));
            require(cloid > 0, HyperCoreSubAccount__InvalidParameter());
            CoreWriterLib.cancelOrderByCloid(asset, cloid);
        } else {
            (uint32 asset, uint64 orderId) = abi.decode(actionData, (uint32, uint64));
            CoreWriterLib.cancelOrderByOrderId(asset, orderId);
        }
    }

    function _sendHypeToExternalRecipient(bytes memory actionData) private {
        (uint64 amountWei) = abi.decode(actionData, (uint64));
        _requireNonZeroAmount(amountWei);
        _requireNonZeroAddress(externalSpotHypeRecipient);
        _beforeCoreWriter();
        CoreWriterLib.sendAsset(
            externalSpotHypeRecipient,
            address(0),
            HLConstants.SPOT_DEX,
            HLConstants.SPOT_DEX,
            HLConstants.hypeTokenIndex(),
            amountWei
        );
    }

    function _stakingDelegate(bytes memory actionData) private {
        (address validator, uint64 amountWei, bool undelegate) = abi.decode(actionData, (address, uint64, bool));
        _requireNonZeroAmount(amountWei);
        _requireNonZeroAddress(validator);
        _beforeCoreWriter();
        CoreWriterLib.delegateToken(validator, amountWei, undelegate);
    }

    function _stakingDepositOrWithdraw(bytes memory actionData, bool isDeposit) private {
        (uint64 amountWei) = abi.decode(actionData, (uint64));
        _requireNonZeroAmount(amountWei);
        _beforeCoreWriter();
        if (isDeposit) {
            CoreWriterLib.depositStake(amountWei);
        } else {
            CoreWriterLib.withdrawStake(amountWei);
        }
    }

    function _sendAsset(bytes memory actionData) private {
        (uint32 sourceDex, uint32 destinationDex, address token, uint64 amountWei) =
            abi.decode(actionData, (uint32, uint32, address, uint64));
        // `sourceDex` or `destinationDex` can be 0, which is
        // the id of Hyperliquid's main perps balance
        require(sourceDex != destinationDex, HyperCoreSubAccount__InvalidParameter());
        // WARNING: `token` must be the same quote token in `sourceDex` and `destinationDex`
        _requireNonZeroAmount(amountWei);
        _beforeCoreWriter();
        CoreWriterLib.sendAsset(address(this), address(0), sourceDex, destinationDex, _getTokenIndex(token), amountWei);
    }

    function _requireCoreUserExists(address user) private view {
        require(PrecompileLib.coreUserExists(user), HyperCoreSubAccount__HyperCoreAccountNotActivated());
    }

    function _beforeCoreWriter() private {
        _requireCoreUserExists(address(this));
        // WARNING: This ensures that only one CoreWriter action
        // can be executed per block.
        // There can be DoS attacks in case different actions have different
        // authorized senders, where a malicious one could front-run another's
        // action every block. Authorized senders are entrusted to have sufficient
        // internal checks or rate limits to ensure this attack does not occur in practice.
        require(block.number > lastBlockInteractionCheckpoint, HyperCoreSubAccount__CoreWriterOneBlockDelay());

        lastBlockInteractionCheckpoint = block.number;
    }

    function _requireNonZeroAmount(uint256 amount) private pure {
        require(amount > 0, HyperCoreSubAccount__ZeroAmount());
    }

    function _requireZeroAmount(uint256 amount) private pure {
        require(amount == 0, HyperCoreSubAccount__NonZeroAmount());
    }

    function _requireNonZeroAddress(address addr) private pure {
        require(addr != address(0), HyperCoreSubAccount__ZeroAddress());
    }

    function _validateAdminForActionType(ExecuteActionType actionType, address accountSender, bool isAccountSender)
        private
        view
    {
        address admin = adminByActionType[actionType];
        // If admin is set, only that admin can configure
        // If admin is not set, must go through Account (owner via executeOwner)
        require(admin == accountSender || (admin == address(0) && isAccountSender), HyperCoreSubAccount__Unauthorized());
    }

    function _validateAuthorizedSenderForActionType(
        ExecuteActionType actionType,
        address accountSender,
        bool isAccountSender
    ) private view {
        address authorizedSender = authorizedSenderByActionType[actionType];
        // If authorized sender is set, only that address can execute
        // If authorized sender is not set, must go through Account (owner/agents)
        require(
            authorizedSender == accountSender || (authorizedSender == address(0) && isAccountSender),
            HyperCoreSubAccount__Unauthorized()
        );
    }

    function _getTokenIndex(address token) private view returns (uint64) {
        // address(0) is interpreted as HYPE
        return token == address(0) ? HLConstants.hypeTokenIndex() : PrecompileLib.getTokenIndex(token);
    }

    function _validateSignature(
        ExecuteActionType actionType,
        uint256 claimedNonce,
        uint256 claimedSessionEpochId,
        bytes32 structHash,
        bytes memory signature
    ) private {
        // This nonce is local to HyperCoreSubAccount; Account.invalidateSessionNonce() does not change it.
        // Outstanding sub-account signatures are invalidated by Account.endSession(), which clears sessionAccount.
        require(claimedNonce == nonce, HyperCoreSubAccount__InvalidSession());

        bytes32 hash = _hashTypedDataV4(structHash);

        nonce++;

        // Session account must be set,
        // to validate the signature
        address sessionAccount = IAccount(account).sessionAccount();
        require(sessionAccount != address(0), HyperCoreSubAccount__InvalidSession());

        // Bind signatures to the current session epoch to prevent replay if the same sessionAccount is reused.
        require(claimedSessionEpochId == IAccount(account).sessionEpochId(), HyperCoreSubAccount__InvalidSession());

        // Check that the session is not expired
        // Use per-action expiry if set, otherwise use DEFAULT_SESSION_EXPIRATION_TIME
        uint256 expiry = sessionExpiryByActionType[actionType];
        if (expiry == 0) {
            expiry = DEFAULT_SESSION_EXPIRATION_TIME;
        }
        require(block.timestamp <= IAccount(account).sessionStartAt() + expiry, HyperCoreSubAccount__InvalidSession());

        if (sessionAccount.code.length == 0) {
            require(ECDSA.recover(hash, signature) == sessionAccount, HyperCoreSubAccount__InvalidSignature());
        } else {
            require(
                IERC1271(sessionAccount).isValidSignature(hash, signature) == IERC1271.isValidSignature.selector,
                HyperCoreSubAccount__InvalidSignature()
            );
        }
    }

    function _sendToAccount(bytes memory actionData) private {
        // Return tokens to parent Account
        (address token, uint256 amount) = abi.decode(actionData, (address, uint256));

        _requireNonZeroAmount(amount);

        // Send token amount to `account`
        if (token == address(0)) {
            payable(account).sendValue(amount);
        } else {
            ERC20(token).safeTransfer(account, amount);
        }

        emit SentToAccount(token, amount);
    }

    function _borrowLend(bytes memory actionData) private {
        (uint8 encodedOperation, address token, uint64 amountWei) = abi.decode(actionData, (uint8, address, uint64));
        require(
            encodedOperation == HLConstants.BLP_SUPPLY || encodedOperation == HLConstants.BLP_WITHDRAW,
            HyperCoreSubAccount__InvalidParameter()
        );
        // Zero amount is allowed, which deposits/withdraws the full balance.
        _beforeCoreWriter();
        CoreWriterLib.borrowLend(encodedOperation, _getTokenIndex(token), amountWei);
    }
}
