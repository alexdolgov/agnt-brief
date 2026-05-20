// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC20 } from '@oz/interfaces/IERC20.sol';
import { IERC20Metadata } from '@oz/interfaces/IERC20Metadata.sol';

interface IExpeditionVault is IERC20Metadata {
  function owner() external view returns (address);
  function asset() external view returns (IERC20);

  function previewDeposit(uint256 amount) external view returns (uint256);
  function previewRedeem(uint256 amount) external view returns (uint256);

  function deposit(uint256 amount, address receiver) external returns (uint256);
  function redeem(uint256 amount, address receiver) external returns (uint256);
}
