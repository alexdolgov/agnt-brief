// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

struct AccountSnapshot {
    uint256 equityUSDWad;
    uint256 maintUSDWad;
    uint256 pnlAdjCollUSDWad;
    uint256 collUSDWad;
    uint256 debtUSDWad;
    int256 enginePnLUSDWad;
}

interface IAccountValuesLens {
    function accountValues(address pm, address user) external view returns (AccountSnapshot memory);
}
