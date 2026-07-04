// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

interface IMonetrixDepositVault {
    function deposit(uint256 amount) external;
    function usdm() external view returns (address);
}
