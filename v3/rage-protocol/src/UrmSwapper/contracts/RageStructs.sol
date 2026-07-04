// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

library RageStructs {
  // DepotContract: per-caller attribution snapshot
  struct DepotContract {
    address wallet; // registered caller contract address
    uint256 attributed; // total rage attributed to this caller
    uint256 transferred; // total rage already transferred by this caller
    uint256 available; // attributed - transferred (computed in view functions; always 0 in storage)
    uint256 transferCount; // number of times tokens were transferred for this caller
  }
  // Depot state for the contract
  struct DepotState {
    uint256 totalAttributed; // sum of all attributed amounts
    uint256 transferCount; // number of transfer tokens transactions for all contracts
    uint256 transferTotal; // number of rage tokens transferred for all contracts
    address addNominee1; // address nominated by owner1 for add
    address addNominee2; // address nominated by owner2 for add
    address removeNominee1; // address nominated by owner1 for remove
    address removeNominee2; // address nominated by owner2 for remove
  }
  // DepotGetState: complete read-only snapshot of the Depot contract
  struct DepotGetState {
    uint256 version; // contract version identifier
    address automator; // current automator address
    address owner1; // RCE owner1
    address owner2; // RCE owner2
    DepotState state; // full depot state
    address[] contracts; // array of all registered contracts addresses
    uint256 contractCount; // number of contracts currently active within the depot contract
    uint256 rageBalance; // actual RAGE balance held by the contract
    uint256 totalTransferred; // sum of all transferred amounts across callers
    uint256 totalAvailable; // totalAttributed - totalTransferred
    uint256 unallocated; // rage in contract not attributed to any caller
  }
}
