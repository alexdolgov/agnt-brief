// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import { VaultStorage } from "./InstitutionalVaultStorage.sol";
import { NonRestakingWithdrawalCredentials } from "./NonRestakingWithdrawalCredentials.sol";
import { AccessManagedUpgradeable } from
    "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import { AccessManager } from "@openzeppelin/contracts/access/manager/AccessManager.sol";

/**
 * @title NonRestakingWithdrawalCredentialsFactory
 * @author Puffer Finance
 * @notice Factory for creating non restaking withdrawal credentials for the InstitutionalVaults
 */
contract NonRestakingWithdrawalCredentialsFactory is VaultStorage, AccessManagedUpgradeable {
    string internal constant VERSION = "2.0.0";

    error WithdrawalCredentialsAlreadyDeployed();

    event NoRestakingWithdrawalCredentialsDeployed(address);

    /**
     * @notice Deploy a new non restaking withdrawal credentials contract
     * This function is meant to be called by the InstitutionalVault contract using a delegatecall
     * It creates a new NonRestakingWithdrawalCredentials contract and sets the address in the vault storage
     * It is possible to call this function only once
     */
    function deployNewStakingWithdrawalCredentials() public {
        // We use the same storage layout as the InstitutionalVault contract, because this is supposed to be called via delegatecall
        Storage storage $ = _getVaultStorage();
        // Make sure that we don't deploy the withdrawal credentials twice
        require($.noRestakingWithdrawalCredentials == address(0), WithdrawalCredentialsAlreadyDeployed());

        // this, is the Vault itself because of delegatecall, so we are fetching the AccessManager from the Vault
        AccessManager manager = AccessManager(AccessManagedUpgradeable(this).authority());

        // Deploy the withdrawal credentials contract
        NonRestakingWithdrawalCredentials withdrawalCredentials =
            new NonRestakingWithdrawalCredentials(address(manager));

        // Set the address in the vault storage
        $.noRestakingWithdrawalCredentials = address(withdrawalCredentials);

        emit NoRestakingWithdrawalCredentialsDeployed(address(withdrawalCredentials));
    }
}
