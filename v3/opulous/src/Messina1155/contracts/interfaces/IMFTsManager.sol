// SPDX-License-Identifier: Apache 2

pragma solidity ^0.8.0;

interface IMFTsManager {
  struct ClaimRewardsData {
    bytes32[] collectionIDs;
    bytes32[] roundIDs;
    bytes32[] path;
    bool isClaimInOpul;
    address payingUser;
    address signer;
    uint256 nonce;
    uint256 deadline;
  }

  struct ClaimMFTData {
    uint256 collectionID;
    uint256 salesIndex;
    bytes32[] proofs;
    uint256 amount;
    address payingUser;
    address signer;
    uint256 nonce;
    uint256 deadline;
  }

  struct SetRoundRewardsData {
    bytes32[] collectionIDs;
    address token; 
    bytes32[] amounts;
    bytes32[] roundIDs;
    address payingUser;
    address signer;
    uint256 nonce;
    uint256 deadline;
  }

  struct SnapshotCollectionIDsData {
    bytes32[] collectionIDs;
    address signer;
    uint256 nonce;
    uint256 deadline;
  }
}
