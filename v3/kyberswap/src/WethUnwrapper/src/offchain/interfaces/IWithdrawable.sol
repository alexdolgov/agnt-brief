// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IWithdrawable {
  function withdraw(
    uint256 wad
  ) external;
}
