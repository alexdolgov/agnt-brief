// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { ERC20PermitUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import { AssetManagement } from "../fund/AssetManagement.sol";

/// @title ReverseStabilityPool
/// @notice Allows users to deposit a single collateral asset and receive 1:1 rToken.
/// Pool assets are deployed to yield strategies via AssetManagement (alloc/manage).
/// Users exit through a time-locked FIFO queue processed by the asset manager.
contract ReverseStabilityPool is ERC20PermitUpgradeable, AccessControlUpgradeable, ReentrancyGuardUpgradeable, AssetManagement {
  using SafeERC20 for IERC20;

  /**********
   * Errors *
   **********/

  /// @dev Thrown when deposit amount is zero.
  error ErrorDepositZeroAmount();

  /// @dev Thrown when deposits are paused.
  error ErrorDepositPaused();

  /// @dev Thrown when exits are paused.
  error ErrorExitPaused();

  /// @dev Thrown when deposit would exceed the deposit cap.
  error ErrorDepositCapExceeded();

  /// @dev Thrown when user already has an active exit request.
  error ErrorExitRequestAlreadyExists();

  /// @dev Thrown when exit request is still within the time-lock period.
  error ErrorExitRequestStillLocked();

  /// @dev Thrown when contract has insufficient collateral to process exits.
  error ErrorInsufficientCollateral();

  /// @dev Thrown when a single exit request amount exceeds the current daily cap.
  error ErrorExitAmountExceedsDailyCap();

  /// @dev Thrown when skipExit index does not match exitQueueHead.
  error ErrorInvalidQueueIndex();

  /// @dev Thrown when skipExit is called on an empty queue.
  error ErrorEmptyQueue();

  /// @dev Thrown when dailyExitCapBps exceeds BPS_BASE.
  error ErrorInvalidDailyExitCapBps();

  /// @dev Thrown when a generic zero amount is passed.
  error ErrorZeroAmount();

  /// @dev Thrown when zero address is provided.
  error ErrorZeroAddress();

  /// @dev Thrown when time-lock duration is below minimum.
  error ErrorTimeLockDurationTooShort();

  /// @dev Thrown when user has no active exit request.
  error ErrorNoActiveExitRequest();

  /**********
   * Events *
   **********/

  /// @notice Emitted when a user deposits collateral and receives rToken.
  event Deposited(address indexed user, uint256 amount);

  /// @notice Emitted when a user submits an exit request.
  event ExitRequested(address indexed user, uint256 amount, uint256 unlockTime, uint128 queueIndex);

  /// @notice Emitted when an exit request is processed and collateral returned to user.
  event ExitProcessed(address indexed user, uint256 amount);

  /// @notice Emitted when deposit pause state is updated.
  event DepositPausedUpdated(bool paused);

  /// @notice Emitted when exit pause state is updated.
  event ExitPausedUpdated(bool paused);

  /// @notice Emitted when time-lock duration is updated.
  event TimeLockDurationUpdated(uint256 oldDuration, uint256 newDuration);

  /// @notice Emitted when daily exit cap basis points is updated.
  event DailyExitCapBpsUpdated(uint256 oldBps, uint256 newBps);

  /// @notice Emitted when deposit cap is updated.
  event DepositCapUpdated(uint256 oldCap, uint256 newCap);

  /// @notice Emitted when an admin skips a stuck exit request, returning rToken to the user.
  event ExitSkipped(address indexed user, uint256 amount, uint128 queueIndex);

  /*************
   * Constants *
   *************/

  /// @notice The role for operational parameter adjustments.
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

  /// @notice The role for emergency pause/unpause operations.
  bytes32 public constant EMERGENCY_ROLE = keccak256("EMERGENCY_ROLE");

  /// @dev Basis points denominator (10000 = 100%).
  uint256 internal constant BPS_BASE = 10000;

  /// @dev Minimum time-lock duration (1 hour).
  uint256 public constant MIN_TIME_LOCK_DURATION = 3600;

  /***********************
   * Immutable Variables *
   ***********************/

  /// @notice The address of the collateral token (one asset per RSP instance).
  address public immutable collateralToken;

  /***********
   * Structs *
   ***********/

  /// @dev Uses 3 storage slots per request. No packed-slot optimisation — the gas
  /// difference is negligible on BSC and uint256 removes any per-request amount cap.
  /// Inactive when amount == 0.
  struct ExitRequest {
    address user;
    uint256 amount;
    uint32 unlockTime;
  }

  /*********************
   * Storage Variables *
   *********************/

  /// @notice Total amount deposited by users (not affected by asset manager operations).
  uint256 public totalDeposited;

  /// @notice Whether deposits are paused.
  bool public depositPaused;

  /// @notice Whether exits are paused.
  bool public exitPaused;

  /// @notice Time-lock duration in seconds for exit requests (default 24 hours).
  uint256 public timeLockDuration;

  /// @notice Daily exit cap in basis points of totalDeposited.
  /// @dev 5000 = 50%, max 10000 = 100%. 0 means no exits allowed.
  uint256 public dailyExitCapBps;

  /// @notice Maximum deposit cap. 0 = unlimited.
  uint256 public depositCap;

  /// @notice Queue head pointer (next index to dequeue).
  uint128 public exitQueueHead;

  /// @notice Queue tail pointer (next index to enqueue).
  uint128 public exitQueueTail;

  /// @notice Exit queue: index => ExitRequest.
  mapping(uint128 => ExitRequest) public exitQueue;

  /// @notice Mapping from user address to their active exit queue index.
  /// @dev 0 means no active request (queue indices start at 1 via offset).
  mapping(address => uint128) public userExitIndex;

  /// @notice Amount already processed today (resets on epoch boundary).
  uint256 public dailyExitedAmount;

  /// @notice Current epoch day (block.timestamp / 86400).
  uint256 public currentEpoch;

  /// @notice Cached daily exit cap (set once per epoch from totalDeposited * dailyExitCapBps / BPS_BASE).
  uint256 public dailyExitCap;

  /// @notice Storage gap for upgrade safety.
  uint256[49] private __gap;

  /***************
   * Constructor *
   ***************/

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor(address _collateralToken) {
    if (_collateralToken == address(0)) revert ErrorZeroAddress();
    collateralToken = _collateralToken;
    _disableInitializers();
  }

  /// @notice Initialize the RSP contract.
  /// @param _admin The address that receives DEFAULT_ADMIN_ROLE.
  /// @param _name The ERC20 token name for rToken.
  /// @param _symbol The ERC20 token symbol for rToken.
  /// @param _timeLockDuration The initial time-lock duration in seconds.
  /// @param _dailyExitCapBps The initial daily exit cap in basis points.
  function initialize(
    address _admin,
    string memory _name,
    string memory _symbol,
    uint256 _timeLockDuration,
    uint256 _dailyExitCapBps
  ) external initializer {
    __Context_init();
    __ERC165_init();
    __AccessControl_init();
    __ReentrancyGuard_init();
    __ERC20_init(_name, _symbol);
    __ERC20Permit_init(_name);

    _grantRole(DEFAULT_ADMIN_ROLE, _admin);

    timeLockDuration = _timeLockDuration;
    if (_dailyExitCapBps > BPS_BASE) revert ErrorInvalidDailyExitCapBps();
    dailyExitCapBps = _dailyExitCapBps;
  }

  /*************************
   * Public View Functions *
   *************************/

  /// @notice Returns the active exit request for a user.
  /// @param _user The address to query.
  /// @return The ExitRequest struct for the user's active request.
  function getUserExitRequest(address _user) external view returns (ExitRequest memory) {
    uint128 idx = userExitIndex[_user];
    if (idx == 0) revert ErrorNoActiveExitRequest();
    return exitQueue[idx - 1];
  }

  /************************
   * OPERATOR Functions   *
   ************************/

  /// @notice Update the time-lock duration for exit requests.
  /// @param _newDuration The new time-lock duration in seconds.
  function setTimeLockDuration(uint256 _newDuration) external onlyRole(OPERATOR_ROLE) {
    if (_newDuration < MIN_TIME_LOCK_DURATION) revert ErrorTimeLockDurationTooShort();
    uint256 oldDuration = timeLockDuration;
    timeLockDuration = _newDuration;
    emit TimeLockDurationUpdated(oldDuration, _newDuration);
  }

  /// @notice Update the daily exit cap in basis points.
  /// @param _newBps The new daily exit cap (max 10000).
  function setDailyExitCapBps(uint256 _newBps) external onlyRole(OPERATOR_ROLE) {
    if (_newBps > BPS_BASE) revert ErrorInvalidDailyExitCapBps();
    uint256 oldBps = dailyExitCapBps;
    dailyExitCapBps = _newBps;
    emit DailyExitCapBpsUpdated(oldBps, _newBps);
  }

  /// @notice Update the deposit cap.
  /// @param _newCap The new deposit cap (0 = unlimited).
  function setDepositCap(uint256 _newCap) external onlyRole(OPERATOR_ROLE) {
    uint256 oldCap = depositCap;
    depositCap = _newCap;
    emit DepositCapUpdated(oldCap, _newCap);
  }

  /*************************
   * EMERGENCY Functions   *
   *************************/

  /// @notice Pause or unpause deposits.
  /// @param _paused Whether deposits should be paused.
  function setDepositPaused(bool _paused) external onlyRole(EMERGENCY_ROLE) {
    depositPaused = _paused;
    emit DepositPausedUpdated(_paused);
  }

  /// @notice Pause or unpause exits.
  /// @param _paused Whether exits should be paused.
  function setExitPaused(bool _paused) external onlyRole(EMERGENCY_ROLE) {
    exitPaused = _paused;
    emit ExitPausedUpdated(_paused);
  }

  /**********************
   * Deposit Functions  *
   **********************/

  /// @notice Deposit collateral and receive 1:1 rToken.
  /// @param _amount Amount of collateral to deposit.
  function deposit(uint256 _amount) external nonReentrant {
    if (depositPaused) revert ErrorDepositPaused();
    if (_amount == 0) revert ErrorDepositZeroAmount();

    uint256 newTotal = totalDeposited + _amount;
    if (depositCap != 0 && newTotal > depositCap) revert ErrorDepositCapExceeded();

    totalDeposited = newTotal;

    IERC20(collateralToken).safeTransferFrom(msg.sender, address(this), _amount);
    _mint(msg.sender, _amount);

    emit Deposited(msg.sender, _amount);
  }

  /*****************************
   * Exit Queue Functions      *
   *****************************/

  /// @notice Submit an exit request, locking rToken in the contract.
  /// @param _amount Amount of rToken to exit (will be burned when processed).
  function requestExit(uint256 _amount) external nonReentrant {
    if (exitPaused) revert ErrorExitPaused();
    if (_amount == 0) revert ErrorZeroAmount();
    if (userExitIndex[msg.sender] != 0) revert ErrorExitRequestAlreadyExists();

    // Single request cannot exceed current daily cap (prevents oversized requests blocking queue)
    uint256 dailyCap = (totalDeposited * dailyExitCapBps) / BPS_BASE;
    if (_amount > dailyCap) revert ErrorExitAmountExceedsDailyCap();

    // Transfer rToken from user to contract (lock it)
    _transfer(msg.sender, address(this), _amount);

    // Enqueue exit request
    uint128 index = exitQueueTail;
    exitQueueTail = index + 1;

    uint32 unlockTime = uint32(block.timestamp + timeLockDuration);
    exitQueue[index] = ExitRequest({ user: msg.sender, amount: _amount, unlockTime: unlockTime });

    // Store index + 1 so that 0 means "no active request"
    userExitIndex[msg.sender] = index + 1;

    emit ExitRequested(msg.sender, _amount, uint256(unlockTime), index);
  }

  /// @notice Batch-process eligible exit requests from the queue.
  /// @param _count Maximum number of requests to process.
  function processExits(uint128 _count) external nonReentrant onlyRole(ASSET_MANAGER_ROLE) {
    if (exitPaused) revert ErrorExitPaused();
    if (exitQueueHead >= exitQueueTail) return; // empty queue early return

    // Reset daily cap on epoch boundary — cache dailyExitCap so it stays stable
    // across multiple processExits calls within the same epoch (prevents shrinkage
    // as totalDeposited decreases with each processed exit).
    uint256 epoch = block.timestamp / 86400;
    if (epoch != currentEpoch) {
      currentEpoch = epoch;
      dailyExitedAmount = 0;
      dailyExitCap = (totalDeposited * dailyExitCapBps) / BPS_BASE;
    }

    uint256 dailyCap = dailyExitCap;

    uint128 head = exitQueueHead;
    uint128 tail = exitQueueTail;
    uint128 processed = 0;

    while (head < tail && processed < _count) {
      ExitRequest storage request = exitQueue[head];

      // Check time-lock has expired
      if (block.timestamp < uint256(request.unlockTime)) {
        break; // Queue is FIFO and sorted by time, so no point continuing
      }

      uint256 amount = request.amount;

      // Check daily cap (per EXIT-08) — break instead of revert to avoid blocking queue
      if (dailyExitedAmount + amount > dailyCap) break;

      // Check sufficient collateral: pool balance + strategy principal (per EXIT-07 — reverts, not skips)
      if (_balanceOf(collateralToken) < amount) revert ErrorInsufficientCollateral();

      // Process exit
      address user = request.user;

      // Clear user's exit index
      delete userExitIndex[user];
      // Clear queue entry
      delete exitQueue[head];

      // Update state
      totalDeposited -= amount;
      dailyExitedAmount += amount;

      // Burn locked rToken (per EXIT-10)
      _burn(address(this), amount);

      // Transfer collateral to user — auto-retrieves from strategy if pool balance insufficient
      _transferOut(collateralToken, amount, user);

      emit ExitProcessed(user, amount);

      head++;
      processed++;
    }

    exitQueueHead = head;
  }

  /// @notice Skip a stuck exit request at the queue head, returning locked rToken to the user.
  /// @dev Only callable when the head request cannot be processed (e.g., amount > dailyCap after totalDeposited shrinks).
  /// @param _index The queue index to skip (must equal exitQueueHead for safety).
  function skipExit(uint128 _index) external nonReentrant onlyRole(ASSET_MANAGER_ROLE) {
    if (_index != exitQueueHead) revert ErrorInvalidQueueIndex();
    uint128 head = exitQueueHead;
    if (head >= exitQueueTail) revert ErrorEmptyQueue();

    ExitRequest storage request = exitQueue[head];
    uint256 amount = request.amount;
    address user = request.user;

    // Clear state
    delete userExitIndex[user];
    delete exitQueue[head];
    exitQueueHead = head + 1;

    // Return locked rToken to user (not burned, not processed -- just unlocked)
    _transfer(address(this), user, amount);

    emit ExitSkipped(user, amount, head);
  }

}
