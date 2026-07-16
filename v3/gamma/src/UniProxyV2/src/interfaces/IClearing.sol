/// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

interface IClearing {
  function clearDeposit(
    address to,
    address pos
  ) external view;

  function getDepositAmount(
    address pos,
    address token,
    uint256 _deposit
  ) external view returns (uint256 amountStart, uint256 amountEnd);
}