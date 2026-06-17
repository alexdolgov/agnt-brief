// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import {EnumerableSet} from "openzeppelin/utils/structs/EnumerableSet.sol";
import {IStableQiVault} from "../interfaces/IStableQiVault.sol";
import {VaultManagerPoker} from "./VaultManagerPoker.sol";

contract RegVaultPoker is VaultManagerPoker {
    using EnumerableSet for EnumerableSet.AddressSet;

    constructor(address _vaultFeeManager) VaultManagerPoker(_vaultFeeManager) {}

    function withdrawFees() external override {
        for (uint256 i = 0; i < vaultAddresses.length(); i++) {
            address vaultAddress = vaultAddresses.at(i);

            try vaultFeeManager.withdrawFees(vaultAddress, 0) {}
            catch {
                emit withdrawFeesFailed(vaultAddress);
            }
            IStableQiVault vault = IStableQiVault(vaultAddress);
            try vaultFeeManager.transferUnderlyingERC20(vault.collateral()) {}
            catch {
                emit transferUnderlyingERC20Failed(vaultAddress);
            }
        }
    }
}
