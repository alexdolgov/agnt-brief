// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

interface IToken {
    function burn(uint256 amount) external;

    function burnFrom(address account, uint256 amount) external;

    function approve(address spender, uint256 amount) external;

    function transfer(address recipient, uint256 amount) external;

    function balanceOf(address account) external view returns (uint256);

    function transferFrom(address sender, address recipient, uint256 amount) external;
}
