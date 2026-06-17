// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { IPool } from "./IPool.sol";

interface ISigmaClisBNBSYPool is IPool {
  /// @notice Fee ratio for opening position.
  /// @return The fee ratio for opening position, multiplied by 1e9.
  function getOpenFeeRatio() external view returns (uint256);

  /// @notice Fee ratio for closing position.
  /// @return The fee ratio for closing position, multiplied by 1e9.
  function getCloseFeeRatio() external view returns (uint256);
}
