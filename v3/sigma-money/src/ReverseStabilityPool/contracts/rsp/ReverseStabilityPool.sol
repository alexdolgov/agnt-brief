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

  /// @dev Thrown when setEntryFeeBps or setExitFeeBps is called with a value exceeding MAX_FEE_BPS.
  error ErrorFeeBpsTooHigh();

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

  /// @notice Emitted when the fee treasury address is updated.
  event TreasuryUpdated(address indexed oldTreasury, address indexed newTreasury);

  /// @notice Emitted when the entry (deposit) fee in basis points is updated.
  event EntryFeeBpsUpdated(uint256 oldBps, uint256 newBps);

  /// @notice Emitted when the exit (processExits) fee in basis points is updated.
  event ExitFeeBpsUpdated(uint256 oldBps, uint256 newBps);

  /// @notice Emitted when a fee is collected and routed to the treasury.
  /// @param kind The fee kind — either FEE_KIND_ENTRY (keccak256("ENTRY")) or FEE_KIND_EXIT (keccak256("EXIT")).
  /// @param user The user the fee was charged against.
  /// @param grossAmount The gross amount (before fee) used to compute the fee.
  /// @param feeAmount The fee amount transferred to the treasury.
  /// @param treasury The treasury address that received the fee.
  event FeeCollected(
    bytes32 indexed kind,
    address indexed user,
    uint256 grossAmount,
    uint256 feeAmount,
    address indexed treasury
  );

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

  /// @notice Maximum entry/exit fee in basis points (10% hard cap).
  uint256 public constant MAX_FEE_BPS = 1000;

  /// @dev Fee kind tag for entry (deposit) fees, used in FeeCollected events.
  bytes32 private constant FEE_KIND_ENTRY = keccak256("ENTRY");

  /// @dev Fee kind tag for exit (processExits) fees, used in FeeCollected events.
  bytes32 private constant FEE_KIND_EXIT = keccak256("EXIT");

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

  /// @notice Address that receives entry/exit fees. Required when fees > 0; may be address(0) when fees are 0.
  address public treasury;

  /// @notice Entry (deposit) fee in basis points. 0 = no fee. Capped at MAX_FEE_BPS.
  uint256 public entryFeeBps;

  /// @notice Exit (processExits) fee in basis points. 0 = no fee. Capped at MAX_FEE_BPS.
  uint256 public exitFeeBps;

  /// @notice Storage gap for upgrade safety. 14 declared slots + 36 gap = 50 total.
  uint256[36] private __gap;

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
  /// @param _dailyExitCapBps The initial daily exit cap in basis points (max BPS_BASE = 10000).
  /// @param _treasury The fee treasury address. May be address(0) if and only if both fee bps are 0.
  /// @param _entryFeeBps The initial entry (deposit) fee in basis points (max MAX_FEE_BPS = 1000).
  /// @param _exitFeeBps The initial exit (processExits) fee in basis points (max MAX_FEE_BPS = 1000).
  function initialize(
    address _admin,
    string memory _name,
    string memory _symbol,
    uint256 _timeLockDuration,
    uint256 _dailyExitCapBps,
    address _treasury,
    uint256 _entryFeeBps,
    uint256 _exitFeeBps
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

    if (_entryFeeBps > MAX_FEE_BPS) revert ErrorFeeBpsTooHigh();
    if (_exitFeeBps > MAX_FEE_BPS) revert ErrorFeeBpsTooHigh();
    // When any fee is non-zero, treasury MUST be non-zero (prevents silent fee burn at deployment time).
    if ((_entryFeeBps > 0 || _exitFeeBps > 0) && _treasury == address(0)) revert ErrorZeroAddress();

    treasury = _treasury;
    entryFeeBps = _entryFeeBps;
    exitFeeBps = _exitFeeBps;
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

  /// @notice Update the fee treasury address.
  /// @dev Setting to address(0) is permitted but both entryFeeBps and exitFeeBps must also be 0
  ///      for subsequent deposit/processExits calls to succeed (see ErrorZeroAddress guards).
  /// @param _treasury The new treasury address.
  function setTreasury(address _treasury) external onlyRole(OPERATOR_ROLE) {
    address oldTreasury = treasury;
    treasury = _treasury;
    emit TreasuryUpdated(oldTreasury, _treasury);
  }

  /// @notice Update the entry (deposit) fee in basis points.
  /// @param _bps The new entry fee in basis points (max MAX_FEE_BPS = 1000 = 10%).
  function setEntryFeeBps(uint256 _bps) external onlyRole(OPERATOR_ROLE) {
    if (_bps > MAX_FEE_BPS) revert ErrorFeeBpsTooHigh();
    uint256 oldBps = entryFeeBps;
    entryFeeBps = _bps;
    emit EntryFeeBpsUpdated(oldBps, _bps);
  }

  /// @notice Update the exit (processExits) fee in basis points.
  /// @param _bps The new exit fee in basis points (max MAX_FEE_BPS = 1000 = 10%).
  function setExitFeeBps(uint256 _bps) external onlyRole(OPERATOR_ROLE) {
    if (_bps > MAX_FEE_BPS) revert ErrorFeeBpsTooHigh();
    uint256 oldBps = exitFeeBps;
    exitFeeBps = _bps;
    emit ExitFeeBpsUpdated(oldBps, _bps);
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

  /// @notice Deposit collateral and receive rToken (1:1 when entryFeeBps == 0).
  /// @dev When entryFeeBps > 0, a single safeTransferFrom pulls the gross _amount into the pool,
  ///      then an internal safeTransfer routes feeAmount to treasury. User mints netAmount rToken.
  ///      totalDeposited and depositCap are both tracked in net units (D-01, D-02).
  /// @param _amount Gross amount of collateral to deposit (user transfers this amount).
  function deposit(uint256 _amount) external nonReentrant {
    if (depositPaused) revert ErrorDepositPaused();
    if (_amount == 0) revert ErrorDepositZeroAmount();

    uint256 _entryFeeBps = entryFeeBps;
    uint256 feeAmount = (_amount * _entryFeeBps) / BPS_BASE;
    uint256 netAmount = _amount - feeAmount;

    uint256 newTotal = totalDeposited + netAmount;
    if (depositCap != 0 && newTotal > depositCap) revert ErrorDepositCapExceeded();

    totalDeposited = newTotal;

    // Pull the full gross amount from user -> pool in a single transferFrom (gas-optimal, D-09).
    IERC20(collateralToken).safeTransferFrom(msg.sender, address(this), _amount);

    if (feeAmount > 0) {
      address _treasury = treasury;
      if (_treasury == address(0)) revert ErrorZeroAddress();
      // Internal safeTransfer from pool to treasury (saves ~21k gas vs a second transferFrom).
      IERC20(collateralToken).safeTransfer(_treasury, feeAmount);
      emit FeeCollected(FEE_KIND_ENTRY, msg.sender, _amount, feeAmount, _treasury);
    }

    _mint(msg.sender, netAmount);

    emit Deposited(msg.sender, netAmount);
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

      // Check sufficient collateral covering both user + treasury legs (gross, per EXIT-07 — reverts, not skips)
      if (_balanceOf(collateralToken) < amount) revert ErrorInsufficientCollateral();

      // Process exit
      address user = request.user;

      uint256 _exitFeeBps = exitFeeBps;
      uint256 feeAmount = (amount * _exitFeeBps) / BPS_BASE;
      uint256 netAmount = amount - feeAmount;

      // === 1. State updates (checks-effects, D-08) ===
      delete userExitIndex[user];
      delete exitQueue[head];
      totalDeposited -= amount;         // gross: keeps totalDeposited == totalSupply
      dailyExitedAmount += amount;      // gross: fee path consumes the full share allowance

      // === 2. Burn locked rToken (pure state, no external call) ===
      _burn(address(this), amount);

      // === 3. External transfers (interactions, D-08) ===
      // Transfer net collateral to user — auto-retrieves from strategy if pool balance insufficient
      _transferOut(collateralToken, netAmount, user);

      if (feeAmount > 0) {
        address _treasury = treasury;
        if (_treasury == address(0)) revert ErrorZeroAddress();
        _transferOut(collateralToken, feeAmount, _treasury);
        emit FeeCollected(FEE_KIND_EXIT, user, amount, feeAmount, _treasury);
      }

      emit ExitProcessed(user, netAmount);

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
