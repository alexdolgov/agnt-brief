// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IWETH {
    function deposit() external payable;

    function withdraw(uint) external;

    function transfer(address dst, uint wad) external returns (bool);

    function balanceOf(address input) external view returns (uint256);
}
