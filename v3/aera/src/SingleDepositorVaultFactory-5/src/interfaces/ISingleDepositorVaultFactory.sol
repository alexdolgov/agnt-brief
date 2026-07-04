// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { VaultParameters } from "../Types.sol";

/// @title ISingleDepositorVaultFactory
/// @notice Interface for the V3 vault factory.
interface ISingleDepositorVaultFactory {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    /// @notice Emitted when the vault is created.
    /// @param vault Vault address.
    /// @param owner Initial owner address.
    /// @param guardian Guardian address.
    /// @param hooks Hooks address.
    /// @param root Merkle root for operation verification.
    /// @param description Vault description.
    event VaultCreated(
        address indexed vault,
        address indexed owner,
        address indexed guardian,
        address hooks,
        bytes32 root,
        string description
    );

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    error Aera__DescriptionIsEmpty();
    error Aera__ExpectedVaultAddressIsZero();
    error Aera__WrappedNativeTokenIsZeroAddress();
    error Aera__InvalidWrappedNativeToken();
    error Aera__VaultAddressMismatch(address deployed, address computed);

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Create V3 vault.
    /// @param salt The salt used to generate the vault address.
    /// @param description Vault description.
    /// @param params Struct details for vault deployment.
    /// @param expectedVaultAddress Expected vault address to check against deployed vault address.
    /// @return deployedVault The address of deployed vault.
    function create(
        bytes32 salt,
        string calldata description,
        VaultParameters calldata params,
        address expectedVaultAddress
    ) external returns (address deployedVault);

    /// @notice Calculate deployment address of V3 vault.
    /// @param salt The salt used to generate the vault address.
    /// @return deployedVault The address of deployed vault.
    function computeVaultAddress(bytes32 salt) external view returns (address);

    /// @notice Returns vault parameters for vault deployment.
    /// @return parameters The parameters for vault deployment, including owner, guardian, hooks, root, and oracle
    /// registry.
    function parameters() external view returns (VaultParameters memory);
}
