// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

interface IListaStaking {
  struct WithdrawalRequest {
    uint256 uuid;
    uint256 amountInSnBnb;
    uint256 startTime;
  }

  function requestUUID() external view returns (uint256);

  function nextConfirmedRequestUUID() external view returns (uint256);

  function getUserWithdrawalRequests(address _address)
    external
    view
    returns (WithdrawalRequest[] memory);

  function getUserRequestStatus(address _user, uint256 _idx)
    external
    view
    returns (bool _isClaimable, uint256 _amount);

  function getContracts()
    external
    view
    returns (address _manager, address _snBnb, address _bcValidator);

  function deposit() external payable;

  function requestWithdraw(uint256 _amountInSnBnb) external;

  function claimWithdraw(uint256 _idx) external;

  function convertBnbToSnBnb(uint256 _amount) external view returns (uint256);

  function convertSnBnbToBnb(uint256 _amountInSlisBnb) external view returns (uint256);
}
