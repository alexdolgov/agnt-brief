//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../interfaces/IPool.sol";
import "../interfaces/IVault.sol";
import "./interfaces/IPoolController.sol";
import "../libraries/PoolLib.sol";
import "../factories/interfaces/IVaultFactory.sol";
import "../interfaces/IServiceConfigurationV3.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../upgrades/BeaconImplementation.sol";

/**
 * @title Pool admin controller for the pool.
 * @dev Deployed as a beacon proxy contract.
 */
contract PoolController is IPoolController, BeaconImplementation {
  using SafeERC20 for IERC20;

  function version() public pure returns (uint16) {
    return 256 * 1 + 0;
  }

  /**
   * @dev A reference to the pool for this controller.
   */
  IPool public pool;

  /**
   * @inheritdoc IPoolController
   */
  address public admin;

  /**
   * @dev A reference to the global service configuration.
   */
  address public serviceConfiguration;

  /**
   * @dev Settings configurable by the PoolAdmin. Some are fixed at pool creation,
   * and some are modifiable during certain Pool lifecycle states.
   */
  IPoolConfigurableSettings private _settings;

  /**
   * @dev The current pool lifecycle state.
   */
  IPoolLifeCycleState private _state;

  /**
   * @dev A reference to the ERC20 liquidity asset for the pool.
   */
  IERC20 private _liquidityAsset;

  /**
   * @dev Modifier that checks that the protocol is not paused.
   */
  modifier onlyNotPaused() {
    require(IServiceConfigurationV3(serviceConfiguration).paused() == false, "Pool: Protocol paused");
    _;
  }

  /**
   * @dev Modifier that can be overriden by derived classes to enforce
   * access control.
   */
  modifier onlyPermittedAdmin() {
    require(IServiceConfigurationV3(serviceConfiguration).isPoolAdmin(msg.sender), "Pool: Only Pool Admin Allowed");
    _;
  }

  /**
   * @dev Modifier that checks that the caller is the pool's admin.
   */
  modifier onlyAdmin() {
    require(admin != address(0) && msg.sender == admin, "Pool: caller is not admin");
    _;
  }

  /**
   * @dev Modifier that checks that the pool is Initialized or Active
   */
  modifier atState(IPoolLifeCycleState state_) {
    require(state() == state_, "Pool: FunctionInvalidAtThisLifeCycleState2");
    _;
  }

  /**
   * @dev Modifier that checks that the pool is Initialized or Active
   */
  modifier atInitializedOrActiveState() {
    IPoolLifeCycleState _currentState = state();

    require(
      _currentState == IPoolLifeCycleState.Active || _currentState == IPoolLifeCycleState.Initialized,
      "Pool: FunctionInvalidAtThisLifeCycleState3"
    );
    _;
  }

  /**
   * @dev Modifier that checks that the pool is Initialized or Active
   */
  modifier atActiveOrClosedState() {
    IPoolLifeCycleState _currentState = state();

    require(
      _currentState == IPoolLifeCycleState.Active || _currentState == IPoolLifeCycleState.Closed,
      "Pool: FunctionInvalidAtThisLifeCycleState4"
    );
    _;
  }

  /**
   * @dev Modifier to check that an address is a Perimeter loan associated
   * with this pool.
   */
  modifier isPoolLoan(address loan) {
    address poolRegitryAddr = IServiceConfigurationV3(serviceConfiguration).getPoolRegistry();
    IPoolRegistry poolRegistry = IPoolRegistry(poolRegitryAddr);
    address poolAddr = address(pool);

    require(poolRegistry.isPoolRegistered(poolAddr), "Pool: invalid loan");

    require(ILoan(loan).pool() == poolAddr, "Pool: invalid loan");

    require(
      pool.createdLoan() == loan ||
        pool.activeLoan() == loan ||
        pool.maturedLoan() == loan ||
        pool.requestedLoan() == loan,
      "Pool: invalid loan"
    );
    _;
  }

  /**
   * @dev Pool initializer.
   */
  function initialize(
    address pool_,
    address serviceConfiguration_,
    address admin_,
    address liquidityAsset_,
    IPoolConfigurableSettings memory poolSettings_
  ) public initializer {
    serviceConfiguration = serviceConfiguration_;
    pool = IPool(pool_);
    admin = admin_;
    _settings = poolSettings_;

    _liquidityAsset = IERC20(liquidityAsset_);
    _liquidityAsset.safeApprove(address(this), type(uint256).max);

    _setState(IPoolLifeCycleState.Initialized);
  }

  /*//////////////////////////////////////////////////////////////
                                Settings
    //////////////////////////////////////////////////////////////*/
  function borrowerManager() external view returns (address) {
    return _settings.borrowerManager;
  }

  function borrowerWalletAddress() external view returns (address) {
    return _settings.borrowerWalletAddress;
  }

  /**
   * @inheritdoc IPoolController
   */
  function settings() external view returns (IPoolConfigurableSettings memory) {
    return _settings;
  }

  /**
   * @inheritdoc IPoolController
   */
  function setPoolCapacity(uint256 newCapacity) external onlyNotPaused onlyPermittedAdmin onlyAdmin {
    require(newCapacity >= pool.totalAssets(), "Pool: invalid capacity");
    _settings.maxCapacity = newCapacity;
    emit PoolSettingsUpdated();
  }

  /**
   * @inheritdoc IPoolController
   */
  function setPoolEndDate(uint256 endDate) external onlyNotPaused onlyPermittedAdmin onlyAdmin {
    require(_settings.endDate < endDate, "Pool: can't move end date up");
    require(endDate > block.timestamp, "Pool: can't move end date into the past");
    _settings.endDate = endDate;
    emit PoolSettingsUpdated();
  }

  /*//////////////////////////////////////////////////////////////
                                State
    //////////////////////////////////////////////////////////////*/

  /**
   * @inheritdoc IPoolController
   */
  function state() public view returns (IPoolLifeCycleState) {
    if (block.timestamp >= _settings.endDate) {
      return IPoolLifeCycleState.Closed;
    }

    return _state;
  }

  /**
   * @dev Set the pool lifecycle state. If the state changes, this method
   * will also update the activatedAt variable
   */
  function _setState(IPoolLifeCycleState newState) internal {
    if (_state != newState) {
      if (newState == IPoolLifeCycleState.Active && pool.activatedAt() == 0) {
        pool.onActivated();
      }

      _state = newState;
      emit LifeCycleStateTransition(newState);
    }
  }

  function activatePool() external onlyNotPaused onlyPermittedAdmin onlyAdmin atInitializedOrActiveState {
    _setState(IPoolLifeCycleState.Active);
  }

  function closeOfBusinessTime() external view returns (uint256) {
    return _settings.closeOfBusinessTime;
  }

  /*//////////////////////////////////////////////////////////////
                                Loans
    //////////////////////////////////////////////////////////////*/

  function initiateRollover(
    address loan,
    address priorLoan
  ) external onlyNotPaused onlyPermittedAdmin onlyAdmin atState(IPoolLifeCycleState.Active) isPoolLoan(loan) {
    pool.initiateRollover(loan, priorLoan);
  }

  function completeRolloverNetPayment(
    address addr
  ) external onlyNotPaused onlyPermittedAdmin onlyAdmin atState(IPoolLifeCycleState.Active) isPoolLoan(addr) {
    pool.completeRolloverNetPayment(addr);
  }

  function approveLoanForPool(
    address loan
  ) external onlyNotPaused onlyPermittedAdmin onlyAdmin atState(IPoolLifeCycleState.Active) isPoolLoan(loan) {
    pool.approveLoanForPool(loan);
  }

  function reschedule(
    address loan,
    uint256 accrualStartDayTimestamp,
    uint256 transferInWindowDurationDays,
    uint256 transferOutWindowDurationDays,
    uint256 durationDays
  ) external override onlyAdmin onlyNotPaused {
    pool.reschedule(
      loan,
      accrualStartDayTimestamp,
      transferInWindowDurationDays,
      transferOutWindowDurationDays,
      durationDays
    );
    emit Rescheduled(address(pool));
  }

  function releaseRolloverRedemption(address owner) external onlyNotPaused onlyPermittedAdmin onlyAdmin {
    pool.releaseRolloverRedemption(owner);
  }

  /**
   * @inheritdoc IPoolController
   */
  function disruptionOrDefault() external onlyNotPaused onlyPermittedAdmin onlyAdmin atActiveOrClosedState {
    _state = IPoolLifeCycleState.DisruptionOrDefault;

    emit DisruptionOrDefault(address(pool));
  }

  /*//////////////////////////////////////////////////////////////
                                Fees
    //////////////////////////////////////////////////////////////*/

  /**
   * @inheritdoc IPoolController
   */

  /**
   * @inheritdoc IPoolController
   */
  function withdrawFeeVault(uint256 amount, address receiver) external onlyNotPaused onlyPermittedAdmin onlyAdmin {
    pool.withdrawFeeVault(amount, receiver);
  }

  function crossChainTransferApproveSource(
    uint32 destinationChainId,
    address destinationPoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external override onlyNotPaused onlyPermittedAdmin onlyAdmin {
    pool.crossChainTransferApproveSource(
      destinationChainId,
      destinationPoolAddr,
      destinationWalletAddr,
      sourceWalletAddr,
      amount
    );
  }

  function crossChainTransferApproveDestination(
    uint32 sourceChainId,
    address sourcePoolAddr,
    address destinationWalletAddr,
    address sourceWalletAddr,
    uint256 amount
  ) external override onlyNotPaused onlyPermittedAdmin onlyAdmin {
    pool.crossChainTransferApproveDestination(
      sourceChainId,
      sourcePoolAddr,
      destinationWalletAddr,
      sourceWalletAddr,
      amount
    );
  }

  function crossChainTransferMintDestination(
    address destinationWalletAddr,
    uint256 amount
  ) external override onlyNotPaused onlyPermittedAdmin onlyAdmin {
    pool.crossChainTransferMintDestination(destinationWalletAddr, amount);
  }
}
