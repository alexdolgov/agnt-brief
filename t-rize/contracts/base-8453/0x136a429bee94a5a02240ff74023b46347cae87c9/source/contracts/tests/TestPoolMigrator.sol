// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

import { BasePoolMigrator, MigrationParams } from "contracts/BasePoolMigrator.sol";
import { TEST_Mintable } from "contracts/tests/TestMintable.sol";

/* solhint-disable */
struct TEST_PoolMigratorParams {
  uint256 amount;
  uint256 timeMarker;
}

contract TEST_PoolMigrator is BasePoolMigrator {

  TEST_Mintable _mintable;

  constructor(address pools) BasePoolMigrator(pools){
  }

  function _executeMigration(
    MigrationParams calldata params
  ) internal virtual override returns(uint256, uint256){
    TEST_Mintable fromMintable = TEST_Mintable(params.fromPool.token);
    fromMintable.burn(address(this), params.fromAmount);

    TEST_Mintable toMintable = TEST_Mintable(params.toPool.token);
    TEST_PoolMigratorParams memory swapParams = abi.decode(params.params, (TEST_PoolMigratorParams));
    toMintable.mint(address(this), swapParams.amount);
    toMintable.approve(msg.sender, swapParams.amount);
    return (swapParams.amount, swapParams.timeMarker);
  }

}