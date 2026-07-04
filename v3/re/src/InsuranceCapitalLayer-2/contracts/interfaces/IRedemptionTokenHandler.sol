// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

/**
 * @title IRedemptionTokenHandler
 * @notice Interface for handling token operations in the redemption process
 * @dev This interface defines the methods for receiving, burning, and transferring tokens
 */
interface IRedemptionTokenHandler {
  /**
   * @notice Receives share tokens from a user into the contract
   * @dev Called when a user requests redemption
   * @param from The address sending the share tokens
   * @param amount The amount of share tokens to receive
   */
  function receiveShareTokens(address from, uint256 amount) external;

  /**
   * @notice Burns share tokens from the contract
   * @dev Called when a user claims their redemption
   * @param amount The amount of share tokens to burn
   */
  function burnShareTokens(uint256 amount) external;

  /**
   * @notice Transfers redemption tokens to a user
   * @dev Called when a user claims their redemption
   * @param token The address of the redemption token to transfer
   * @param to The address receiving the redemption tokens
   * @param amount The amount of redemption tokens to transfer
   */
  function transferRedemptionTokens(
    address token,
    address to,
    uint256 amount
  ) external;

  /**
   * @notice Transfers share tokens back to a user
   * @dev Called when a user cancels their redemption request
   * @param to The address receiving the share tokens back
   * @param amount The amount of share tokens to transfer back
   */
  function transferShareTokens(address to, uint256 amount) external;

  /**
   * @notice Locks redemption tokens for a round
   * @dev Can only be called by the redemption manager
   * @param token The token to lock
   * @param amount The amount to lock
   */
  function lockRedemptionTokens(address token, uint256 amount) external;
}
