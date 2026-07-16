// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface ISolvBTCYieldToken {
    function getValueByShares(uint256 shares) external view returns (uint256 value);
    function getSharesByValue(uint256 value) external view returns (uint256 shares);
}
