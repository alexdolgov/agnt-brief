// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IWETH {
  /**
   * @dev Deposits Ether into the contract and mints WETH to the sender's address.
   * The contract must be payable to accept ETH.
   */
  function deposit() external payable;

  /**
   * @dev Withdraws WETH from the sender's balance and sends Ether to the sender.
   * @param amount The amount of WETH to withdraw (converted back to ETH).
   */
  function withdraw(uint256 amount) external;

  /**
   * @dev Returns the number of decimals used by the token.
   * @return The number of decimals.
   */
  function decimals() external view returns (uint8);
}
