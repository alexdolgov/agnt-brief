// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

/**
 * @title ILstRateProvider
 * @notice Interface for the LstRateProvider contract
 */
interface ILstRateProvider {
  /**
   * @dev function returns the current exchange rate of the underlying LST
   */
  function getRate() external returns (uint256);
}
