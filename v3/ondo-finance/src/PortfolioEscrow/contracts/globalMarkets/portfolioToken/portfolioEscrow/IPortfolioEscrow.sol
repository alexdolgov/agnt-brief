// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.4;

/**
 * @title  IPortfolioEscrow
 * @author Ondo Finance
 * @notice Interface for the PortfolioEscrow contract. Each portfolio token has one escrow
 *         that serves as the sole long-term custodian of both USDon and GM tokens.
 *         The orchestrator pulls tokens from escrow on-demand via pre-approved allowances
 *         and pushes tokens back after operations.
 */
interface IPortfolioEscrow {
  // ─────────────────────────────────────────────────────────────────────────────
  // Events
  // ─────────────────────────────────────────────────────────────────────────────

  event TokenApproved(address indexed token, address indexed spender, uint256 amount);
  event TokensRetrieved(address indexed token, address indexed recipient, uint256 amount);

  // ─────────────────────────────────────────────────────────────────────────────
  // Errors
  // ─────────────────────────────────────────────────────────────────────────────

  error DefaultAdminZeroAddress();
  error PortfolioTokenAddressCantBeZero();
  error OrchestratorAddressCantBeZero();
  error USDonAddressCantBeZero();
  error SpenderAddressCantBeZero();
  error ArrayLengthMismatch();

  // ─────────────────────────────────────────────────────────────────────────────
  // Core Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function approveToken(address token, address spender, uint256 amount) external;
  function batchApproveTokens(
    address[] calldata tokens,
    address[] calldata spenders,
    uint256[] calldata amounts
  ) external;
  function retrieveTokens(address token, address to, uint256 amount) external;
}
