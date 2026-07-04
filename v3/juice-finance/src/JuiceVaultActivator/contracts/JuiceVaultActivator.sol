// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { JuiceAccountManager } from "./juice/JuiceAccountManager.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract JuiceVaultActivator is Ownable {
    JuiceAccountManager public immutable oldAccountManager;
    JuiceAccountManager public immutable newAccountManager;

    error Unauthorized();

    constructor(JuiceAccountManager _oldAccountManager, JuiceAccountManager _newAccountManager) Ownable(msg.sender) {
        oldAccountManager = _oldAccountManager;
        newAccountManager = _newAccountManager;
        oldAccountManager.getLendAsset().approve(oldAccountManager.lendingPool(), type(uint256).max);
    }

    function closeOldAccount(address account) public {
        if (!(oldAccountManager.getAccount(msg.sender) == account)) {
            revert Unauthorized(); //only the owner is allowed to close it
        }

        newAccountManager.repayToCloseAccount(account);
    }

    //function to recover the sent usdb
    function recoverERC20(address to, uint256 amount) public onlyOwner {
        oldAccountManager.getLendAsset().transfer(to, amount);
    }
}
