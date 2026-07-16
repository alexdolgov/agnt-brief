// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;

import { IICHIVaultDepositGuard } from "./IICHIVaultDepositGuard.sol";

interface IICHIVaultDepositGuardExtendedForMFD is IICHIVaultDepositGuard {

    /// @notice Forwards a deposit to the specified ICHIVault and then stakes in farming contract.
    /// @param vault The address of the ICHIVault to deposit into.
    /// @param vaultDeployer The address of the vault deployer.
    /// @param token The address of the token being deposited.
    /// @param amount The amount of the token being deposited.
    /// @param minimumProceeds The minimum amount of vault tokens to be received.
    /// @param to The address on whose behalf to stake the vault tokens.
    /// @return vaultTokens The number of vault tokens received and staked.
    function forwardDepositAndStakeToICHIVault(
        address vault,
        address vaultDeployer,
        address token,
        uint256 amount,
        uint256 minimumProceeds,
        address to
    ) external returns (uint256 vaultTokens);

    /// @notice Forwards a native currency deposit to ICHIVault and then stakes in farming contract.
    /// @dev Converts the native currency to Wrapped Native Token before deposit.
    /// @param vault The address of the ICHIVault to deposit into.
    /// @param vaultDeployer The address of the vault deployer.
    /// @param minimumProceeds The minimum amount of vault tokens to be received.
    /// @param to The address on whose behalf to stake the vault tokens.
    /// @return vaultTokens The number of vault tokens received and staked.
    function forwardNativeDepositAndStakeToICHIVault(
        address vault,
        address vaultDeployer,
        uint256 minimumProceeds,
        address to
    ) external payable returns (uint256 vaultTokens);

    /// @notice Emergency withdrawal of ERC20 tokens stuck in this contract
    /// @param token The ERC20 token to withdraw
    /// @param to The address to send the tokens to
    /// @param amount The amount of tokens to withdraw
    function emergencyWithdraw(
        address token,
        address to,
        uint256 amount
    ) external;

    /// @notice Emergency withdrawal of native tokens stuck in this contract
    /// @param to The address to send the native tokens to
    /// @param amount The amount of native tokens to withdraw
    function emergencyWithdrawNative(
        address to,
        uint256 amount
    ) external;
}
