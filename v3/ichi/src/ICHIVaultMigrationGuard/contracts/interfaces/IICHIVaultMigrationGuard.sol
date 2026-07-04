// SPDX-License-Identifier: Unlicense
pragma solidity >=0.5.0;

import { IICHIVaultDepositGuard } from "./IICHIVaultDepositGuard.sol";

interface IICHIVaultMigrationGuard is IICHIVaultDepositGuard {

    /// @notice Retrieves the address of the old factory used for source vaults.
    /// @return Address of the old factory.
    function oldFactory() external view returns (address);

    /// @notice Retrieves the address of the new factory used for destination vaults.
    /// @return Address of the new factory.
    function newFactory() external view returns (address);

    /// @notice Migrates shares from one ICHI vault to another vault of the same type.
    /// @dev Withdraws from the `fromVault` (using oldFactory) and deposits allowed tokens into the `toVault` (using newFactory). 
    ///      Tokens not allowed by the destination vault are sent directly to the recipient.
    /// @param fromVault The source vault to withdraw shares from.
    /// @param fromVaultDeployer The deployer address used to validate `fromVault` against oldFactory.
    /// @param toVault The destination vault to deposit tokens into.
    /// @param toVaultDeployer The deployer address used to validate `toVault` against newFactory.
    /// @param shares The amount of vault shares to migrate from `fromVault`.
    /// @param minimumProceedsShares Minimum number of `toVault` shares expected from the migration.
    /// @param minimumProceedsToken0 Minimum amount of token0 sent directly to user.
    /// @param minimumProceedsToken1 Minimum amount of token1 sent directly to user.
    /// @param to Address receiving the newly minted `toVault` shares and any tokens not deposited.
    /// @return sharesOut The amount of `toVault` shares minted to `to`.
    /// @return token0Out The amount of token0 sent directly to `to`.
    /// @return token1Out The amount of token1 sent directly to `to`.
    function migrateVaultShares(
        address fromVault,
        address fromVaultDeployer,
        address toVault,
        address toVaultDeployer,
        uint256 shares,
        uint256 minimumProceedsShares,
        uint256 minimumProceedsToken0,
        uint256 minimumProceedsToken1,
        address to
    ) external returns (uint256 sharesOut, uint256 token0Out, uint256 token1Out);

    /// @notice Emergency withdraw function to rescue tokens accidentally sent to this contract
    /// @param token The token address to rescue
    /// @param to The address to send the rescued tokens to
    /// @param amount The amount of tokens to rescue
    function emergencyWithdraw(
        address token,
        address to,
        uint256 amount
    ) external;

    /// @notice Emergency withdraw function to rescue native tokens accidentally sent to this contract
    /// @param to The address to send the rescued native tokens to
    /// @param amount The amount of native tokens to rescue
    function emergencyWithdrawNative(
        address to,
        uint256 amount
    ) external;
} 