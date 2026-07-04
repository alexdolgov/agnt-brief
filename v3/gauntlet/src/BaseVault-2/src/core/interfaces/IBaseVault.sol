// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IVaultHooks } from "src/core/interfaces/IVaultHooks.sol";

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
    error Aera__BeforeSubmitHooksFailed(bytes result);
    error Aera__AfterSubmitHooksFailed(bytes result);
    error Aera__BeforeOperationHooksFailed(uint256 index, bytes result);
    error Aera__AfterOperationHooksFailed(uint256 index, bytes result);
    error Aera__BeforeOperationHooksWithConfigurableHooks();
    error Aera__ProofVerificationFailed();
    error Aera__CursorNotAtTheEndOfCalldata();
    error Aera__InvalidExtractedDataLength();
    error Aera__InvalidBeforeOperationHooksReturnDataLength();
    error Aera__GuardianNotWhitelisted();

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Submit a series of operations to the vault
    /// @param operations Encoded array of operations to submit
    /// ┌─────────────────────────────┬─────────────────────────┬───────────────────────────────────────────────┐
    /// │ FIELDS                      │ SIZE                    │ DESCRIPTION                                   │
    /// ├─────────────────────────────┴─────────────────────────┴───────────────────────────────────────────────┤
    /// │ operationsLength              1 byte                    Number of operations in the array             │
    /// │                                                                                                       │
    /// │ [for each operation]:                                                                                 │
    /// │                                                                                                       │
    /// │   SIGNATURE                                                                                           │
    /// │   target                      20 bytes                  Target contract address                       │
    /// │   calldataLength              2 bytes                   Length of calldata                            │
    /// │   calldata                    <calldataLength> bytes    Calldata (before pipelining)                  │
    /// │                                                                                                       │
    /// │   CLIPBOARD                                                                                           │
    /// │   clipboardsLength            1 byte                    Number of clipboards                          │
    /// │   [for each clipboard entry]:                                                                         │
    /// │       resultIndex             1 byte                    Which operation to take from                  │
    /// │       copyWord                1 byte                    Which word to copy                            │
    /// │       pasteOffset             2 bytes                   What offset to paste it at                    │
    /// │                                                                                                       │
    /// │   CALL TYPE                                                                                           │
    /// │   isStaticCall                1 byte                    1 if static, 0 if a regular call              │
    /// │   [if isStaticCall == 0]:                                                                             │
    /// │                                                                                                       │
    /// │     CALLBACK HANDLING                                                                                 │
    /// │     hasCallback               1 byte                    Whether to allow callbacks during operation   │
    /// │     [if hasCallback == 1]:                                                                            │
    /// │       callbackData =          26 bytes                  Expected callback info                        │
    /// │       ┌────────────────────┬──────────────────────────┬───────────────────┐                           │
    /// │       │ selector (4 bytes) │ calldataOffset (2 bytes) │ caller (20 bytes) │                           │
    /// │       └────────────────────┴──────────────────────────┴───────────────────┘                           │
    /// │                                                                                                       │
    /// │     HOOKS                                                                                             │
    /// │     hookConfig =              1 byte                    Hook configuration                            │
    /// │     ┌─────────────────┬────────────────────────────────────────┐                                      │
    /// │     │ hasHook (1 bit) │ configurableHookOffsetsLength (7 bits) │                                      │
    /// │     └─────────────────┴────────────────────────────────────────┘                                      │
    /// │     if configurableHookOffsetsLength > 0:                                                             │
    /// │         configurableHookOffsets 32 bytes                Packed configurable hook offsets              │
    /// │     if hasHook == 1:                                                                                  │
    /// │         hook                 20 bytes                   Hook contract address                         │
    /// │                                                                                                       │
    /// │     MERKLE PROOF                                                                                      │
    /// │     proofLength              1 byte                     Merkle proof length                           │
    /// │     proof                    <proofLength> * 32 bytes   Merkle proof data                             │
    /// │                                                                                                       │
    /// │     PAYABILITY                                                                                        │
    /// │     hasValue                 1 byte                     Whether to send native token with the call    │
    /// │     [if hasValue == 1]:                                                                               │
    /// │       value                  32 bytes                   Amount of native token to send                │
    /// └───────────────────────────────────────────────────────────────────────────────────────────────────────┘
    function submit(bytes calldata operations) external;

    /// @notice Set the merkle root (or provider) for a guardian
    /// Used to add, remove guardians and update their permissions
    /// @param guardian Address of the guardian
    /// @param root Merkle root (or provider)
    function setGuardianRoot(address guardian, bytes32 root) external;

    /// @notice Set the vault hooks address
    /// @param newHooks Address of the new hooks contract
    function setHooks(IVaultHooks newHooks) external;

    /// @notice Pause the vault, halting the ability for guardians to submit
    function pause() external;

    /// @notice Unpause the vault, allowing guardians to submit operations
    function unpause() external;

    /// @notice Check if the guardian is whitelisted and set the root to zero if not
    /// Used to disable guardians who were removed from the whitelist
    /// after being selected as guardians
    /// @param guardian The guardian address
    function checkGuardianWhitelist(address guardian) external;
}
