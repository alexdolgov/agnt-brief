// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

abstract contract StrategyBaseUpgradeable is AccessControlUpgradeable {
  bytes32 public constant HARVESTER_ROLE = keccak256("HARVESTER_ROLE");

  address public immutable origin;

  /**
   * @dev This empty reserved space is put in place to allow future versions to add new
   * variables without shifting down storage in the inheritance chain.
   */
  uint256[50] private __gap;

  modifier onlyOrigin() {
    if (msg.sender != origin) revert();
    _;
  }

  constructor(address _origin) {
    origin = _origin;
  }

  function __StrategyBaseUpgradeable_init(address _admin) internal onlyInitializing {
    __AccessControl_init();
    __StrategyBaseUpgradeable_init_unchained(_admin);
  }

  function __StrategyBaseUpgradeable_init_unchained(address _admin) internal onlyInitializing {
    _grantRole(DEFAULT_ADMIN_ROLE, _admin);
  }

  function harvest(address receiver) external onlyRole(HARVESTER_ROLE) {
    _harvest(receiver);
  }

  function execute(
    address to,
    uint256 value,
    bytes calldata data
  ) external onlyOrigin returns (bool success, bytes memory returnData) {
    (success, returnData) = to.call{ value: value }(data);
  }

  function _harvest(address receiver) internal virtual;
}
