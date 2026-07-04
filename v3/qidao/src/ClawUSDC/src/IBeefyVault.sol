// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IBeefyVault {
    function deposit(uint256 _amount) external;
    function withdraw(uint256 _shares) external;
    function getPricePerFullShare() external view returns (uint256);
    function want() external view returns (address);
    function balanceOf(address account) external view returns (uint256);
}
