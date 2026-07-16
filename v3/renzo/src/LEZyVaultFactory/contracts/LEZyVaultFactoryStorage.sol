// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/proxy/beacon/IBeacon.sol";
import "./LEZyVault/ILEZyVault.sol";

/**
 * @title LEZyVaultFactoryStorageV1
 * @author Renzo Protocol
 * @notice Storage contract for LEZyVaultFactory implementation
 * @dev This abstract contract defines the storage layout for the LEZyVaultFactory upgradeable contract
 */
abstract contract LEZyVaultFactoryStorageV1 {
    /// @notice The beacon contract that points to the vault implementation
    IBeacon public vaultBeacon;

    /// @notice Mapping from vault ID to vault contract address
    /// @dev Vault ID is keccak256(asset, name, symbol)
    mapping(bytes32 => ILEZyVault) public vaults;
}
