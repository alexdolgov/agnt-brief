// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/// @notice IOnDemandOracle used for oracles that get their value from offchain signed data
/// https://github.com/MonroeProtocol/OnDemandOracle
interface IOnDemandOracle {
  /// @notice Get latest oracle answer (may be stale)
  function latestAnswer() external view returns (int256);
  
  /// @notice Update and get latest oracle answer based on signed offchain data
  /// Reverts on bad priceUpdateData
  function updateAnswer(bytes calldata priceUpdateData) external payable returns (int256);
  
  function decimals() external view returns (uint256);
  
  function lastUpdate() external view returns (uint256);
  
  function isStale() external view returns (bool);
}