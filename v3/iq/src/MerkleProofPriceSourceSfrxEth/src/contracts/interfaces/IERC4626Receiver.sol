// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

interface IERC4626Receiver {
    function updateErc4262VaultData(
        uint256 _totalSupply,
        uint256 _totalAssets,
        uint192 _lastRewardsAmount,
        uint32 _lastSync,
        uint32 _rewardsCycleEnd
    ) external;
}
