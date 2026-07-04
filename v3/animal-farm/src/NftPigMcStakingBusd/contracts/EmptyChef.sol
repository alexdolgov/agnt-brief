// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract EmptyChef {
    // Maximises yields in pancakeswap
    uint256 public wantLockedTotal = 0;

    // Receives new deposits from user
    function deposit(uint256 _wantAmt) external returns (uint256) {
        return _wantAmt;
    }

    function withdraw(uint256 _wantAmt) external returns (uint256) {
        return _wantAmt;
    }
}
