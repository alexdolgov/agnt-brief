// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Balance {
    function getBNBBalance(address _address) external view returns(uint) {
        return _address.balance;
    }
}