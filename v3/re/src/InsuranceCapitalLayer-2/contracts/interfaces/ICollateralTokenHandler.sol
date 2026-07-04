// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

/**
 * @title IInsuranceCapitalLayerTokenHandler
 * @dev Combined interface for transferring and receiving ERC20 tokens in InsuranceCapitalLayer.
 */
interface ICollateralTokenHandler {
  /**
   * @dev Transfers tokens from InsuranceCapitalLayer to a recipient.
   * @param token The address of the ERC20 token.
   * @param to The recipient address.
   * @param amount The amount of tokens to transfer.
   */
  function transferTokens(address token, address to, uint256 amount) external;

  /**
   * @dev Receives tokens into InsuranceCapitalLayer from a sender.
   * @param token The address of the ERC20 token.
   * @param from The sender address.
   * @param amount The amount of tokens to receive.
   */
  function receiveTokens(address token, address from, uint256 amount) external;

  function getAvailableBalance(address token) external view returns (uint256);

  /**
   * @dev Locks collateral tokens to prevent them from being used for redemptions
   * @param token The address of the token to lock
   * @param amount The amount to lock
   */
  function lockCollateralTokens(address token, uint256 amount) external;

  /**
   * @dev Unlocks previously locked collateral tokens
   * @param token The address of the token to unlock
   * @param amount The amount to unlock
   */
  function unlockCollateralTokens(address token, uint256 amount) external;
}
