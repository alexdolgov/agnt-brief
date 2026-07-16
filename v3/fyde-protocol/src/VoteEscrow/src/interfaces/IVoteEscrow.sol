// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.0;

/// Utils /////
import "../libraries/VoteEscrowLib.sol";
import "../libraries/CheckpointsLib.sol";

///@title VoteEscrow Contract Interface
///@notice This contract is a modified version of the Pendle IPVotingEscrowMainchain interface
///        https://github.com/pendle-finance/pendle-core-v2-public/
interface IVoteEscrow {
  /*//////////////////////////////////////////////////////////////
                             EVENTS
  //////////////////////////////////////////////////////////////*/

  event UpdateLock(address indexed user, uint128 amount, uint128 expiry);
  event Withdraw(address indexed user, uint128 amount);

  /*//////////////////////////////////////////////////////////////
                             EXTERNAL
  //////////////////////////////////////////////////////////////*/

  function updateLock(uint128 additionalAmountToLock, uint128 expiry) external returns (uint128);

  function withdraw() external returns (uint128);

  function totalSupplyAt(uint128 timestamp) external view returns (uint128);

  function balanceOf(address user) external view returns (uint128);

  function positionData(address user) external view returns (uint128 amount, uint128 expiry);

  function totalSupplyStored() external view returns (uint128);

  function totalSupplyCurrent() external returns (uint128);

  function totalSupplyAndBalanceCurrent(address user) external returns (uint128, uint128);

  function getUserHistoryLength(address user) external view returns (uint256);

  function getUserHistoryAt(address user, uint256 index) external view returns (Checkpoint memory);
}
