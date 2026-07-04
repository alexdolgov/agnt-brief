//SPDX-License-Identifier:MIT
pragma solidity 0.8.20;

import {ICell} from "./interfaces/ICell.sol";
import {IPoolRegistry} from "./interfaces/IPoolRegistry.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import "./errors/PoolRegistryErrors.sol";

contract PoolRegistry is AccessControl, IPoolRegistry {
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
  bytes32 public constant CELL_ROLE = keccak256("CELL_ROLE");

  struct PoolInfo {
    address cellAddress;
    bool isRegistered;
  }
  mapping(address => PoolInfo) public pools;
  mapping(address => address[]) private cellToPools;

  constructor(address initialAdmin_, address operator_) {
    _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin_);
    _grantRole(OPERATOR_ROLE, operator_);
  }

  //onlyRole(CELL_ROLE)
  function registerPool(address poolAddress) external {
    if (poolAddress == address(0)) {
      revert InvalidPoolAddress(poolAddress);
    }
    if (pools[poolAddress].isRegistered) {
      revert PoolAlreadyRegistered(poolAddress);
    }
    pools[poolAddress] = PoolInfo(msg.sender, true);

    cellToPools[msg.sender].push(poolAddress);

    emit PoolRegistered(poolAddress, msg.sender);
  }

  function unregisterPool(address poolAddress) external {
    if (poolAddress == address(0)) {
      revert InvalidPoolAddress(poolAddress);
    }
    PoolInfo storage pool = pools[poolAddress];

    if (!pool.isRegistered) {
      revert PoolNotRegistered(poolAddress);
    }
    if (
      !hasRole(OPERATOR_ROLE, msg.sender) &&
      (!hasRole(CELL_ROLE, msg.sender) || pool.cellAddress != msg.sender)
    ) {
      revert Unauthorized(msg.sender);
    }
    pool.isRegistered = false;

    address[] storage poolList = cellToPools[pool.cellAddress];
    for (uint i = 0; i < poolList.length; i++) {
      if (poolList[i] == poolAddress) {
        poolList[i] = poolList[poolList.length - 1];
        poolList.pop();
        break;
      }
    }

    emit PoolUnregistered(poolAddress, pool.cellAddress);
  }

  function getPoolsForCell(
    address cellAddress
  ) external view returns (address[] memory) {
    return cellToPools[cellAddress];
  }

  function isPoolOwnedByCell(
    address cellAddress,
    address poolAddress
  ) external view returns (bool) {
    PoolInfo storage pool = pools[poolAddress];
    return pool.isRegistered && pool.cellAddress == cellAddress;
  }

  function isRegisteredPool(address poolAddress) external view returns (bool) {
    return pools[poolAddress].isRegistered;
  }

  function grantCellRole(address cellAddress) external onlyRole(OPERATOR_ROLE) {
    if (ICell(cellAddress).manager() == address(0)) {
      revert InvalidCellManager(cellAddress);
    }
    _grantRole(CELL_ROLE, cellAddress);
  }

  function hasCellRole(address cellAddress) external view returns (bool) {
    return hasRole(CELL_ROLE, cellAddress);
  }
}
