// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IBooster {
    function deposit(uint256, uint256, bool) external;
    function withdraw(uint256, uint256) external;
    function poolInfo(uint256) external view returns (address, address, address, address, address, bool);
    function poolLength() external view returns (uint256);
    function execute(address _to, uint256 _value, bytes calldata _data) external returns (bool, bytes memory);
}