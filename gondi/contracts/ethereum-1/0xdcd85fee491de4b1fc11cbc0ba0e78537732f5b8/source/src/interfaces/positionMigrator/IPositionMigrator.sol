// SPDX-License-Identifier: AGPL-3.0

pragma solidity ^0.8.20;

import {IPool} from "@aave/interfaces/IPool.sol";
import {IMultiSourceLoan} from "../loans/IMultiSourceLoan.sol";

/**
 * @title IPositionMigrator
 * @author Florida St
 * @notice Interface for position migration using Aave flash loans
 */
interface IPositionMigrator {
    /**
     * @notice Parameters for borrowing assets from Aave pool
     * @param pool The Aave pool contract to borrow from
     * @param recipient The address to send the borrowed assets to
     * @param assets Array of asset addresses to borrow
     * @param amounts Array of amounts to borrow for each asset (must match assets array length)
     */
    struct AaveBorrowArgs {
        IPool pool;
        address recipient;
        address[] assets;
        uint256[] amounts;
    }

    /**
     * @notice Parameters for a position in the portfolio
     * @param contractAddress The address of the contract to call
     * @param callData The calldata to send to the contract
     * @param value The value to send to the contract
     */
    struct Position {
        address contractAddress;
        bytes callData;
        uint256 value;
    }

    /**
     * @notice Parameters for smart migrating a position
     * @param close The position to close
     * @param open The position to open
     * @param borrowArgs Parameters for the Aave flash loan
     * @param migrator The address of the migrator (we will retrieve the assets from this address)
     */
    struct PositionMigrationArgs {
        Position close;
        Position open;
        AaveBorrowArgs borrowArgs;
        address approvalContract;
        address migrator;
        uint256 nonce;
    }

    /**
     * @notice Parameters for smart migrating a position
     * @param migrationArgs Parameters for the position migration
     * @param migratorSignature Signature of the migrator
     */
    struct SmartMigrationArgs {
        PositionMigrationArgs migrationArgs;
        bytes migratorSignature;
    }

    /**
     * @notice Event emitted when a migration is executed
     * @param closeContract The contract where the position was closed
     * @param openContract The contract where the position was opened
     */
    event SmartMigration(address closeContract, address openContract);

    /**
     * @notice Error emitted when a signature is invalid
     */
    error InvalidSignatureError();

    /**
     * @notice Error emitted when the target contract call fails
     */
    error TargetContractCallFailed();

    /**
     * @notice Smart migrates a position using Aave flash loans
     * @dev This function allows users to migrate a position by:
     *      1. Using Aave flash loan to temporarily fund the operation
     *      2. Executing an arbitrary call to the close position contract
     *      3. Executing an arbitrary call to the open position contract
     *      4. Repaying the flash loan with the new position proceeds
     * @param args Complete parameters for the smart migration operation
     */
    function smartMigrate(SmartMigrationArgs calldata args) external payable;

    /**
     * @notice Error emitted when any of the target contracts is not whitelisted
     */
    error NotWhitelistedAddressError();

    /**
     * @notice Error emitted when the pool flow is not valid
     */
    error InvalidPoolFlowError();

    /**
     * @notice Error emitted when a nonce is invalid
     */
    error InvalidNonceError();
}
