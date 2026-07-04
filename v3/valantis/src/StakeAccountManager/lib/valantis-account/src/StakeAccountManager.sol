// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {
    AccessControlDefaultAdminRules
} from "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {PrecompileLib} from "@hyper-evm-lib/src/PrecompileLib.sol";
import {HLConstants} from "@hyper-evm-lib/src/common/HLConstants.sol";

import {IStakeAccountManager} from "./interfaces/IStakeAccountManager.sol";
import {AccountFactory} from "./factories/AccountFactory.sol";
import {HyperCoreSubAccountFactory} from "./factories/HyperCoreSubAccountFactory.sol";
import {HyperCoreSubAccount} from "./HyperCoreSubAccount.sol";

/**
 * @title StakeAccountManager
 * @notice Coordinates stHYPE-managed staking lifecycle for HyperCoreSubAccount instances.
 * @dev Core trust boundaries and assumptions:
 * - Intended product posture is trading-enabled managed staking: users keep stHYPE backed by managed HYPE while the
 *   managed sub-account can retain HyperCore trading utility and fee-tier benefits during `ACTIVE` / `SHUTDOWN_NOTICE`.
 * - Managed HYPE is expected to flow between HyperCore spot/staking balances and immutable `lstRecipient`.
 * - `OPERATOR_ROLE` executes normal lifecycle actions.
 * - `ORACLE_REPORTER_ROLE` publishes wallet-cleanup and flat-state attestations. The constructor rejects deployments
 *   that assign the same nonzero address to both `OPERATOR_ROLE` and `ORACLE_REPORTER_ROLE` as a best-effort
 *   separation check; `DEFAULT_ADMIN_ROLE` can still grant overlapping roles post-deployment.
 * - `PROTOCOL_FEE_ROLE` executes protocol fee approval updates (`approveBuilderFee`).
 * - `WATCHDOG_ROLE` is an incident-response veto role. It can cancel a live `SHUTDOWN_NOTICE`, trigger emergency
 *   provisioning discard/recovery paths, and pause lifecycle-entry controls globally. Those actions are intended to be
 *   recoverable, but not all are self-reversible by the watchdog itself: `unpauseShutdownControls(...)` requires
 *   `PAUSER_ROLE` or `DEFAULT_ADMIN_ROLE`, and notice cancellation is available only before `SHUTDOWN_UNWIND` starts.
 * - `DEFAULT_ADMIN_ROLE` handles governance and shortfall synchronization, including exceptional-risk shortening of a
 *   live shutdown notice.
 * - All CoreWriter actions for a sub-account share a one-block pacing slot; misuse/compromise of
 *   `PROTOCOL_FEE_ROLE` can contend with lifecycle actions and degrade liveness.
 * - `DEFAULT_ADMIN_ROLE` can revoke compromised `PROTOCOL_FEE_ROLE` signers via AccessControl role management and
 *   bypass the builder-fee approval cooldown for emergency recovery.
 * - API wallet completeness and correct delisting sequencing are operational responsibilities, not enforced on-chain.
 * - HyperCore API-wallet ground truth (complete wallet-name inventory) is not queryable by EVM in this integration.
 *   This contract cannot independently prove inventory completeness or the absence of omitted wallets.
 *   `OPERATOR_ROLE` / reporter infrastructure are assumed to query HyperCore ground truth off-chain and preserve the
 *   exact wallet-name metadata needed to report cleanup and remove any temporarily installed trusted shutdown wallet.
 * - Hyperliquid API wallets are not limited to spot/perps trading; they can sign ordinary L1 actions for the
 *   sub-account except for the explicit user-signed subset (for example `tokenDelegate`, `cDeposit`, `cWithdraw`).
 *   If user-controlled API wallets remain enabled during `ACTIVE` or `SHUTDOWN_NOTICE`, they are materially trusted
 *   not to invoke slash-capable L1 flows on behalf of the managed sub-account.
 * - Multiple user-controlled API wallets are allowed by current product policy; this improves integration flexibility
 *   but does not reduce slash-risk because a single compromised wallet is already sufficient.
 * - API-wallet cleanup and flat-state checks during forced shutdown are reporter attestations; on-chain logic does not
 *   verify off-chain wallet inventory, open-order inventory, or full HyperCore risk state completeness.
 * - `DEFAULT_ADMIN_ROLE` is trusted to configure `trustedShutdownApiWallet` only when governance is satisfied with the
 *   signer custody and replay posture under current Hyperliquid nonce semantics. This contract does not prove that
 *   historical trusted-wallet payloads are non-replayable after wallet removal or later reuse.
 * - This contract enforces a configurable max staking cap as a prospective admission and provisioning control before
 *   managed accounts may release user API-wallet control. The cap starts unset (`0`) and must be configured by
 *   governance before first use. Current product policy is to set it above the current Hyperliquid Platinum threshold
 *   while keeping it strictly below the current lowest documented slash-capable threshold. The threshold itself remains
 *   an external product policy that must track Hyperliquid rule changes.
 * - Existing managed accounts can still move above the configured cap because of exogenous staking drift or governance
 *   cap reductions. That state is detectable via `isWithinApiWalletSlashStakeCap(...)` and is handled operationally,
 *   typically by monitoring and beginning shutdown.
 * - `targetRecallWei` can increase via additional `withdrawStake` calls in `SHUTDOWN_EXECUTING`,
 *   and decrease via `recallHype` and `syncTargetRecallWeiToRecoverable`.
 * - `syncTargetRecallWeiToRecoverable` is intentionally down-only (no up-sync path in that function).
 * - Before `ACTIVE`, sub-account owners and third parties are expected NOT to send external funds directly to managed
 *   sub-accounts on either the EVM side (native / ERC20 balances held by the sub-account contract) or the HyperCore
 *   side (spot balances other than the intended managed HYPE provisioning flow). Provisioning funding is intended to
 *   follow operator-orchestrated LST flow only.
 * - `OPERATOR_ROLE` is trusted to supply the intended `(account, initialOwner)` binding when creating managed
 *   sub-accounts. The later canonical-account check before staking / activation proves only that `account` is a valid
 *   factory-deployed `Account`; it does not prove that `account` semantically corresponds to `initialOwner` or to the
 *   eventual end user. This flexibility intentionally supports inventory / bootstrap flows where `initialOwner` may be
 *   a temporary handoff contract rather than the final user. A misbinding to the wrong canonical `Account` is
 *   irreversible on-chain and can grant Account-path control to the wrong account during `ACTIVE` /
 *   `SHUTDOWN_NOTICE` and after detach. Forced shutdown can generally recover managed HYPE, but may not reverse prior
 *   non-staking activity or recover residual non-HYPE / native balances.
 *
 * Auditor note:
 * - `enterShutdownExecution` snapshots a protected spot-HYPE baseline.
 * - `recallHype` can only consume spot HYPE above that baseline.
 * - unsolicited post-snapshot inbound HYPE is not baseline-protected and can affect managed-spot accounting.
 */
contract StakeAccountManager is IStakeAccountManager, AccessControlDefaultAdminRules, ReentrancyGuardTransient {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeCast for uint256;

    struct InitialRoles {
        address operator;
        address watchdog;
        address pauser;
        address oracleReporter;
        address protocolFeeOperator;
    }

    struct ShutdownNoticeTimingRewrite {
        uint64 previousNoticePeriod;
        uint64 previousNoticeMaturesAt;
        uint64 previousEarliestUnwindAt;
        uint64 newNoticeMaturesAt;
        uint64 newEarliestUnwindAt;
    }

    /**
     *
     *  CONSTANTS
     *
     */
    string public constant NAME = "StakeAccountManager";
    string public constant VERSION = "1.0.0";

    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant WATCHDOG_ROLE = keccak256("WATCHDOG_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant ORACLE_REPORTER_ROLE = keccak256("ORACLE_REPORTER_ROLE");
    bytes32 public constant PROTOCOL_FEE_ROLE = keccak256("PROTOCOL_FEE_ROLE");

    uint64 public constant MIN_NOTICE_PERIOD = 2 days;
    uint64 public constant MIN_EXCEPTIONAL_NOTICE_PERIOD = 6 hours;
    uint64 public constant MAX_NOTICE_PERIOD = 30 days;
    uint64 public constant MAX_EXECUTION_GUARD_DELAY = 7 days;
    uint64 public constant MIN_NOTICE_REOPEN_COOLDOWN = 6 hours;
    uint64 public constant MAX_NOTICE_REOPEN_COOLDOWN = 7 days;
    uint64 public constant BUILDER_FEE_APPROVAL_COOLDOWN = 5 minutes;
    // 10 HYPE
    uint256 private constant MIN_MANAGED_PRINCIPAL_WEI = 10e8;
    // ADD_API_WALLET + BRIDGE/CANCEL/PLACE/SEND_ASSET + SEND_TO_ACCOUNT + VAULT_TRANSFER + BORROW_LEND
    uint16 private constant ACTION_MASK_ACTIVE_NON_STAKING = 0xC5FD;
    // ADD_API_WALLET + BRIDGE/CANCEL/PLACE/SEND_ASSET + VAULT_TRANSFER + BORROW_LEND
    uint16 private constant ACTION_MASK_FORCED_UNWIND_FREEZE = 0xC1FD;
    // All ExecuteActionTypes except APPROVE_BUILDER_FEE
    uint16 private constant ACTION_MASK_ALL_EXCEPT_PROTOCOL_FEE = 0xFFFD;

    /**
     *
     *  IMMUTABLES
     *
     */

    /// @notice Factory used to deploy managed HyperCore sub-accounts.
    address public immutable hyperCoreSubAccountFactory;
    /// @notice Factory used to verify managed `account` addresses are canonical deployed Account instances.
    address public immutable accountFactory;
    /// @notice Immutable HyperCore recipient controlled by stHYPE protocol.
    address public immutable lstRecipient;

    /**
     *
     *  STORAGE
     *
     */

    /// @notice Scoped pause flag for shutdown lifecycle controls.
    bool public override shutdownControlsPaused;
    /// @notice Default notice period assigned when sub-account specific period is unset.
    uint64 public override defaultNoticePeriod;
    /// @notice Max staking balance allowed before user API-wallet release is considered unsupported.
    uint64 public override apiWalletSlashStakeCapWei;
    /// @notice Additional guard delay after notice maturity before forced unwind can begin.
    uint64 public override executionGuardDelay;
    /// @notice Cooldown applied after notice cancellation before re-opening notice.
    uint64 public override noticeReopenCooldown;
    /// @notice Globally configured trusted API wallet used during forced shutdown unwind.
    address public override trustedShutdownApiWallet;
    /// @dev Aborted provisioning sub-accounts that remain eligible for emergency HYPE recall.
    mapping(address => bool) private _abortedProvisioningHypeRecallAllowed;
    /// @dev Sub-accounts that completed provisioning and remain eligible for manager-driven builder fee updates,
    ///      including after lifecycle detach.
    mapping(address => bool) private _protocolFeeEligibleSubAccounts;
    /// @dev Earliest timestamp when `PROTOCOL_FEE_ROLE` may next update builder fees for the sub-account.
    ///      Persists after detach because builder-fee eligibility survives managed-state deletion.
    mapping(address => uint64) private _nextBuilderFeeApprovalAllowedAt;

    /// @dev Managed state keyed by sub-account.
    mapping(address => ManagedSubAccountInfo) private _managedSubAccountByAddress;
    /// @dev Membership/enumeration set for currently managed sub-accounts.
    EnumerableSet.AddressSet private _managedSubAccounts;
    /// @dev Tracks forced-unwind state that is external to the canonical managed lifecycle struct.
    ///      `latestUnwindReportHash` is a shared "latest evidence" slot for the current unwind cycle:
    ///      wallet-cleanup attestation and flat-state attestation both overwrite it.
    ///      Callers must use events and boolean flags to distinguish which attestation it currently reflects.
    mapping(address => ShutdownUnwindStatus) private _shutdownUnwindStatusBySubAccount;
    /// @dev Spot HYPE present before entering SHUTDOWN_EXECUTING; protected from manager recall.
    mapping(address => uint64) private _protectedSpotHypeWeiBySubAccount;

    /**
     *
     *  CONSTRUCTOR
     *
     */

    /**
     * @notice Initializes the stake account manager.
     * @dev Grants roles, validates core dependencies, and sets global lifecycle timing parameters.
     * @param initialAdmin Address receiving DEFAULT_ADMIN_ROLE.
     * @param defaultAdminDelay_ Delay (in seconds) enforced for DEFAULT_ADMIN_ROLE transfers.
     * @param roles Initial role grantees (operator, watchdog, pauser, oracleReporter, protocolFeeOperator).
     *        Zero addresses are skipped (role not granted at deployment).
     * @param hyperCoreSubAccountFactory_ Address of the HyperCoreSubAccountFactory.
     * @param accountFactory_ Address of the AccountFactory.
     * @param lstRecipient_ Address of stHYPE's LST protocol recipient.
     * @param defaultNoticePeriod_ Default notice period for newly managed sub-accounts.
     * @param executionGuardDelay_ Extra delay after notice maturity before forced unwind can begin.
     * @param noticeReopenCooldown_ Cooldown after cancellation before notice can be restarted.
     */
    constructor(
        address initialAdmin,
        uint48 defaultAdminDelay_,
        InitialRoles memory roles,
        address hyperCoreSubAccountFactory_,
        address accountFactory_,
        address lstRecipient_,
        uint64 defaultNoticePeriod_,
        uint64 executionGuardDelay_,
        uint64 noticeReopenCooldown_
    ) AccessControlDefaultAdminRules(defaultAdminDelay_, initialAdmin) {
        if (hyperCoreSubAccountFactory_ == address(0) || accountFactory_ == address(0) || lstRecipient_ == address(0)) {
            revert StakeAccountManager__ZeroAddress();
        }

        // LST recipient must be an active address on HyperCore,
        // to send and receive HYPE spot transfers
        require(PrecompileLib.coreUserExists(lstRecipient_), StakeAccountManager__NotActiveOnHyperCore());

        hyperCoreSubAccountFactory = hyperCoreSubAccountFactory_;
        accountFactory = accountFactory_;
        lstRecipient = lstRecipient_;

        _grantInitialRoles(roles);
        _setInitialConfig(roles, defaultNoticePeriod_, executionGuardDelay_, noticeReopenCooldown_);
    }

    /**
     *
     *  VIEW FUNCTIONS
     *
     */

    /**
     * @notice Checks whether a sub-account is currently managed by this contract.
     * @param subAccount The sub-account address.
     * @return True if managed, false otherwise.
     */
    function isManagedSubAccount(address subAccount) external view override returns (bool) {
        return _managedSubAccounts.contains(subAccount);
    }

    /**
     * @notice Returns lifecycle/configuration state for a managed sub-account.
     * @dev Reverts for unmanaged sub-accounts, including addresses that were never managed and sub-accounts already
     *      removed via `abortProvisioning(...)` or `finalizeDetach(...)`.
     *      Integrations SHOULD NOT use this as a soft existence probe inside fund-critical paths such as
     *      withdrawals/redemptions. Callers should first gate on `isManagedSubAccount(...)` or equivalent cached
     *      lifecycle knowledge if a non-reverting path is required.
     * @param subAccount The managed sub-account address.
     * @return The managed sub-account state record.
     */
    function getManagedSubAccountInfo(address subAccount)
        external
        view
        override
        returns (ManagedSubAccountInfo memory)
    {
        _requireManagedSubAccount(subAccount);
        return _managedSubAccountByAddress[subAccount];
    }

    /**
     * @notice Returns all currently managed sub-account addresses.
     * @return Array of managed sub-account addresses.
     */
    function getManagedSubAccountAddresses() external view override returns (address[] memory) {
        return _managedSubAccounts.values();
    }

    /**
     * @notice Returns managed sub-account address at `index`.
     * @param index Position within managed sub-account enumerable set.
     * @return Managed sub-account address at index.
     */
    function getManagedSubAccountAt(uint256 index) external view override returns (address) {
        return _managedSubAccounts.at(index);
    }

    /**
     * @notice Returns number of currently managed sub-account addresses.
     * @return Count of managed sub-account addresses.
     */
    function getManagedSubAccountsCount() external view override returns (uint256) {
        return _managedSubAccounts.length();
    }

    /**
     * @notice Returns forced-unwind status for a managed sub-account.
     * @param subAccount The managed sub-account address.
     * @return The forced-unwind status record.
     */
    function getShutdownUnwindStatus(address subAccount) external view override returns (ShutdownUnwindStatus memory) {
        _requireManagedSubAccount(subAccount);
        return _shutdownUnwindStatusBySubAccount[subAccount];
    }

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */

    /**
     * @notice Deploys and registers a new managed sub-account in `PROVISIONING`.
     * @dev On deployment, this manager is configured as admin and authorized sender for all action types.
     *      That admin assignment persists throughout the managed lifecycle; later transitions may reopen selected
     *      Account-path execution lanes, but they do not return `HyperCoreSubAccount` admin rights until detach.
     *      Assumes factory-side enforcement of `expectedSubAccount` determinism.
     * @dev Trust assumption: `params.account` is intentionally accepted as a separate input from
     *      `params.initialOwner`. This supports inventory / bootstrap flows where the sub-account may be created for a
     *      temporary handoff-controlled `Account` posture rather than the final end user. The contract later checks
     *      only that `params.account` is a canonical deployed `Account`; it does not prove semantic correspondence
     *      between `params.account`, `params.initialOwner`, and the eventual end user. A wrong canonical-account
     *      binding is therefore an operator error with irreversible control consequences.
     * @dev Trust assumption: before `ACTIVE`, the sub-account owner should not directly transfer external funds into
     *      this sub-account on either the EVM side or the HyperCore side. Pre-`ACTIVE` funding must follow the managed
     *      provisioning flow only. `emergencyRecallProvisioningHype` is a courtesy fallback for spot HYPE only, not a
     *      normal funding path.
     * @dev Also requires governance to have configured `apiWalletSlashStakeCapWei` high enough to admit this account.
     * @param params Sub-account creation parameters.
     */
    function createManagedSubAccount(CreateManagedSubAccountParams calldata params)
        external
        override
        onlyRole(OPERATOR_ROLE)
        nonReentrant
    {
        require(params.account != address(0) && params.account != address(this), StakeAccountManager__InvalidAccount());

        require(!_managedSubAccounts.contains(params.expectedSubAccount), StakeAccountManager__AlreadyManaged());

        uint64 noticePeriod = params.noticePeriod == 0 ? defaultNoticePeriod : params.noticePeriod;
        _validateNoticePeriod(noticePeriod);

        require(params.managedPrincipalWei > 0, StakeAccountManager__ZeroAmount());

        require(
            params.managedPrincipalWei >= MIN_MANAGED_PRINCIPAL_WEI, StakeAccountManager__InsufficientManagedPrincipal()
        );
        require(
            params.managedPrincipalWei <= apiWalletSlashStakeCapWei,
            StakeAccountManager__ApiWalletSlashStakeCapExceeded()
        );

        // Assumes this contract is an authorized factory deployer.
        // On deployment, manager becomes admin and authorized sender for all action types.
        address[16] memory thisArray;
        for (uint256 i = 0; i < 16; i++) {
            thisArray[i] = address(this);
        }
        address subAccount = HyperCoreSubAccountFactory(hyperCoreSubAccountFactory)
            .deployHyperCoreSubAccount(
                params.initialOwner,
                lstRecipient,
                params.skipSessionSignature,
                thisArray,
                thisArray,
                params.sessionExpiryByActionType,
                params.account,
                params.expectedSubAccount
            );

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];
        // WARNING: account might not be deployed yet,
        // but once it is deployed, we need to be sure that it is a valid instance of Account deployed by AccountFactory.
        managed.account = params.account;
        managed.subAccount = subAccount;
        managed.managedPrincipalWei = params.managedPrincipalWei;
        managed.noticePeriod = noticePeriod;
        managed.state = LifecycleState.PROVISIONING;

        _managedSubAccounts.add(subAccount);

        emit ManagedSubAccountCreated(
            subAccount, params.account, lstRecipient, noticePeriod, params.managedPrincipalWei, msg.sender
        );
    }

    /**
     * @notice Deposits available spot HYPE into staking during provisioning.
     * @dev Callable only during `PROVISIONING`.
     *      Deposit amount is computed as `min(remainingManagedPrincipal, currentSpotHype)`,
     *      where remaining managed principal is
     *      `managedPrincipalWei - (delegated + undelegated + totalPendingWithdrawal)`.
     * @param subAccount The managed sub-account address.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function stake(address subAccount, uint256 nonce, uint256 sessionEpochId, bytes memory signature)
        external
        override
        onlyRole(OPERATOR_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.PROVISIONING);

        // Sub-account must exist on HyperCore.
        require(PrecompileLib.coreUserExists(subAccount), StakeAccountManager__NotActiveOnHyperCore());

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];
        // Prevent staking capital movement until Account deployment validity is confirmed.
        _requireAccountDeployed(managed.account);

        (uint64 remainingStakeAmountWei, uint64 currentSpotHypeWei, uint64 transferAmountNeededWei) =
            _provisioningFundingStatusWei(subAccount, managed.managedPrincipalWei);
        require(remainingStakeAmountWei > 0, StakeAccountManager__NoStakeRequired());
        uint64 stakeAmountWei =
            currentSpotHypeWei < remainingStakeAmountWei ? currentSpotHypeWei : remainingStakeAmountWei;
        require(stakeAmountWei > 0, StakeAccountManager__ZeroAmount());
        uint256 currentTotalStakingWei = _currentTotalStakingWei(subAccount);
        require(
            currentTotalStakingWei + uint256(stakeAmountWei) <= apiWalletSlashStakeCapWei,
            StakeAccountManager__ApiWalletSlashStakeCapExceeded()
        );

        // CoreWriter execution remains subject to one-action-per-block sub-account pacing.
        _executeStakeDeposit(HyperCoreSubAccount(payable(subAccount)), stakeAmountWei, nonce, sessionEpochId, signature);

        emit ProvisioningStakeDeposited(subAccount, stakeAmountWei, transferAmountNeededWei, msg.sender);
    }

    /**
     * @notice Starts the terminal provisioning-unwind path for a managed sub-account.
     * @dev This is a one-way transition. Once a sub-account enters `PROVISIONING_UNWIND`, it can no longer
     *      receive managed funding or activate via `completeProvisioning(...)`.
     * @param subAccount The managed sub-account address.
     * @param reason Free-form operational reason string.
     */
    function beginProvisioningUnwind(address subAccount, string calldata reason) external override nonReentrant {
        _requireEmergencyOperator();
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.PROVISIONING);

        _managedSubAccountByAddress[subAccount].state = LifecycleState.PROVISIONING_UNWIND;

        emit ProvisioningUnwindStarted(subAccount, reason, msg.sender);
    }

    /**
     * @notice Updates staking delegation (delegate or undelegate) for a managed sub-account.
     * @dev `PROVISIONING` allows both delegation and undelegation.
     *      `ACTIVE` and `SHUTDOWN_NOTICE` allow delegation only, so operator-side undelegation cannot move managed
     *      HYPE into the undelegated staking bucket while user-controlled API wallets may still be part of the
     *      allowed operating model.
     *      Terminal provisioning-unwind path: allows undelegation only in `PROVISIONING_UNWIND`.
     *      Forced-unwind path: allows undelegation in `SHUTDOWN_UNWIND` only after wallet cleanup and flat-state
     *      attestation have both been reported for the current unwind cycle, with no trusted shutdown wallet active.
     *      Shutdown-execution recovery path: allows undelegation only in `SHUTDOWN_EXECUTING` if delegated balance
     *      appears or reappears later.
     *      Delegation (`isUndelegate == false`) remains blocked in all unwind states.
     * @param subAccount The managed sub-account address.
     * @param validator The validator address.
     * @param amountWei The delegation amount in HYPE wei.
     * @param isUndelegate True to undelegate, false to delegate.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function updateStakeDelegation(
        address subAccount,
        address validator,
        uint64 amountWei,
        bool isUndelegate,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external override onlyRole(OPERATOR_ROLE) nonReentrant {
        _requireManagedSubAccount(subAccount);

        require(validator != address(0), StakeAccountManager__ZeroAddress());
        require(amountWei > 0, StakeAccountManager__ZeroAmount());

        // Sub-account must exist on HyperCore precompile side.
        require(PrecompileLib.coreUserExists(subAccount), StakeAccountManager__NotActiveOnHyperCore());

        // Normal lifecycle path.
        LifecycleState state = _managedSubAccountByAddress[subAccount].state;
        bool isProvisioningState = state == LifecycleState.PROVISIONING;
        bool isDelegationAllowedUserPhase =
            !isUndelegate && (state == LifecycleState.ACTIVE || state == LifecycleState.SHUTDOWN_NOTICE);
        bool isProvisioningUnwindUndelegate = state == LifecycleState.PROVISIONING_UNWIND && isUndelegate;
        bool isShutdownUnwindUndelegate;
        if (state == LifecycleState.SHUTDOWN_UNWIND && isUndelegate) {
            ShutdownUnwindStatus storage unwindStatus = _shutdownUnwindStatusBySubAccount[subAccount];
            isShutdownUnwindUndelegate = unwindStatus.apiWalletsCleared && !unwindStatus.trustedApiWalletActive
                && unwindStatus.flatStateAttested;
        }
        // Margin-of-safety path:
        // If delegated balance appears or reappears during shutdown execution, allow undelegation only.
        // This preserves shutdown intent while enabling liveness recovery from exogenous stake drift.
        bool isShutdownExecutionUndelegate = state == LifecycleState.SHUTDOWN_EXECUTING && isUndelegate;
        require(
            isProvisioningState || isDelegationAllowedUserPhase || isProvisioningUnwindUndelegate
                || isShutdownUnwindUndelegate || isShutdownExecutionUndelegate,
            StakeAccountManager__InvalidState()
        );

        _executeSubAccountAction(
            HyperCoreSubAccount(payable(subAccount)),
            HyperCoreSubAccount.ExecuteActionType.STAKING_DELEGATE,
            abi.encode(validator, amountWei, isUndelegate),
            nonce,
            sessionEpochId,
            signature
        );
    }

    /**
     * @notice Executes `APPROVE_BUILDER_FEE` on a protocol fee eligible sub-account.
     * @dev This action remains manager-administered by design, including post-detach behavior for
     *      sub-accounts that successfully completed provisioning.
     * @dev Post-detach eligibility is tracked separately from managed lifecycle membership.
     *      After `finalizeDetach(...)`, `isManagedSubAccount(subAccount)` is false and managed-state getters revert,
     *      but `approveBuilderFee(...)` remains callable for protocol-fee-eligible sub-accounts.
     * @dev WARNING: This path consumes the same one-block CoreWriter slot as shutdown/provisioning actions
     *      on the same sub-account. A compromised or mis-scheduled `PROTOCOL_FEE_ROLE` can temporarily
     *      delay lifecycle liveness by repeatedly occupying that slot.
     *      `PROTOCOL_FEE_ROLE` is further limited to one successful approval per eligible sub-account every
     *      `BUILDER_FEE_APPROVAL_COOLDOWN`. `DEFAULT_ADMIN_ROLE` bypasses that cooldown for emergency recovery.
     * @param subAccount The managed sub-account address.
     * @param maxFeeRate Maximum builder fee rate to approve. Zero resets an existing approval to zero.
     * @param builder Builder address.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function approveBuilderFee(
        address subAccount,
        uint64 maxFeeRate,
        address builder,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external override nonReentrant {
        bool isDefaultAdmin = _requireProtocolFeeOperatorOrAdmin();
        require(_protocolFeeEligibleSubAccounts[subAccount], StakeAccountManager__NotManaged());

        require(builder != address(0), StakeAccountManager__ZeroAddress());
        LifecycleState state = _managedSubAccountByAddress[subAccount].state;
        require(
            state != LifecycleState.SHUTDOWN_UNWIND && state != LifecycleState.SHUTDOWN_EXECUTING,
            StakeAccountManager__InvalidState()
        );
        if (!isDefaultAdmin) {
            require(
                block.timestamp >= _nextBuilderFeeApprovalAllowedAt[subAccount],
                StakeAccountManager__BuilderFeeApprovalCooldownNotElapsed()
            );
        }

        _executeSubAccountAction(
            HyperCoreSubAccount(payable(subAccount)),
            HyperCoreSubAccount.ExecuteActionType.APPROVE_BUILDER_FEE,
            abi.encode(maxFeeRate, builder),
            nonce,
            sessionEpochId,
            signature
        );

        _nextBuilderFeeApprovalAllowedAt[subAccount] = (block.timestamp + BUILDER_FEE_APPROVAL_COOLDOWN).toUint64();
    }

    /**
     * @notice Sets `skipSessionSignature` for a managed sub-account action type.
     * @dev While managed, this contract remains the action admin, so the bound user cannot call
     *      `HyperCoreSubAccount.setSkipSessionSignature(...)` directly.
     * @dev Reverts in `ACTIVE` and `SHUTDOWN_NOTICE` for owner-usable active non-staking actions.
     * @param subAccount The managed sub-account address.
     * @param actionType The action type index (0..15).
     * @param skip True to skip session signature validation for this action type.
     */
    function setSkipSessionSignature(address subAccount, uint8 actionType, bool skip)
        external
        override
        onlyRole(OPERATOR_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);

        require(actionType < 16, StakeAccountManager__InvalidState());
        _requireOperatorSessionConfigMutable(subAccount, actionType);

        HyperCoreSubAccount(payable(subAccount))
            .setSkipSessionSignature(HyperCoreSubAccount.ExecuteActionType(actionType), skip);
    }

    /**
     * @notice Sets session expiry for a managed sub-account action type.
     * @dev While managed, this contract remains the action admin, so the bound user cannot call
     *      `HyperCoreSubAccount.setSessionExpiry(...)` directly.
     * @dev Reverts in `ACTIVE` and `SHUTDOWN_NOTICE` for owner-usable active non-staking actions.
     * @param subAccount The managed sub-account address.
     * @param actionType The action type index (0..15).
     * @param expiry Session expiry duration in seconds (0 = sub-account default).
     */
    function setSessionExpiry(address subAccount, uint8 actionType, uint256 expiry)
        external
        override
        onlyRole(OPERATOR_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);

        require(actionType < 16, StakeAccountManager__InvalidState());
        _requireOperatorSessionConfigMutable(subAccount, actionType);

        HyperCoreSubAccount(payable(subAccount))
            .setSessionExpiry(HyperCoreSubAccount.ExecuteActionType(actionType), expiry);
    }

    /**
     * @notice Completes provisioning and transitions sub-account lifecycle to `ACTIVE`.
     * @dev Requires delegated stake >= managed principal.
     *      Does not re-enforce `apiWalletSlashStakeCapWei` here, because exogenous staking drift during
     *      `PROVISIONING` would otherwise be able to brick activation without a matching recovery path.
     *      Restores Account-path execution for non-staking actions while retaining manager admin control.
     *      So even in `ACTIVE`, the bound user still cannot directly call `setAuthorizedSender(...)`,
     *      `setSkipSessionSignature(...)`, or `setSessionExpiry(...)` on the sub-account.
     * @param subAccount The managed sub-account address.
     */
    function completeProvisioning(address subAccount) external override onlyRole(OPERATOR_ROLE) nonReentrant {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.PROVISIONING);

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];

        // Enforce that managed account is a canonical Account deployed by AccountFactory.
        _requireAccountDeployed(managed.account);

        // Sub-account must exist on HyperCore precompile side.
        require(PrecompileLib.coreUserExists(subAccount), StakeAccountManager__NotActiveOnHyperCore());
        // Require delegated staking >= managed principal before releasing user trading controls.
        require(
            PrecompileLib.delegatorSummary(subAccount).delegated >= managed.managedPrincipalWei,
            StakeAccountManager__InsufficientStakedAndDelegated()
        );

        managed.state = LifecycleState.ACTIVE;
        _protocolFeeEligibleSubAccounts[subAccount] = true;

        // Grant execution rights (but not admin) to Account path for non-staking actions.
        HyperCoreSubAccount subAccount_ = HyperCoreSubAccount(payable(subAccount));

        _setAuthorizedSenderByMask(subAccount_, ACTION_MASK_ACTIVE_NON_STAKING, address(0));

        emit ProvisioningCompleted(subAccount, managed.managedPrincipalWei, msg.sender);
    }

    /**
     * @notice Withdraws currently undelegated staking balance during terminal provisioning unwind.
     * @dev Callable only in `PROVISIONING_UNWIND`.
     *      Does not modify shutdown execution accounting (`targetRecallWei` / `managedPrincipalWei`).
     * @param subAccount The managed sub-account address.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function withdrawProvisioningStake(
        address subAccount,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external override onlyRole(OPERATOR_ROLE) nonReentrant {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.PROVISIONING_UNWIND);

        require(PrecompileLib.coreUserExists(subAccount), StakeAccountManager__NotActiveOnHyperCore());

        PrecompileLib.DelegatorSummary memory summary = PrecompileLib.delegatorSummary(subAccount);
        require(summary.delegated == 0, StakeAccountManager__ExcessiveStakeDelegation());
        require(summary.nPendingWithdrawals < 5, StakeAccountManager__TooManyPendingWithdrawals());

        uint64 amountWei = summary.undelegated;
        require(amountWei > 0, StakeAccountManager__ZeroAmount());

        _executeSubAccountAction(
            HyperCoreSubAccount(payable(subAccount)),
            HyperCoreSubAccount.ExecuteActionType.STAKING_WITHDRAW,
            abi.encode(amountWei),
            nonce,
            sessionEpochId,
            signature
        );

        emit ProvisioningStakeWithdrawn(subAccount, amountWei, msg.sender);
    }

    /**
     * @notice Emergency recall path for spot HYPE during provisioning or after aborted provisioning cleanup.
     * @dev Transfers HYPE from sub-account spot balance to immutable `lstRecipient`
     *      using sub-account `SEND_HYPE_TO_EXTERNAL_RECIPIENT`.
     *      Intended to recover mistaken transfers before account validation can complete, and to keep
     *      unsolicited spot-HYPE dust from permanently griefing `abortProvisioning(...)`.
     *      The full current spot HYPE balance is swept at execution time.
     * @dev This path is HYPE-specific and does not recall arbitrary non-HYPE HyperCore spot balances or EVM-side
     *      balances already held by the sub-account contract. It is a courtesy worst-case recovery path and should not
     *      replace `canReceiveSpotTransfers` preflight gating.
     * @param subAccount The managed sub-account address.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function emergencyRecallProvisioningHype(
        address subAccount,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external override nonReentrant {
        _requireEmergencyOperator();

        bool isManaged = _managedSubAccounts.contains(subAccount);
        if (isManaged) {
            _requireProvisioningLifecycleState(subAccount);
        } else {
            require(_abortedProvisioningHypeRecallAllowed[subAccount], StakeAccountManager__NotManaged());
        }

        require(PrecompileLib.coreUserExists(subAccount), StakeAccountManager__NotActiveOnHyperCore());
        uint64 amountWei = PrecompileLib.spotBalance(subAccount, HLConstants.hypeTokenIndex()).total;
        require(amountWei > 0, StakeAccountManager__ZeroAmount());

        _executeSubAccountAction(
            HyperCoreSubAccount(payable(subAccount)),
            HyperCoreSubAccount.ExecuteActionType.SEND_HYPE_TO_EXTERNAL_RECIPIENT,
            abi.encode(amountWei),
            nonce,
            sessionEpochId,
            signature
        );

        emit ProvisioningHypeRecalled(subAccount, amountWei, msg.sender);
    }

    /**
     * @notice Emergency path to remove a managed sub-account stuck in provisioning.
     * @dev Requires zero staking exposure (`delegated`, `undelegated`, `pending withdrawal`).
     *      Residual spot HYPE does not block detach; otherwise unsolicited dust could permanently grief abort.
     *      Aborted provisioning accounts remain emergency-recallable for HYPE, including if they only become
     *      active on HyperCore after the abort.
     *      For sub-accounts not yet active on HyperCore, the zero-staking condition is treated as satisfied.
     * @dev Because this precondition is HYPE-specific, integrations must avoid direct non-HYPE token inflows
     *      before `ACTIVE`; such balances are outside intended managed provisioning flow.
     *      This function clears manager tracking only and is not a generic asset recovery primitive.
     * @dev Intentional design: unlike `finalizeDetach(...)`, this path does NOT release manager admin/authorized-sender
     *      control over the HyperCoreSubAccount. An aborted provisioning sub-account is meant to be discarded, not
     *      later passed into `Account` as a reusable sub-account. The only supported residual path is the HYPE-specific
     *      `emergencyRecallProvisioningHype(...)` flow.
     * @param subAccount The managed sub-account address.
     */
    function abortProvisioning(address subAccount) external override nonReentrant {
        _requireEmergencyOperator();
        _requireManagedSubAccount(subAccount);
        _requireProvisioningLifecycleState(subAccount);

        require(
            block.number > HyperCoreSubAccount(payable(subAccount)).lastBlockInteractionCheckpoint(),
            StakeAccountManager__InvalidState()
        );

        bool isActiveOnHyperCore = PrecompileLib.coreUserExists(subAccount);
        if (isActiveOnHyperCore) {
            PrecompileLib.DelegatorSummary memory summary = PrecompileLib.delegatorSummary(subAccount);
            // Requires zero staking exposure, but does not have any requirements for HYPE in spot balance.
            // This is to prevent grieving attacks, where anyone could permanently block this workflow
            // by sending unsolicited residual HYPE to spot-balance.
            // HYPE in spot balance is still recoverable after aborting provisioning
            // via emergencyRecallProvisioningHype(...).
            require(
                summary.delegated == 0 && summary.undelegated == 0 && summary.totalPendingWithdrawal == 0,
                StakeAccountManager__InvalidPreState()
            );
        }

        // Intentional: `abortProvisioning(...)` is a discard path, not a handoff path.
        // Unlike `finalizeDetach(...)`, manager control is not released back to the Account/sub-account owner here.
        // Aborted provisioning sub-accounts are outside the supported reusable lifecycle; only HYPE emergency recall remains.
        _managedSubAccounts.remove(subAccount);
        delete _managedSubAccountByAddress[subAccount];
        _abortedProvisioningHypeRecallAllowed[subAccount] = true;

        emit ProvisioningAborted(subAccount, msg.sender);
    }

    /**
     * @notice Starts shutdown notice for a managed sub-account.
     * @dev Transitions `ACTIVE -> SHUTDOWN_NOTICE` and sets notice/execution timestamps.
     *      Re-open cooldown is enforced after prior cancellation.
     * @param subAccount The managed sub-account address.
     * @param reason Free-form operational reason string.
     */
    function startShutdownNotice(address subAccount, string calldata reason)
        external
        override
        onlyRole(OPERATOR_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.ACTIVE);
        _requireShutdownControlsNotPaused();

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];

        require(block.timestamp >= managed.nextNoticeAllowedAt, StakeAccountManager__NoticeCooldownNotElapsed());
        require(managed.managedPrincipalWei > 0, StakeAccountManager__ZeroAmount());

        uint64 now_ = block.timestamp.toUint64();
        managed.shutdownNoticeStartedAt = now_;
        managed.shutdownNoticeMaturesAt = now_ + managed.noticePeriod;
        managed.shutdownEarliestUnwindAt = managed.shutdownNoticeMaturesAt + executionGuardDelay;
        managed.state = LifecycleState.SHUTDOWN_NOTICE;

        emit ShutdownNoticeStarted(
            subAccount,
            managed.shutdownNoticeStartedAt,
            managed.shutdownNoticeMaturesAt,
            managed.shutdownEarliestUnwindAt,
            reason,
            msg.sender
        );
    }

    /**
     * @notice Cancels shutdown notice for a managed sub-account.
     * @dev Transitions `SHUTDOWN_NOTICE -> ACTIVE`, clears notice timestamps, and sets notice re-open cooldown.
     *      Reasserts ACTIVE-phase account-path execution rights defensively.
     * @param subAccount The managed sub-account address.
     * @param reason Free-form operational reason string.
     */
    function cancelShutdownNotice(address subAccount, string calldata reason) external override nonReentrant {
        _requireOperatorOrWatchdog();
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_NOTICE);

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];

        managed.state = LifecycleState.ACTIVE;

        delete managed.shutdownNoticeStartedAt;
        delete managed.shutdownNoticeMaturesAt;
        delete managed.shutdownEarliestUnwindAt;

        managed.nextNoticeAllowedAt = (block.timestamp + noticeReopenCooldown).toUint64();

        _restoreActiveExecutionRightsAfterNoticeCancellation(HyperCoreSubAccount(payable(subAccount)));

        emit ShutdownNoticeCancelled(subAccount, managed.nextNoticeAllowedAt, reason, msg.sender);
    }

    /**
     * @notice Starts the forced shutdown unwind phase for a managed sub-account.
     * @dev Freezes all risk-bearing account-path actions and transitions `SHUTDOWN_NOTICE -> SHUTDOWN_UNWIND`.
     *      Wallet inventory is treated as stable only after this point because `ADD_API_WALLET`
     *      remains user-available during `SHUTDOWN_NOTICE` and is frozen here.
     * @param subAccount The managed sub-account address.
     * @param reason Free-form operational reason string.
     */
    function beginShutdownUnwind(address subAccount, string calldata reason)
        external
        override
        onlyRole(OPERATOR_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_NOTICE);
        _requireShutdownControlsNotPaused();

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];

        require(block.timestamp >= managed.shutdownNoticeMaturesAt, StakeAccountManager__ShutdownNotReady());
        require(
            block.timestamp >= managed.shutdownEarliestUnwindAt, StakeAccountManager__ExecutionGuardDelayNotElapsed()
        );

        managed.state = LifecycleState.SHUTDOWN_UNWIND;

        ShutdownUnwindStatus storage unwindStatus = _shutdownUnwindStatusBySubAccount[subAccount];
        delete unwindStatus.apiWalletsCleared;
        delete unwindStatus.trustedApiWalletActive;
        delete unwindStatus.flatStateAttested;
        unwindStatus.shutdownUnwindStartedAt = block.timestamp.toUint64();
        delete unwindStatus.trustedApiWalletNameHash;
        delete unwindStatus.latestUnwindReportHash;

        _applyForcedUnwindFreeze(HyperCoreSubAccount(payable(subAccount)));

        emit ShutdownUnwindStarted(subAccount, unwindStatus.shutdownUnwindStartedAt, reason, msg.sender);
    }

    /**
     * @notice Delists a single API wallet during forced unwind.
     * @dev This is one CoreWriter action per call/block and relies on off-chain wallet inventory.
     *      Any delist invalidates prior wallet-cleanup and flat-state attestations for the current cycle.
     * @param subAccount The managed sub-account address.
     * @param apiWalletName API wallet name to delist in this call.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function delistApiWallet(
        address subAccount,
        string calldata apiWalletName,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external override onlyRole(OPERATOR_ROLE) nonReentrant {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_UNWIND);

        ShutdownUnwindStatus storage unwindStatus = _shutdownUnwindStatusBySubAccount[subAccount];
        require(!unwindStatus.trustedApiWalletActive, StakeAccountManager__InvalidState());

        unwindStatus.apiWalletsCleared = false;
        unwindStatus.flatStateAttested = false;

        _executeApiWalletDelist(
            HyperCoreSubAccount(payable(subAccount)), apiWalletName, nonce, sessionEpochId, signature
        );

        emit ShutdownApiWalletDelisted(subAccount, apiWalletName, msg.sender);
    }

    /**
     * @notice Attests that all user API wallets have been delisted.
     * @dev This is a reporter attestation because wallet inventory is not queryable by EVM in this integration.
     *      Robust operation keeps reporter keys separate from `OPERATOR_ROLE`.
     *      This intentionally clears any prior flat-state attestation and overwrites the shared
     *      `latestUnwindReportHash` slot with wallet-cleanup evidence for the current cycle.
     * @param subAccount The managed sub-account address.
     * @param reportHash Hash of the off-chain evidence package for this attestation.
     */
    function attestApiWalletsCleared(address subAccount, bytes32 reportHash)
        external
        override
        onlyRole(ORACLE_REPORTER_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_UNWIND);

        require(reportHash != bytes32(0), StakeAccountManager__InvalidState());

        ShutdownUnwindStatus storage unwindStatus = _shutdownUnwindStatusBySubAccount[subAccount];
        require(!unwindStatus.trustedApiWalletActive, StakeAccountManager__InvalidState());

        unwindStatus.apiWalletsCleared = true;
        unwindStatus.flatStateAttested = false;
        unwindStatus.latestUnwindReportHash = reportHash;

        emit ShutdownApiWalletsClearedAttested(subAccount, reportHash, msg.sender);
    }

    /**
     * @notice Installs the globally configured trusted API wallet for residual forced unwind.
     * @dev May be skipped if the account is already flat after user-wallet cleanup.
     *      Preserves `apiWalletsCleared` but invalidates flat-state attestation until the trusted wallet
     *      is removed and flatness is attested again.
     * @param subAccount The managed sub-account address.
     * @param apiWalletName API wallet name to install.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function installTrustedApiWallet(
        address subAccount,
        string calldata apiWalletName,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external override onlyRole(OPERATOR_ROLE) nonReentrant {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_UNWIND);

        require(trustedShutdownApiWallet != address(0), StakeAccountManager__ZeroAddress());

        ShutdownUnwindStatus storage unwindStatus = _shutdownUnwindStatusBySubAccount[subAccount];
        require(unwindStatus.apiWalletsCleared, StakeAccountManager__InvalidState());
        require(!unwindStatus.trustedApiWalletActive, StakeAccountManager__InvalidState());
        require(!unwindStatus.flatStateAttested, StakeAccountManager__InvalidState());

        _executeApiWalletAdd(
            HyperCoreSubAccount(payable(subAccount)),
            trustedShutdownApiWallet,
            apiWalletName,
            nonce,
            sessionEpochId,
            signature
        );

        unwindStatus.trustedApiWalletActive = true;
        unwindStatus.trustedApiWalletNameHash = keccak256(bytes(apiWalletName));
        unwindStatus.flatStateAttested = false;

        emit ShutdownTrustedApiWalletInstalled(subAccount, trustedShutdownApiWallet, apiWalletName, msg.sender);
    }

    /**
     * @notice Removes the trusted shutdown API wallet after residual unwind completes.
     * @dev Clears the stored trusted-wallet name hash and invalidates prior flat-state attestation.
     * @param subAccount The managed sub-account address.
     * @param apiWalletName API wallet name used during trusted-wallet installation.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function removeTrustedApiWallet(
        address subAccount,
        string calldata apiWalletName,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external override onlyRole(OPERATOR_ROLE) nonReentrant {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_UNWIND);

        ShutdownUnwindStatus storage unwindStatus = _shutdownUnwindStatusBySubAccount[subAccount];
        require(unwindStatus.trustedApiWalletActive, StakeAccountManager__InvalidState());
        require(
            unwindStatus.trustedApiWalletNameHash == keccak256(bytes(apiWalletName)),
            StakeAccountManager__InvalidState()
        );

        _executeApiWalletDelist(
            HyperCoreSubAccount(payable(subAccount)), apiWalletName, nonce, sessionEpochId, signature
        );

        unwindStatus.trustedApiWalletActive = false;
        unwindStatus.flatStateAttested = false;
        delete unwindStatus.trustedApiWalletNameHash;

        emit ShutdownTrustedApiWalletRemoved(subAccount, apiWalletName, msg.sender);
    }

    /**
     * @notice Attests that the HyperCore account is flat and safe for staking withdrawal/recall.
     * @dev This is a reporter attestation because open orders, residual liabilities, and full risk state are not
     *      completely enumerable on-chain in this integration.
     *      Robust operation keeps reporter keys separate from `OPERATOR_ROLE`.
     *      This overwrites the shared `latestUnwindReportHash` slot with flat-state evidence for the cycle.
     *      Any later wallet-delist or trusted-wallet state change intentionally invalidates this attestation.
     * @param subAccount The managed sub-account address.
     * @param reportHash Hash of the off-chain evidence package for this attestation.
     */
    function attestFlatState(address subAccount, bytes32 reportHash)
        external
        override
        onlyRole(ORACLE_REPORTER_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_UNWIND);

        require(reportHash != bytes32(0), StakeAccountManager__InvalidState());

        ShutdownUnwindStatus storage unwindStatus = _shutdownUnwindStatusBySubAccount[subAccount];
        require(unwindStatus.apiWalletsCleared, StakeAccountManager__InvalidState());
        require(!unwindStatus.trustedApiWalletActive, StakeAccountManager__InvalidState());

        unwindStatus.flatStateAttested = true;
        unwindStatus.latestUnwindReportHash = reportHash;

        emit ShutdownFlatStateAttested(subAccount, reportHash, msg.sender);
    }

    /**
     * @notice Enters shutdown execution after forced unwind is complete.
     * @dev Requires delegated stake to be zero, no active trusted wallet, wallet cleanup attested, and flatness
     *      attested for the current unwind cycle.
     * @param subAccount The managed sub-account address.
     */
    function enterShutdownExecution(address subAccount) external override onlyRole(OPERATOR_ROLE) nonReentrant {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_UNWIND);
        _requireShutdownControlsNotPaused();

        ShutdownUnwindStatus storage unwindStatus = _shutdownUnwindStatusBySubAccount[subAccount];
        require(unwindStatus.apiWalletsCleared, StakeAccountManager__InvalidState());
        require(!unwindStatus.trustedApiWalletActive, StakeAccountManager__InvalidState());
        require(unwindStatus.flatStateAttested, StakeAccountManager__InvalidState());
        require(
            PrecompileLib.delegatorSummary(subAccount).delegated == 0, StakeAccountManager__ExcessiveStakeDelegation()
        );

        _protectedSpotHypeWeiBySubAccount[subAccount] =
        PrecompileLib.spotBalance(subAccount, HLConstants.hypeTokenIndex()).total;

        _managedSubAccountByAddress[subAccount].state = LifecycleState.SHUTDOWN_EXECUTING;

        emit ShutdownExecutionStarted(subAccount, msg.sender);
    }

    /**
     * @notice Withdraws currently undelegated staking balance and increments recall target.
     * @dev Callable in `SHUTDOWN_EXECUTING`.
     *      If additional undelegated stake appears later, this function can be called again to
     *      increase `targetRecallWei` by the newly withdrawn amount.
     *      Snapshot timing is intentionally at withdraw-time to capture latest staking outcomes.
     * @param subAccount The managed sub-account address.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function withdrawStake(address subAccount, uint256 nonce, uint256 sessionEpochId, bytes memory signature)
        external
        override
        onlyRole(OPERATOR_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_EXECUTING);
        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];

        PrecompileLib.DelegatorSummary memory summary = PrecompileLib.delegatorSummary(subAccount);

        // Require full undelegation completion before withdrawing.
        require(summary.delegated == 0, StakeAccountManager__ExcessiveStakeDelegation());
        // Match HyperCore's current per-account pending-withdrawal cap before optimistic local accounting changes.
        require(summary.nPendingWithdrawals < 5, StakeAccountManager__TooManyPendingWithdrawals());

        // Increment recall target by currently withdrawable undelegated balance.
        uint64 amountWei = summary.undelegated;
        require(amountWei > 0, StakeAccountManager__ZeroAmount());
        managed.targetRecallWei += amountWei;

        // Execute `STAKING_WITHDRAW(amountWei)` in sub-account.
        _executeSubAccountAction(
            HyperCoreSubAccount(payable(subAccount)),
            HyperCoreSubAccount.ExecuteActionType.STAKING_WITHDRAW,
            abi.encode(amountWei),
            nonce,
            sessionEpochId,
            signature
        );

        emit StakeWithdrawn(subAccount, amountWei, msg.sender);
    }

    /**
     * @notice Recalls HYPE from sub-account spot to immutable LST recipient.
     * @dev Sweeps `min(targetRecallWei, managedSpotHype)` where
     *      `managedSpotHype = max(currentSpot - protectedBaseline, 0)`.
     *      `targetRecallWei` decreases with recall, but may increase later if `withdrawStake` is called again.
     * @param subAccount The managed sub-account address.
     * @param nonce Session nonce for sub-account execution.
     * @param sessionEpochId Session epoch id for sub-account execution.
     * @param signature Session signature for sub-account execution.
     */
    function recallHype(address subAccount, uint256 nonce, uint256 sessionEpochId, bytes memory signature)
        external
        override
        onlyRole(OPERATOR_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_EXECUTING);

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];
        uint64 targetRecallWei = managed.targetRecallWei;
        require(targetRecallWei > 0, StakeAccountManager__InvalidState());

        uint64 managedSpotHypeWei = _managedSpotHypeBalanceWei(subAccount);
        require(managedSpotHypeWei > 0, StakeAccountManager__InsufficientSpotBalance());

        uint64 amountWei = targetRecallWei < managedSpotHypeWei ? targetRecallWei : managedSpotHypeWei;

        managed.targetRecallWei -= amountWei;
        if (managed.managedPrincipalWei >= amountWei) {
            managed.managedPrincipalWei -= amountWei;
        } else {
            managed.managedPrincipalWei = 0;
        }

        // Executes `SEND_HYPE_TO_EXTERNAL_RECIPIENT`, which routes to immutable sub-account recipient.
        _executeSubAccountAction(
            HyperCoreSubAccount(payable(subAccount)),
            HyperCoreSubAccount.ExecuteActionType.SEND_HYPE_TO_EXTERNAL_RECIPIENT,
            abi.encode(amountWei),
            nonce,
            sessionEpochId,
            signature
        );

        emit HypeRecalled(subAccount, amountWei, msg.sender);
    }

    /**
     * @notice Syncs recall target down to currently recoverable on-chain HYPE.
     * @dev Admin-only shortfall path for adverse staking events in `SHUTDOWN_EXECUTING`.
     *      Recoverable = managed spot + undelegated + pending withdrawals.
     *      Supports downward sync only (`recoverable < current target`); no up-sync path exists.
     * @dev Requires `delegated == 0` so delegated stake is not prematurely crystallized into an irreversible write-down.
     * @dev WARNING: This write-down is intentionally irreversible for the current shutdown flow.
     *      This function has no up-sync path; increases to `targetRecallWei` can only come from `withdrawStake`.
     * @param subAccount The managed sub-account address.
     */
    function syncTargetRecallWeiToRecoverable(address subAccount)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_EXECUTING);

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];
        uint64 previousTargetRecallWei = managed.targetRecallWei;

        PrecompileLib.DelegatorSummary memory summary = PrecompileLib.delegatorSummary(subAccount);
        require(summary.delegated == 0, StakeAccountManager__ExcessiveStakeDelegation());
        uint256 recoverableWei256 = uint256(_managedSpotHypeBalanceWei(subAccount)) + uint256(summary.undelegated)
            + uint256(summary.totalPendingWithdrawal);

        require(recoverableWei256 < previousTargetRecallWei, StakeAccountManager__NoRecallShortfall());

        uint64 newTargetRecallWei = recoverableWei256.toUint64();
        uint64 shortfallWei = previousTargetRecallWei - newTargetRecallWei;

        managed.targetRecallWei = newTargetRecallWei;

        uint64 principalWriteDownWei;
        if (managed.managedPrincipalWei >= shortfallWei) {
            managed.managedPrincipalWei -= shortfallWei;
            principalWriteDownWei = shortfallWei;
        } else {
            principalWriteDownWei = managed.managedPrincipalWei;
            managed.managedPrincipalWei = 0;
        }

        emit TargetRecallSyncedToRecoverable(
            subAccount,
            previousTargetRecallWei,
            newTargetRecallWei,
            newTargetRecallWei,
            principalWriteDownWei,
            msg.sender
        );
    }

    /**
     * @notice Finalizes manager detach for a sub-account.
     * @dev Requires `targetRecallWei == 0`.
     *      Requires staking summary to be fully settled (`delegated == 0`, `undelegated == 0`,
     *      and `totalPendingWithdrawal == 0`).
     *      Restores Account-path execution and self-revokes manager admin for all actions except
     *      `APPROVE_BUILDER_FEE`, normalizes that action into skip-signature mode for post-detach liveness,
     *      then deletes managed state and shutdown guards.
     * @param subAccount The managed sub-account address.
     */
    function finalizeDetach(address subAccount) external override onlyRole(OPERATOR_ROLE) nonReentrant {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_EXECUTING);

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];
        // Detach is allowed only when staking is fully settled.
        PrecompileLib.DelegatorSummary memory summary = PrecompileLib.delegatorSummary(subAccount);
        require(
            summary.delegated == 0 && summary.undelegated == 0 && summary.totalPendingWithdrawal == 0,
            StakeAccountManager__InvalidState()
        );

        // Target recall amount should be fully recalled before detaching.
        require(managed.targetRecallWei == 0, StakeAccountManager__InvalidState());

        HyperCoreSubAccount subAccount_ = HyperCoreSubAccount(payable(subAccount));
        // Post-detach protocol fee control remains manager-administered. Normalize builder-fee execution into
        // skip-signature mode before removing the manager's managed-sub-account control surface.
        subAccount_.setSkipSessionSignature(HyperCoreSubAccount.ExecuteActionType.APPROVE_BUILDER_FEE, true);
        // Restore Account-path execution for all actions except APPROVE_BUILDER_FEE.
        _setAuthorizedSenderByMask(subAccount_, ACTION_MASK_ALL_EXCEPT_PROTOCOL_FEE, address(0));
        // Revoke manager admin on all action types except APPROVE_BUILDER_FEE.
        _selfRevokeAdminByMask(subAccount_, ACTION_MASK_ALL_EXCEPT_PROTOCOL_FEE);

        _managedSubAccounts.remove(subAccount);
        delete _shutdownUnwindStatusBySubAccount[subAccount];
        delete _protectedSpotHypeWeiBySubAccount[subAccount];
        delete _managedSubAccountByAddress[subAccount];

        emit ManagerDetached(subAccount, msg.sender);
    }

    /**
     * @notice Pauses shutdown lifecycle entry controls.
     * @dev Pauses `startShutdownNotice`, `beginShutdownUnwind`, and `enterShutdownExecution`.
     *      In-flight unwind/execution operations remain callable.
     * @param reason Free-form operational reason string.
     */
    function pauseShutdownControls(string calldata reason) external override nonReentrant {
        _requirePauseOperator();
        shutdownControlsPaused = true;

        emit ShutdownControlsPaused(msg.sender, reason);
    }

    /**
     * @notice Unpauses shutdown lifecycle entry controls.
     * @param reason Free-form operational reason string.
     */
    function unpauseShutdownControls(string calldata reason) external override nonReentrant {
        _requireUnpauseOperator();
        shutdownControlsPaused = false;

        emit ShutdownControlsUnpaused(msg.sender, reason);
    }

    /**
     * @notice Sets global default shutdown notice period.
     * @dev Applies to newly created managed sub-accounts and calls with `noticePeriod == 0`.
     *      Existing per-sub-account notice periods are not rewritten.
     * @param newNoticePeriod New default notice period in seconds.
     */
    function setDefaultNoticePeriod(uint64 newNoticePeriod)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        _validateNoticePeriod(newNoticePeriod);

        uint64 previousNoticePeriod = defaultNoticePeriod;
        defaultNoticePeriod = newNoticePeriod;

        emit DefaultNoticePeriodSet(previousNoticePeriod, newNoticePeriod, msg.sender);
    }

    /**
     * @notice Sets shutdown notice period override for a managed sub-account.
     * @dev Applies to subsequent notice-start calculations.
     *      Reverts while the sub-account is already in `SHUTDOWN_NOTICE`; use
     *      `shortenShutdownNotice(...)` for exceptional-risk changes to a live notice.
     * @param subAccount The managed sub-account address.
     * @param newNoticePeriod New notice period in seconds.
     */
    function setSubAccountNoticePeriod(address subAccount, uint64 newNoticePeriod)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];
        require(managed.state != LifecycleState.SHUTDOWN_NOTICE, StakeAccountManager__InvalidState());

        _validateNoticePeriod(newNoticePeriod);

        uint64 previousNoticePeriod = managed.noticePeriod;
        managed.noticePeriod = newNoticePeriod;

        emit SubAccountNoticePeriodSet(subAccount, previousNoticePeriod, newNoticePeriod, msg.sender);
    }

    /**
     * @notice Shortens an already-live shutdown notice under exceptional risk.
     * @dev Rewrites `shutdownNoticeMaturesAt` and `shutdownEarliestUnwindAt` from the original
     *      `shutdownNoticeStartedAt` using the shorter period and the current global `executionGuardDelay`.
     *      Requires the rewritten `shutdownEarliestUnwindAt` to be no later than the current live value, so
     *      shortening can never delay forced unwind readiness.
     *      Also rewrites the stored sub-account `noticePeriod`, so future notice starts use the shortened value
     *      until governance changes it again.
     * @param subAccount The managed sub-account address.
     * @param newNoticePeriod New shorter notice period in seconds.
     * @param reason Free-form operational reason string.
     */
    function shortenShutdownNotice(address subAccount, uint64 newNoticePeriod, string calldata reason)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        _requireManagedSubAccount(subAccount);
        _requireState(subAccount, LifecycleState.SHUTDOWN_NOTICE);

        ManagedSubAccountInfo storage managed = _managedSubAccountByAddress[subAccount];
        ShutdownNoticeTimingRewrite memory rewrite;
        rewrite.previousNoticeMaturesAt = managed.shutdownNoticeMaturesAt;
        rewrite.previousEarliestUnwindAt = managed.shutdownEarliestUnwindAt;
        rewrite.previousNoticePeriod = rewrite.previousNoticeMaturesAt - managed.shutdownNoticeStartedAt;

        _validateExceptionalNoticePeriod(newNoticePeriod);
        require(newNoticePeriod < rewrite.previousNoticePeriod, StakeAccountManager__NoticeCanOnlyBeShortened());

        rewrite.newNoticeMaturesAt = managed.shutdownNoticeStartedAt + newNoticePeriod;
        rewrite.newEarliestUnwindAt = rewrite.newNoticeMaturesAt + executionGuardDelay;
        require(
            rewrite.newEarliestUnwindAt <= rewrite.previousEarliestUnwindAt,
            StakeAccountManager__NoticeCanOnlyBeShortened()
        );

        managed.noticePeriod = newNoticePeriod;
        managed.shutdownNoticeMaturesAt = rewrite.newNoticeMaturesAt;
        managed.shutdownEarliestUnwindAt = rewrite.newEarliestUnwindAt;

        emit ShutdownNoticeShortened(
            subAccount,
            rewrite.previousNoticePeriod,
            newNoticePeriod,
            rewrite.previousNoticeMaturesAt,
            rewrite.newNoticeMaturesAt,
            rewrite.previousEarliestUnwindAt,
            rewrite.newEarliestUnwindAt,
            reason,
            msg.sender
        );
    }

    /**
     * @notice Sets the global API-wallet slash stake cap.
     * @dev Prospective-only policy update. Reverts if the new cap is below protocol minimum.
     *      Existing managed sub-accounts are not retroactively forced below the new cap; operators must monitor
     *      `isWithinApiWalletSlashStakeCap(...)` and begin shutdown or remediation for any account that becomes
     *      unsupported after the update.
     * @param newApiWalletSlashStakeCapWei New slash-risk cap in HyperCore HYPE wei units.
     */
    function setApiWalletSlashStakeCapWei(uint64 newApiWalletSlashStakeCapWei)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        _validateApiWalletSlashStakeCap(newApiWalletSlashStakeCapWei);

        uint64 previousCapWei = apiWalletSlashStakeCapWei;
        apiWalletSlashStakeCapWei = newApiWalletSlashStakeCapWei;

        emit ApiWalletSlashStakeCapSet(previousCapWei, newApiWalletSlashStakeCapWei, msg.sender);
    }

    /**
     * @notice Sets global execution guard delay.
     * @dev Applies to subsequent notice-start calculations.
     *      Does not rewrite timestamps for an already-started notice.
     * @param newExecutionGuardDelay New execution guard delay in seconds.
     */
    function setExecutionGuardDelay(uint64 newExecutionGuardDelay)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        _validateExecutionGuardDelay(newExecutionGuardDelay);

        uint64 previousDelay = executionGuardDelay;
        executionGuardDelay = newExecutionGuardDelay;

        emit ExecutionGuardDelaySet(previousDelay, newExecutionGuardDelay, msg.sender);
    }

    /**
     * @notice Sets global notice re-open cooldown after cancellation.
     * @dev Applies when cancellation occurs after this update.
     *      Existing `nextNoticeAllowedAt` values are not rewritten.
     * @param newNoticeReopenCooldown New re-open cooldown in seconds.
     */
    function setNoticeReopenCooldown(uint64 newNoticeReopenCooldown)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        _validateNoticeReopenCooldown(newNoticeReopenCooldown);

        uint64 previousCooldown = noticeReopenCooldown;
        noticeReopenCooldown = newNoticeReopenCooldown;

        emit NoticeReopenCooldownSet(previousCooldown, newNoticeReopenCooldown, msg.sender);
    }

    /**
     * @notice Sets the globally configured trusted API wallet used for forced unwind.
     * @param newTrustedShutdownApiWallet New trusted shutdown API wallet address.
     */
    function setTrustedShutdownApiWallet(address newTrustedShutdownApiWallet)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        nonReentrant
    {
        address previousTrustedShutdownApiWallet = trustedShutdownApiWallet;
        trustedShutdownApiWallet = newTrustedShutdownApiWallet;

        emit TrustedShutdownApiWalletSet(previousTrustedShutdownApiWallet, newTrustedShutdownApiWallet, msg.sender);
    }

    /**
     *
     *  PRIVATE FUNCTIONS
     *
     */

    /**
     * @dev Enforces standard protocol minimum notice period.
     */
    function _validateNoticePeriod(uint64 noticePeriod) private pure {
        require(noticePeriod >= MIN_NOTICE_PERIOD, StakeAccountManager__NoticePeriodTooShort());
        require(noticePeriod <= MAX_NOTICE_PERIOD, StakeAccountManager__NoticePeriodTooLong());
    }

    function _validateExceptionalNoticePeriod(uint64 noticePeriod) private pure {
        require(noticePeriod >= MIN_EXCEPTIONAL_NOTICE_PERIOD, StakeAccountManager__ExceptionalNoticeTooShort());
        require(noticePeriod <= MAX_NOTICE_PERIOD, StakeAccountManager__NoticePeriodTooLong());
    }

    function _validateExecutionGuardDelay(uint64 executionGuardDelay_) private pure {
        require(executionGuardDelay_ <= MAX_EXECUTION_GUARD_DELAY, StakeAccountManager__ExecutionGuardDelayTooLong());
    }

    function _validateNoticeReopenCooldown(uint64 noticeReopenCooldown_) private pure {
        require(
            noticeReopenCooldown_ >= MIN_NOTICE_REOPEN_COOLDOWN, StakeAccountManager__NoticeReopenCooldownTooShort()
        );
        require(noticeReopenCooldown_ <= MAX_NOTICE_REOPEN_COOLDOWN, StakeAccountManager__NoticeReopenCooldownTooLong());
    }

    function _grantInitialRoles(InitialRoles memory roles) private {
        if (roles.operator != address(0)) {
            _grantRole(OPERATOR_ROLE, roles.operator);
        }
        if (roles.watchdog != address(0)) {
            _grantRole(WATCHDOG_ROLE, roles.watchdog);
        }
        if (roles.pauser != address(0)) _grantRole(PAUSER_ROLE, roles.pauser);
        if (roles.oracleReporter != address(0)) {
            _grantRole(ORACLE_REPORTER_ROLE, roles.oracleReporter);
        }
        if (roles.protocolFeeOperator != address(0)) {
            _grantRole(PROTOCOL_FEE_ROLE, roles.protocolFeeOperator);
        }
    }

    function _setInitialConfig(
        InitialRoles memory roles,
        uint64 defaultNoticePeriod_,
        uint64 executionGuardDelay_,
        uint64 noticeReopenCooldown_
    ) private {
        // Recommended production setup keeps operators, watchdogs, and reporters separate.
        // This is a best-effort deployment-time check only; `DEFAULT_ADMIN_ROLE` can later grant
        // overlapping roles via AccessControl and this contract cannot prevent that on-chain.
        if (roles.operator != address(0) && roles.watchdog != address(0) && roles.operator == roles.watchdog) {
            revert StakeAccountManager__InvalidRoleConfiguration();
        }
        if (
            roles.operator != address(0) && roles.oracleReporter != address(0) && roles.operator == roles.oracleReporter
        ) {
            revert StakeAccountManager__InvalidRoleConfiguration();
        }

        _validateNoticePeriod(defaultNoticePeriod_);
        _validateExecutionGuardDelay(executionGuardDelay_);
        _validateNoticeReopenCooldown(noticeReopenCooldown_);

        defaultNoticePeriod = defaultNoticePeriod_;
        executionGuardDelay = executionGuardDelay_;
        noticeReopenCooldown = noticeReopenCooldown_;

        emit DefaultNoticePeriodSet(0, defaultNoticePeriod_, msg.sender);
        emit ExecutionGuardDelaySet(0, executionGuardDelay_, msg.sender);
        emit NoticeReopenCooldownSet(0, noticeReopenCooldown_, msg.sender);
    }

    /**
     * @dev Enforces protocol minimum slash-risk cap.
     */
    function _validateApiWalletSlashStakeCap(uint64 apiWalletSlashStakeCapWei_) private pure {
        require(
            apiWalletSlashStakeCapWei_ >= MIN_MANAGED_PRINCIPAL_WEI,
            StakeAccountManager__InvalidApiWalletSlashStakeCap()
        );
    }

    function _requireOperatorOrWatchdog() private view {
        require(
            hasRole(OPERATOR_ROLE, msg.sender) || hasRole(WATCHDOG_ROLE, msg.sender),
            StakeAccountManager__Unauthorized()
        );
    }

    function _requireProtocolFeeOperatorOrAdmin() private view returns (bool isDefaultAdmin) {
        isDefaultAdmin = hasRole(DEFAULT_ADMIN_ROLE, msg.sender);
        require(isDefaultAdmin || hasRole(PROTOCOL_FEE_ROLE, msg.sender), StakeAccountManager__Unauthorized());
    }

    function _requireEmergencyOperator() private view {
        require(
            hasRole(OPERATOR_ROLE, msg.sender) || hasRole(WATCHDOG_ROLE, msg.sender)
                || hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            StakeAccountManager__Unauthorized()
        );
    }

    function _requirePauseOperator() private view {
        require(
            hasRole(PAUSER_ROLE, msg.sender) || hasRole(WATCHDOG_ROLE, msg.sender), StakeAccountManager__Unauthorized()
        );
    }

    function _requireUnpauseOperator() private view {
        require(
            hasRole(PAUSER_ROLE, msg.sender) || hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            StakeAccountManager__Unauthorized()
        );
    }

    function _requireManagedSubAccount(address subAccount) private view {
        require(_managedSubAccounts.contains(subAccount), StakeAccountManager__NotManaged());
    }

    /**
     * @dev Blocks operator-side session-config changes for owner-usable active non-staking actions
     *      while the managed sub-account remains in `ACTIVE` or `SHUTDOWN_NOTICE`.
     *      This only narrows which manager-admin writes are allowed in user-usable phases; it does not mean the user
     *      has recovered direct `HyperCoreSubAccount` admin rights.
     */
    function _requireOperatorSessionConfigMutable(address subAccount, uint8 actionType) private view {
        bool isActiveNonStakingAction = (ACTION_MASK_ACTIVE_NON_STAKING & (uint16(1) << actionType)) != 0;
        LifecycleState state = _managedSubAccountByAddress[subAccount].state;
        bool isUserUsableLifecycleState = state == LifecycleState.ACTIVE || state == LifecycleState.SHUTDOWN_NOTICE;

        require(!isActiveNonStakingAction || !isUserUsableLifecycleState, StakeAccountManager__InvalidState());
    }

    function _requireState(address subAccount, LifecycleState expectedState) private view {
        require(_managedSubAccountByAddress[subAccount].state == expectedState, StakeAccountManager__InvalidState());
    }

    function _requireProvisioningLifecycleState(address subAccount) private view {
        LifecycleState state = _managedSubAccountByAddress[subAccount].state;
        require(
            state == LifecycleState.PROVISIONING || state == LifecycleState.PROVISIONING_UNWIND,
            StakeAccountManager__InvalidState()
        );
    }

    function _requireShutdownControlsNotPaused() private view {
        require(!shutdownControlsPaused, StakeAccountManager__ShutdownControlsPaused());
    }

    /**
     * @dev Ensures managed account address is a canonical deployed Account instance.
     */
    function _requireAccountDeployed(address account_) private view {
        require(AccountFactory(accountFactory).isAccountDeployed(account_), StakeAccountManager__InvalidAccount());
    }

    /**
     * @dev Encodes and executes `ADD_API_WALLET(address(0), apiWalletName)` to delist a single API wallet.
     *      CoreWriter pacing is enforced by `HyperCoreSubAccount`.
     */
    function _executeApiWalletDelist(
        HyperCoreSubAccount subAccount_,
        string calldata apiWalletName,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) private {
        _executeSubAccountAction(
            subAccount_,
            HyperCoreSubAccount.ExecuteActionType.ADD_API_WALLET,
            abi.encode(address(0), apiWalletName),
            nonce,
            sessionEpochId,
            signature
        );
    }

    /**
     * @dev Encodes and executes `ADD_API_WALLET(trustedApiWallet, apiWalletName)` for trusted forced unwind.
     */
    function _executeApiWalletAdd(
        HyperCoreSubAccount subAccount_,
        address apiWallet,
        string calldata apiWalletName,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) private {
        _executeSubAccountAction(
            subAccount_,
            HyperCoreSubAccount.ExecuteActionType.ADD_API_WALLET,
            abi.encode(apiWallet, apiWalletName),
            nonce,
            sessionEpochId,
            signature
        );
    }

    /**
     * @dev Applies forced-unwind lockdown set:
     *      - `ADD_API_WALLET` is manager-controlled,
     *      - account-controlled CoreWriter disposal/trading actions are frozen via sentinel sender.
     */
    function _applyForcedUnwindFreeze(HyperCoreSubAccount subAccount_) private {
        for (uint8 actionType = 0; actionType < 16; actionType++) {
            if ((ACTION_MASK_FORCED_UNWIND_FREEZE & (uint16(1) << actionType)) == 0) continue;

            address authorizedSender =
                actionType == uint8(HyperCoreSubAccount.ExecuteActionType.ADD_API_WALLET) ? address(this) : address(1);
            subAccount_.setAuthorizedSender(HyperCoreSubAccount.ExecuteActionType(actionType), authorizedSender);
        }
    }

    /**
     * @dev Restores ACTIVE-phase account execution rights after notice cancellation.
     */
    function _restoreActiveExecutionRightsAfterNoticeCancellation(HyperCoreSubAccount subAccount_) private {
        _setAuthorizedSenderByMask(subAccount_, ACTION_MASK_ACTIVE_NON_STAKING, address(0));
    }

    /**
     * @dev Returns point-in-time provisioning funding status for a managed sub-account.
     */
    function _provisioningFundingStatusWei(address subAccount, uint64 managedPrincipalWei)
        private
        view
        returns (uint64 remainingStakeAmountWei, uint64 currentSpotHypeWei, uint64 transferAmountNeededWei)
    {
        uint256 currentTotalStakingWei = _currentTotalStakingWei(subAccount);
        remainingStakeAmountWei = _remainingStakeAmountWei(currentTotalStakingWei, managedPrincipalWei);
        currentSpotHypeWei = PrecompileLib.spotBalance(subAccount, HLConstants.hypeTokenIndex()).total;
        transferAmountNeededWei =
            remainingStakeAmountWei > currentSpotHypeWei ? remainingStakeAmountWei - currentSpotHypeWei : 0;
    }

    /**
     * @dev Returns remaining amount to deposit to reach managed principal target, floored at zero.
     */
    function _remainingStakeAmountWei(uint256 currentTotalStakingWei, uint64 managedPrincipalWei)
        private
        pure
        returns (uint64)
    {
        if (currentTotalStakingWei >= managedPrincipalWei) return 0;
        return managedPrincipalWei - currentTotalStakingWei.toUint64();
    }

    /**
     * @dev Returns delegated + undelegated + pending-withdrawal balance for a sub-account.
     */
    function _currentTotalStakingWei(address subAccount) private view returns (uint256) {
        PrecompileLib.DelegatorSummary memory summary = PrecompileLib.delegatorSummary(subAccount);
        return uint256(summary.delegated) + uint256(summary.undelegated) + uint256(summary.totalPendingWithdrawal);
    }

    /**
     * @dev Encodes and executes `STAKING_DEPOSIT(amountWei)` for one provisioning step.
     */
    function _executeStakeDeposit(
        HyperCoreSubAccount subAccount_,
        uint64 amountWei,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) private {
        _executeSubAccountAction(
            subAccount_,
            HyperCoreSubAccount.ExecuteActionType.STAKING_DEPOSIT,
            abi.encode(amountWei),
            nonce,
            sessionEpochId,
            signature
        );
    }

    /**
     * @dev Encodes and executes one sub-account action call.
     */
    function _executeSubAccountAction(
        HyperCoreSubAccount subAccount_,
        HyperCoreSubAccount.ExecuteActionType actionType,
        bytes memory actionData,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) private {
        HyperCoreSubAccount.Action memory action = HyperCoreSubAccount.Action({
            actionType: actionType, actionData: actionData, nonce: nonce, sessionEpochId: sessionEpochId
        });
        subAccount_.execute(address(this), address(0), 0, abi.encode(action, signature), false);
    }

    /**
     * @dev Sets authorized sender for each action type selected by `actionMask`.
     */
    function _setAuthorizedSenderByMask(HyperCoreSubAccount subAccount_, uint16 actionMask, address authorizedSender)
        private
    {
        for (uint8 actionType = 0; actionType < 16; actionType++) {
            if ((actionMask & (uint16(1) << actionType)) != 0) {
                subAccount_.setAuthorizedSender(HyperCoreSubAccount.ExecuteActionType(actionType), authorizedSender);
            }
        }
    }

    /**
     * @dev Self-revokes manager admin for each action type selected by `actionMask`.
     */
    function _selfRevokeAdminByMask(HyperCoreSubAccount subAccount_, uint16 actionMask) private {
        for (uint8 actionType = 0; actionType < 16; actionType++) {
            if ((actionMask & (uint16(1) << actionType)) != 0) {
                subAccount_.selfRevokeAdminForActionType(HyperCoreSubAccount.ExecuteActionType(actionType));
            }
        }
    }

    /**
     * @dev Returns recallable spot HYPE as `max(currentSpot - protectedBaseline, 0)`.
     *      Baseline captures all spot HYPE present at entry to `SHUTDOWN_EXECUTING`.
     */
    function _managedSpotHypeBalanceWei(address subAccount) private view returns (uint64) {
        uint64 spotHypeWei = PrecompileLib.spotBalance(subAccount, HLConstants.hypeTokenIndex()).total;
        uint64 protectedSpotHypeWei = _protectedSpotHypeWeiBySubAccount[subAccount];
        if (spotHypeWei <= protectedSpotHypeWei) {
            return 0;
        }
        return spotHypeWei - protectedSpotHypeWei;
    }
}
