// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Aegis Vault Factory State
/// @notice Defines the state variables and read-only functions for the Aegis Vault Factory
/// @dev These methods represent the factory's mutable state, which can change multiple times per transaction
interface IAegisVaultFactoryState {
    /// @notice The default recipient of fees collected by Aegis vaults
    function defaultFeeRecipient() external view returns (address);

    /// @notice The default base fee percentage(expressed in BSP) for newly created Aegis vaults
    function defaultBaseFee() external view returns (uint256);

    /// @notice Retrieves an Aegis vault address for a specific deposit token and index
    /// @param token The deposit token address
    /// @param index The index of the vault in the list for the given deposit token
    /// @return vault The address of the Aegis vault at the specified index for the deposit token
    function allVaultsForDepositToken(address token, uint256 index) external view returns (address vault);

    /// @notice Retrieves an Aegis vault address by its global index
    /// @param index The global index of the vault
    /// @return vault The address of the Aegis vault at the specified global index
    function allVaults(uint256 index) external view returns (address vault);

    /// @notice Returns the total number of Aegis vaults created by the factory
    function allVaultsLength() external view returns (uint256);

    /// @notice Returns the number of Aegis vaults created for a specific deposit token
    /// @param token The deposit token address
    function allVaultsForDepositTokenLength(address token) external view returns (uint256);
}
