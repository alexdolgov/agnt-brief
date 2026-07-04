// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IVToken {
  function borrowIndex() external view returns (uint256);

  function borrowRatePerBlock() external view returns (uint256);

  function supplyRatePerBlock() external view returns (uint256);

  function interestRateModel() external view returns (address);
}
