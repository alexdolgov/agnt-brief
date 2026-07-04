// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

interface IModernTreasury {
    function currentEpoch() external view returns (uint256);

    function nextEpochPoint() external view returns (uint256);
}
