// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * @title IAccount
 * @notice Core interface for the Account contract that orchestrates sub-accounts, agents, sessions, and guardians.
 * @dev This interface intentionally covers the generic Account surface used by sub-accounts, tests, and integrations.
 *      Bootstrap-only onboarding extensions are exposed separately via `IBootstrapAccount`.
 */
interface IAccount {
    /**
     *
     *  STRUCTS
     *
     */
    struct ExecuteParams {
        address subAccount;
        bytes data;
        address token;
        uint256 amount;
    }

    struct AddAgent {
        address agent;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct RemoveAgent {
        address agent;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct AddSubAccount {
        address subAccount;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct RemoveSubAccount {
        address subAccount;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct StartSession {
        address sessionAccount;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct EndSession {
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct SetGuardian {
        address subAccount;
        address guardian;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct SendToOwner {
        address token;
        uint256 amount;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct SetAllowance {
        address subAccount;
        address token;
        uint256 amount;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 sessionEpochId;
        uint256 nonce;
        uint256 deadline;
    }

    /// @notice Owner-signed fee authorization for a specific `setAllowance` call.
    /// @dev This is only required when `fee > 0` and `msg.sender != owner`.
    ///      `setAllowanceStructHash` must equal `keccak256(abi.encode(SET_ALLOWANCE_TYPE_HASH, params))`
    ///      where `params` is the `SetAllowance` struct passed to `setAllowance(...)`.
    struct SetAllowanceFeePayment {
        bytes32 setAllowanceStructHash;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
    }

    struct RevokeAllowance {
        address subAccount;
        address token;
        address authorizedSender;
        uint256 maxFee;
        address feeToken;
        uint256 nonce;
        uint256 deadline;
    }

    struct SendFromOwner {
        address token;
        uint256 amount;
        address authorizedSender;
        uint256 sessionEpochId;
        uint256 nonce;
        uint256 deadline;
    }

    struct TokenPermitSignature {
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    /**
     *
     *  VIEW FUNCTIONS
     *
     */

    /// @notice Returns the name of the contract.
    function NAME() external view returns (string memory);

    /// @notice Returns the version of the contract.
    function VERSION() external view returns (string memory);

    /// @notice Returns the current owner address.
    function owner() external view returns (address);

    /// @notice Returns the pending owner address for 2-step ownership transfer.
    function pendingOwner() external view returns (address);

    /// @notice Returns the nonce for EIP-712 signature replay protection.
    function nonce() external view returns (uint256);

    /// @notice Returns the nonce for session-signed operations.
    function sessionNonce() external view returns (uint256);

    /// @notice Returns the current session signer address.
    function sessionAccount() external view returns (address);

    /// @notice Returns the timestamp when the current session was started.
    function sessionStartAt() external view returns (uint256);

    /// @notice Returns the current session epoch id (monotonically increases on each startSession).
    function sessionEpochId() external view returns (uint256);

    /// @notice Returns the recovery manager address.
    /// @dev Must be configured in advance if a third party is expected to initiate recovery after owner key loss.
    function recoveryManager() external view returns (address);

    /// @notice Returns recovery timelock delay (seconds).
    /// @dev Initialized to the minimum valid default in the constructor.
    function recoveryDelay() external view returns (uint256);

    /// @notice Returns recovery grace period (seconds).
    /// @dev Initialized to the minimum valid default in the constructor.
    function recoveryGracePeriod() external view returns (uint256);

    /// @notice Returns proposed recovery owner (address(0) if none).
    function recoveryProposedTo() external view returns (address);

    /// @notice Returns timestamp after which recovery can be executed.
    function recoveryValidAt() external view returns (uint256);

    /// @notice Returns timestamp after which recovery expires.
    function recoveryExpiresAt() external view returns (uint256);

    /// @notice Returns the timestamp of the last recovery proposal.
    function lastRecoveryProposalAt() external view returns (uint256);

    /// @notice Returns the guardian address for a given sub-account.
    function guardianBySubAccount(address subAccount) external view returns (address);

    /// @notice Checks if the contract is currently in a locked (reentrancy guard active) state.
    function isLocked() external view returns (bool);

    /// @notice Returns all registered agent addresses.
    function getAgents() external view returns (address[] memory);

    /// @notice Returns an agent address by index.
    function getAgent(uint256 idx) external view returns (address);

    /// @notice Returns all registered sub-account addresses.
    function getSubAccounts() external view returns (address[] memory);

    /// @notice Returns a sub-account address by index.
    function getSubAccount(uint256 idx) external view returns (address);

    /// @notice Returns the token allowance for a specific sub-account.
    function getAllowance(address subAccount, address token) external view returns (uint256);

    /// @notice Returns a recovery destination wallet by index.
    function getRecoveryWallet(uint256 idx) external view returns (address);

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */

    /// @notice Adds a new agent that can call execute().
    function addAgent(AddAgent calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Removes an existing agent.
    function removeAgent(RemoveAgent calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Sets the recovery manager.
    /// @dev This must be configured in advance if a third party is expected to initiate recovery after owner key loss.
    function setRecoveryManager(address recoveryManager_) external;

    /// @notice Sets recovery timelock configuration.
    /// @dev Constructor already initializes the minimum valid defaults; this function overrides them.
    function setRecoveryConfig(uint256 delay, uint256 gracePeriod) external;

    /// @notice Adds a recovery destination wallet.
    function addRecoveryWallet(address wallet) external;

    /// @notice Removes a recovery destination wallet.
    function removeRecoveryWallet(address wallet) external;

    /// @notice Returns all recovery destination wallets.
    function getRecoveryWallets() external view returns (address[] memory);

    /// @notice Proposes a timelocked recovery transfer to an allowlisted wallet.
    /// @dev Recovery still requires proactive wallet allowlisting, and `recoveryManager` preconfiguration if a third
    ///      party is expected to call this after owner key loss.
    function proposeRecovery(address to) external;

    /// @notice Cancels any pending recovery proposal.
    function cancelRecovery() external;

    /// @notice Executes recovery, setting a pending owner that must acceptOwnership().
    function executeRecovery() external;

    /// @notice Accepts a pending ownership transfer.
    function acceptOwnership() external;

    /// @notice Cancels a pending ownership transfer.
    function cancelOwnershipTransfer() external;

    /// @notice Registers a new sub-account contract.
    function addSubAccount(AddSubAccount calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Unregisters an existing sub-account.
    function removeSubAccount(RemoveSubAccount calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Starts a new session by setting the session signer.
    function startSession(StartSession calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Ends the current session by clearing the session signer.
    function endSession(EndSession calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Sets or removes a Guardian module for a sub-account.
    function setGuardian(SetGuardian calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Transfers tokens from this Account to the owner.
    function sendToOwner(SendToOwner calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Transfers tokens from owner's wallet into this Account.
    function sendFromOwner(
        TokenPermitSignature calldata permitSig,
        SendFromOwner calldata params,
        bytes calldata signature
    ) external;

    /// @notice Sets the token transfer allowance for a sub-account.
    /// @dev If `fee > 0` and `msg.sender != owner`, an additional owner signature is required to authorize paying
    ///      the fee from the Account balance.
    function setAllowance(
        SetAllowance calldata params,
        bytes calldata signature,
        uint256 fee,
        SetAllowanceFeePayment calldata feePayment,
        bytes calldata ownerFeeSignature
    ) external;

    /// @notice Revokes (sets to zero) the token transfer allowance for any sub-account.
    function revokeAllowance(RevokeAllowance calldata params, bytes calldata signature, uint256 fee) external;

    /// @notice Owner escape hatch to invalidate outstanding session signatures.
    function invalidateSessionNonce() external;

    /// @notice Executes actions on sub-accounts with owner-level privileges.
    function executeOwner(ExecuteParams[] calldata executeParams) external;

    /// @notice Executes actions on sub-accounts.
    function execute(ExecuteParams[] calldata executeParams) external;
}
