// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IRouter.sol";

/// @notice Unique identifier for a deposit, derived from keccak256(deposit, condition, blockchainState)
type DepositID is bytes32;

/// @title DepositoryTypes
/// @notice Data structures used by the Depository system
library DepositoryTypes {
    /// @notice Represents a token deposit
    /// @param token The ERC20 token being deposited
    /// @param amount The amount of tokens deposited
    /// @param nonce Unique value to differentiate otherwise identical deposits
    struct Deposit {
        IERC20 token;
        uint256 amount;
        uint256 nonce;
    }

    /// @notice Defines the condition that must be satisfied to unlock a deposit
    /// @param unlocker The contract that validates the unlock solution
    /// @param condition ABI-encoded condition data, format depends on the unlocker
    struct UnlockCondition {
        IDepositUnlocker unlocker;
        bytes condition;
    }

    /// @notice Captures blockchain state at the time of deposit locking
    /// @dev Used to calculate time-based conditions and ensure deterministic deposit IDs
    /// @param blockNumber The block number when the deposit was locked
    /// @param timestamp The block timestamp when the deposit was locked
    struct BlockchainState {
        uint blockNumber;
        uint timestamp;
    }
}

/// @title IDepository
/// @notice Interface for the condition-based token deposit and unlock system
/// @dev Users lock tokens with conditions; solvers unlock them by providing valid solutions
interface IDepository {
    /// @notice Emitted when a deposit is locked
    /// @param depositID Unique identifier for this deposit
    /// @param deposit The deposit details (token, amount, nonce)
    /// @param unlocker The unlock condition (validator contract and encoded condition)
    /// @param blockchainState The blockchain state at lock time
    event DepositLocked(
        DepositID indexed depositID,
        DepositoryTypes.Deposit deposit,
        DepositoryTypes.UnlockCondition unlocker,
        DepositoryTypes.BlockchainState blockchainState
    );

    /// @notice Emitted when a deposit is successfully unlocked
    /// @param depositID The identifier of the unlocked deposit
    event DepositUnlocked(DepositID indexed depositID);

    /// @notice Emitted when the router contract is changed
    /// @param oldRouter The previous router address
    /// @param newRouter The new router address
    event SetRouter(IRouter indexed oldRouter, IRouter indexed newRouter);

    /// @notice Thrown when attempting to unlock a deposit that doesn't exist or was already unlocked
    /// @param id The deposit ID that was not found
    error DepositUnavailable(DepositID id);

    /// @notice Thrown when attempting to create a deposit with an ID that already exists
    /// @param id The duplicate deposit ID
    error DepositExists(DepositID id);

    /// @notice Check if a deposit exists and is still locked
    /// @param depositID The deposit identifier to check
    /// @return True if the deposit exists and is locked, false otherwise
    function depositStatus(DepositID depositID) external view returns (bool);

    /// @notice Get the router contract used for token operations
    /// @return The router contract address
    function router() external view returns (IRouter);

    /// @notice Compute the unique identifier for a deposit
    /// @param depository The deposit details
    /// @param condition The unlock condition
    /// @param blockchainState The blockchain state
    /// @return The computed deposit ID
    function depositID(
        DepositoryTypes.Deposit calldata depository,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState calldata blockchainState
    ) external pure returns (DepositID);

    /// @notice Lock tokens with a condition for later unlock
    /// @dev Transfers tokens from msg.sender to the contract
    /// @param deposit The deposit details (token, amount, nonce)
    /// @param condition The condition that must be satisfied to unlock
    function lock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition
    ) external;

    /// @notice Unlock a deposit by providing a valid solution
    /// @dev Anyone can call this if they provide a valid solution
    /// @param deposit The original deposit details
    /// @param condition The original unlock condition
    /// @param blockchainState The blockchain state when the deposit was locked
    /// @param solution ABI-encoded solution data, format depends on the unlocker
    function unlock(
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.UnlockCondition calldata condition,
        DepositoryTypes.BlockchainState calldata blockchainState,
        bytes calldata solution
    ) external;
}

/// @title IDepositUnlocker
/// @notice Interface for contracts that validate unlock solutions
/// @dev Implement this interface to create custom unlock conditions
interface IDepositUnlocker {
    /// @notice Validate and execute an unlock solution
    /// @dev Must revert if the solution is invalid. On success, should transfer tokens from router.
    /// @param router The router contract that temporarily holds the deposit tokens
    /// @param deposit The deposit being unlocked
    /// @param blockchainState The blockchain state when the deposit was originally locked
    /// @param condition ABI-encoded condition data specific to this unlocker
    /// @param solution ABI-encoded solution data that satisfies the condition
    function unlock(
        IRouter router,
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.BlockchainState calldata blockchainState,
        bytes calldata condition,
        bytes calldata solution
    ) external;
}
