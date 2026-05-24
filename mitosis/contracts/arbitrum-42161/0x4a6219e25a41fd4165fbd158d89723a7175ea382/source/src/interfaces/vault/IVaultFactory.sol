// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

interface IVaultFactory {
    function isVault(address vault) external view returns (bool);
}
