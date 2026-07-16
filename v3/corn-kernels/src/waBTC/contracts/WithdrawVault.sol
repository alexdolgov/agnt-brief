// SPDX-License-Identifier: ISC
pragma solidity ^0.8.22;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract WithdrawVault {
    address public asset;
    address public owner;

    constructor(address token) {
        asset = token;
        owner = msg.sender;
    }

    function approve() external {
        IERC20(asset).approve(owner, type(uint256).max);
    }
}