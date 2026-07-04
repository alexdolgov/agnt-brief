// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct CurrentRateInfo {
    uint32 lastBlock;
    uint32 feeToProtocolRate; // Fee amount 1e5 precision
    uint64 lastTimestamp;
    uint64 ratePerSec;
    uint64 fullUtilizationRate;
}

struct VaultAccount {
    uint128 amount; // Total amount, analogous to market cap
    uint128 shares; // Total shares, analogous to shares outstanding
}

interface IIsolatedPool {
    function addInterest(bool _returnAccounting) external returns (
      uint256 _interestEarned,
      uint256 _feesAmount,
      uint256 _feesShare,
      CurrentRateInfo memory _currentRateInfo,
      VaultAccount memory _totalAsset,
      VaultAccount memory _totalBorrow
    );
}