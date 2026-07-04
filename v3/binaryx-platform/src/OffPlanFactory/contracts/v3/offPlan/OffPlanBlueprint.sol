// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OffPlanBlueprint is Ownable {
  UpgradeableBeacon immutable upgradableBeacon;

  constructor(address _initBlueprint) {
    upgradableBeacon = new UpgradeableBeacon(_initBlueprint);
    transferOwnership(tx.origin);
  }

  function setBeaconImplementation(address _newBlueprint) public onlyOwner {
    upgradableBeacon.upgradeTo(_newBlueprint);
  }

  // Note: do not rename. This is required by the BeaconProxy to get work
  function implementation() public view returns (address) {
    return upgradableBeacon.implementation();
  }
}
