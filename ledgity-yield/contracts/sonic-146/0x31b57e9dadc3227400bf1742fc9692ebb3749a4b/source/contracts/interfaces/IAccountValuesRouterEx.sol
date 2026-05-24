// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IAccountValuesRouterEx {
    function remainingBorrowCapacityUSD(
        address pm,
        address user
    )
        external
        view
        returns (uint256);
}
