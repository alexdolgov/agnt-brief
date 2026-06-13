// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";

contract BridgeConfig is Ownable {
  mapping(string => string) public config;

  function setConfigs(
    string[] memory keys,
    string[] memory values
  ) public onlyOwner {
    for (uint i = 0; i < keys.length; ++i) {
      config[keys[i]] = values[i];
    }
  }

  function getConfigs(
    string[] memory keys
  ) public view returns (string[] memory) {
    string[] memory values = new string[](keys.length);
    for (uint i = 0; i < keys.length; ++i) {
      values[i] = config[keys[i]];
    }
    return values;
  }
}
