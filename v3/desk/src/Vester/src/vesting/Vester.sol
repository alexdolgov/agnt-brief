// SPDX-License-Identifier: BUSL-1.1
// This code is made available under the terms and conditions of the Business Source License 1.1 (BUSL-1.1).
// The act of publishing this code is driven by the aim to promote transparency and facilitate its utilization for educational purposes.

pragma solidity 0.8.18;

import { OwnableUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import { IERC20Upgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";
import { SafeERC20Upgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { ReentrancyGuardUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol";
import { IVester } from "src/vesting/interfaces/IVester.sol";
import { IHMXStaking } from "src/staking/interfaces/IHMXStaking.sol";
import { DeskExchanger } from "src/migration/DeskExchanger.sol";

/// @title Vester
/// @notice Contract for managing token vesting with support for migration
/// @dev Implements vesting logic with support for HMX tokens and migration to new vesting contracts
contract Vester is OwnableUpgradeable, ReentrancyGuardUpgradeable, IVester {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  /// @notice The duration of one year in seconds
  uint256 private constant YEAR = 365 days;

  /**
   * Events
   */
  event LogVest(
    address indexed owner,
    uint256 indexed itemIndex,
    uint256 amount,
    uint256 startTime,
    uint256 endTime,
    uint256 penaltyAmount
  );
  event LogClaim(
    address indexed owner,
    uint256 indexed itemIndex,
    uint256 vestedAmount,
    uint256 unusedAmount
  );
  event LogAbort(address indexed owner, uint256 indexed itemIndex, uint256 returnAmount);
  event LogSetVestedEsHmxDestination(address indexed oldAddress, address indexed newAddress);
  event LogSetUnusedEsHmxDestination(address indexed oldAddress, address indexed newAddress);
  event LogSetHMXStaking(address indexed oldAddress, address indexed newAddress);
  event LogUpdateTotalVestingEsHmx(address indexed user, uint256 amount);
  event LogSetIsPaused(bool _isPaused);
  event LogSetMaxDuration(uint256 maxDuration);
  event LogSetMigrateFromVester(address indexed newMigrateFromVester);
  event LogSetMigrator(address indexed newMigrator);
  event LogMoveStake(address indexed from, address indexed to, uint256 indexed itemIndex);
  event LogWithdrawHMX(address indexed to, uint256 amount);

  /**
   * States
   */
  IERC20Upgradeable public esHMX;
  IERC20Upgradeable public hmx;

  address public vestedEsHmxDestination;
  address public unusedEsHmxDestination;

  mapping(address => mapping(uint256 => Item)) public items; // Mapping of user address => array of Vesting position
  mapping(address => uint256) public itemLastIndex; // The mapping of last Vesting position index of each user address

  IHMXStaking public hmxStaking;

  mapping(address user => uint256 amount) public totalVestingEsHmxByUser;
  bool public isPaused;
  /// @notice The maximum duration for vesting positions
  /// @dev If set to 0, defaults to 1 year
  uint256 public maxDuration;
  address public migrateFromVester;
  address public migrator;

  function initialize(
    address esHMXAddress,
    address hmxAddress,
    address vestedEsHmxDestinationAddress,
    address unusedEsHmxDestinationAddress
  ) external initializer {
    OwnableUpgradeable.__Ownable_init();
    ReentrancyGuardUpgradeable.__ReentrancyGuard_init();

    esHMX = IERC20Upgradeable(esHMXAddress);
    hmx = IERC20Upgradeable(hmxAddress);
    vestedEsHmxDestination = vestedEsHmxDestinationAddress;
    unusedEsHmxDestination = unusedEsHmxDestinationAddress;
    maxDuration = YEAR;

    // Santy checks
    esHMX.totalSupply();
    hmx.totalSupply();
  }

  function setVestedEsHmxDestinationAddress(
    address newVestedEsHmxDestinationAddress
  ) external onlyOwner {
    emit LogSetVestedEsHmxDestination(vestedEsHmxDestination, newVestedEsHmxDestinationAddress);
    vestedEsHmxDestination = newVestedEsHmxDestinationAddress;
  }

  function setUnusedEsHmxDestinationAddress(
    address newUnusedEsHmxDestinationAddress
  ) external onlyOwner {
    emit LogSetUnusedEsHmxDestination(unusedEsHmxDestination, newUnusedEsHmxDestinationAddress);
    unusedEsHmxDestination = newUnusedEsHmxDestinationAddress;
  }

  function setHMXStaking(address _hmxStaking) external onlyOwner {
    emit LogSetHMXStaking(address(hmxStaking), _hmxStaking);
    hmxStaking = IHMXStaking(_hmxStaking);

    // Sanity Check
    hmxStaking.dp();

    // Interaction
    esHMX.safeApprove(_hmxStaking, type(uint256).max);
  }

  /// @notice Vest tokens for a specified account
  /// @param account The address to vest tokens for
  /// @param amount The amount of tokens to vest
  /// @param duration The duration of the vesting period
  function vestFor(address account, uint256 amount, uint256 duration) external nonReentrant {
    if (isPaused && msg.sender != owner() && msg.sender != migrator) revert IVester_Paused();
    if (account == address(0) || account == address(this)) revert IVester_InvalidAddress();
    if (amount == 0) revert IVester_BadArgument();

    // Always override to max duration
    if (maxDuration > YEAR) {
      duration = maxDuration;
    } else {
      // else default to 1 year
      duration = YEAR;
    }

    uint256 totalUnlockedAmount = getUnlockAmount(amount, duration);

    Item memory item = Item({
      owner: account,
      amount: amount,
      startTime: block.timestamp,
      endTime: block.timestamp + duration,
      hasAborted: false,
      hasClaimed: false,
      lastClaimTime: block.timestamp,
      totalUnlockedAmount: totalUnlockedAmount
    });

    uint256 orderIndex = itemLastIndex[account];
    items[account][orderIndex] = item;
    itemLastIndex[account]++;

    // Only do accounting of totalVestingEsHmxByUser for new vesting positions after HIP-5
    if (duration > YEAR) {
      totalVestingEsHmxByUser[account] += amount;
    }

    if (
      duration > YEAR &&
      hmxStaking.userTokenAmount(address(hmxStaking.dp()), account) * 4 <
      totalVestingEsHmxByUser[account]
    ) revert IVester_NotEnoughDPStaked();

    esHMX.safeTransferFrom(msg.sender, address(this), amount);

    emit LogVest(item.owner, orderIndex, amount, item.startTime, item.endTime, 0);
  }

  function claim(uint256 itemIndex) external nonReentrant {
    _claim(msg.sender, itemIndex);
  }

  function claim(uint256[] memory itemIndexes) external nonReentrant {
    for (uint256 i = 0; i < itemIndexes.length; ) {
      _claim(msg.sender, itemIndexes[i]);

      unchecked {
        ++i;
      }
    }
  }

  function _claim(address account, uint256 itemIndex) internal {
    if (isPaused && msg.sender != owner() && msg.sender != migrator) revert IVester_Paused();
    Item memory item = items[account][itemIndex];

    if (item.amount == 0) revert IVester_PositionNotFound();
    if (item.hasClaimed) revert IVester_Claimed();
    if (item.hasAborted) revert IVester_Aborted();

    uint256 elapsedDuration = block.timestamp < item.endTime
      ? block.timestamp - item.lastClaimTime
      : item.endTime - item.lastClaimTime;
    uint256 vestingDuration = item.endTime - item.startTime;
    uint256 claimable = getUnlockAmount(item.amount, elapsedDuration, vestingDuration);

    // If vest has ended, then mark this as claimed.
    items[account][itemIndex].hasClaimed = block.timestamp >= item.endTime;

    items[account][itemIndex].lastClaimTime = block.timestamp;

    // Only do accounting of totalVestingEsHmxByUser for new vesting positions after HIP-5
    if (vestingDuration > YEAR) {
      totalVestingEsHmxByUser[account] -= claimable;
    }

    hmx.safeTransfer(item.owner, claimable);

    esHMX.safeTransfer(vestedEsHmxDestination, claimable);

    emit LogClaim(item.owner, itemIndex, claimable, item.amount - claimable);
  }

  function abort(uint256 itemIndex) external nonReentrant {
    _abort(msg.sender, itemIndex, true);
  }

  function _abort(address account, uint256 itemIndex, bool isRevert) internal {
    if (isPaused && msg.sender != owner() && msg.sender != migrator) revert IVester_Paused();
    Item memory item = items[account][itemIndex];
    if (account != item.owner && msg.sender != owner()) {
      if (isRevert) {
        revert IVester_Unauthorized();
      } else {
        return;
      }
    }
    if (block.timestamp > item.endTime) {
      if (isRevert) {
        revert IVester_HasCompleted();
      } else {
        return;
      }
    }
    if (item.hasClaimed) {
      if (isRevert) {
        revert IVester_Claimed();
      } else {
        return;
      }
    }
    if (item.hasAborted) {
      if (isRevert) {
        revert IVester_Aborted();
      } else {
        return;
      }
    }

    _claim(account, itemIndex);

    uint256 elapsedDurationSinceStart = block.timestamp - item.startTime;
    uint256 vestingDuration = item.endTime - item.startTime;
    uint256 amountUsed = getUnlockAmount(item.amount, elapsedDurationSinceStart, vestingDuration);
    uint256 returnAmount = item.totalUnlockedAmount - amountUsed;

    items[account][itemIndex].hasAborted = true;

    // Only do accounting of totalVestingEsHmxByUser for new vesting positions after HIP-5
    if (vestingDuration > YEAR) {
      totalVestingEsHmxByUser[account] -= returnAmount;
    }

    _stakingEsHmxForUser(account, returnAmount);

    emit LogAbort(account, itemIndex, returnAmount);
  }

  function batchAbort(uint256[] memory itemIndexes) external nonReentrant {
    uint256 length = itemIndexes.length;
    for (uint256 i = 0; i < length; ) {
      _abort(msg.sender, itemIndexes[i], true);
      unchecked {
        ++i;
      }
    }
  }

  function _stakingEsHmxForUser(address user, uint256 esHmxAmount) internal {
    if (address(hmxStaking) == address(0)) revert IVester_HMXStakingNotSet();
    hmxStaking.deposit(user, address(esHMX), esHmxAmount);
  }

  function getUnlockAmount(uint256 amount, uint256 duration) public view returns (uint256) {
    // Multiply first to minimize precision loss
    if (maxDuration > 0) {
      return (amount * duration * 1e18) / maxDuration / 1e18;
    } else {
      return (amount * duration * 1e18) / YEAR / 1e18;
    }
  }

  function getUnlockAmount(
    uint256 amount,
    uint256 duration,
    uint256 totalVestingDuration
  ) public pure returns (uint256) {
    // The total unlock amount if the user wait until the end of the vest duration
    // totalUnlockAmount = (amount * vestDuration) / YEAR
    // Return the adjusted unlock amount based on the elapsed duration
    // pendingUnlockAmount = (totalUnlockAmount * elapsedDuration) / vestDuration
    // OR
    // pendingUnlockAmount = ((amount * vestDuration) / YEAR * elapsedDuration) / vestDuration
    //                     = (amount * vestDuration * elapsedDuration) / YEAR / vestDuration
    //                     = (amount * elapsedDuration) / YEAR
    return (amount * duration) / totalVestingDuration;
  }

  function getVestingPosition(
    address user,
    uint256 _limit,
    uint256 _offset
  ) external view returns (Item[] memory itemList) {
    uint256 _len = itemLastIndex[user];
    uint256 _startIndex = _offset;
    uint256 _endIndex = _offset + _limit;
    if (_startIndex > _len) return itemList;
    if (_endIndex > _len) {
      _endIndex = _len;
    }

    itemList = new Item[](_endIndex - _startIndex);

    for (uint256 i = _startIndex; i < _endIndex; ) {
      Item memory _item = items[user][i];

      itemList[i - _offset] = _item;
      unchecked {
        ++i;
      }
    }

    return itemList;
  }

  function setIsPaused(bool _isPaused) external onlyOwner {
    isPaused = _isPaused;

    emit LogSetIsPaused(_isPaused);
  }

  function setMaxDuration(uint256 _maxDuration) external onlyOwner {
    maxDuration = _maxDuration;

    emit LogSetMaxDuration(_maxDuration);
  }

  function migrateToNewVester(
    address newVester,
    address deskExchanger,
    address[] memory users
  ) external {
    if (migrator != msg.sender) revert IVester_Unauthorized();
    if (!isPaused) revert IVester_NotPaused();

    for (uint256 i = 0; i < users.length; ) {
      address user = users[i];
      uint256 _itemLastIndex = itemLastIndex[user];
      for (uint256 j = 0; j < _itemLastIndex; ) {
        _migrate(user, j, newVester, deskExchanger);

        unchecked {
          ++j;
        }
      }

      unchecked {
        ++i;
      }
    }
  }

  function _migrate(
    address account,
    uint256 itemIndex,
    address newVester,
    address deskExchanger
  ) internal {
    Item memory item = items[account][itemIndex];

    // Validate for position that does not need migration
    if (item.hasClaimed) {
      return;
    }
    if (item.hasAborted) {
      return;
    }

    // Claim the reward for user first
    _claim(account, itemIndex);

    // Calculate the amount to be migrated
    uint256 elapsedDurationSinceStart = item.endTime < block.timestamp
      ? item.endTime - item.startTime
      : block.timestamp - item.startTime;
    uint256 vestingDuration = item.endTime - item.startTime;
    uint256 amountUsed = getUnlockAmount(item.amount, elapsedDurationSinceStart, vestingDuration);
    uint256 returnAmount = item.totalUnlockedAmount - amountUsed;
    uint256 remainingVestingTime = item.endTime < block.timestamp
      ? 0
      : item.endTime - block.timestamp;

    // Mark the position as aborted
    items[account][itemIndex].hasAborted = true;

    // Only do accounting of totalVestingEsHmxByUser for new vesting positions after HIP-5
    if (vestingDuration > YEAR) {
      totalVestingEsHmxByUser[account] -= returnAmount;
    }

    // Exchange esHMX for bDESK
    if (returnAmount > 0) {
      DeskExchanger deskExchangerContract = DeskExchanger(deskExchanger);
      esHMX.safeIncreaseAllowance(deskExchanger, returnAmount);
      uint256 bDeskAmount = deskExchangerContract.exchangeToken(address(esHMX), returnAmount);

      IERC20Upgradeable(deskExchangerContract.bDesk()).safeIncreaseAllowance(
        newVester,
        bDeskAmount
      );
      IVester(newVester).migratePosition(account, bDeskAmount, remainingVestingTime);
    }

    emit LogAbort(account, itemIndex, returnAmount);
  }

  function migratePosition(address account, uint256 amount, uint256 remaingingDuration) external {
    if (migrateFromVester == address(0)) revert IVester_MigrateFromVesterNotSet();
    if (msg.sender != migrateFromVester) revert IVester_Unauthorized();

    if (account == address(0) || account == address(this)) revert IVester_InvalidAddress();
    if (amount == 0) revert IVester_BadArgument();

    // Always override to max duration
    uint256 duration;
    if (maxDuration > YEAR) {
      duration = maxDuration;
    } else {
      // else default to 1 year
      duration = YEAR;
    }

    uint256 totalUnlockedAmount = getUnlockAmount(amount, duration);

    Item memory item = Item({
      owner: account,
      amount: amount,
      startTime: block.timestamp,
      endTime: block.timestamp + remaingingDuration,
      hasAborted: false,
      hasClaimed: false,
      lastClaimTime: block.timestamp,
      totalUnlockedAmount: totalUnlockedAmount
    });

    uint256 orderIndex = itemLastIndex[account];
    items[account][orderIndex] = item;
    itemLastIndex[account]++;

    // Only do accounting of totalVestingEsHmxByUser for new vesting positions after HIP-5
    if (duration > YEAR) {
      totalVestingEsHmxByUser[account] += amount;
    }

    esHMX.safeTransferFrom(msg.sender, address(this), amount);

    emit LogVest(item.owner, orderIndex, amount, item.startTime, item.endTime, 0);
  }

  function setMigrateFromVester(address _migrateFromVester) external onlyOwner {
    migrateFromVester = _migrateFromVester;

    emit LogSetMigrateFromVester(_migrateFromVester);
  }

  function setMigrator(address _migrator) external onlyOwner {
    migrator = _migrator;

    emit LogSetMigrator(_migrator);
  }

  function moveStake(address from, address to, uint256 itemIndex) external onlyOwner {
    if (from == to) revert IVester_InvalidAddress();
    if (from == address(0) || to == address(0)) revert IVester_InvalidAddress();

    Item storage fromItem = items[from][itemIndex];

    if (fromItem.amount == 0) revert IVester_PositionNotFound();
    if (fromItem.hasClaimed) revert IVester_Claimed();
    if (fromItem.hasAborted) revert IVester_Aborted();
    if (block.timestamp > fromItem.endTime) revert IVester_HasCompleted();

    fromItem.hasAborted = true;

    uint256 elapsedDurationSinceStart = block.timestamp - fromItem.startTime;
    uint256 vestingDuration = fromItem.endTime - fromItem.startTime;
    uint256 amountUsed = getUnlockAmount(
      fromItem.amount,
      elapsedDurationSinceStart,
      vestingDuration
    );
    uint256 returnAmount = fromItem.totalUnlockedAmount - amountUsed;

    if (vestingDuration > YEAR) {
      totalVestingEsHmxByUser[from] -= returnAmount;
    }

    emit LogAbort(from, itemIndex, returnAmount);

    Item memory newItem = Item({
      owner: to,
      amount: fromItem.amount,
      startTime: fromItem.startTime,
      endTime: fromItem.endTime,
      hasAborted: false,
      hasClaimed: false,
      lastClaimTime: fromItem.lastClaimTime,
      totalUnlockedAmount: fromItem.totalUnlockedAmount
    });

    uint256 orderIndex = itemLastIndex[to];
    items[to][orderIndex] = newItem;
    itemLastIndex[to]++;

    if (vestingDuration > YEAR) {
      totalVestingEsHmxByUser[to] += returnAmount;
    }

    emit LogVest(newItem.owner, orderIndex, fromItem.amount, newItem.startTime, newItem.endTime, 0);

    emit LogMoveStake(from, to, itemIndex);
  }

  function withdrawHMX(address to) external onlyOwner {
    hmx.safeTransfer(to, hmx.balanceOf(address(this)));
    emit LogWithdrawHMX(to, hmx.balanceOf(address(this)));
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }
}
