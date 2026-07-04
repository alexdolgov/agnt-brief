// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

interface IWETH {
    function deposit() external payable;

    function withdraw(uint256) external;

    function transfer(address dst, uint wad) external returns (bool);
}
