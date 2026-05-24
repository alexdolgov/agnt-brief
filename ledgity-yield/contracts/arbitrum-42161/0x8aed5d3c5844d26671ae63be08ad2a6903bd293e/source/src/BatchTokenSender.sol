// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

contract BatchTokenSender {
    function batchTransfer(address token, address[] calldata recipients, uint256 amount) external {
        IERC20 erc20 = IERC20(token);
        for (uint256 i = 0; i < recipients.length; i++) {
            require(erc20.transferFrom(msg.sender, recipients[i], amount), "Transfer failed");
        }
    }
}
