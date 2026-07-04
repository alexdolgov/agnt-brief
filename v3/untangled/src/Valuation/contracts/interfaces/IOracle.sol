// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

interface IOracle {
    function getTokenInfor(
        address tokenAddress,
        address owner
    ) external view returns (uint256 balance, uint256 price, uint8 decimals);
}
