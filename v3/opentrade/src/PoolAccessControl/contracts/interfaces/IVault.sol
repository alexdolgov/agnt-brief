//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/**
 * @title Interface for the Vault.
 * @dev Vaults simply hold a balance, and allow withdrawals by the Vault's owner.
 */
interface IVault {
  /**
   * @dev Emitted on ERC20 withdrawals
   */
  event WithdrewERC20(address indexed asset, uint256 amount, address indexed receiver);

  /**
   * @dev Emitted on ERC721 withdrawals
   */
  event WithdrewERC721(address indexed asset, uint256 tokenId, address receiver);

  /**
   * @dev Withdraws ERC20 of a given asset
   */
  function withdrawERC20(address asset, uint256 amount, address receiver) external;

  /**
   * @dev Withdraws ERC20 of a given asset
   */
  function withdrawERC20ToBorrowerWallet(address asset, uint256 amount) external;

  function payFees(address asset, uint256 amount) external;

  function repayLoan(address asset, uint256 amount) external;

  /**
   * @dev Withdraws ERC721 with specified tokenId
   */
  function withdrawERC721(address asset, uint256 tokenId, address receiver) external;
}
