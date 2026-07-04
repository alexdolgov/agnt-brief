// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
import {Vault} from "./Vault.sol";

contract VaultFactory {
    address[] public vaults;

    event NewVaultCreated(
        address vaultAddress,
        address asset,
        address safeAddress
    );

    function createVault(
        address asset,
        string memory name,
        string memory symbol,
        address safeAddress
    ) public {
        Vault newVault = new Vault(asset, name, symbol, safeAddress);

        vaults.push(address(newVault));

        emit NewVaultCreated(address(newVault), asset, safeAddress);
    }
}
