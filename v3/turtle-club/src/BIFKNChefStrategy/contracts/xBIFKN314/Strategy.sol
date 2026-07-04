// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

abstract contract Strategy {
    function deposit() external virtual;

    function withdraw(uint256 amount) external virtual;

    function withdrawAll() external virtual;

    function emergencyWithdraw() external virtual;

    function harvest() external virtual;

    function totalAssets() external view virtual returns (uint256);

    function pendingRewards() external view virtual returns (uint256);

    function stakedAmount() external view virtual returns (uint256);
}
