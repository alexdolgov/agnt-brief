// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

import {ISisuVault} from "./ISisuVault.sol";

/// @title ISisuVaultFactory
/// @author Fira Labs
/// @notice Interface of Sisu Vault factory.
interface ISisuVaultFactory {
    /// @notice The address of the LM contract.
    function LENDING_MARKET() external view returns (address);

    /// @notice Whether a Sisu vault was created with the factory.
    function isSisuVault(address target) external view returns (bool);

    /// @notice Creates a new Sisu vault.
    /// @param initialOwner The owner of the vault.
    /// @param initialTimelock The initial timelock of the vault.
    /// @param asset The address of the underlying asset.
    /// @param name The name of the vault.
    /// @param symbol The symbol of the vault.
    /// @param salt The salt to use for the Sisu vault's CREATE2 address.
    function createSisuVault(
        address initialOwner,
        uint256 initialTimelock,
        address asset,
        string memory name,
        string memory symbol,
        bytes32 salt
    ) external returns (ISisuVault sisuVault);
}
