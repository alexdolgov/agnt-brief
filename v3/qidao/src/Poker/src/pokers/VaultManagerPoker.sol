// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import {ReentrancyGuard} from "openzeppelin/security/ReentrancyGuard.sol";
import {Ownable} from "openzeppelin/access/Ownable.sol";
import {EnumerableSet} from "openzeppelin/utils/structs/EnumerableSet.sol";
import {IVaultFeeManager} from "../interfaces/IVaultFeeManager.sol";

abstract contract VaultManagerPoker is ReentrancyGuard, Ownable {
    IVaultFeeManager public vaultFeeManager;

    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet internal vaultAddresses;

    event transferUnderlyingERC20Failed(address token);
    event withdrawFeesFailed(address token);

    constructor(address _vaultFeeManager) {
        vaultFeeManager = IVaultFeeManager(_vaultFeeManager);
    }

    function addVault(address vaultAddress) external onlyOwner {
        vaultAddresses.add(vaultAddress);
    }

    function removeVault(address vaultAddress) external onlyOwner {
        vaultAddresses.remove(vaultAddress);
    }

    function withdrawFees() external virtual;
}
