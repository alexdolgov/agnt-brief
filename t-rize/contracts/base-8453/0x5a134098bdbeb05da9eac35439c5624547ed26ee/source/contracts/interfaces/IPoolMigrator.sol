// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import { Pool } from "contracts/interfaces/IPoolMaturity.sol";

struct MigrationParams {
    uint256 tokenId;
    uint256 fromAmount; 
    uint256 timeMarker;
    uint256 weight;
    Pool fromPool; 
    Pool toPool;
    address initiator;
    bytes params;
}

interface IPoolMigrator {
  
  function executeMigration(
    MigrationParams calldata params
  ) external returns(uint256 amount, uint256 newTimeMarker);

}
