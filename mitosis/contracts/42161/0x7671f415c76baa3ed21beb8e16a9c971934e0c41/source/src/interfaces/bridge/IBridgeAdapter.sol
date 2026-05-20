// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

interface IBridgeAdapter {
  function isOperational() external view returns (bool);

  function bridgeAsset(address destAddr, address l1Token, bytes32 l2Token, uint256 amount) external;
}
