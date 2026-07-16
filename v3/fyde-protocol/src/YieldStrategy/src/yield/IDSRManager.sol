// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

interface IDSRManager {
  function join(address dst, uint256 amount) external;

  function exit(address dst, uint256 wad) external;

  function exitAll(address dst) external;

  function daiBalance(address usr) external returns (uint256 wad);
}
