// SPDX-License-Identifier: BUSL1

pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface ICauldronV1 {
  struct IFOInfo {
    IERC20 lpToken;
    IERC20 offeringToken;
    uint256 startTime;
    uint256 endTime;
    uint256 raisingAmount;
    uint256 offeringAmount;
    uint256 totalAmount;
  }

  struct UserInfo {
    uint256 amount;
    bool claimed;
  }
  
  function ifoInfo() external view returns (IFOInfo memory);
  function userInfo(address userId) external view returns (UserInfo memory);
  function hasHarvest(address userId) external view returns (bool);

  function deposit(uint256 amount) external;
  function harvest() external;
}
