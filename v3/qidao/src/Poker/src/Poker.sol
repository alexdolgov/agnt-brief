// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import {IResolver} from "./interfaces/IResolver.sol";
import {PerfFeePoker} from "./pokers/PerfFeeVaultPoker.sol";
import {RegVaultPoker} from "./pokers/RegVaultPoker.sol";
import {Ownable} from "openzeppelin/access/Ownable.sol";

contract Poker is IResolver, Ownable {
    PerfFeePoker public immutable perfFeeVaultPoker;
    RegVaultPoker public immutable regVaultPoker;

    constructor(address _vaultFeeManager) {
        regVaultPoker = new RegVaultPoker(_vaultFeeManager);
        perfFeeVaultPoker = new PerfFeePoker(_vaultFeeManager);
    }

    function withdrawFees() external {
        regVaultPoker.withdrawFees();
        perfFeeVaultPoker.withdrawFees();
    }

    function addVaultToRegPoker(address vaultAddress) external onlyOwner {
        regVaultPoker.addVault(vaultAddress);
    }

    function addVaultToPerfFeePoker(address vaultAddress) external onlyOwner {
        perfFeeVaultPoker.addVault(vaultAddress);
    }

    function removeVaultFromRegPoker(address vaultAddress) external onlyOwner {
        regVaultPoker.removeVault(vaultAddress);
    }

    function removeVaultFromPerfFeePoker(address vaultAddress) external onlyOwner {
        perfFeeVaultPoker.removeVault(vaultAddress);
    }

    function checker() external pure override returns (bool canExec, bytes memory execPayload) {
        execPayload = abi.encodeWithSelector(this.withdrawFees.selector);
        return (true, execPayload);
    }
}
