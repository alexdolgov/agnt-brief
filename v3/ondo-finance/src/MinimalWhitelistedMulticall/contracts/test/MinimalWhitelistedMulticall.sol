// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinimalWhitelistedMulticall {
  mapping(address => bool) public whitelist;

  error NotWhitelisted();
  error CallFailed();

  event AddedToWhitelist(address indexed account);
  event RemovedFromWhitelist(address indexed account);

  constructor() {
    whitelist[msg.sender] = true;
    emit AddedToWhitelist(msg.sender);
  }

  function addToWhitelist(address account) external onlyWhitelisted {
    whitelist[account] = true;
    emit AddedToWhitelist(account);
  }

  function removeFromWhitelist(address account) external onlyWhitelisted {
    whitelist[account] = false;
    emit RemovedFromWhitelist(account);
  }

  function multicall(
    address[] calldata targets,
    bytes[] calldata datas
  ) external onlyWhitelisted returns (bytes[] memory results) {
    results = new bytes[](targets.length);

    for (uint256 i = 0; i < targets.length; i++) {
      (bool success, bytes memory result) = targets[i].call(datas[i]);
      if (!success) revert CallFailed();
      results[i] = result;
    }
  }

  modifier onlyWhitelisted() {
    if (!whitelist[msg.sender]) revert NotWhitelisted();
    _;
  }
}
