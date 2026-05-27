// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IGFMigrator {
  function gfToken() external view returns (address);

  function zentryToken() external view returns (address);

  function migrate() external;

  function MIGRATE_RATE() external view returns (uint256);
}
