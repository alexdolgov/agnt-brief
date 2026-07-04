// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import { GlobalACL, Auth, VESTER } from "./Auth.sol";
import { SafeTransferLib } from "@solmate/utils/SafeTransferLib.sol";
import { ERC20 } from "@solmate/tokens/ERC20.sol";
import { ARB } from "./constants.sol";

contract ArbVaultGmx is GlobalACL {
    using SafeTransferLib for ERC20;

    constructor(Auth _auth) GlobalACL(_auth) { }

    function vestArb(address account, uint256 amount) external onlyRole(VESTER) returns (uint256) {
        uint256 arbBalance = ERC20(ARB).balanceOf(address(this));
        if (amount > arbBalance) {
            ERC20(ARB).safeTransfer(account, arbBalance);
            return arbBalance;
        } else {
            ERC20(ARB).safeTransfer(account, amount);
            return amount;
        }
    }

    function transferToken(ERC20 token, address account, uint256 amount) external onlyConfigurator {
        token.safeTransfer(account, amount);
    }
}