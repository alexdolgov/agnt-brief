// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {WeightedBonds, Pool} from "contracts/WeightedBonds.sol";

/* solhint-disable */
contract TEST_WeightedBonds is WeightedBonds {

  constructor(address bondNft) WeightedBonds(bondNft){

  }

  function initPool(Pool calldata pool) public returns(uint16) {
    return _initPool(pool);
  }

  function setReleaseWarmup(uint256 warmup) public {
    _setReleaseWarmup(warmup);
  }

  function clawbackVested(uint256 tokenId, address to) public {
    _clawbackVested(tokenId, to);
  }

  function addMigrator(address migrator) public{
    _addMigrator(migrator);
  }

  function removeMigrator(address migrator) public {
    _removeMigrator(migrator);
  }

}