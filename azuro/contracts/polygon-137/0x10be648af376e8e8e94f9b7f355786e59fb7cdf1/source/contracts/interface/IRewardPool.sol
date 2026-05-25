// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.19;

interface IRewardPool {
    function stakeFor(
        address account,
        uint96 amount
    ) external returns (uint256 stakeId);
}
