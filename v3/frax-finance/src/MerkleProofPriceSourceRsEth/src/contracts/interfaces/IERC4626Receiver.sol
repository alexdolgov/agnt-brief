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

    /// @notice Information about the current rewards cycle
    struct RewardsCycleData {
        uint40 cycleEnd; // Timestamp of the end of the current rewards cycle
        uint40 lastSync; // Timestamp of the last time the rewards cycle was synced
        uint216 rewardCycleAmount; // Amount of rewards to be distributed in the current cycle
    }

    function updatesFRAXData(
        uint96 _l1BlockNumber,
        uint256 _totalSupply,
        uint256 _totalAssets,
        uint256 _lastDistributionAmount,
        RewardsCycleData memory data
    ) external;

    function updateMaxDistributionPerSecond(uint96 _l1BlockNumber, uint256 maxPerSecond) external;
    function updateDaiVaultData(uint96 _l1BlockNumber, uint256 _dsr, uint256 _rho, uint256 _chi) external;

    function getPrices() external view returns (bool, uint256, uint256);

    function dsr() external view returns (uint256);
    function chi() external view returns (uint256);
    function rho() external view returns (uint256);

    function updateSUSDeVaultData(
        uint96 _l1BlockNumber,
        uint256 _totalSupply,
        uint256 _totalAssets,
        uint256 _vestingAmount,
        uint256 _lastDistributionTimestamp
    ) external;

    function updateEzEthRateData(uint96 _l1BlockNumber, uint256 _l1Timestamp, uint256 _ezEthRate) external;

    function updateFpiOracleData(
        uint96 _l1BlockNumber,
        uint256 _rampPeriod,
        uint256 _lastUpdateTime,
        uint256 _pegPriceTarget,
        uint256 _pegpriceLast
    ) external;

    function updateRsEthOracle(uint96 _l1blockNumber, uint256 _l1Timestamp, uint256 _rsEthPrice) external;

    function pricePerShare() external view returns (uint256);
}
