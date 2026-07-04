    // SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract FundRecovery {

    address public owner = 0x19F49E0096C1c0C4fA722BA2171D6dA18e9f3702;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function recoverFunds(address token) external {
        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(owner, balance);
    }

    function recoverETH() external {
        uint256 balance = address(this).balance;
        payable(owner).transfer(balance);
    }
}
