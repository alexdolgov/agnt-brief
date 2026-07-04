// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../ProxyCaller.sol";

interface IPoolAdapter {
    function stakingBalance(address pool, bytes memory) external returns (uint256);

    function rewardBalance(address pool, bytes memory) external returns (uint256);

    function deposit(
        address pool,
        uint256 amount,
        bytes memory args
    ) external;

    function withdraw(
        address pool,
        uint256 amount,
        bytes memory args
    ) external;

    function withdrawAll(address pool, bytes memory args) external;

    function stakedToken(address pool) external returns (address);

    function rewardToken(address pool) external returns (address);
}
