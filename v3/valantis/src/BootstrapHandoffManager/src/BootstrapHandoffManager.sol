// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

import {IBootstrapAccount} from "./interfaces/IBootstrapAccount.sol";
import {IAccount} from "./interfaces/IAccount.sol";
import {AccountFactory} from "./factories/AccountFactory.sol";

/**
 * @title BootstrapHandoffManager
 * @notice Temporarily owns clean inventory Account instances and hands each one to a final user exactly once.
 * @dev Core trust boundaries and assumptions:
 * - This is a bootstrap-only onboarding helper, not a recovery mechanism and not a generic transferOwnership path.
 * - Intended only for pre-deployed inventory Accounts whose `owner()` and `bootstrapAuthority()` are both this
 *   contract at registration and handoff time.
 * - The final recipient signs an exact EIP-712 handoff intent; authorized deployers may only relay that exact payload.
 * - Inventory accounts are expected to remain unfunded and free of user approvals before handoff.
 * - During handoff, this contract pulls user-approved ERC20 funds directly to the canonical Agent and Account, then
 *   optionally installs the user-signed execution agent and session using Account's normal owner paths before
 *   consuming the one-time bootstrap transfer.
 */
contract BootstrapHandoffManager is Ownable2Step, ReentrancyGuardTransient, EIP712 {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;
    using Address for address payable;

    string public constant NAME = "BootstrapHandoffManager";
    string public constant VERSION = "1.0.0";

    bytes32 private constant HANDOFF_INTENT_TYPE_HASH = keccak256(
        "HandoffIntent(address account,address newOwner,address token,uint256 amount,uint256 fee,address sessionAccount,address executionAgent,uint256 nonce,uint256 deadline)"
    );

    /**
     *
     *  CUSTOM ERRORS
     *
     */
    error BootstrapHandoffManager__ZeroAddress();
    error BootstrapHandoffManager__NotAuthorizedDeployer();
    error BootstrapHandoffManager__InventoryAlreadyRegistered();
    error BootstrapHandoffManager__InventoryNotRegistered();
    error BootstrapHandoffManager__InventoryAlreadyHandedOff();
    error BootstrapHandoffManager__AccountNotDeployed();
    error BootstrapHandoffManager__InvalidAccountState();
    error BootstrapHandoffManager__ExpiredDeadline();
    error BootstrapHandoffManager__InvalidNonce();
    error BootstrapHandoffManager__InvalidSignature();
    error BootstrapHandoffManager__InvalidFundingAmount();
    error BootstrapHandoffManager__UnsupportedToken();
    error BootstrapHandoffManager__ContractSignerUnsupported();

    /**
     *
     *  EVENTS
     *
     */
    event DeployerAuthorized(address indexed deployer);
    event DeployerUnauthorized(address indexed deployer);
    event InventoryAccountRegistered(address indexed account);
    event InventoryAccountUnregistered(address indexed account);
    event InventoryAccountHandedOff(
        address indexed account,
        address indexed newOwner,
        address indexed token,
        uint256 amount,
        uint256 fee,
        address sessionAccount,
        address executionAgent
    );
    event Swept(address indexed token, address indexed to, uint256 amount);

    /**
     *
     *  STRUCTS
     *
     */
    struct InventoryRecord {
        /// @dev True while the account is active inventory and eligible for handoff.
        bool registered;
        /// @dev True once bootstrap ownership has been transferred to a final user.
        bool handedOff;
    }

    struct HandoffIntent {
        address account;
        address newOwner;
        address token;
        uint256 amount;
        uint256 fee;
        address sessionAccount;
        address executionAgent;
        uint256 nonce;
        uint256 deadline;
    }

    /**
     *
     *  IMMUTABLES
     *
     */

    /// @notice Canonical AccountFactory used to verify that registered inventory accounts were factory deployed.
    AccountFactory public immutable accountFactory;

    /// @notice Canonical Agent used as the bootstrap fee recipient.
    address public immutable agent;

    /**
     *
     *  STORAGE
     *
     */

    /// @notice Addresses allowed to perform inventory registration and handoff operations.
    mapping(address => bool) public isAuthorizedDeployer;

    /// @dev Inventory registration state keyed by account address.
    mapping(address => InventoryRecord) public inventoryByAccount;

    /// @notice EIP-712 replay protection scoped per final owner EOA.
    mapping(address => uint256) public nonces;

    /// @dev Enumerates currently registered inventory accounts that have not yet been handed off.
    EnumerableSet.AddressSet private _registeredAccounts;

    /**
     *
     *  MODIFIERS
     *
     */

    modifier onlyAuthorizedDeployer() {
        require(isAuthorizedDeployer[msg.sender], BootstrapHandoffManager__NotAuthorizedDeployer());
        _;
    }

    /**
     *
     *  CONSTRUCTOR
     *
     */

    /**
     * @notice Initializes the bootstrap handoff manager.
     * @param initialOwner Owner that controls inventory registration and handoff operations.
     * @param accountFactory_ Canonical AccountFactory expected to have deployed inventory Accounts.
     * @param agent_ Canonical Agent used as fee recipient during handoff.
     */
    constructor(address initialOwner, address accountFactory_, address agent_)
        Ownable(initialOwner)
        EIP712(NAME, VERSION)
    {
        require(accountFactory_ != address(0), BootstrapHandoffManager__ZeroAddress());
        require(agent_ != address(0), BootstrapHandoffManager__ZeroAddress());
        accountFactory = AccountFactory(accountFactory_);
        agent = agent_;
    }

    /**
     *
     *  VIEW FUNCTIONS
     *
     */

    /**
     * @notice Returns all currently registered inventory Accounts.
     * @dev WARNING: This function is intended for off-chain use only.
     *      Calling this on-chain may lead to DoS if the inventory set grows large.
     */
    function getRegisteredInventoryAccounts() external view returns (address[] memory) {
        return _registeredAccounts.values();
    }

    /**
     * @notice Returns whether an Account is currently active registered inventory.
     * @param account Inventory Account candidate.
     */
    function isRegisteredInventoryAccount(address account) external view returns (bool) {
        return _registeredAccounts.contains(account);
    }

    /**
     * @notice Returns the number of currently registered inventory Accounts.
     */
    function getRegisteredInventoryAccountCount() external view returns (uint256) {
        return _registeredAccounts.length();
    }

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */

    receive() external payable {}

    /**
     * @notice Authorizes a deployer/keeper to perform inventory operations.
     * @dev The owner is expected to be a multisig or governance admin that manages the keeper allowlist.
     * @param deployer Deployer/keeper address to authorize.
     */
    function authorizeDeployer(address deployer) external onlyOwner {
        isAuthorizedDeployer[deployer] = true;
        emit DeployerAuthorized(deployer);
    }

    /**
     * @notice Removes a deployer/keeper from the inventory-operations allowlist.
     * @param deployer Deployer/keeper address to unauthorize.
     */
    function unauthorizeDeployer(address deployer) external onlyOwner {
        isAuthorizedDeployer[deployer] = false;
        emit DeployerUnauthorized(deployer);
    }

    /**
     * @notice Registers a clean inventory Account for future handoff.
     * @dev Reverts unless the account was deployed by the canonical AccountFactory and remains in clean bootstrap
     *      state: owned by this contract, bootstrap unused, no pending owner, no active recovery, no session,
     *      and no agents. Callable only by an authorized deployer/keeper.
     * @param account Inventory Account address.
     */
    function registerInventoryAccount(address account) external onlyAuthorizedDeployer nonReentrant {
        require(account != address(0), BootstrapHandoffManager__ZeroAddress());

        InventoryRecord storage record = inventoryByAccount[account];
        require(!record.registered, BootstrapHandoffManager__InventoryAlreadyRegistered());
        require(!record.handedOff, BootstrapHandoffManager__InventoryAlreadyHandedOff());
        require(accountFactory.isAccountDeployed(account), BootstrapHandoffManager__AccountNotDeployed());
        require(_isBootstrapClean(IBootstrapAccount(payable(account))), BootstrapHandoffManager__InvalidAccountState());

        record.registered = true;
        _registeredAccounts.add(account);

        emit InventoryAccountRegistered(account);
    }

    /**
     * @notice Removes an inventory Account from the active registry before handoff.
     * @dev Cannot be used once the account has already been handed off. Callable only by an authorized
     *      deployer/keeper.
     * @param account Inventory Account address.
     */
    function unregisterInventoryAccount(address account) external onlyAuthorizedDeployer nonReentrant {
        InventoryRecord storage record = inventoryByAccount[account];
        require(record.registered, BootstrapHandoffManager__InventoryNotRegistered());
        require(!record.handedOff, BootstrapHandoffManager__InventoryAlreadyHandedOff());

        delete record.registered;
        _registeredAccounts.remove(account);

        emit InventoryAccountUnregistered(account);
    }

    /**
     * @notice Verifies a user-signed handoff intent, funds the Account, and transfers bootstrap ownership once.
     * @dev Callable only by an authorized deployer/keeper that relays the exact payload signed by `intent.newOwner`.
     *      Revalidates clean bootstrap state immediately before any mutation to avoid handing off accounts that were
     *      dirtied after registration.
     * @param intent Exact user-approved handoff payload.
     * @param signature EIP-712 signature from `intent.newOwner`.
     */
    function handoffInventoryAccount(HandoffIntent calldata intent, bytes calldata signature)
        external
        onlyAuthorizedDeployer
        nonReentrant
    {
        require(intent.newOwner != address(0), BootstrapHandoffManager__ZeroAddress());
        require(block.timestamp <= intent.deadline, BootstrapHandoffManager__ExpiredDeadline());
        require(intent.newOwner.code.length == 0, BootstrapHandoffManager__ContractSignerUnsupported());
        require(intent.nonce == nonces[intent.newOwner], BootstrapHandoffManager__InvalidNonce());
        _requireValidFunding(intent);

        InventoryRecord storage record = inventoryByAccount[intent.account];
        require(record.registered, BootstrapHandoffManager__InventoryNotRegistered());
        require(!record.handedOff, BootstrapHandoffManager__InventoryAlreadyHandedOff());
        require(accountFactory.isAccountDeployed(intent.account), BootstrapHandoffManager__AccountNotDeployed());

        IBootstrapAccount bootstrapAccount = IBootstrapAccount(payable(intent.account));
        require(_isBootstrapClean(bootstrapAccount), BootstrapHandoffManager__InvalidAccountState());
        _validateSignature(intent, signature);

        nonces[intent.newOwner] = intent.nonce + 1;

        if (intent.amount > 0) {
            IERC20 token = IERC20(intent.token);
            _pullTokenExact(token, intent.newOwner, agent, intent.fee);
            _pullTokenExact(token, intent.newOwner, intent.account, intent.amount - intent.fee);
        }

        _addExecutionAgentIfNeeded(bootstrapAccount, intent.executionAgent);
        _startSessionIfNeeded(bootstrapAccount, intent.sessionAccount);
        bootstrapAccount.bootstrapTransferOwnershipOnce(intent.newOwner);

        record.registered = false;
        record.handedOff = true;
        _registeredAccounts.remove(intent.account);

        emit InventoryAccountHandedOff(
            intent.account,
            intent.newOwner,
            intent.token,
            intent.amount,
            intent.fee,
            intent.sessionAccount,
            intent.executionAgent
        );
    }

    /**
     * @notice Sweeps unexpected balances held by this contract.
     * @dev Intended only for accidental token or native transfers. Zero amount is a no-op.
     * @param token Token to sweep (address(0) for native token).
     * @param to Recipient address.
     * @param amount Amount to sweep.
     */
    function sweep(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0), BootstrapHandoffManager__ZeroAddress());

        if (amount == 0) return;

        if (token == address(0)) {
            payable(to).sendValue(amount);
        } else {
            IERC20(token).safeTransfer(to, amount);
        }

        emit Swept(token, to, amount);
    }

    /**
     *
     *  INTERNAL FUNCTIONS
     *
     */

    /**
     * @notice Returns whether an Account remains in the clean bootstrap posture required for inventory management.
     * @param account Inventory Account candidate.
     * @return True if the account is still bootstrap-owned, unused, and free of session/agent/recovery state.
     */
    function _isBootstrapClean(IBootstrapAccount account) internal view returns (bool) {
        if (account.owner() != address(this)) return false;
        if (account.bootstrapAuthority() != address(this)) return false;
        if (account.bootstrapUsed()) return false;
        if (account.pendingOwner() != address(0)) return false;
        if (account.recoveryProposedTo() != address(0)) return false;
        if (account.sessionAccount() != address(0)) return false;
        if (account.getAgents().length != 0) return false;
        return true;
    }

    function _addExecutionAgentIfNeeded(IBootstrapAccount account, address executionAgent) internal {
        if (executionAgent == address(0)) return;

        IAccount.AddAgent memory addAgentParams = IAccount.AddAgent({
            agent: executionAgent,
            authorizedSender: address(0),
            maxFee: 0,
            feeToken: address(0),
            nonce: account.nonce(),
            deadline: block.timestamp
        });
        account.addAgent(addAgentParams, "", 0);
    }

    function _startSessionIfNeeded(IBootstrapAccount account, address sessionAccount) internal {
        if (sessionAccount == address(0)) return;

        IAccount.StartSession memory startSessionParams = IAccount.StartSession({
            sessionAccount: sessionAccount,
            authorizedSender: address(0),
            maxFee: 0,
            feeToken: address(0),
            nonce: account.nonce(),
            deadline: block.timestamp
        });
        account.startSession(startSessionParams, "", 0);
    }

    function _pullTokenExact(IERC20 token, address from, address to, uint256 amount) internal {
        if (amount == 0) return;

        uint256 balanceBefore = token.balanceOf(to);
        token.safeTransferFrom(from, to, amount);
        uint256 balanceAfter = token.balanceOf(to);
        require(balanceAfter - balanceBefore == amount, BootstrapHandoffManager__UnsupportedToken());
    }

    function _requireValidFunding(HandoffIntent calldata intent) internal pure {
        if (intent.amount == 0) {
            require(intent.fee == 0, BootstrapHandoffManager__InvalidFundingAmount());
            return;
        }

        require(intent.token != address(0), BootstrapHandoffManager__ZeroAddress());
        require(intent.fee < intent.amount, BootstrapHandoffManager__InvalidFundingAmount());
    }

    function _validateSignature(HandoffIntent calldata intent, bytes calldata signature) internal view {
        bytes32 structHash = keccak256(
            abi.encode(
                HANDOFF_INTENT_TYPE_HASH,
                intent.account,
                intent.newOwner,
                intent.token,
                intent.amount,
                intent.fee,
                intent.sessionAccount,
                intent.executionAgent,
                intent.nonce,
                intent.deadline
            )
        );
        bytes32 digest = _hashTypedDataV4(structHash);
        (address recoveredSigner, ECDSA.RecoverError err,) = ECDSA.tryRecover(digest, signature);

        require(
            err == ECDSA.RecoverError.NoError && recoveredSigner == intent.newOwner,
            BootstrapHandoffManager__InvalidSignature()
        );
    }
}
