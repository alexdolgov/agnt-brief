// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { BaseVaultParameters } from "src/core/Types.sol";

/// @title IBaseVaultFactory
/// @notice Interface for the base vault factory.
interface IBaseVaultFactory {
    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Returns vault parameters for vault deployment.
    /// @return parameters The parameters for vault deployment, including owner, guardian, hooks, root, and oracle
    /// registry.
    function baseVaultParameters() external view returns (BaseVaultParameters memory);
}
