// SPDX-License-Identifier: MIT

pragma solidity 0.8.21;

interface IVester {
    function esToken() external view returns (address);
    function pairToken() external view returns (address);
    function deposit(uint256 _amount) external;
    function withdraw() external;
    function claimableToken() external view returns (address);
}