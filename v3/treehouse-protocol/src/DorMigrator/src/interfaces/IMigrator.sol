// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IMigrator {
    function migrateVault(uint8 vaultId, uint256 amount) external returns (bool);
}
