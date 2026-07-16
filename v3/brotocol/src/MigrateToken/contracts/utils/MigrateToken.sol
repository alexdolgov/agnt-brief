// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "../IBurnable.sol";
import "../MultisigWallet.sol";
import "./Errors.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MigrateToken is Ownable, ReentrancyGuard {
  mapping(address => address) public migrationPath;
  mapping(address => bool) public blockList;

  event SetBlocklist(address[] targets, bool[] blocked);
  event AddMigrationPath(address[] oldTokens, address[] newTokens);
  event RemoveMigrationPath(address[] oldTokens);
  event Migrate(address indexed sender, bool blocked, address[] oldTokens);

  constructor(MultisigWallet _owner) {
    _transferOwnership(address(_owner));
  }

  function setBlocklist(
    address[] calldata targets,
    bool[] calldata blocked
  ) external onlyOwner {
    _require(targets.length == blocked.length, Errors.INPUT_LENGTH_MISMATCH);
    for (uint256 i = 0; i < targets.length; i++) {
      blockList[targets[i]] = blocked[i];
    }
    emit SetBlocklist(targets, blocked);
  }

  function addMigrationPath(
    address[] calldata oldTokens,
    address[] calldata newTokens
  ) external onlyOwner {
    _require(
      oldTokens.length == newTokens.length,
      Errors.INPUT_LENGTH_MISMATCH
    );
    for (uint256 i = 0; i < oldTokens.length; i++) {
      migrationPath[oldTokens[i]] = newTokens[i];
    }
    emit AddMigrationPath(oldTokens, newTokens);
  }

  function removeMigrationPath(
    address[] calldata oldTokens
  ) external onlyOwner {
    for (uint256 i = 0; i < oldTokens.length; i++) {
      delete migrationPath[oldTokens[i]];
    }
    emit RemoveMigrationPath(oldTokens);
  }

  function migrate(address[] calldata oldTokens) external nonReentrant {
    for (uint256 i = 0; i < oldTokens.length; i++) {
      address newToken = migrationPath[oldTokens[i]];
      _require(newToken != address(0), Errors.ZERO_ADDRESS);
      uint256 bal = ERC20(oldTokens[i]).balanceOf(msg.sender);
      IBurnable(oldTokens[i]).burnFrom(msg.sender, bal);
      if (!blockList[msg.sender]) {
        IBurnable(newToken).mint(msg.sender, bal);
      }
    }
    emit Migrate(msg.sender, blockList[msg.sender], oldTokens);
  }
}
