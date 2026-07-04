// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

interface IInstantPool {
    function withdraw(IERC20Upgradeable token, address receiver, uint256 amount) external;
}