// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IRouterV1 {
    function currentEpoch() external view returns (uint256);
    function withdrawSignal(address user, uint256 epoch) external view returns (uint256, uint256, bool, bool);
}
