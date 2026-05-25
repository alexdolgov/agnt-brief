// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IMaplePool {
    function requestRedeem(uint256 _shares, address _owner) external returns (uint256 escrowedShares_);

    function convertToAssets(uint256 _shares) external view returns (uint256 assets_);
}