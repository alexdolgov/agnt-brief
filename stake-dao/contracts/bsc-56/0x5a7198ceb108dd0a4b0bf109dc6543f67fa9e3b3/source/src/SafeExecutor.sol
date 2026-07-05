// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

import {ISafe} from "./interfaces/ISafe.sol";

/// @title  SafeExecutor
/// @notice Acts as a Gnosis Safe owner that does nothing on its own — it only forwards
///         `execTransaction` calls from a whitelist of executor addresses to a whitelist of
///         target Safes. The point is to let delegated relayers trigger Safe transactions
///         without ever granting them an owner key on the Safe itself: the only privileged
///         entity on the Safe is this contract, and this contract refuses to do anything
///         other than forward `execTransaction`.
///
///         Why two whitelists:
///         - `isExecutor`         — addresses allowed to call `execute(...)`. Rotating an
///                                  operator is just a whitelist flip; the Safe's owner set
///                                  never changes.
///         - `isSafeWhitelisted`  — Safes this contract is willing to forward calls to.
///                                  Without it, an executor could direct any call to any
///                                  contract that exposes an `execTransaction` selector.
///
///         Intended deployment shape:
///         - Add this contract as an owner of each Safe you whitelist. Threshold = 1 is the
///           common case, but the contract works with any threshold so long as the caller
///           assembles enough valid `signatures` to clear it (see `execute`).
///         - The `owner` of this contract (managed via two-step transfer) controls both
///           whitelists and the rescue function.
contract SafeExecutor is Ownable2Step {
    using SafeERC20 for IERC20;

    // -------------------------------------------------------------------------
    // State
    // -------------------------------------------------------------------------

    /// @notice Addresses authorised to invoke `execute`. The contract owner is implicitly
    ///         authorised regardless of this mapping (see `onlyExecutor`).
    mapping(address => bool) public isExecutor;

    /// @notice Safes this contract is willing to forward `execTransaction` calls to.
    mapping(address => bool) public isSafeWhitelisted;

    // -------------------------------------------------------------------------
    // Events
    // -------------------------------------------------------------------------

    event ExecutorWhitelistUpdated(address indexed account, bool status);
    event SafeWhitelistUpdated(address indexed safe, bool status);

    event SafeTransactionExecuted(
        address indexed executor,
        address indexed safe,
        address indexed to,
        uint256 value,
        bytes data,
        ISafe.Operation operation
    );

    event Rescued(address indexed token, address indexed to, uint256 amount);

    // -------------------------------------------------------------------------
    // Errors
    // -------------------------------------------------------------------------

    error NotAuthorized();
    error SafeNotWhitelisted();
    error ZeroAddress();
    error LengthMismatch();
    error SafeExecutionFailed();

    // -------------------------------------------------------------------------
    // Modifiers
    // -------------------------------------------------------------------------

    /// @dev The contract owner can always execute. Reason: the owner can already flip the
    ///      executor whitelist at will, so refusing them direct access would just be
    ///      pointless friction. This avoids an extra `setExecutor(owner, true)` step on
    ///      deployment, and lets the owner act as an emergency operator.
    modifier onlyExecutor() {
        if (!isExecutor[msg.sender] && msg.sender != owner()) revert NotAuthorized();
        _;
    }

    // -------------------------------------------------------------------------
    // Constructor
    // -------------------------------------------------------------------------

    /// @param initialOwner Address that will own this contract (whitelist admin + rescuer).
    /// @dev   No explicit zero-address check on `initialOwner`: OZ's `Ownable` constructor
    ///        already reverts with `OwnableInvalidOwner(address(0))` if zero is passed.
    constructor(address initialOwner) Ownable(initialOwner) {}

    // -------------------------------------------------------------------------
    // Executor whitelist management
    // -------------------------------------------------------------------------

    /// @notice Add or remove a single executor.
    function setExecutor(address account, bool status) external onlyOwner {
        _setExecutor(account, status);
    }

    /// @notice Add or remove executors in bulk. `accounts[i]` is paired with `statuses[i]`.
    function setExecutorBatch(address[] calldata accounts, bool[] calldata statuses) external onlyOwner {
        if (accounts.length != statuses.length) revert LengthMismatch();
        for (uint256 i = 0; i < accounts.length; i++) {
            _setExecutor(accounts[i], statuses[i]);
        }
    }

    /// @dev Shared by the single and batch setters so the zero-check, state write, and event
    ///      emission live in exactly one place.
    function _setExecutor(address account, bool status) internal {
        if (account == address(0)) revert ZeroAddress();
        isExecutor[account] = status;
        emit ExecutorWhitelistUpdated(account, status);
    }

    // -------------------------------------------------------------------------
    // Safe whitelist management
    // -------------------------------------------------------------------------

    /// @notice Add or remove a single Safe from the target whitelist.
    /// @dev    We do not verify that `safe` actually has this contract listed as an owner.
    ///         A misconfigured entry simply causes `execute` to revert inside Safe's
    ///         `checkSignatures` later, which is a clearer failure than a silent no-op.
    function setSafeWhitelisted(address safe, bool status) external onlyOwner {
        _setSafeWhitelisted(safe, status);
    }

    /// @notice Add or remove Safes in bulk.
    function setSafeWhitelistedBatch(address[] calldata safes, bool[] calldata statuses) external onlyOwner {
        if (safes.length != statuses.length) revert LengthMismatch();
        for (uint256 i = 0; i < safes.length; i++) {
            _setSafeWhitelisted(safes[i], statuses[i]);
        }
    }

    function _setSafeWhitelisted(address safe, bool status) internal {
        if (safe == address(0)) revert ZeroAddress();
        isSafeWhitelisted[safe] = status;
        emit SafeWhitelistUpdated(safe, status);
    }

    // -------------------------------------------------------------------------
    // Execution
    // -------------------------------------------------------------------------

    /// @notice Forward a call to `ISafe.execTransaction` on a whitelisted Safe.
    /// @dev    The parameters from `to` onward are identical to `ISafe.execTransaction` and
    ///         are passed through unchanged. This contract only adds two gates:
    ///         (1) `msg.sender` must be a whitelisted executor (or the contract owner), and
    ///         (2) `safe` must be in `isSafeWhitelisted`.
    ///
    ///         Why this contract does **not** synthesise signatures:
    ///         The caller is the one who knows which Safe owners are signing this batch.
    ///         Hard-coding a signature scheme here would lock the contract to a single
    ///         deployment topology. Common patterns the caller can use:
    ///         - Threshold = 1 with this contract as the sole owner: pass the pre-validated
    ///           form `abi.encodePacked(uint256(uint160(address(this))), uint256(0), uint8(1))`.
    ///           Safe accepts it because this contract is `msg.sender` on the Safe side.
    ///         - Threshold > 1: collect ECDSA signatures from the other owners off-chain,
    ///           sort by signer address ascending, concatenate, and optionally append the
    ///           pre-validated self-sig above.
    ///
    ///         Failure modes:
    ///         - If `execTransaction` returns `false` (Safe swallowed an inner revert because
    ///           `safeTxGas != 0` or `gasPrice != 0`), this function reverts with
    ///           `SafeExecutionFailed`.
    ///         - If `execTransaction` reverts (e.g. bad signatures, or inner revert with
    ///           `safeTxGas == 0 && gasPrice == 0`), the revert bubbles up as-is.
    /// @param  safe Target Safe to invoke `execTransaction` on.
    /// @return success Return value of `ISafe.execTransaction`.
    function execute(
        address safe,
        address to,
        uint256 value,
        bytes calldata data,
        ISafe.Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes calldata signatures
    ) external onlyExecutor returns (bool success) {
        if (!isSafeWhitelisted[safe]) revert SafeNotWhitelisted();

        success = ISafe(safe)
            .execTransaction(
                to, value, data, operation, safeTxGas, baseGas, gasPrice, gasToken, refundReceiver, signatures
            );

        if (!success) revert SafeExecutionFailed();

        emit SafeTransactionExecuted(msg.sender, safe, to, value, data, operation);
    }

    // -------------------------------------------------------------------------
    // Rescue mistakenly transferred funds
    // -------------------------------------------------------------------------

    /// @notice Sentinel used by `rescue` to denote the chain's native token (ETH/BNB/etc.).
    /// @dev    `address(0)` is the conventional sentinel and is unambiguous because no ERC20
    ///         can be deployed at the zero address.
    address public constant NATIVE_TOKEN = address(0);

    /// @notice Withdraw tokens that were mistakenly sent to this contract.
    /// @dev    This contract normally holds no balance — funds live in the Safe. This entry
    ///         exists only to recover stray transfers (e.g. a user sending ERC20 to the
    ///         executor instead of the Safe).
    ///
    ///         Native-token branch uses `Address.sendValue` rather than `transfer`/`send` so
    ///         the 2300-gas stipend doesn't break recipients that are smart-contract wallets
    ///         with non-trivial `receive` logic. ERC20 branch uses `SafeERC20.safeTransfer`
    ///         so non-standard tokens like USDT (which doesn't return `bool`) work too.
    /// @param  token  Token to withdraw, or `NATIVE_TOKEN` for the native token.
    /// @param  to     Recipient of the withdrawn balance.
    /// @param  amount Amount to withdraw.
    function rescue(address token, address to, uint256 amount) external onlyOwner {
        if (to == address(0)) revert ZeroAddress();

        if (token == NATIVE_TOKEN) {
            Address.sendValue(payable(to), amount);
        } else {
            IERC20(token).safeTransfer(to, amount);
        }

        emit Rescued(token, to, amount);
    }

    // -------------------------------------------------------------------------
    // Receive
    // -------------------------------------------------------------------------

    /// @dev Required so the Safe can refund this contract when `gasPrice > 0` and
    ///      `refundReceiver == address(0)` (Safe's refund logic sends the rebate to the
    ///      caller, which is this contract). Any stray ETH that ends up here can be
    ///      withdrawn via `rescue(NATIVE_TOKEN, ...)`.
    receive() external payable {}
}
