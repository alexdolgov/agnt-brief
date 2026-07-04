// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IVaultHook } from "./IVaultHook.sol";

/// @notice Interface for the BaseVault
interface IBaseVault {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    event HooksSet(address hooksAddress);
    event GuardianSet(address guardian);
    event RootSet(bytes32 root);

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    error Aera__ZeroAddressGuardian();
    error Aera__ZeroAddressOwner();
    error Aera__CallerIsNotGuardian();
    error Aera__CallerIsNotAuthOrGuardian();
    error Aera__GuardianIsOwner();
    error Aera__SubmissionFailed(uint256 index, bytes result);
    error Aera__AllowanceIsNotZero(address token, address spender);
    error Aera__VaultBeforeSubmitHookFailed(bytes result);
    error Aera__VaultAfterSubmitHookFailed(bytes result);
    error Aera__BeforeOperationHookFailed(uint256 index, bytes result);
    error Aera__AfterOperationHookFailed(uint256 index, bytes result);
    error Aera__BeforeOperationHookWithConfigurableHook();
    error Aera__ProofVerificationFailed(bytes data);
    error Aera__CursorNotAtTheEndOfCalldata();

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Submit a new operation to the vault
    /// @param operations Encoded array of operations to submit
    function submit(bytes calldata operations) external;

    /// @notice Sets the guardian address
    /// @param newGuardian Address of the new guardian
    function setGuardian(address newGuardian) external;

    /// @notice Sets the hook address
    /// @param newHooks Address of the new hook
    function setHooks(IVaultHook newHooks) external;

    /// @notice Sets the merkle root
    /// @param newRoot Merkle root
    function setRoot(bytes32 newRoot) external;

    /// @notice Pauses the vault
    function pause() external;

    /// @notice Unpauses the vault
    function unpause() external;
}
