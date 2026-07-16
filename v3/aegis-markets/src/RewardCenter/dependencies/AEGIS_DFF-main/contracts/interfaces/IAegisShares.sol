// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IAegisShares {
    function aegisDffForShares(uint256 amountAegisShares) external view returns (uint256 amountAegisDff);
}
