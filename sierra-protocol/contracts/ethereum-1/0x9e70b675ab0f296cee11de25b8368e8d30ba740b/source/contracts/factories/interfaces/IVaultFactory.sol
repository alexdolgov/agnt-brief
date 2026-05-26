// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

/**
 * @title Interface for the VaultFactory.
 */

enum IVaultType {
    Default,
    PoolVault,
    BorrowerVault,
    FeeVault,
    FundingVault
}

interface IVaultFactory {
    /**
     * @dev Emitted when a vault is created.
     */
    event VaultCreated(address indexed owner);

    /**
     * @dev Creates a new vault.
     * @dev Emits a `VaultCreated` event.
     */
    function createVault(
        address owner,
        IVaultType vaultType
    ) external returns (address);
}
