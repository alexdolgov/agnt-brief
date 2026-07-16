// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IAccountValuesLens {
    function accountValues(
        address pm,
        address user
    )
        external
        view
        returns (uint256 collUSD, uint256 debtUSD, uint256 collUSDNoLTV);
}
