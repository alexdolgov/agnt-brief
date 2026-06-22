// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.7.6;

interface IMaticXPool {
  function convertMaticToMaticX(uint256 maticBalance) external view returns (uint256 maticXBalance);
}
