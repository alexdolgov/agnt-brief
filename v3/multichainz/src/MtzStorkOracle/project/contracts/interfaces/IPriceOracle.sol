// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

/**
 * @title IPriceOracle
 * @author multichainz
 * @notice Defines the basic interface for a Price oracle.
 */
interface IPriceOracle {

  

  event OracleSet(address oracle);
  /**
   * @notice Returns the asset price in the base currency
   * @param asset The address of the asset
   * @return price of the asset
   */
  function getAssetPrice(address asset) external view returns (uint256);

 
}
