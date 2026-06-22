// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

interface IStaking {
  struct NFTMultiplier {
    string name;
    address contractAdd;
    bool active;
    uint16 multiplier;
    uint16 startIdx;
    uint16 endIdx;
  }

  struct User {
    uint256 totalInvested;
    uint256 totalWithdrawn;
    uint32 lastPayout;
    uint32 depositTime;
    uint256 totalClaimed;
  }

  struct Pool {
    bool isWithdrawLocked;
    uint32 apy;
    uint16 lockPeriodInDays;
    uint32 totalInvestors;
    uint256 totalInvested;
    uint256 hardCap;
    uint32 startDate;
    uint32 endDate;
    address inputToken;
    address rewardToken;
  }

  event Claim(address indexed addr, uint256 amount, uint256 time);

  function setNFT(
    uint16 _pid,
    string calldata _name,
    address _contractAdd,
    bool _isUsed,
    uint16 _multiplier,
    uint16 _startIdx,
    uint16 _endIdx
  ) external;

  function add(
    bool _isWithdrawLocked,
    uint32 _apy,
    uint16 _lockPeriodInDays,
    uint32 _endDate,
    uint256 _hardCap,
    address _inputToken,
    address _rewardToken
  ) external;

  function set(
    uint16 _pid,
    bool _isWithdrawLocked,
    uint32 _apy,
    uint16 _lockPeriodInDays,
    uint32 _endDate,
    uint256 _hardCap,
    address _inputToken,
    address _rewardToken
  ) external;

  function claim(uint16 _pid) external returns (bool);

  function claimAll() external returns (bool);

  function canClaim(uint16 _pid, address _addr) external view returns (bool);

  function calcMultiplier(uint16 _pid, address _addr) external view returns (uint16);

  function ownsCorrectNFT(uint16 _pid, address _addr) external view returns (bool);

  function poolLength() external view returns (uint256);

  function payout(uint16 _pid, address _addr) external view returns (uint256 value);

  function users(uint256, address)
    external
    view
    returns (
      uint256 totalInvested,
      uint256 totalWithdrawn,
      uint32 lastPayout,
      uint32 depositTime,
      uint256 totalClaimed
    );

  function poolInfo(uint256 _pid)
    external
    view
    returns (
      bool isWithdrawLocked,
      uint32 apy,
      uint16 lockPeriodInDays,
      uint32 totalInvestors,
      uint256 totalInvested,
      uint256 hardCap,
      uint32 startDate,
      uint32 endDate,
      address inputToken,
      address rewardToken
    );
}
