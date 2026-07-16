// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

interface IERC4626Receiver {
    function updateErc4262VaultData(
        uint96 _l1BlockNumber,
        uint256 _totalSupply,
        uint256 _totalAssets,
        uint192 _lastRewardsAmount,
        uint32 _lastSync,
        uint32 _rewardsCycleEnd
    ) external;

    function updateDaiVaultData(uint96 _l1BlockNumber, uint256 _dsr, uint256 _rho, uint256 _chi) external;

    function getPrices() external view returns (bool, uint256, uint256);

    function dsr() external view returns (uint256);
    function chi() external view returns (uint256);
    function rho() external view returns (uint256);
}
