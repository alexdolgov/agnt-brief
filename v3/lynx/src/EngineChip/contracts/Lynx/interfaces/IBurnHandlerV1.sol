// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

interface IBurnHandlerV1 {
  function handleBurn(
    address burner,
    uint256 chipAmount,
    uint256 underlyingAmount,
    bytes calldata payload
  ) external payable;
}
