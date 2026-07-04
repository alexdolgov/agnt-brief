// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {AutomationCompatibleInterface} from "src/automation/AutomationCompatibleInterface.sol";
import {AutomationBase} from "src/automation/AutomationBase.sol";

abstract contract BaseAutomation is Ownable, AutomationCompatibleInterface, AutomationBase {
    
    function withdraw(address payable to, uint amount) external onlyOwner {
        (bool success, ) = to.call{value: amount}("");
        require(success, "Withdraw failed");
    }

    function withdraw(address token, address to, uint amount) external onlyOwner {
        SafeERC20.safeTransfer(IERC20(token), to, amount);
    }

}