// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
interface IHelixDealStats {
  struct DealStats {
    uint256 principalInvested;
    uint256 principalRepaid;
    uint256 cumulativeReturns;
    bool created;
  }
}