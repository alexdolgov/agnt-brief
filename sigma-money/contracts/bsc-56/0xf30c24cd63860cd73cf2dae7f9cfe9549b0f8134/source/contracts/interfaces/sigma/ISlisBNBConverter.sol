// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

interface ISlisBNBConverter {
  struct UserWithdrawalRequest {
    uint256 uuid;
    uint256 bnbAmount;
    uint256 assetAmount;
    uint256 startTime;
    bool isClaimable;
  }

  function convertAssetToSlisBNB(uint256 amount) external payable returns (uint256);

  function convertSlisBNBToAssetInstant(uint256 amount) external returns (uint256 assetAmount);

  function convertSlisBNBToAssetRequest(address user, uint256 amount) external returns (uint256 requestUUID);

  function claimRequest(address user, uint256 requestUUID) external returns (uint256 assetAmount);

  function rateAssetToSlisBNB() external view returns (uint256);

  function rateSlisBNBToAssetInstant() external view returns (uint256);

  function rateSlisBNBToAssetRequest() external view returns (uint256);

  function rateBNBToAsset() external view returns (uint256);

  function getUserWithdrawalRequests(address user) external view returns (UserWithdrawalRequest[] memory userRequests);
}
