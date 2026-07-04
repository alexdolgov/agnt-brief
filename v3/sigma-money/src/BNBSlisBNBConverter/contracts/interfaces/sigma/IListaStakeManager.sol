// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IListaStakeManager {
  struct WithdrawalRequest {
    uint256 uuid;
    uint256 amountInSnBnb;
    uint256 startTime;
  }

  function deposit() external payable;

  function requestWithdraw(uint256 _amount) external;

  function claimWithdraw(uint256 _idx) external;

  function convertSnBnbToBnb(uint256 _amount) external view returns (uint256);

  function convertBnbToSnBnb(uint256 _amount) external view returns (uint256);

  function getUserWithdrawalRequests(address _user) external view returns (WithdrawalRequest[] memory);

  function getUserRequestStatus(address _user, uint256 _idx) external view returns (bool isClaimable, uint256 amount);

  function requestUUID() external view returns (uint256);
}
