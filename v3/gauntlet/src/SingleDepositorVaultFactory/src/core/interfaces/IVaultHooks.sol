// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

/// @title IVaultHooks
/// @notice Interface for hooks that execute before and after submit calls
interface IVaultHooks {
    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Called before a submit
    /// @param data Encoded data of the submit
    /// @param guardian Address of the guardian that submitted
    function beforeSubmit(bytes memory data, address guardian) external;

    /// @notice Called after a submit
    /// @param data Encoded data of the submit
    function afterSubmit(bytes memory data, address guardian) external;
}
