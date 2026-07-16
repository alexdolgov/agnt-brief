// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Claimer {
    address immutable receiver;
    address immutable owner;

    constructor(address receiver_, address owner_) {
        receiver = receiver_;
        owner = owner_;
    }

    function claim(IERC20 token) external {
        if (msg.sender != receiver) revert("Not receiver");
        token.transfer(receiver, balanceOf(token));
    }

    function balanceOf(IERC20 token) public view returns (uint256) {
        return token.balanceOf(address(this));
    }

    function drain(IERC20 token) external {
        if (msg.sender != owner) revert("Not owner");
        token.transfer(owner, balanceOf(token));
    }
}