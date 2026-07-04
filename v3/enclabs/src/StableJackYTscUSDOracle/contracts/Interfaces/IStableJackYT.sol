// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IStableJackYT {
    function getNavPerShare() external view returns (uint256);
    function convertToAssets(uint256 _share) external view returns (uint256);
    function paused() external view returns (bool);
}
