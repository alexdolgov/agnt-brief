// SPDX-License-Identifier: MIT
pragma solidity >=0.6.11 <0.9;

/// @notice Interface for Autopilot version of Acctoke.sol,
interface IAutopilotAccToke {

  /**
   * @notice Allows Toke to be staked on behalf of an address.
   * @param amount Amount of Toke to stake.
   * @param duration Duration of Toke staking.  Must be within AccToke.sol min and max staking duration.
   * @param to Address to stake on behalf of.
   */
  function stake(uint256 amount, uint256 duration, address to) external;
}