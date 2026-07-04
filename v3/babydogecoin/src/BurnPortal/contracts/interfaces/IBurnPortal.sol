// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IBurnPortal {
    function burnedAmount(address) external view returns(uint256);
    function totalBurned() external view returns(uint256);
}