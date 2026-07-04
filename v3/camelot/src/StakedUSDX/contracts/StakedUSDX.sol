// SPDX-License-Identifier: LGPL-3.0
pragma solidity 0.8.20;

import {ERC4626} from '@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol';
import {SafeERC20, IERC20, IERC20Permit} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {ReentrancyGuard} from '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import {Ownable2Step} from '@openzeppelin/contracts/access/Ownable2Step.sol';
import {AccessControl} from '@openzeppelin/contracts/access/AccessControl.sol';
import {Pausable} from '@openzeppelin/contracts/security/Pausable.sol';
import {ERC20Permit, ERC20} from '@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol';
import {Errors} from './helpers/Errors.sol';
import {IStakedUSDX} from './interfaces/IStakedUSDX.sol';
import {USDXSilo} from './USDXSilo.sol';

/**
 * @title StakedUSDX
 */
contract StakedUSDX is Ownable2Step, AccessControl, Pausable, ReentrancyGuard, ERC20Permit, ERC4626, IStakedUSDX {
  /// @notice The role that is allowed to distribute rewards to this contract
  bytes32 private constant REWARDER_ROLE = keccak256('REWARDER_ROLE');
  /// @notice The role that is allowed to blacklist and un-blacklist addresses
  bytes32 private constant BLACKLIST_MANAGER_ROLE = keccak256('BLACKLIST_MANAGER_ROLE');
  /// @notice The role which prevents an address to stake
  bytes32 private constant SOFT_RESTRICTED_STAKER_ROLE = keccak256('SOFT_RESTRICTED_STAKER_ROLE');
  /// @notice The role which prevents an address to transfer, stake, or unstake. The owner of the contract can redirect address staking balance if an address is in full restricting mode.
  bytes32 private constant FULL_RESTRICTED_STAKER_ROLE = keccak256('FULL_RESTRICTED_STAKER_ROLE');
  /// @notice The vesting period of lastDistributionAmount over which it increasingly becomes available to stakers
  uint256 private constant VESTING_PERIOD = 8 hours;
  /// @notice Minimum non-zero shares amount to prevent donation attack
  uint256 private constant MIN_SHARES = 1e18;

  /// @notice The amount of the last asset distribution from the controller contract into this
  /// contract + any unvested remainder at that time
  uint256 public vestingAmount;

  /// @notice The timestamp of the last asset distribution from the controller contract into this contract
  uint256 public lastDistributionTimestamp;

  mapping(address => UserCooldown) public cooldowns;

  USDXSilo public immutable SILO;

  uint24 public MAX_COOLDOWN_DURATION = 90 days;

  uint24 public cooldownDuration;

  uint256 private _maxPoolDeposit;

  bool private _pausedDeposit;
  bool private _pausedWithdraw;

  using SafeERC20 for IERC20;
  using SafeERC20 for IERC20Permit;

  /// @notice ensure input amount nonzero
  modifier notZero(uint256 amount) {
    require(amount > 0, Errors.ZERO_AMOUNT_NOT_VALID);
    _;
  }

  /// @notice ensures blacklist target is not owner
  modifier notOwner(address target) {
    require(target != owner(), Errors.CANT_BLACKLIST_OWNER);
    _;
  }

  /// @notice ensure cooldownDuration is zero
  modifier ensureCooldownOff() {
    require(cooldownDuration == 0, Errors.OPERATION_NOT_ALLOWED);
    _;
  }

  /// @notice ensure cooldownDuration is gt 0
  modifier ensureCooldownOn() {
    require(cooldownDuration != 0, Errors.OPERATION_NOT_ALLOWED);
    _;
  }

  /// @notice ensure deposit is not pause
  modifier whenNotDepositPaused() {
    require(!_pausedDeposit, Errors.DEPOSIT_OPERATION_PAUSED);
    _;
  }

  /// @notice ensure deposit is not pause
  modifier whenNotWithdrawPaused() {
    require(!_pausedWithdraw, Errors.WITHDRAW_OPERATION_PAUSED);
    _;
  }

  /**
   * @notice Constructor for StakedUSDX contract.
   * @param _asset The address of the USDX token.
   * @param _initialRewarder The address of the initial rewarder.
   * @param _initialOwner The address of the owner.
   */
  constructor(
    IERC20 _asset,
    address _initialRewarder,
    address _initialOwner
  ) ERC20('Staked USDX', 'sUSDX') ERC4626(_asset) ERC20Permit('sUSDX') {
    require(_initialOwner != address(0) && _initialRewarder != address(0) && address(_asset) != address(0), Errors.ZERO_ADDRESS_NOT_VALID);
    SILO = new USDXSilo(address(this), address(_asset));

    _maxPoolDeposit = type(uint256).max;

    _pausedDeposit = false;
    _pausedWithdraw = false;

    _grantRole(REWARDER_ROLE, _initialRewarder);
    _transferOwnership(_initialOwner);
  }

  /// @inheritdoc IStakedUSDX
  function transferInRewards(uint256 amount) external override nonReentrant onlyRole(REWARDER_ROLE) notZero(amount) {
    _updateVestingAmount(amount);
    // transfer assets from rewarder to this contract
    IERC20(asset()).safeTransferFrom(_msgSender(), address(this), amount);

    emit RewardsReceived(amount);
  }

  /**
   * @dev See {IERC4626-deposit}.
   */
  function deposit(uint256 assets, address receiver) public virtual override whenNotDepositPaused returns (uint256) {
    return super.deposit(assets, receiver);
  }

  /**
   * @dev See {IERC4626-deposit}.
   */
  function depositWithPermit(
    uint256 assets,
    address receiver,
    uint256 _deadline,
    uint8 _permitV,
    bytes32 _permitR,
    bytes32 _permitS
  ) public whenNotDepositPaused returns (uint256) {
    IERC20Permit(asset()).safePermit(_msgSender(), address(this), assets, _deadline, _permitV, _permitR, _permitS);
    return super.deposit(assets, receiver);
  }

  /**
   * @dev See {IERC4626-mint}.
   */
  function mint(uint256 shares, address receiver) public virtual override whenNotDepositPaused returns (uint256) {
    return super.mint(shares, receiver);
  }

  /**
   * @dev See {IERC4626-mint}.
   */
  function mintWithPermit(
    uint256 shares,
    address receiver,
    uint256 _deadline,
    uint8 _permitV,
    bytes32 _permitR,
    bytes32 _permitS
  ) public whenNotDepositPaused returns (uint256) {
    require(shares <= maxMint(receiver), 'ERC4626: mint more than max');

    uint256 assets = previewMint(shares);
    IERC20Permit(asset()).safePermit(_msgSender(), address(this), assets, _deadline, _permitV, _permitR, _permitS);
    _deposit(_msgSender(), receiver, assets, shares);

    return assets;
  }

  /**
   * @dev See {IERC4626-withdraw}.
   */
  function withdraw(
    uint256 assets,
    address receiver,
    address owner
  ) public virtual override whenNotWithdrawPaused ensureCooldownOff returns (uint256) {
    return super.withdraw(assets, receiver, owner);
  }

  /**
   * @dev See {IERC4626-redeem}.
   */
  function redeem(
    uint256 shares,
    address receiver,
    address owner
  ) public virtual override whenNotWithdrawPaused ensureCooldownOff returns (uint256) {
    return super.redeem(shares, receiver, owner);
  }

  /// @inheritdoc IStakedUSDX
  function unstake(address receiver) external override whenNotWithdrawPaused {
    UserCooldown storage userCooldown = cooldowns[msg.sender];
    uint256 assets = userCooldown.underlyingAmount;
    require(block.timestamp >= userCooldown.cooldownEnd, Errors.INVALID_COOLDOWN);

    userCooldown.cooldownEnd = 0;
    userCooldown.underlyingAmount = 0;

    SILO.withdraw(receiver, assets);
  }

  /// @inheritdoc IStakedUSDX
  function cooldownAssets(uint256 assets) external override whenNotWithdrawPaused ensureCooldownOn returns (uint256) {
    require(assets <= maxWithdraw(_msgSender()), Errors.EXCESSIVE_WITHDRAW_AMOUNT);

    uint256 shares = previewWithdraw(assets);

    cooldowns[_msgSender()].cooldownEnd = uint104(block.timestamp) + cooldownDuration;
    cooldowns[_msgSender()].underlyingAmount += assets;

    _withdraw(_msgSender(), address(SILO), _msgSender(), assets, shares);

    return shares;
  }

  /// @inheritdoc IStakedUSDX
  function cooldownShares(uint256 shares) external override whenNotWithdrawPaused ensureCooldownOn returns (uint256) {
    require(shares <= maxRedeem(_msgSender()), Errors.EXCESSIVE_REDEEM_AMOUNT);
    uint256 assets = previewRedeem(shares);

    cooldowns[_msgSender()].cooldownEnd = uint104(block.timestamp) + cooldownDuration;
    cooldowns[_msgSender()].underlyingAmount += assets;

    _withdraw(_msgSender(), address(SILO), _msgSender(), assets, shares);

    return assets;
  }

  /// @inheritdoc IStakedUSDX
  function setCooldownDuration(uint24 duration) external override onlyOwner {
    require(duration <= MAX_COOLDOWN_DURATION, Errors.INVALID_COOLDOWN);

    uint24 previousDuration = cooldownDuration;
    cooldownDuration = duration;
    emit CooldownDurationUpdated(previousDuration, cooldownDuration);
  }

  /// @inheritdoc IStakedUSDX
  function configPoolLimit(uint256 _poolDepositLimit) external override onlyOwner {
    emit ConfigPoolLimit(_maxPoolDeposit, _poolDepositLimit);
    _maxPoolDeposit = _poolDepositLimit;
  }

  /// @inheritdoc IStakedUSDX
  function pauseDeposit() external override onlyOwner {
    _pausedDeposit = true;
    emit PausedDeposit(_msgSender());
  }

  /// @inheritdoc IStakedUSDX
  function unpauseDeposit() external override onlyOwner {
    _pausedDeposit = false;
    emit UnpausedDeposit(_msgSender());
  }

  /// @inheritdoc IStakedUSDX
  function pauseWithdraw() external override onlyOwner {
    _pausedWithdraw = true;
    emit PausedWithdraw(_msgSender());
  }

  /// @inheritdoc IStakedUSDX
  function unpauseWithdraw() external override onlyOwner {
    _pausedWithdraw = false;
    emit UnpausedWithdraw(_msgSender());
  }

  /// @inheritdoc IStakedUSDX
  function isBlacklist(address _address, bool isFullBlacklisting) public view override returns (bool) {
    bytes32 role = isFullBlacklisting ? FULL_RESTRICTED_STAKER_ROLE : SOFT_RESTRICTED_STAKER_ROLE;
    return hasRole(role, _address);
  }

  /// @inheritdoc IStakedUSDX
  function addToBlacklist(address target, bool isFullBlacklisting) external override onlyRole(BLACKLIST_MANAGER_ROLE) notOwner(target) {
    bytes32 role = isFullBlacklisting ? FULL_RESTRICTED_STAKER_ROLE : SOFT_RESTRICTED_STAKER_ROLE;
    _grantRole(role, target);
  }

  /// @inheritdoc IStakedUSDX
  function removeFromBlacklist(
    address target,
    bool isFullBlacklisting
  ) external override onlyRole(BLACKLIST_MANAGER_ROLE) notOwner(target) {
    bytes32 role = isFullBlacklisting ? FULL_RESTRICTED_STAKER_ROLE : SOFT_RESTRICTED_STAKER_ROLE;
    _revokeRole(role, target);
  }

  /// @inheritdoc IStakedUSDX
  function isRewarder(address _rewarder) external view override returns (bool) {
    return hasRole(REWARDER_ROLE, _rewarder);
  }

  /// @inheritdoc IStakedUSDX
  function addRewarder(address _rewarder) external override onlyOwner {
    _grantRole(REWARDER_ROLE, _rewarder);
  }

  /// @inheritdoc IStakedUSDX
  function removeRewarder(address _rewarder) external override onlyOwner {
    _revokeRole(REWARDER_ROLE, _rewarder);
  }

  /// @inheritdoc IStakedUSDX
  function isBlacklistManager(address _manager) external view override returns (bool) {
    return hasRole(BLACKLIST_MANAGER_ROLE, _manager);
  }

  /// @inheritdoc IStakedUSDX
  function addBlacklistManager(address _manager) external override onlyOwner {
    _grantRole(BLACKLIST_MANAGER_ROLE, _manager);
  }

  /// @inheritdoc IStakedUSDX
  function removeBlacklistManager(address _manager) external override onlyOwner {
    _revokeRole(BLACKLIST_MANAGER_ROLE, _manager);
  }

  /// @inheritdoc IStakedUSDX
  function rescueTokens(address token, uint256 amount, address to) external onlyOwner {
    require(address(token) != asset(), Errors.INVALID_TOKEN);
    IERC20(token).safeTransfer(to, amount);
  }

  /// @inheritdoc IStakedUSDX
  function redistributeLockedAmount(address from, address to) external onlyOwner {
    require(hasRole(FULL_RESTRICTED_STAKER_ROLE, from) && !hasRole(FULL_RESTRICTED_STAKER_ROLE, to), Errors.OPERATION_NOT_ALLOWED);

    uint256 amountToDistribute = balanceOf(from);
    uint256 usdxToVest = previewRedeem(amountToDistribute);
    _burn(from, amountToDistribute);
    // to address of address(0) enables burning
    if (to == address(0)) {
      _updateVestingAmount(usdxToVest);
    } else {
      _mint(to, amountToDistribute);
    }

    emit LockedAmountRedistributed(from, to, amountToDistribute);
  }

  /**
   * @notice Returns the amount of USDX tokens that are vested in the contract.
   */
  function totalAssets() public view override returns (uint256) {
    return IERC20(asset()).balanceOf(address(this)) - getUnvestedAmount();
  }

  /// @inheritdoc IStakedUSDX
  function getUnvestedAmount() public view returns (uint256) {
    uint256 timeSinceLastDistribution = block.timestamp - lastDistributionTimestamp;

    if (timeSinceLastDistribution >= VESTING_PERIOD) {
      return 0;
    }

    uint256 deltaT;
    unchecked {
      deltaT = (VESTING_PERIOD - timeSinceLastDistribution);
    }
    return (deltaT * vestingAmount) / VESTING_PERIOD;
  }

  /// @dev Necessary because both ERC20 (from ERC20Permit) and ERC4626 declare decimals()
  function decimals() public pure override(ERC4626, ERC20) returns (uint8) {
    return 18;
  }

  /// @notice ensures a small non-zero amount of shares does not remain, exposing to donation attack
  function _checkMinShares() internal view {
    uint256 _totalSupply = totalSupply();
    if (_totalSupply > 0 && _totalSupply < MIN_SHARES) revert(Errors.MIN_SHARES_VIOLATION);
  }

  /**
   * @dev Deposit/mint common workflow.
   * @param caller sender of assets
   * @param receiver where to send shares
   * @param assets assets to deposit
   * @param shares shares to mint
   */
  function _deposit(
    address caller,
    address receiver,
    uint256 assets,
    uint256 shares
  ) internal override nonReentrant notZero(assets) notZero(shares) {
    if (hasRole(SOFT_RESTRICTED_STAKER_ROLE, caller) || hasRole(SOFT_RESTRICTED_STAKER_ROLE, receiver)) {
      revert(Errors.OPERATION_NOT_ALLOWED);
    }
    if (totalAssets() + assets > _maxPoolDeposit) {
      revert(Errors.STAKE_LIMIT_EXCEEDED);
    }
    super._deposit(caller, receiver, assets, shares);
    _checkMinShares();
  }

  /**
   * @dev Withdraw/redeem common workflow.
   * @param caller tx sender
   * @param receiver where to send assets
   * @param _owner where to burn shares from
   * @param assets asset amount to transfer out
   * @param shares shares to burn
   */
  function _withdraw(
    address caller,
    address receiver,
    address _owner,
    uint256 assets,
    uint256 shares
  ) internal override nonReentrant notZero(assets) notZero(shares) {
    if (hasRole(FULL_RESTRICTED_STAKER_ROLE, caller) || hasRole(FULL_RESTRICTED_STAKER_ROLE, receiver)) {
      revert(Errors.OPERATION_NOT_ALLOWED);
    }
    super._withdraw(caller, receiver, _owner, assets, shares);
    _checkMinShares();
  }

  function _updateVestingAmount(uint256 newVestingAmount) internal {
    require(getUnvestedAmount() == 0, Errors.STILL_VESTING);

    vestingAmount = newVestingAmount;
    lastDistributionTimestamp = block.timestamp;
  }

  /**
   * @dev Hook that is called before any transfer of tokens. This includes
   * minting and burning. Disables transfers from or to of addresses with the FULL_RESTRICTED_STAKER_ROLE role.
   */
  function _beforeTokenTransfer(address from, address to, uint256) internal virtual override {
    if (hasRole(FULL_RESTRICTED_STAKER_ROLE, from) && to != address(0)) {
      revert(Errors.OPERATION_NOT_ALLOWED);
    }
    if (hasRole(FULL_RESTRICTED_STAKER_ROLE, to)) {
      revert(Errors.OPERATION_NOT_ALLOWED);
    }
  }

  /**
   * @dev Remove renounce role access from AccessControl, to prevent users to resign roles.
   */
  function renounceRole(bytes32, address) public virtual override {
    revert(Errors.OPERATION_NOT_ALLOWED);
  }
}
