//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./interfaces/ILYTPoolRegistry.sol";
import "./interfaces/ILYTPoolServiceConfiguration.sol";
import "./upgrades/DeployerUUPSUpgradeable.sol";

/**
 * @title Pool Registry.
 */

contract LYTPoolRegistry is ILYTPoolRegistry, DeployerUUPSUpgradeable {
  address[] public _pools;
  mapping(address => bool) public isAPool;

  error PoolNotRegistered(address poolAddr);
  error InvalidAccess();
  error NotAdmin();

  modifier onlyVerifiedPoolAdmin() {
    if (!ILYTPoolServiceConfiguration(address(_serviceConfiguration)).isProtocolAdmin(msg.sender)) {
      revert NotAdmin();
    }
    _;
  }

  // No longer being used
  modifier onlyRegisteredPool() {
    if (!isAPool[msg.sender]) {
      revert PoolNotRegistered(msg.sender);
    }
    _;
  }

  event PoolListAdded(address indexed pool);

  event PoolListRemoved(address indexed pool);

  /**
   * @dev Initializer for the ToSAcceptanceRegistry
   */
  function initialize(address serviceConfiguration) public initializer {
    _serviceConfiguration = ILYTPoolServiceConfiguration(serviceConfiguration);
  }

  function addPool(address pool) external {
    if (
      msg.sender != _serviceConfiguration.getLYTPoolFactory() &&
      !_serviceConfiguration.isOperator(msg.sender)
    ) revert InvalidAccess();

    if (!isAPool[pool]) {
      _pools.push(pool);
      isAPool[pool] = true;
      emit PoolListAdded(pool);
    }
  }

  function pools() external view returns (address[] memory) {
    return _pools;
  }

  function removePool(address pool) external onlyVerifiedPoolAdmin {
    if (isAPool[pool]) {
      isAPool[pool] = false;
      for (uint256 i = 0; i < _pools.length; i++) {
        if (_pools[i] == pool) {
          _pools[i] = _pools[_pools.length - 1];
          _pools.pop();
          break;
        }
      }
      emit PoolListRemoved(pool);
    }
  }
  function isPoolRegistered(address poolAddr) external view returns (bool) {
    return isAPool[poolAddr];
  }

}
