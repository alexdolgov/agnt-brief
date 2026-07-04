// SPDX-License-Identifier: AGPL-3.0

pragma solidity ^0.8.0;

interface IMockTokenUpgradeable {

  function loanedAmount(address _user) external view returns (uint256);

  //function flashLoanOpen(address _caller, address _receiver, uint256 _amount) external;
  function flashLoanOpen(address _receiver, uint256 _amount) external;

  //function flashLoanClose(address _caller) external;
  function flashLoanClose() external;

}