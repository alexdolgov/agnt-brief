/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

interface IDelegation {

  struct QueuedWithdrawalParams {
      address[] strategies;
      uint256[] shares;
      address withdrawer;
  }

  struct Withdrawal {
      address staker;
      address delegatedTo;
      address withdrawer;
      uint256 nonce;
      uint32 startBlock;
      address[] strategies;
      uint256[] shares;
  } 

  struct SignatureWithExpiry {
    bytes signature;
    uint expiry;
  }

  function queueWithdrawals(QueuedWithdrawalParams[] memory) external returns (uint256 shares);
  
  function getWithdrawalDelay(address[] memory) external view returns (uint256);

  function delegatedTo(address) external view returns (address);
  
  function delegateTo(address, SignatureWithExpiry memory, bytes32) external;

  function undelegate(address) external returns (bytes32[] memory);
  
  function cumulativeWithdrawalsQueued(address) external view returns (uint);

  function completeQueuedWithdrawal(Withdrawal memory, address[] memory, uint, bool) external;

  function calculateWithdrawalRoot(Withdrawal memory) external pure returns (bytes32);

  function pendingWithdrawals(bytes32) external view returns (bool); 

  function delegationApprover(address operator) external view returns (address);
}
