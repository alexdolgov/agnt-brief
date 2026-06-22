// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

interface ICustodian {
    function assetIdToMaturityToVault(uint256 _assetId, uint256 _maturity) external view returns (address);
}