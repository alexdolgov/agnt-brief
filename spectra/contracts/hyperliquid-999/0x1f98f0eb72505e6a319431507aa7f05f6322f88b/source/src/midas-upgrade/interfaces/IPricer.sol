// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

interface IPricer {
    function getAssetAmount(address asset, uint256 amount) external view returns (uint256);
    function getVaultTokenAmount(address asset, uint256 amount) external view returns (uint256);
}
