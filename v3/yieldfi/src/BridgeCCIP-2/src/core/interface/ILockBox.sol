// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.20;

interface ILockBox {
    // functions
    function unlock(address token, address to, uint256 amount) external;

    // events
    event Sync(address indexed caller, address indexed token, uint256 shares, uint256 sAmount, bool syncType);
    event Unlock(address indexed caller, address indexed token, address indexed to, uint256 amount);
    event Lock(address indexed caller, address indexed token, address indexed from, uint256 amount);
    event ManagerSet(address indexed caller, address indexed manager);
}
