//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

interface CurvePool {
    function coins(uint256) external returns (address);
    function exchange(int128, int128, uint256, uint256) external;
}
