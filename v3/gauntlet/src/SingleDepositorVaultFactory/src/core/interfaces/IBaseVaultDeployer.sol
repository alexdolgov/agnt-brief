// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { BaseVaultParameters } from "src/core/Types.sol";

/// @notice Interface for vault deployer
interface IBaseVaultDeployer {
    ////////////////////////////////////////////////////////////
    //                       Errors                           //
    ////////////////////////////////////////////////////////////

    /// @notice Thrown when vault description is empty
    error Aera__DescriptionIsEmpty();

    /// @notice Thrown when deployed vault address doesn't match expected address
    /// @param deployed Address of the deployed vault
    /// @param expected Expected address of the vault
    error Aera__VaultAddressMismatch(address deployed, address expected);

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Vault parameters for vault deployment
    /// @return parameters Parameters used for vault deployment, including owner, guardian, hooks, root, and whitelist
    /// @dev Necessary to support deterministic vault deployments
    function baseVaultParameters() external view returns (BaseVaultParameters memory);

    /// @notice Calculate deployment address of vault
    /// @param salt The salt value to create vault
    /// @return Calculated deployment address
    function computeVaultAddress(bytes32 salt) external view returns (address);
}
