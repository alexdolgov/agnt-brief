// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface IAevoStaking {
    // Stake for user
    function stakeFor(
        bool isRBN,
        uint256 amount,
        address recipient
    ) external;
}