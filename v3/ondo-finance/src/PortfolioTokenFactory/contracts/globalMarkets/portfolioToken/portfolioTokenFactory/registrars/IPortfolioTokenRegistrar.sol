// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.4;

/**
 * @title  IPortfolioTokenRegistrar
 * @author Ondo Finance
 * @notice Interface for registrar contracts that configure portfolio tokens on deployment
 */
interface IPortfolioTokenRegistrar {
  /**
   * @notice Register a portfolio token with the registrar
   * @param  token The address of the token to register
   */
  function register(address token) external;
}
