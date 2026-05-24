// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

interface ICommunityPoints {
   function addBeneficiary(address _beneficiary, uint256 _entitlementTotal) external;
   function getEntitlements(address _beneficiary) external view returns (bool, uint256);
}
// 2023 Liquid Loans