// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * @title IStakeAccountManager
 * @notice Interface for the StakeAccountManager coordinating LST-managed HYPE stake in HyperCoreSubAccount instances.
 */
interface IStakeAccountManager {
    /**
     *
     *  ENUMS
     *
     */
    enum LifecycleState {
        NONE,
        PROVISIONING,
        PROVISIONING_UNWIND,
        ACTIVE,
        SHUTDOWN_NOTICE,
        SHUTDOWN_UNWIND,
        SHUTDOWN_EXECUTING,
        DETACHED
    }

    /**
     *
     *  STRUCTS
     *
     */

    struct ManagedSubAccountInfo {
        address account;
        address subAccount;
        uint64 managedPrincipalWei;
        uint64 targetRecallWei;
        uint64 noticePeriod;
        uint64 shutdownNoticeStartedAt;
        uint64 shutdownNoticeMaturesAt;
        uint64 shutdownEarliestUnwindAt;
        uint64 nextNoticeAllowedAt;
        LifecycleState state;
    }

    /// @dev Forced-unwind status for the current shutdown cycle.
    ///      `latestUnwindReportHash` stores only the most recent reporter evidence hash:
    ///      both wallet-cleanup attestation and flat-state attestation write to this slot.
    ///      Consumers must use emitted events plus boolean flags to determine which attestation
    ///      the current hash corresponds to.
    struct ShutdownUnwindStatus {
        bool apiWalletsCleared;
        bool trustedApiWalletActive;
        bool flatStateAttested;
        uint64 shutdownUnwindStartedAt;
        bytes32 trustedApiWalletNameHash;
        bytes32 latestUnwindReportHash;
    }

    struct CreateManagedSubAccountParams {
        address account;
        address expectedSubAccount;
        address initialOwner;
        bool[16] skipSessionSignature;
        uint256[16] sessionExpiryByActionType;
        uint64 noticePeriod;
        uint64 managedPrincipalWei;
    }

    /**
     *
     *  EVENTS
     *
     */

    event ManagedSubAccountCreated(
        address indexed subAccount,
        address indexed account,
        address indexed lstRecipient,
        uint64 noticePeriod,
        uint256 managedPrincipalWei,
        address caller
    );

    event ProvisioningCompleted(address indexed subAccount, uint256 managedPrincipalWei, address caller);

    event ProvisioningStakeDeposited(
        address indexed subAccount, uint64 amountWei, uint64 remainingAfterWei, address indexed caller
    );

    event ProvisioningUnwindStarted(address indexed subAccount, string reason, address indexed caller);

    event ProvisioningStakeWithdrawn(address indexed subAccount, uint64 amountWei, address indexed caller);

    event ProvisioningHypeRecalled(address indexed subAccount, uint64 amountWei, address indexed caller);

    event ProvisioningAborted(address indexed subAccount, address indexed caller);

    event ShutdownNoticeStarted(
        address indexed subAccount,
        uint64 shutdownNoticeStartedAt,
        uint64 shutdownNoticeMaturesAt,
        uint64 shutdownEarliestUnwindAt,
        string reason,
        address indexed caller
    );

    event ShutdownNoticeCancelled(
        address indexed subAccount, uint64 nextNoticeAllowedAt, string reason, address caller
    );

    event ShutdownUnwindStarted(
        address indexed subAccount, uint64 shutdownUnwindStartedAt, string reason, address indexed caller
    );

    event ShutdownApiWalletDelisted(address indexed subAccount, string apiWalletName, address indexed caller);

    event ShutdownApiWalletsClearedAttested(
        address indexed subAccount, bytes32 indexed reportHash, address indexed caller
    );

    event ShutdownTrustedApiWalletInstalled(
        address indexed subAccount, address indexed trustedApiWallet, string apiWalletName, address indexed caller
    );

    event ShutdownTrustedApiWalletRemoved(address indexed subAccount, string apiWalletName, address indexed caller);

    event ShutdownFlatStateAttested(address indexed subAccount, bytes32 indexed reportHash, address indexed caller);

    event ShutdownExecutionStarted(address indexed subAccount, address indexed caller);

    event TrustedShutdownApiWalletSet(
        address indexed previousTrustedApiWallet, address indexed newTrustedApiWallet, address indexed caller
    );

    event StakeWithdrawn(address indexed subAccount, uint64 amountWei, address indexed caller);

    event HypeRecalled(address indexed subAccount, uint64 amountWei, address indexed caller);

    event TargetRecallSyncedToRecoverable(
        address indexed subAccount,
        uint64 previousTargetRecallWei,
        uint64 newTargetRecallWei,
        uint64 recoverableWei,
        uint64 principalWriteDownWei,
        address indexed caller
    );

    event ManagerDetached(address indexed subAccount, address indexed caller);

    event ShutdownControlsPaused(address indexed caller, string reason);

    event ShutdownControlsUnpaused(address indexed caller, string reason);

    event ExecutionGuardDelaySet(uint64 previousDelay, uint64 newDelay, address indexed caller);

    event NoticeReopenCooldownSet(uint64 previousCooldown, uint64 newCooldown, address indexed caller);

    event DefaultNoticePeriodSet(uint64 previousNoticePeriod, uint64 newNoticePeriod, address indexed caller);

    event ApiWalletSlashStakeCapSet(uint64 previousCapWei, uint64 newCapWei, address indexed caller);

    event SubAccountNoticePeriodSet(
        address indexed subAccount, uint64 previousNoticePeriod, uint64 newNoticePeriod, address indexed caller
    );

    event ShutdownNoticeShortened(
        address indexed subAccount,
        uint64 previousNoticePeriod,
        uint64 newNoticePeriod,
        uint64 previousNoticeMaturesAt,
        uint64 newNoticeMaturesAt,
        uint64 previousEarliestUnwindAt,
        uint64 newEarliestUnwindAt,
        string reason,
        address indexed caller
    );

    /**
     *
     *  ERRORS
     *
     */

    error StakeAccountManager__Unauthorized();
    error StakeAccountManager__ZeroAddress();
    error StakeAccountManager__ZeroAmount();
    error StakeAccountManager__InvalidRoleConfiguration();
    error StakeAccountManager__NotActiveOnHyperCore();
    error StakeAccountManager__InsufficientStakedAndDelegated();
    error StakeAccountManager__InvalidPreState();
    error StakeAccountManager__InsufficientManagedPrincipal();
    error StakeAccountManager__InsufficientSpotBalance();
    error StakeAccountManager__ExcessiveStakeDelegation();
    error StakeAccountManager__InvalidAccount();
    error StakeAccountManager__AlreadyManaged();
    error StakeAccountManager__NotManaged();
    error StakeAccountManager__InvalidRecipient();
    error StakeAccountManager__InvalidState();
    error StakeAccountManager__NoticePeriodTooShort();
    error StakeAccountManager__NoticePeriodTooLong();
    error StakeAccountManager__ExceptionalNoticeTooShort();
    error StakeAccountManager__NoticeCanOnlyBeShortened();
    error StakeAccountManager__ShutdownControlsPaused();
    error StakeAccountManager__ShutdownNotReady();
    error StakeAccountManager__ExecutionGuardDelayNotElapsed();
    error StakeAccountManager__ExecutionGuardDelayTooLong();
    error StakeAccountManager__NoticeCooldownNotElapsed();
    error StakeAccountManager__BuilderFeeApprovalCooldownNotElapsed();
    error StakeAccountManager__NoticeReopenCooldownTooShort();
    error StakeAccountManager__NoticeReopenCooldownTooLong();
    error StakeAccountManager__TooManyPendingWithdrawals();
    error StakeAccountManager__NoRecallShortfall();
    error StakeAccountManager__NoStakeRequired();
    error StakeAccountManager__ApiWalletSlashStakeCapExceeded();
    error StakeAccountManager__InvalidApiWalletSlashStakeCap();

    /**
     *
     *  VIEW FUNCTIONS
     *
     */

    /// @notice Returns the name of the contract.
    function NAME() external view returns (string memory);

    /// @notice Returns the version of the contract.
    function VERSION() external view returns (string memory);

    /// @notice Returns the role id used by keeper relayers.
    function OPERATOR_ROLE() external view returns (bytes32);

    /// @notice Returns the role id used by watchdog monitors.
    function WATCHDOG_ROLE() external view returns (bytes32);

    /// @notice Returns the role id used by pause operators.
    function PAUSER_ROLE() external view returns (bytes32);

    /// @notice Returns the role id used by off-chain attestation reporters.
    function ORACLE_REPORTER_ROLE() external view returns (bytes32);

    /// @notice Returns the role id used for routine protocol fee controls.
    /// @dev `DEFAULT_ADMIN_ROLE` retains emergency authority for `approveBuilderFee(...)`
    ///      without requiring this role.
    function PROTOCOL_FEE_ROLE() external view returns (bytes32);

    /// @notice Returns whether shutdown lifecycle controls are currently paused.
    function shutdownControlsPaused() external view returns (bool);

    /// @notice Returns default notice period in seconds used for newly managed sub-accounts.
    function defaultNoticePeriod() external view returns (uint64);

    /// @notice Returns the configured max staking balance allowed for managed accounts that may later release user API wallets.
    function apiWalletSlashStakeCapWei() external view returns (uint64);

    /// @notice Returns additional delay (seconds) after notice maturity before forced unwind is allowed.
    function executionGuardDelay() external view returns (uint64);

    /// @notice Returns cooldown (seconds) enforced after cancellation before notice can be re-opened.
    function noticeReopenCooldown() external view returns (uint64);

    /// @notice Returns the factory used to deploy managed HyperCore sub-accounts.
    function hyperCoreSubAccountFactory() external view returns (address);

    /// @notice Returns the factory used to verify canonical deployed Account instances.
    function accountFactory() external view returns (address);

    /// @notice Returns the immutable HyperCore recipient controlled by the LST protocol.
    function lstRecipient() external view returns (address);

    /// @notice Returns the globally configured trusted API wallet used during forced shutdown unwind.
    function trustedShutdownApiWallet() external view returns (address);

    /// @notice Returns whether a sub-account is managed by this contract.
    function isManagedSubAccount(address subAccount) external view returns (bool);

    /// @notice Returns complete managed state for a sub-account.
    /// @dev Reverts for unmanaged sub-accounts, including addresses that were never managed and sub-accounts already
    ///      removed via `abortProvisioning(...)` or `finalizeDetach(...)`.
    /// @dev Integrations SHOULD NOT use this as a soft existence probe inside fund-critical paths such as
    ///      withdrawals/redemptions. Callers should first gate on `isManagedSubAccount(...)` or equivalent
    ///      lifecycle knowledge if a non-reverting path is required.
    function getManagedSubAccountInfo(address subAccount) external view returns (ManagedSubAccountInfo memory);

    /// @notice Returns all managed sub-account addresses.
    function getManagedSubAccountAddresses() external view returns (address[] memory);

    /// @notice Returns managed sub-account address at `index`.
    function getManagedSubAccountAt(uint256 index) external view returns (address);

    /// @notice Returns count of currently managed sub-account addresses.
    function getManagedSubAccountsCount() external view returns (uint256);

    /// @notice Returns forced-unwind attestation/configuration status for a managed sub-account.
    function getShutdownUnwindStatus(address subAccount) external view returns (ShutdownUnwindStatus memory);

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */

    /// @notice Registers a managed sub-account and initializes its configuration state.
    /// @dev Trust assumption: before `ACTIVE`, sub-account owners should not directly transfer tokens
    ///      (including HYPE) into the sub-account; provisioning funding is intended to follow managed flow only.
    ///      `emergencyRecallProvisioningHype` is a courtesy fallback for spot HYPE only.
    /// @dev On creation, this manager becomes both `adminByActionType` and `authorizedSenderByActionType`
    ///      for all execute action types. That admin assignment persists until detach for every managed lifecycle
    ///      state, even when later lifecycle transitions restore some Account-path execution rights.
    /// @dev Reverts if `managedPrincipalWei` exceeds the configured API-wallet slash stake cap.
    function createManagedSubAccount(CreateManagedSubAccountParams calldata params) external;

    /// @notice Deposits `min(remainingManagedPrincipal, currentSpotHype)` into staking during provisioning.
    /// @dev Reverts if no stake is required, if current spot HYPE is zero, or if this provisioning step would exceed
    ///      the configured API-wallet slash stake cap.
    function stake(address subAccount, uint256 nonce, uint256 sessionEpochId, bytes memory signature) external;

    /// @notice Starts the terminal provisioning-unwind path for a managed sub-account.
    /// @dev Emergency path callable by operator / watchdog / admin.
    ///      This is a one-way transition. Once a sub-account enters `PROVISIONING_UNWIND`, it cannot return to
    ///      `PROVISIONING` or later activate via `completeProvisioning(...)`.
    ///      This is an operational veto of further provisioning, not a handoff back to the user.
    function beginProvisioningUnwind(address subAccount, string calldata reason) external;

    /// @notice Updates delegation/undelegation for a managed sub-account.
    /// @dev `PROVISIONING` allows both delegation and undelegation.
    ///      `ACTIVE` and `SHUTDOWN_NOTICE` allow delegation only.
    ///      `PROVISIONING_UNWIND` allows undelegation only.
    ///      `SHUTDOWN_UNWIND` allows undelegation only after `apiWalletsCleared == true`,
    ///      `trustedApiWalletActive == false`, and `flatStateAttested == true` for the current unwind cycle.
    ///      `SHUTDOWN_EXECUTING` allows undelegation only to recover from delegated stake appearing unexpectedly later.
    function updateStakeDelegation(
        address subAccount,
        address validator,
        uint64 amountWei,
        bool isUndelegate,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external;

    /// @notice Executes APPROVE_BUILDER_FEE for a protocol-fee-eligible sub-account.
    /// @dev Consumes the same per-sub-account one-block CoreWriter slot used by lifecycle actions.
    ///      A compromised or mis-scheduled `PROTOCOL_FEE_ROLE` can temporarily delay lifecycle progress.
    ///      Operational mitigation is governance revocation of the offending signer's `PROTOCOL_FEE_ROLE`.
    /// @dev `PROTOCOL_FEE_ROLE` is limited to one successful approval per eligible sub-account every 5 minutes,
    ///      including after `finalizeDetach(...)`. `DEFAULT_ADMIN_ROLE` bypasses that cooldown for emergency
    ///      recovery, but still consumes the underlying CoreWriter lane.
    /// @dev Eligibility begins only after `completeProvisioning(...)` succeeds and persists after
    ///      `finalizeDetach(...)`. Provisioning-aborted or never-activated sub-accounts are not eligible.
    /// @dev Post-detach eligibility is tracked separately from managed lifecycle membership.
    ///      After `finalizeDetach(...)`, `isManagedSubAccount(subAccount)` is false and managed-state getters revert,
    ///      but `approveBuilderFee(...)` remains callable for protocol-fee-eligible sub-accounts.
    /// @param maxFeeRate Maximum builder fee rate to approve. Zero resets an existing approval to zero.
    function approveBuilderFee(
        address subAccount,
        uint64 maxFeeRate,
        address builder,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external;

    /// @notice Updates skipSessionSignature for a managed sub-account action type.
    /// @dev While a sub-account is managed, the user cannot call `HyperCoreSubAccount.setSkipSessionSignature(...)`
    ///      directly because this manager remains the action admin. This function is the intended managed-lifecycle
    ///      entrypoint for that config surface.
    /// @dev Reverts in `ACTIVE` and `SHUTDOWN_NOTICE` for owner-usable active non-staking actions.
    /// @param actionType Action index mapped to HyperCoreSubAccount.ExecuteActionType.
    function setSkipSessionSignature(address subAccount, uint8 actionType, bool skip) external;

    /// @notice Updates session expiry for a managed sub-account action type.
    /// @dev While a sub-account is managed, the user cannot call `HyperCoreSubAccount.setSessionExpiry(...)`
    ///      directly because this manager remains the action admin. This function is the intended managed-lifecycle
    ///      entrypoint for that config surface.
    /// @dev Reverts in `ACTIVE` and `SHUTDOWN_NOTICE` for owner-usable active non-staking actions.
    /// @param actionType Action index mapped to HyperCoreSubAccount.ExecuteActionType.
    function setSessionExpiry(address subAccount, uint8 actionType, uint256 expiry) external;

    /// @notice Marks provisioning complete and transitions managed state to ACTIVE.
    /// @dev Does not re-enforce the API-wallet slash stake cap at activation time, because exogenous staking drift
    ///      during `PROVISIONING` is handled operationally rather than by bricking activation.
    /// @dev `ACTIVE` restores Account-path execution for selected non-staking actions only; it does not return
    ///      `HyperCoreSubAccount` admin rights. Direct user calls to `setAuthorizedSender(...)`,
    ///      `setSkipSessionSignature(...)`, and `setSessionExpiry(...)` stay blocked until detach.
    function completeProvisioning(address subAccount) external;

    /// @notice Withdraws currently undelegated staking balance during terminal provisioning unwind.
    /// @dev Callable only in `PROVISIONING_UNWIND`.
    ///      Does not modify shutdown execution accounting (`targetRecallWei` / `managedPrincipalWei`).
    function withdrawProvisioningStake(
        address subAccount,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external;

    /// @notice Emergency path to recall all spot HYPE to immutable LST recipient during or after aborted provisioning.
    /// @dev Sweeps the sub-account's current spot HYPE balance at execution time.
    ///      HYPE-specific path. It is not a generic recovery mechanism for arbitrary non-HYPE spot balances.
    ///      This is a courtesy worst-case recovery path and should not replace preflight gating.
    function emergencyRecallProvisioningHype(
        address subAccount,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external;

    /// @notice Emergency path to remove a sub-account from provisioning once staking exposure is zero.
    /// @dev Callable by operator / watchdog / admin.
    /// @dev Residual spot HYPE does not block abort. Aborted provisioning accounts remain HYPE-recallable so
    ///      unsolicited dust cannot permanently grief detach.
    /// @dev Since precondition checks are HYPE-centric, integrations should avoid direct pre-`ACTIVE` token inflows.
    ///      This function clears manager tracking only and is not a generic asset recovery primitive.
    /// @dev Intentional design: unlike `finalizeDetach(...)`, this path does NOT release manager
    ///      admin/authorized-sender control over the HyperCoreSubAccount. An aborted provisioning sub-account is meant
    ///      to be discarded, not later handed to `Account` as a reusable sub-account. The only supported residual path
    ///      is HYPE-specific emergency recall via `emergencyRecallProvisioningHype(...)`.
    function abortProvisioning(address subAccount) external;

    /// @notice Starts shutdown notice and enters SHUTDOWN_NOTICE.
    /// @dev Reverts while shutdown-entry controls are paused.
    function startShutdownNotice(address subAccount, string calldata reason) external;

    /// @notice Cancels an active shutdown notice (operator or watchdog).
    /// @dev This is a temporary veto of forced-shutdown progression while the sub-account is still in
    ///      `SHUTDOWN_NOTICE`.
    ///      The call returns the sub-account to `ACTIVE`, restores cooperative account-path execution rights, and
    ///      starts `noticeReopenCooldown` before notice can be opened again.
    ///      Once `SHUTDOWN_UNWIND` has started, this recovery path is no longer available.
    function cancelShutdownNotice(address subAccount, string calldata reason) external;

    /// @notice Starts the forced unwind phase after notice maturity + execution guard delay.
    /// @dev Reverts while shutdown-entry controls are paused.
    ///      After this point, the watchdog notice-cancellation veto is intentionally closed for the current cycle.
    function beginShutdownUnwind(address subAccount, string calldata reason) external;

    /// @notice Delists a single user API wallet during forced unwind.
    function delistApiWallet(
        address subAccount,
        string calldata apiWalletName,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external;

    /// @notice Attests that all user API wallets have been delisted.
    /// @dev This is a reporter assertion because HyperCore wallet inventory is not queryable by EVM here.
    function attestApiWalletsCleared(address subAccount, bytes32 reportHash) external;

    /// @notice Installs the pre-configured trusted shutdown API wallet for residual unwind.
    function installTrustedApiWallet(
        address subAccount,
        string calldata apiWalletName,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external;

    /// @notice Removes the trusted shutdown API wallet after residual unwind completes.
    function removeTrustedApiWallet(
        address subAccount,
        string calldata apiWalletName,
        uint256 nonce,
        uint256 sessionEpochId,
        bytes memory signature
    ) external;

    /// @notice Attests that the HyperCore account is flat and safe for staking withdrawal/recall.
    /// @dev Robust operation keeps `ORACLE_REPORTER_ROLE` operationally separate from `OPERATOR_ROLE`.
    function attestFlatState(address subAccount, bytes32 reportHash) external;

    /// @notice Transitions from SHUTDOWN_UNWIND into SHUTDOWN_EXECUTING after all preconditions are satisfied.
    /// @dev Reverts while shutdown-entry controls are paused.
    function enterShutdownExecution(address subAccount) external;

    /// @notice Withdraws currently undelegated staking balance back to spot balance.
    /// @dev In `SHUTDOWN_EXECUTING`, this may be called multiple times as new undelegated balance appears.
    ///      Each successful call increases `targetRecallWei` by the withdrawn undelegated amount.
    /// @dev Also requires HyperCore pending-withdrawal count to remain below the current per-account cap.
    function withdrawStake(address subAccount, uint256 nonce, uint256 sessionEpochId, bytes memory signature) external;

    /// @notice Recalls the maximum currently safe amount of HYPE to immutable LST recipient.
    /// @dev Sweeps `min(targetRecallWei, managedSpotHype)` using SEND_HYPE_TO_EXTERNAL_RECIPIENT.
    ///      `targetRecallWei` decreases via recall, but can increase later via additional `withdrawStake` calls.
    function recallHype(address subAccount, uint256 nonce, uint256 sessionEpochId, bytes memory signature) external;

    /// @notice Syncs targetRecallWei down to currently recoverable managed HYPE after an adverse staking event.
    /// @dev Callable by `DEFAULT_ADMIN_ROLE`.
    /// @dev Recoverable managed HYPE is computed by implementation-specific on-chain rules.
    /// @dev Requires delegated stake to already be zero, so sync cannot crystallize a shortfall while stake remains
    ///      live in delegated form.
    /// @dev Downward sync only. This function has no on-chain up-sync path
    ///      (increases can only come from `withdrawStake`).
    function syncTargetRecallWeiToRecoverable(address subAccount) external;

    /// @notice Finalizes shutdown lifecycle by revoking manager authority and entering conceptual `DETACHED`.
    /// @dev `DETACHED` is not persisted on-chain. Managed membership/state are deleted instead.
    /// @dev This is the transition that returns `HyperCoreSubAccount` admin rights for all actions except
    ///      `APPROVE_BUILDER_FEE`; before this point, the manager remains admin for every execute action type.
    function finalizeDetach(address subAccount) external;

    /// @notice Pauses shutdown lifecycle entry controls.
    /// @dev Callable by `PAUSER_ROLE` or `WATCHDOG_ROLE`.
    ///      This is a global brake over `startShutdownNotice(...)`, `beginShutdownUnwind(...)`, and
    ///      `enterShutdownExecution(...)` only.
    ///      In-flight unwind / execution operations remain callable.
    function pauseShutdownControls(string calldata reason) external;

    /// @notice Unpauses shutdown lifecycle controls.
    /// @dev Callable by `PAUSER_ROLE` or `DEFAULT_ADMIN_ROLE`.
    ///      `WATCHDOG_ROLE` can pause but cannot unpause by itself.
    function unpauseShutdownControls(string calldata reason) external;

    /// @notice Updates default notice period for newly managed sub-accounts.
    function setDefaultNoticePeriod(uint64 newNoticePeriod) external;

    /// @notice Updates per-sub-account notice period for future notice starts.
    /// @dev Reverts while the sub-account is already in `SHUTDOWN_NOTICE`; use
    ///      `shortenShutdownNotice(...)` to rewrite an already-live notice.
    function setSubAccountNoticePeriod(address subAccount, uint64 newNoticePeriod) external;

    /// @notice Shortens an already-live shutdown notice under exceptional risk.
    /// @dev Callable only by `DEFAULT_ADMIN_ROLE` while state is `SHUTDOWN_NOTICE`.
    ///      Recomputes `shutdownNoticeMaturesAt` and `shutdownEarliestUnwindAt` from the original
    ///      `shutdownNoticeStartedAt` using the shorter period and the current global `executionGuardDelay`.
    ///      Requires the rewritten `shutdownEarliestUnwindAt` to be no later than the current live value, so
    ///      shortening can never delay forced unwind readiness.
    ///      Also updates the stored per-sub-account `noticePeriod`, so future notice starts use the shortened value
    ///      until governance changes it again.
    function shortenShutdownNotice(address subAccount, uint64 newNoticePeriod, string calldata reason) external;

    /// @notice Updates the max staking balance allowed for managed accounts that may release user API-wallet control.
    /// @dev Prospective-only policy update. Reverts if `newApiWalletSlashStakeCapWei` is below the protocol minimum
    ///      managed principal.
    /// @dev Existing managed sub-accounts are not retroactively forced below the new cap; operators must monitor
    ///      `isWithinApiWalletSlashStakeCap(...)` and begin shutdown or remediation if the update leaves an account
    ///      unsupported.
    function setApiWalletSlashStakeCapWei(uint64 newApiWalletSlashStakeCapWei) external;

    /// @notice Updates execution guard delay before forced unwind may begin.
    function setExecutionGuardDelay(uint64 newExecutionGuardDelay) external;

    /// @notice Updates notice re-open cooldown.
    function setNoticeReopenCooldown(uint64 newNoticeReopenCooldown) external;

    /// @notice Updates the globally configured trusted API wallet used for forced unwind.
    function setTrustedShutdownApiWallet(address newTrustedShutdownApiWallet) external;
}
