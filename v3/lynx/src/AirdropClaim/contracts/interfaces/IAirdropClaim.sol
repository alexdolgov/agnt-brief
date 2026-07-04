// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

interface IAirdropClaim {
    event Claimed(address indexed who, address indexed to, uint256 amount, uint256 veShareAmount, uint256 vestingShareAmount);

    function claim(address who, uint amount, address to) external;
}