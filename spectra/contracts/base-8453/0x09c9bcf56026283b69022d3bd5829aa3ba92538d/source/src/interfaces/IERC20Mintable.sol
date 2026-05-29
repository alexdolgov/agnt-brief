// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.28;

interface IERC20Mintable {
    function mint(address account, uint256 amount) external returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
}
