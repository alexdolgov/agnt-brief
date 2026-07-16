// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { BaseVaultParameters } from "src/core/Types.sol";
import { IBaseVaultDeployer } from "src/core/interfaces/IBaseVaultDeployer.sol";

/// @title IBaseVaultFactory
/// @notice Interface for the base vault factory
interface IBaseVaultFactory is IBaseVaultDeployer {
    ////////////////////////////////////////////////////////////
    //                       Events                           //
    ////////////////////////////////////////////////////////////

    /// @notice Emitted when the vault is created
    /// @param vault Vault address
    /// @param owner Initial owner address
    /// @param guardian Initial guardian address
    /// @param hooks Vault hooks address
    /// @param root Initial guardian's merkle root or provider
    /// @param description Vault description
    event VaultCreated(
        address indexed vault,
        address indexed owner,
        address indexed guardian,
        address hooks,
        bytes32 root,
        string description
    );

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Create a new vault with the given parameters
    /// @param salt The salt value to use for create2
    /// @param description Vault description
    /// @param baseVaultParams Parameters for vault deployment
    /// @param expectedVaultAddress Expected address of the deployed vault
    /// @return deployedVault Address of the deployed vault
    function create(
        bytes32 salt,
        string calldata description,
        BaseVaultParameters calldata baseVaultParams,
        address expectedVaultAddress
    ) external returns (address deployedVault);
}
