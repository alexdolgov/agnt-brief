// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

interface IAssetReserve {
    function processRedemption(address _recipient, address _collateralAsset, uint256 _amount) external;
}
