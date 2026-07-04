// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract EmptyChef2 {
    // Maximises yields in pancakeswap
    uint256 public wantLockedTotal = 0;
    constructor(address _dogsV2Token, address _toolbox, address _masterchefDogs){}

    // Receives new deposits from user
    function deposit(uint256 _wantAmt) external returns (uint256) {
        return _wantAmt;
    }

    function withdraw(uint256 _wantAmt) external returns (uint256) {
        return _wantAmt;
    }
}
