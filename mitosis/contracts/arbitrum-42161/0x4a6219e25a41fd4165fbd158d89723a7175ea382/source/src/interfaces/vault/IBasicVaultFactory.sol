// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {IVaultFactory} from "@src/interfaces/vault/IVaultFactory.sol";

interface IBasicVaultFactory is IVaultFactory {
    function createVault(address asset, string memory name, string memory symbol) external returns (address);
}
