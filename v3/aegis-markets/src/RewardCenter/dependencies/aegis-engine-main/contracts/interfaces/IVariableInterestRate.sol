// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

/// @notice Minimal interface for variable interest rate calculators consumed by the engine.
interface IVariableInterestRate {
  /// @notice Calculates the new rate and full-utilisation reference.
  /// @param deltaTime Elapsed time since the last update in seconds.
  /// @param utilizationPips Raw utilisation expressed in pips (1_000_000 == 100%).
  ///        Implementations are expected to scale this value as needed.
  /// @param oldFullUtilizationInterest Cached per-second rate when utilisation is 100% (1e18 scale, fits uint64).
  /// @return newRatePerSec Newly computed per-second interest rate (1e18 scale, fits uint64).
  /// @return newFullUtilizationInterest Updated per-second rate at 100% utilisation (1e18 scale, fits uint64).
  function getNewRate(uint256 deltaTime, uint256 utilizationPips, uint64 oldFullUtilizationInterest)
    external
    view
    returns (uint64 newRatePerSec, uint64 newFullUtilizationInterest);

  /// @notice Convenience helper that accepts raw utilisation and performs any scaling internally.
  function getNewRateFromRawUtilization(
    uint256 deltaTime,
    uint256 rawUtilizationPips,
    uint64 oldFullUtilizationInterest
  ) external view returns (uint64 newRatePerSec, uint64 newFullUtilizationInterest);
}
