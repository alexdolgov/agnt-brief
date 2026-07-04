// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IPool {
    function totalSupply() external view returns (uint256);
}

interface ICurvePool is IPool {
    function coins(uint256 i) external view returns (address);
    function balances(uint256 i) external view returns (uint256);
}

interface IBeefy is IPool {
    function balance() external view returns (uint256);
}
