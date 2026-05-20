// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

interface ICCDMHost {
  function previewDeposit(
    uint32 domain,
    address token,
    address receiver,
    address refundTo,
    uint256 amount,
    uint256 baseFee
  ) external view returns (uint256);

  function deposit(uint32 domain, address token, address receiver, address refundTo, uint256 amount) external payable;

  function deposit(
    uint32 domain,
    address token,
    address receiver,
    address refundTo,
    uint256 amount,
    bytes calldata permitData
  ) external payable;
}
