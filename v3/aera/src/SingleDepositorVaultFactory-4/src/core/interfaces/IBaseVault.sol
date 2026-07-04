// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IVaultHook } from "src/core/interfaces/IVaultHook.sol";

/// @notice Interface for the BaseVault
interface IBaseVault {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    event HooksSet(address indexed hooksAddress);
    event GuardianRootSet(address indexed guardian, bytes32 indexed root);

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    error Aera__ZeroAddressGuardian();
    error Aera__ZeroAddressOwner();
    error Aera__CallerIsNotGuardian();
    error Aera__CallerIsNotAuthOrGuardian();
    error Aera__SubmissionFailed(uint256 index, bytes result);
    error Aera__AllowanceIsNotZero(address token, address spender);
    error Aera__ZeroAddressMerkleRoot();
    error Aera__BeforeSubmitHookFailed(bytes result);
    error Aera__AfterSubmitHookFailed(bytes result);
    error Aera__BeforeOperationHookFailed(uint256 index, bytes result);
    error Aera__AfterOperationHookFailed(uint256 index, bytes result);
    error Aera__BeforeOperationHookWithConfigurableHook();
    error Aera__ProofVerificationFailed();
    error Aera__CursorNotAtTheEndOfCalldata();
    error Aera__InvalidExtractedDataLength();
    error Aera__InvalidBeforeOperationHookReturnDataLength();
    error Aera__GuardianNotWhitelisted();

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Submit a new operation to the vault
    /// @param operations Encoded array of operations to submit
    function submit(bytes calldata operations) external;

    /// @notice Sets the guardian address
    /// @param guardian Address of the guardian
    /// @param root Merkle root
    function setGuardianRoot(address guardian, bytes32 root) external;

    /// @notice Sets the hook address
    /// @param newHooks Address of the new hook
    function setHooks(IVaultHook newHooks) external;

    /// @notice Pauses the vault
    function pause() external;

    /// @notice Unpauses the vault
    function unpause() external;

    /// @notice Checks if the guardian is whitelisted and sets the root to zero if not
    /// @param guardian The guardian address
    function checkGuardianWhitelist(address guardian) external;
}
