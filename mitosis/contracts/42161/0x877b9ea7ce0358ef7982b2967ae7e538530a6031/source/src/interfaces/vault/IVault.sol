// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {IERC20Upgradeable} from '@ozu/token/ERC20/IERC20Upgradeable.sol';

enum Action {
  Deposit,
  Redeem,
  Mint,
  Burn,
  Transfer
}

enum VaultType {
  Basic,
  Rebased
}

interface IVault is IERC20Upgradeable {
  function vaultType() external view returns (VaultType);
  function isHalted(Action action) external view returns (bool);

  function previewDeposit(uint256 amount) external view returns (uint256);
  function previewRedeem(uint256 amount) external view returns (uint256);

  function deposit(uint256 amount, address receiver) external;
  function redeem(uint256 amount, address receiver) external;

  function halt(Action action) external;
  function resume(Action action) external;
}

interface ISudoVault is IVault {
  function manualDeposit(uint256 amount, address receiver) external returns (uint256);
  function manualRedeem(uint256 amount, address receiver) external returns (uint256);
}
