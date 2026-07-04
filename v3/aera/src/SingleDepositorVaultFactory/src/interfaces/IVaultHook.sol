// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

/// @notice Interface for vault-level hooks that get called before and after submits.
interface IVaultHook {
    /// @notice Called before a submit.
    /// @param data Encoded data of the submit.
    /// @param guardian Address of the guardian that submitted.
    function beforeSubmit(bytes memory data, address guardian) external;

    /// @notice Called after a submit.
    /// @param data Encoded data of the submit.
    function afterSubmit(bytes memory data, address guardian) external;
}
