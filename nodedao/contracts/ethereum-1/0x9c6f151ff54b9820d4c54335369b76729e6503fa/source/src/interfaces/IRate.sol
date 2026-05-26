// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IRate {
    event AssetsUpdated(uint256 _totalUnderlyingAsset, uint256 _estimatedRewards, uint256 _blockNumber);
    event AprUpdated(uint256 _oldApr, uint256 _apr);
    event RateManagerChanged(address _oldAprManager, address _aprManager);
}
