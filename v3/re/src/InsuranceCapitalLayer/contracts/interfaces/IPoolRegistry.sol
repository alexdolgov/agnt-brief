//SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

interface IPoolRegistry {
  event PoolRegistered(address poolAddress, address cellAddress);
  event PoolUnregistered(address poolAddress, address cellAddress);

  function registerPool(address poolAddress) external;
  function unregisterPool(address poolAddress) external;
  function isRegisteredPool(address poolAddress) external view returns (bool);
  function hasCellRole(address cellAddress) external view returns (bool);
  function getPoolsForCell(
    address cellAddress
  ) external view returns (address[] memory);
  function isPoolOwnedByCell(
    address cellAddress,
    address poolAddress
  ) external view returns (bool);
}
