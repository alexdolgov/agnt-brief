// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { IPoolMigrator, MigrationParams } from "contracts/interfaces/IPoolMigrator.sol";

abstract contract BasePoolMigrator is IPoolMigrator {

  address private _pools;

  error SenderIsNotPool(address sender);

  constructor(address pools) {
    _pools = pools;
  }

  function executeMigration(
    MigrationParams calldata params
  ) external returns(uint256 amount, uint256 newTimeMarker)
  {
    if(msg.sender !=  _pools) {
      revert SenderIsNotPool(msg.sender);
    }
    return _executeMigration(params);
  }

  function _executeMigration(
    MigrationParams calldata params
  ) internal virtual returns(uint256 amount, uint256 newTimeMarker);
}