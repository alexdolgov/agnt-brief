// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.26;

import {IAmpleEarnFactory} from "./IAmpleEarnFactory.sol";

/*
                                   /$$
                                  | $$
  /$$$$$$  /$$$$$$/$$$$   /$$$$$$ | $$  /$$$$$$
 |____  $$| $$_  $$_  $$ /$$__  $$| $$ /$$__  $$
  /$$$$$$$| $$ \ $$ \ $$| $$  \ $$| $$| $$$$$$$$
 /$$__  $$| $$ | $$ | $$| $$  | $$| $$| $$_____/
|  $$$$$$$| $$ | $$ | $$| $$$$$$$/| $$|  $$$$$$$
 \_______/|__/ |__/ |__/| $$____/ |__/ \_______/
                        | $$
                        | $$
                        |__/
*/

/// @notice A user's recurring deposit schedule.
/// @param user The owner of the schedule (asset payer and share recipient).
/// @param vault The target AmpleEarn vault.
/// @param frequency The intended interval in seconds between consecutive executions. Enforced
///        off-chain; not checked by this contract.
/// @param amount The amount of underlying asset to deposit on each execution.
/// @param fee The amount of underlying asset taken as fee on each execution (in asset units).
///        Backend computes and caps this off-chain; the on-chain contract enforces no cap.
///        Total asset pulled per execution is `amount + fee`.
struct Schedule {
    address user;
    address vault;
    uint32 frequency;
    uint128 amount;
    uint128 fee;
}

/// @notice Result of a single schedule execution inside a batch `execute` call.
/// @param success Whether the execution succeeded.
/// @param returnData On success, the shares minted to the user; zero on failure.
/// @param errorData On failure, the raw revert data returned by the inner call; empty on success.
struct ExecutionResult {
    bool success;
    uint256 returnData;
    bytes errorData;
}

/// @title IAmpleEarnScheduler
/// @author Ample Money
/// @custom:contact security@ample.money
/// @notice Interface for the AmpleEarnScheduler contract.
interface IAmpleEarnScheduler {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           ERRORS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Thrown when the address passed is the zero address.
    error ZeroAddress();

    /// @notice Thrown when the deposit amount is zero.
    error ZeroAmount();

    /// @notice Thrown when the provided frequency is zero.
    error ZeroFrequency();

    /// @notice Thrown when a vault is not registered with the factory.
    error InvalidVault(address vault);

    /// @notice Thrown when no schedule exists for the given id (unset or cancelled).
    error ScheduleNotFound(uint256 id);

    /// @notice Thrown when caller is not the owner of the schedule.
    error CallerNotScheduleOwner(address user, address caller);

    /// @notice Thrown when `executeInternal` is called by an address other than the contract itself.
    error NotSelf();

    /// @notice Thrown when a non-executor calls `execute`.
    error NotExecutor(address caller);

    /// @notice Thrown when the backend signature is past its deadline.
    error SignatureExpired(uint256 deadline);

    /// @notice Thrown when the recovered signer is not authorized.
    error InvalidSigner(address recovered);

    /// @notice Thrown when a nonce has already been consumed.
    error NonceAlreadyUsed(bytes32 nonce);

    /// @notice Thrown when a non-zero fee is configured on a schedule but no fee recipient is set.
    error FeeRecipientNotSet();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:°•.°+.*•´.*:˚.°*/

    /// @notice Emitted when a user creates a recurring deposit schedule.
    event ScheduleCreated(
        address indexed user, uint256 indexed id, address indexed vault, uint128 amount, uint32 frequency, uint128 fee
    );

    /// @notice Emitted when a user cancels a recurring deposit schedule.
    event ScheduleCancelled(address indexed user, uint256 indexed id);

    /// @notice Emitted when a user modifies the amount, frequency and/or fee of an existing schedule.
    event ScheduleModified(address indexed user, uint256 indexed id, uint128 amount, uint32 frequency, uint128 fee);

    /// @notice Emitted on each successful execution that carries a non-zero fee.
    event FeeCollected(address indexed user, uint256 indexed id, address indexed recipient, uint128 fee);

    /// @notice Emitted when the owner updates the fee recipient.
    event FeeRecipientSet(address indexed recipient);

    /// @notice Emitted when a scheduled recurring deposit is executed successfully.
    /// @param user The owner of the schedule (asset payer and share recipient).
    /// @param id The schedule id.
    /// @param caller The executor that invoked `execute`.
    /// @param vault The AmpleEarn vault the deposit was routed to.
    /// @param amount The amount of underlying asset deposited into `vault`.
    /// @param shares The shares minted to `user`.
    event Executed(
        address indexed user, uint256 indexed id, address indexed caller, address vault, uint256 amount, uint256 shares
    );

    /// @notice Emitted when a scheduled recurring deposit fails inside a batch `execute` call.
    /// @dev The batch continues; the schedule's state is unchanged and it remains eligible for retry.
    /// @param id The schedule id that failed.
    /// @param caller The executor that invoked `execute`.
    /// @param reason The raw revert data from the inner call (typically an ABI-encoded custom error).
    event ExecutionFailed(uint256 indexed id, address indexed caller, bytes reason);

    /// @notice Emitted when the owner grants or revokes executor permission for an address.
    /// @param executor The address whose executor permission changed.
    /// @param allowed The new permission state.
    event ExecutorSet(address indexed executor, bool allowed);

    /// @notice Emitted when the owner grants or revokes backend signer permission for an address.
    /// @param signer The address whose signer permission changed.
    /// @param allowed The new permission state.
    event SignerSet(address indexed signer, bool allowed);

    /// @notice Emitted when a backend-issued nonce is consumed by `createSchedule` or `modifySchedule`.
    event NonceUsed(bytes32 indexed nonce);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         IMMUTABLES                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice The AmpleEarnFactory contract address used to validate vaults.
    function factory() external view returns (IAmpleEarnFactory);

    /// @notice The Permit2 contract address (zero if not used on this chain).
    function permit2Address() external view returns (address);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           STORAGE                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice The next schedule id that will be assigned globally.
    function nextScheduleId() external view returns (uint256);

    /// @notice The schedule for a given schedule id.
    /// @dev A zero `vault` indicates the schedule does not exist (unset or cancelled).
    /// @param id The globally unique schedule id.
    /// @return user The owner of the schedule.
    /// @return vault The target AmpleEarn vault.
    /// @return frequency The intended interval in seconds between executions (informational).
    /// @return amount The deposit amount per execution.
    /// @return fee The fee amount pulled alongside each deposit and sent to `feeRecipient`.
    function schedules(uint256 id)
        external
        view
        returns (address user, address vault, uint32 frequency, uint128 amount, uint128 fee);

    /// @notice The address that receives fees collected on each execution. Zero if unset.
    function feeRecipient() external view returns (address);

    /// @notice Whether the given address is authorized to call `execute`.
    function isExecutor(address account) external view returns (bool);

    /// @notice Whether the given address is an authorized backend signer for create/modify.
    function isSigner(address account) external view returns (bool);

    /// @notice Whether the given backend-issued nonce has been consumed.
    function usedNonces(bytes32 nonce) external view returns (bool);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      EXTERNAL FUNCTIONS                    */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Create a new recurring deposit schedule for the caller.
    /// @dev A user may create any number of independent schedules, including multiple against the
    ///      same vault (e.g. different amounts or frequencies). The assigned id is drawn from a
    ///      single global counter shared across all users. The `frequency` is informational
    ///      metadata: the contract does not enforce any time gap between executions. Scheduling
    ///      cadence is driven entirely by the permissioned executor(s) off-chain.
    /// @param vault The AmpleEarn vault to deposit into on each execution.
    /// @param amount The amount of underlying asset to deposit per execution. Must be non-zero.
    /// @param frequency The intended interval in seconds between consecutive executions. Must be
    ///        non-zero. Informational only; not enforced by this contract.
    /// @param fee The fee amount pulled alongside each deposit and sent to `feeRecipient`.
    /// @param nonce Backend-chosen unique nonce; consumed on success.
    /// @param deadline Unix timestamp after which `signature` is invalid.
    /// @param signature EIP-712 signature over `(user, vault, amount, frequency, fee, nonce, deadline)`
    ///        from an address marked as `isSigner`. `user` is bound to `msg.sender`.
    /// @return id The newly assigned globally unique schedule id.
    function createSchedule(
        address vault,
        uint128 amount,
        uint32 frequency,
        uint128 fee,
        bytes32 nonce,
        uint256 deadline,
        bytes calldata signature
    ) external returns (uint256 id);

    /// @notice Cancel one of the caller's recurring deposit schedules.
    /// @dev Reverts with `ScheduleNotFound` if the id does not exist, or
    ///      `CallerNotScheduleOwner` if the caller does not own it. Deletes the schedule
    ///      record and removes the id from the caller's `userScheduleIds` list.
    /// @param id The id of the schedule to cancel.
    function cancelSchedule(uint256 id) external;

    /// @notice Modify the amount and/or frequency of one of the caller's existing schedules.
    /// @dev The target vault is not changed. Reverts with `ScheduleNotFound` if the id does not
    ///      exist, `CallerNotScheduleOwner` if the caller does not own it, or `ZeroAmount` /
    ///      `ZeroFrequency` for invalid inputs.
    /// @param id The schedule id to modify.
    /// @param newAmount The new deposit amount per execution. Must be non-zero.
    /// @param newFrequency The new intended interval in seconds between executions. Must be
    ///        non-zero. Informational only; not enforced by this contract.
    /// @param newFee The new fee amount pulled alongside each deposit and sent to `feeRecipient`.
    /// @param nonce Backend-chosen unique nonce; consumed on success.
    /// @param deadline Unix timestamp after which `signature` is invalid.
    /// @param signature EIP-712 signature over `(id, newAmount, newFrequency, newFee, nonce, deadline)`
    ///        from an address marked as `isSigner`.
    function modifySchedule(
        uint256 id,
        uint128 newAmount,
        uint32 newFrequency,
        uint128 newFee,
        bytes32 nonce,
        uint256 deadline,
        bytes calldata signature
    ) external;

    /// @notice Execute a batch of recurring deposits on behalf of their users.
    /// @dev Restricted to addresses with executor permission (see `isExecutor`) and the `owner()`. Each id is
    ///      executed independently via a self-call to `executeInternal` wrapped in `try/catch`:
    ///      a revert on one id does not abort the batch, and any state changes from the failing
    ///      inner call are reverted by the EVM so the schedule can be retried. Successful ids
    ///      emit `Executed`; failing ids emit `ExecutionFailed` with the raw revert data.
    ///      For each successful id, pulls `amount` of the vault's underlying asset from `user`
    ///      (via Permit2 if allowance is sufficient, otherwise ERC20 `transferFrom`) and deposits
    ///      into `vault`, crediting shares to `user`.
    /// @param ids The schedule ids to execute.
    /// @return results A per-id array of `ExecutionResult`, indexed in the same order as `ids`.
    /// @return successCount Number of ids that executed successfully in this batch.
    function execute(uint256[] calldata ids) external returns (ExecutionResult[] memory results, uint256 successCount);

    /// @notice Grant or revoke executor permission for an address. Owner-only.
    /// @dev Emits `ExecutorSet(executor, allowed)`. Setting `allowed` to the current value is a
    ///      no-op but still emits the event.
    /// @param executor The address whose permission is being set.
    /// @param allowed Whether the address should be authorized to call `execute`.
    function setExecutor(address executor, bool allowed) external;

    /// @notice Grant or revoke backend signer permission for an address. Owner-only.
    /// @dev Emits `SignerSet(signer, allowed)`. Existing schedules are unaffected by revocation —
    ///      only future create/modify calls require a fresh signature from a current signer.
    /// @param signer The address whose signer permission is being set.
    /// @param allowed Whether the address should be trusted to sign create/modify payloads.
    function setSigner(address signer, bool allowed) external;

    /// @notice Set the address that receives fees on each execution. Owner-only.
    /// @dev Setting to `address(0)` disables fee collection — any execution of a schedule whose
    ///      `fee` is non-zero will revert with `FeeRecipientNotSet`. Schedules with `fee == 0`
    ///      always execute regardless of this setting.
    /// @param recipient The address to credit with fees.
    function setFeeRecipient(address recipient) external;

    /// @notice Gets the schedule ids for a user.
    /// @param user The user to get the ids for.
    /// @return userIds The shedule ids of the user
    function getUserScheduleIds(address user) external view returns (uint256[] memory userIds);
}
