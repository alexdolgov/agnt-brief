// SPDX-License-Identifier: Apache 2

pragma solidity ^0.8.0;

import './IMFTsManager.sol';

interface IMFTv2 {
  function connectorMint(address to, uint256 id, uint256 amount, bytes memory data) external;

  function connectorMintBatch(
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) external;

  function currentRound(uint256 collectionID) external view returns (uint256);

  function getRoundRewards(uint256 collectionID, uint256 roundID) external view returns (address token, uint256 totalAmount, uint256 claimedAmount);
  
  function getRoundClaimed(uint256 collectionID, uint256 roundID, address user) external view returns (bool);

  function getOpulFeeAmount(uint256 amount) external view returns (uint256);

  function getDefaultFeeAmount(uint256 amount) external view returns (uint256);

  function isAcceptableStableCoin(address stableCoin) external view returns (bool);

  function getMerkleRoots(uint256 collectionID, uint256 salesIndex) external view returns (bytes32);

  function setRoundRewardsData(uint256 collectionID, uint256 roundID, address token, uint256 totalAmount) external;

  function getOperationWallet() external view returns (address);

  function getOpulToken() external view returns (address);

  function claimRewardsManager(    
    address rewardsToken,
    address sender,
    uint256 amount,
    uint256 fees,
    address[] memory pathAddress,
    bool isClaimInOpul
  ) external;

  function claimMFTsManager(
    bytes32 leaf,
    uint256 collectionID,
    uint256 amount,
    address sender  
  ) external;

  function updateClaimRoundRewardsState(
    uint256 collectionID,
    uint256 roundID,
    uint256 amount,
    address sender
  ) external;

  function snapshotCollectionIDs(bytes32[] calldata collectionIDs) external;
}
