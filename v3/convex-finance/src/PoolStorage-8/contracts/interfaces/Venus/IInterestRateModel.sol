// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IInterestRateModel {
  function BLOCKS_PER_YEAR() external view returns (uint256);
}
