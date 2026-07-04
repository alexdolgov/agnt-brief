// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

/// @title Aegis Vault Factory Owner Actions
/// @notice Contains functions that can only be called by the owner of the Aegis Vault Factory
interface IAegisVaultFactoryOwnerActions {
    /// @notice Parameters for creating an AegisVault
    /// @param depositToken The token the Aegis vault accepts for deposits
    /// @param depositVault The address of the ICHIVault used for depositToken
    /// @param depositVaultDeployer The address of the deployer of the depositVault
    /// @param targetVault The address of the ICHIVault used for targetToken
    /// @param targetVaultDeployer The address of the deployer of the target vault
    /// @param isERC20 If true, the Aegis vault shares will be ERC20 tokens
    struct CreateAegisVaultParams {
        address depositToken;
        address depositVault;
        address depositVaultDeployer;
        address targetVault;
        address targetVaultDeployer;
        bool isERC20;
    }

    /// @notice Creates a new instance of AegisVault for the specified token and its vaults
    /// @dev This function can create multiple Aegis vaults for the same pair of ICHIVaults
    /// @param createAegisVaultParams A struct containing the parameters for creating the AegisVault
    /// @return aegisVault The address of the newly created AegisVault
    function createAegisVault(CreateAegisVaultParams memory createAegisVaultParams) external returns (address aegisVault);

    /// @notice Sets the default fee recipient account address
    /// @dev This address will receive a portion of the fees collected by Aegis vaults
    /// @param _feeRecipient The address to set as the default fee recipient
    function setDefaultFeeRecipient(address _feeRecipient) external;

    /// @notice Sets the default base fee percentage for newly created Aegis vaults
    /// @dev This fee is applied to the targetTokens transferred on rebalances
    /// @param _baseFee The default fee percentage (100 = 1%, 10000 = 100%)
    function setDefaultBaseFee(uint256 _baseFee) external;
}
