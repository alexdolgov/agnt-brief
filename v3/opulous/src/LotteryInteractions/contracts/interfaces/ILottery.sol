// SPDX-License-Identifier: Apache 2
pragma solidity ^0.8.0;

interface ILottery {
  enum LotteryResult {
    NotDrawn,
    Progress,
    Success,
    SuccessSoftCap,
    Failed
  }
  struct LotteryData {
    uint256 chainID;
    uint256 startDate;
    uint256 endDate;
    uint256 minAllocation;
    uint256 softCap;
    uint256 hardCap;
    uint256 seedNumber;
    uint256 RandomnessRequestID;
    uint256 allocationDecimals;
    uint256 purchasedTickets;
    uint256 drawsNumber;
    LotteryResult result;
  }
  struct PaymentData {
    address PayingUser;
    uint256 chainID;
    uint256 ticketsNumber;
    uint256 desiredAllocation;
    uint256 decimals;
    bool isPresale;
  }
  struct Ticket {
    uint256 ID;
    uint256 chainID;
  }
  struct TicketOwner {
    uint256 chainID;
    address owner;
  }

  function userEnterAllocation(PaymentData calldata Data) external;

  function userRemovesAllocation(PaymentData calldata Data) external;
}
