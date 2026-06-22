// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

interface IGmxVirtualTokenResolver {
  function getUnderlyingToken(address virtualToken) external view returns (address underlyingToken);
}
