// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import "./IGeneralErrors.sol";

interface ITreasury is IGeneralErrors {
    function deposit(uint256 _amount) external;

    event Deposit(address indexed sender, uint256 amount);
}
