pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

// @title WBNB Interface 
interface IWBNB is IERC20Upgradeable {
    function deposit() external payable;
    function withdraw(uint256 wad) external;
}
