// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the V4 Vault Factory
/// @notice This contract can be used for automatic vaults creation
/// @dev Version: V4 Dex
interface IV4VaultFactory {
  /// @notice Emitted when a vault is created for a pool
  /// @param communityFeeVault The address of the community fee vault
  /// @param pool The address of the V4 Dex pool
  /// @param creator The address of the creator
  /// @param deployer The address of the deployer
  /// @param token0 The address of the first token
  /// @param token1 The address of the second token
  event VaultCreated(
    address indexed communityFeeVault,
    address indexed pool,
    address indexed creator,
    address deployer,
    address token0,
    address token1
  );

  /// @notice Emitted when the default v4 fee manager is changed
  /// @param v4FeeManager The new default v4 fee manager
  event DefaultV4FeeManager(address v4FeeManager);

  /// @notice Thrown when a vault is already created for a pool
  error vaultAlreadyExists();
  /// @notice Thrown when an address input/configuration is invalid
  error InvalidAddress();
  /// @notice Thrown when caller lacks required administrator/factory permission
  error OnlyAdministrator();

  /// @notice returns address of the community fee vault for the pool
  /// @param pool the address of V4 Dex pool
  /// @return communityFeeVault the address of community fee vault
  function getVaultForPool(address pool) external view returns (address communityFeeVault);

  /// @notice creates the community fee vault for the pool if needed
  /// @param pool the address of V4 Dex pool
  /// @return communityFeeVault the address of community fee vault
  function createVaultForPool(
    address pool,
    address creator,
    address deployer,
    address token0,
    address token1
  ) external returns (address communityFeeVault);

  /// @notice Sets default v4 fee manager applied to newly created community vaults
  /// @param newV4FeeManager The default manager address (zero address clears explicit default)
  function setDefaultV4FeeManager(address newV4FeeManager) external;
}
