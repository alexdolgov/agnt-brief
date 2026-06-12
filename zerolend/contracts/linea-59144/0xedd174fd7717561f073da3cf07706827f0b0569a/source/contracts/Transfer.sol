// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract Transfer {

    constructor() {

    }

    function transfer(IERC20 token,address[] memory accounts, uint256[] memory amounts) external returns (bool) {
        require(accounts.length == amounts.length, "Arrays must have the same length");

        for (uint256 i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            uint256 amount = amounts[i];

            require(account != address(0), "Invalid address");
            require(amount > 0, "Amount must be greater than 0");            
            require(token.transferFrom(msg.sender,account, amount), "transfer failed");
        }

        return true;
    }


}