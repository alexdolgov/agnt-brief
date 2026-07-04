// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.23;

interface IMrpcDeposit {

    // balance management
    event DepositReceived(address indexed user, address token, uint256 amount);

    function deposit(address token, uint256 amount) external;
    function depositForUser(address token, uint256 amount, address user) external;
}
