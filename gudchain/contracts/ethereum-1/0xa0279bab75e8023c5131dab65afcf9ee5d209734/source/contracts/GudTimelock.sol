// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract GudTimelock is UUPSUpgradeable {

  error InvalidUpgradeAddress();
  error InvalidUpgradeTimestamp();
  error InvalidUpgradeCodehash();
  error NotUpgradeThroughPropose();
  error NoPendingUpgrade();

  uint256 constant public PENDING_PERIOD = 2 days;

  address public pendingUpgrade;
  uint256 public pendingTimestamp;
  bytes32 public pendingCodehash;

  event UpgradeProposed(address indexed newImplementation, uint256 indexed timestamp);
  event CancelUpgrade(address indexed removedUpgrade, uint256 indexed timestamp);

  function __Timelock_init() internal initializer {
    __UUPSUpgradeable_init();
  }

  function _proposeUpgrade(address newImplementation) internal {
    if (newImplementation == address(0)) revert InvalidUpgradeAddress();

    pendingTimestamp = block.timestamp + PENDING_PERIOD;
    pendingUpgrade = newImplementation;
    pendingCodehash = newImplementation.codehash;

    emit UpgradeProposed(newImplementation, pendingTimestamp);
  }

  function _authorizeUpgrade(address newImplementation) internal virtual override {
    if (pendingUpgrade == address(0)) revert NotUpgradeThroughPropose();
    if (block.timestamp < pendingTimestamp) revert InvalidUpgradeTimestamp();
    if (pendingUpgrade != newImplementation) revert InvalidUpgradeAddress();
    if (pendingCodehash != newImplementation.codehash) revert InvalidUpgradeCodehash();
    _clearUpgrades();
  }

  function _cancelUpgrade() internal {
    if (pendingUpgrade == address(0)) revert NoPendingUpgrade();
    address removedUpgrade = pendingUpgrade;
    _clearUpgrades();

    emit CancelUpgrade(removedUpgrade, block.timestamp);
  }

  function _clearUpgrades() internal {
    pendingTimestamp = 0;
    pendingUpgrade = address(0);
    pendingCodehash = 0;
  }
}