// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);

    function balanceOf(address account_) external view returns (uint256);

    function transfer(address to_, uint256 amount_) external returns (bool);
}
