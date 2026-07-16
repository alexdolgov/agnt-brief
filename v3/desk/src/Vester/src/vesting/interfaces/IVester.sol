// SPDX-License-Identifier: BUSL-1.1
// This code is made available under the terms and conditions of the Business Source License 1.1 (BUSL-1.1).
// The act of publishing this code is driven by the aim to promote transparency and facilitate its utilization for educational purposes.

pragma solidity 0.8.18;

import { IERC20Upgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";

interface IVester {
  // ---------------------
  //       Errors
  // ---------------------
  error IVester_BadArgument();
  error IVester_ExceedMaxDuration();
  error IVester_Unauthorized();
  error IVester_Claimed();
  error IVester_Aborted();
  error IVester_HasCompleted();
  error IVester_InvalidAddress();
  error IVester_PositionNotFound();
  error IVester_HMXStakingNotSet();
  error IVester_NotEnoughDPStaked();
  error IVester_Paused();
  error IVester_NotPaused();
  error IVester_MigrateFromVesterNotSet();
  // ---------------------
  //       Structs
  // ---------------------
  struct Item {
    address owner;
    bool hasClaimed;
    bool hasAborted;
    uint256 amount;
    uint256 startTime;
    uint256 endTime;
    uint256 lastClaimTime;
    uint256 totalUnlockedAmount;
  }

  function vestFor(address account, uint256 amount, uint256 duration) external;

  function claim(uint256 itemIndex) external;

  function claim(uint256[] memory itemIndexes) external;

  function abort(uint256 itemIndex) external;

  function getUnlockAmount(uint256 amount, uint256 duration) external returns (uint256);

  function getVestingPosition(
    address user,
    uint256 limit,
    uint256 offset
  ) external view returns (Item[] memory itemList);

  function itemLastIndex(address) external returns (uint256);

  function items(
    address user,
    uint256 index
  )
    external
    view
    returns (
      address owner,
      bool hasClaimed,
      bool hasAborted,
      uint256 amount,
      uint256 startTime,
      uint256 endTime,
      uint256 lastClaimTime,
      uint256 totalUnlockedAmount
    );

  function setHMXStaking(address _hmxStaking) external;

  function totalVestingEsHmxByUser(address user) external view returns (uint256);

  function hmx() external view returns (IERC20Upgradeable);

  function batchAbort(uint256[] memory itemIndexes) external;

  function setIsPaused(bool _isPaused) external;

  function setMaxDuration(uint256 _maxDuration) external;

  function migratePosition(address account, uint256 amount, uint256 remaingingDuration) external;

  function setMigrateFromVester(address _migrateFromVester) external;

  function migrateToNewVester(
    address newVester,
    address deskExchanger,
    address[] memory users
  ) external;

  function maxDuration() external view returns (uint256);

  function moveStake(address from, address to, uint256 itemIndex) external;
}
