// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.7.6;
pragma abicoder v2;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";

interface IWETH is IERC20 {
    function deposit() external payable;

    function withdraw(uint256 amount) external;

    function depositTo(address account) external payable;

    function withdrawTo(address account, uint256 amount) external;

    receive() external payable;
}
