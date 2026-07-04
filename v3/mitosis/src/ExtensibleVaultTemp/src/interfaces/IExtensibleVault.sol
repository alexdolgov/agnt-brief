// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC4626 } from '@oz/interfaces/IERC4626.sol';

interface IExtensibleVault is IERC4626 {
  event DepositToManager(address indexed manager, uint256 amount);
  event WithdrawFromManager(address indexed manager, uint256 amount);

  event RedeemQueueSet(address indexed redeemQueue);
  event CapSet(uint256 prevCap, uint256 newCap);

  function redeemQueue() external view returns (address);
  function cap() external view returns (uint256);
  function totalAssets() external view returns (uint256);

  function depositToManager(address manager, uint256 amount) external;
  function withdrawFromManager(address manager, uint256 amount) external;
}
