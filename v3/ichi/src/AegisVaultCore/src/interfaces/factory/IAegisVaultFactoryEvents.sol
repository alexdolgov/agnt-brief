// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Aegis Vault Factory Events
/// @notice Contains all events emitted by the AegisVaultFactory contract
interface IAegisVaultFactoryEvents {
    /// @notice Emitted when the AegisVaultFactory is deployed
    /// @param sender The address that deployed the factory
    /// @param ichiVaultFactory The address of the ICHI Vault Factory
    /// @param quoter The address of the Uniswap V3 Quoter
    /// @param aegisVaultImplementation The address of the AegisVault implementation
    /// @param aegisVaultERC20Implementation The address of the AegisVaultERC20 implementation
    /// @param ammName The name of the AMM
    event DeployAegisVaultFactory(
        address indexed sender,
        address ichiVaultFactory,
        address quoter,
        address aegisVaultImplementation,
        address aegisVaultERC20Implementation,
        string ammName
    );

    /// @notice Emitted when a new AegisVault is created
    /// @param sender The address that created the vault
    /// @param aegisVault The address of the newly created AegisVault
    /// @param depositToken The address of the depositToken
    /// @param targetToken The address of the targetToken
    /// @param depositVault The address of the depositVault
    /// @param targetVault The address of the targetVault
    /// @param count The total number of AegisVaults created so far
    event AegisVaultCreated(
        address indexed sender,
        address aegisVault,
        address depositToken,
        address targetToken,
        address depositVault,
        address targetVault,
        uint256 count
    );

    /// @notice Emitted when the default fee recipient is changed
    /// @param sender The address that changed the fee recipient
    /// @param feeRecipient The new default fee recipient address
    event SetDefaultFeeRecipient(address indexed sender, address feeRecipient);

    /// @notice Emitted when the default base fee is changed
    /// @param sender The address that changed the base fee
    /// @param baseFee The new default base fee
    event SetDefaultBaseFee(address indexed sender, uint256 baseFee);
}
