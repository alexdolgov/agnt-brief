// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IxGF {
  /// token that is locked in the staking contract
  function token() external view returns (address);

  /// transfer token to migrator
  function transferToMigrator() external;
}
