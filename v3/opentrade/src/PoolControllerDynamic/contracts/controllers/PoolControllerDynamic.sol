//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../interfaces/IPoolDynamic.sol";

import "./interfaces/IPoolControllerDynamic.sol";

import "../interfaces/IServiceConfigurationV5.sol";

import "../upgrades/BeaconImplementation.sol";

/**
 * @title Pool admin controller for the pool.
 * @dev Deployed as a beacon proxy contract.
 */
contract PoolControllerDynamic is IPoolControllerDynamic, BeaconImplementation {
  /**
   * @dev A reference to the pool for this controller.
   */
  IPoolDynamic public pool;

  address public poolAdmin;

  /**
   * @dev A reference to the global service configuration.
   */
  address public serviceConfiguration;

  /**
   * @dev Settings configurable by the PoolAdmin. Some are fixed at pool creation,
   * and some are modifiable during certain Pool lifecycle states.
   */
  IPoolConfigurableSettingsDynamic private _settings;

  /**
   * @dev The current pool lifecycle state.
   */
  IPoolLifeCycleStateDynamic private _state;

  IPoolDepositActiveStateDynamic private _depositState;
  IPoolWithdrawActiveStateDynamic private _withdrawState;
  uint256 public activatedAt;

  error NotPaused();
  error Paused();
  error NotPoolAdmin();
  error NotPoolAdminOrBorrower();
  error NotAuthorized();
  error PoolSettingsInvalid();
  error NotFiatGateway();
  error NotFeeCollector();
  error NotBorrower();
  error IncorrectExcahngeRateType();
  error InvalidExchangeRate();
  error InvalidStateTransition();
  /**
   * @dev Modifier that checks that the protocol is not paused.
   */
  modifier onlyNotPaused() {
    if (IServiceConfigurationV5(serviceConfiguration).paused() == true) {
      revert Paused();
    }
    _;
  }

  /**
   * @dev Modifier that checks that the pool is Initialized or Active
   */
  modifier atActiveOrClosedState() {
    IPoolLifeCycleStateDynamic _currentState = state();

    if (_currentState != IPoolLifeCycleStateDynamic.Active && _currentState != IPoolLifeCycleStateDynamic.Closed) {
      revert PoolSettingsInvalid();
    }
    _;
  }

  /**
   * @dev Modifier that checks that the caller is the pool's admin.
   */
  modifier onlyPoolAdmin() {
    if (!IServiceConfigurationV5(serviceConfiguration).isPoolAdmin(msg.sender)) {
      revert NotPoolAdmin();
    }
    if (poolAdmin == address(0) || msg.sender != poolAdmin) {
      revert NotPoolAdmin();
    }
    _;
  }

  /**
   * @dev Modifier that checks that the caller is the pool's admin or the borrower.
   */
  modifier onlyPoolAdminOrBorrower() {
    if (
      !IServiceConfigurationV5(serviceConfiguration).isPoolAdmin(msg.sender) && msg.sender != _settings.borrowerManager
    ) {
      revert NotPoolAdminOrBorrower();
    }
    _;
  }

  // Add new modifier to support automation
  /**
   * @dev Modifier that checks that the caller has the Automation role.
   */
  modifier onlyPoolAdminOrBorrowerOrAutomation() {
    if (
      !IServiceConfigurationV5(serviceConfiguration).isAutomation(msg.sender) &&
      !IServiceConfigurationV5(serviceConfiguration).isPoolAdmin(msg.sender) &&
      msg.sender != _settings.borrowerManager
    ) {
      revert NotAuthorized();
    }
    _;
  }

  modifier onlyExchangeRateType(IPoolDynamicExchangeRateType _exchangeRateType) {
    if (_settings.exchangeRateType != _exchangeRateType) {
      revert IncorrectExcahngeRateType();
    }

    _;
  }

  /**
   * @dev Pool initializer.
   */
  function initialize(
    address pool_,
    address serviceConfiguration_,
    address poolAdmin_,
    IPoolConfigurableSettingsDynamic memory poolSettings_
  ) public initializer {
    serviceConfiguration = serviceConfiguration_;
    pool = IPoolDynamic(pool_);
    poolAdmin = poolAdmin_;
    _settings = poolSettings_;
    _depositState = IPoolDepositActiveStateDynamic.Inactive;
    _withdrawState = IPoolWithdrawActiveStateDynamic.Inactive;
    _state = IPoolLifeCycleStateDynamic.Initialized;
    if (!IServiceConfigurationV5(serviceConfiguration_).isPoolAdmin(poolAdmin_)) {
      revert NotPoolAdmin();
    }
  }

  /*//////////////////////////////////////////////////////////////
                                Settings
    //////////////////////////////////////////////////////////////*/

  function settings() external view returns (IPoolConfigurableSettingsDynamic memory) {
    return _settings;
  }

  function borrowerManager() external view returns (address) {
    return _settings.borrowerManager;
  }

  function setBorrowermanager(address _borrowerManager) external onlyNotPaused onlyPoolAdmin {
    if (!IServiceConfigurationV5(serviceConfiguration).isBorrower(_borrowerManager)) {
      revert NotBorrower();
    }
    _settings.borrowerManager = _borrowerManager;
  }

  function setPoolAdmin(address _poolAdmin) external onlyNotPaused onlyPoolAdmin {
    if (!IServiceConfigurationV5(serviceConfiguration).isPoolAdmin(_poolAdmin)) {
      revert NotPoolAdmin();
    }
    poolAdmin = _poolAdmin;
  }

  function feeCollectorAddress() external view returns (address) {
    return _settings.feeCollectorAddress;
  }

  function setFeeCollectorAddress(address _feeCollectorAddress) external onlyNotPaused onlyPoolAdmin {
    if (!IServiceConfigurationV5(serviceConfiguration).isFeeCollector(_feeCollectorAddress)) {
      revert NotFeeCollector();
    }
    _settings.feeCollectorAddress = _feeCollectorAddress;
  }

  function borrowerWalletAddr() external view returns (address) {
    return _settings.borrowerWalletAddr;
  }

  function setBorrowerWalletAddr(address _borrowerWalletAddr) external onlyNotPaused onlyPoolAdmin {
    if (!IServiceConfigurationV5(serviceConfiguration).isFiatGateway(_borrowerWalletAddr)) {
      revert NotFiatGateway();
    }
    _settings.borrowerWalletAddr = _borrowerWalletAddr;
  }
  /*//////////////////////////////////////////////////////////////
                                State
    //////////////////////////////////////////////////////////////*/

  function state() public view returns (IPoolLifeCycleStateDynamic) {
    return _state;
  }
  function depositState() public view returns (IPoolDepositActiveStateDynamic) {
    return _depositState;
  }
  function withdrawState() public view returns (IPoolWithdrawActiveStateDynamic) {
    return _withdrawState;
  }

  /**
   * @dev Set the pool lifecycle state. If the state changes, this method
   * will also update the activatedAt variable
   */
  function _setState(IPoolLifeCycleStateDynamic newState) internal {
    if (_state != newState) {
      _state = newState;
      emit LifeCycleStateTransition(newState);
    }
  }
  function addAdjustmentAmount(address lender, uint256 debit, uint256 credit) external onlyNotPaused onlyPoolAdmin {
    pool.addAdjustmentAmount(lender, debit, credit);
  }

  function setExchangeRateDynamic(
    uint256 _exchangeRate
  )
    public
    onlyExchangeRateType(IPoolDynamicExchangeRateType.Dynamic)
    onlyNotPaused
    onlyPoolAdminOrBorrowerOrAutomation
  {
    if (_exchangeRate == 0) revert InvalidExchangeRate();
    pool.setExchangeRate(_exchangeRate, 0, 0, 0);
  }
  function setExchangeRateLinear(
    uint256 _exchangeRate,
    uint256 _exchangeRateChange,
    uint256 _interestRate
  ) public onlyNotPaused onlyPoolAdminOrBorrowerOrAutomation onlyExchangeRateType(IPoolDynamicExchangeRateType.Linear) {
    if (_exchangeRate == 0) revert InvalidExchangeRate();
    if (_exchangeRateChange > 1e17) revert InvalidExchangeRate(); // 10% growth per day
    pool.setExchangeRate(_exchangeRate, _exchangeRateChange, 0, _interestRate);
  }
  function setExchangeRateCompounding(
    uint256 _exchangeRate,
    uint256 _exchangeRateCompoundingRate,
    uint256 _interestRate
  )
    public
    onlyNotPaused
    onlyPoolAdminOrBorrowerOrAutomation
    onlyExchangeRateType(IPoolDynamicExchangeRateType.Compounding)
  {
    if (_exchangeRate == 0) revert InvalidExchangeRate();
    if (_exchangeRateCompoundingRate > 1e19 || _exchangeRateCompoundingRate < 1e17) revert InvalidExchangeRate(); //  10% change or  per day

    pool.setExchangeRate(_exchangeRate, _exchangeRateCompoundingRate, 0, _interestRate);
  }
  function setExchangeRateAtMaturity(
    uint256 _exchangeRate,
    uint256 _exchangeRateAtMaturity,
    uint256 _exchangeRateMaturityDay,
    uint256 _interestRate
  ) public onlyNotPaused onlyPoolAdminOrBorrowerOrAutomation onlyExchangeRateType(IPoolDynamicExchangeRateType.Term) {
    if (_exchangeRate == 0) revert InvalidExchangeRate();
    if (_exchangeRateAtMaturity == 0) revert InvalidExchangeRate();
    pool.setExchangeRate(_exchangeRate, _exchangeRateAtMaturity, _exchangeRateMaturityDay, _interestRate);
  }
  function setIndicativeAndCollateralRates(
    uint256 _indicativeInterestRate,
    uint256 _collateralRate
  ) public onlyNotPaused onlyPoolAdminOrBorrower {
    pool.setIndicativeAndCollateralRates(_indicativeInterestRate, _collateralRate);
  }

  function setPoolTimingSettings(
    uint256 _closeOfDepositTime,
    uint256 _closeOfWithdrawTime,
    uint256 _transferOutDays
  ) public onlyNotPaused onlyPoolAdminOrBorrower {
    _settings.closeOfDepositTime = _closeOfDepositTime;
    _settings.closeOfWithdrawTime = _closeOfWithdrawTime;
    _settings.transferOutDays = _transferOutDays;
  }

  function pauseDeposits() external onlyNotPaused onlyPoolAdmin {
    _depositState = IPoolDepositActiveStateDynamic.Inactive;
    emit DepositStateTransition(IPoolDepositActiveStateDynamic.Inactive);
  }

  function resumeDeposits() external onlyNotPaused onlyPoolAdmin {
    IPoolLifeCycleStateDynamic _currentState = state();
    if (_currentState != IPoolLifeCycleStateDynamic.Active) {
      revert InvalidStateTransition();
    }
    _depositState = IPoolDepositActiveStateDynamic.Active;
    emit DepositStateTransition(IPoolDepositActiveStateDynamic.Active);
  }
  function pauseWithdraws() external onlyNotPaused onlyPoolAdmin {
    _withdrawState = IPoolWithdrawActiveStateDynamic.Inactive;
    emit WithdrawStateTransition(IPoolWithdrawActiveStateDynamic.Inactive);
  }

  function resumeWithdraws() external onlyNotPaused onlyPoolAdmin {
    IPoolLifeCycleStateDynamic _currentState = state();
    if (_currentState != IPoolLifeCycleStateDynamic.Active) {
      revert InvalidStateTransition();
    }
    _withdrawState = IPoolWithdrawActiveStateDynamic.Active;
    emit WithdrawStateTransition(IPoolWithdrawActiveStateDynamic.Active);
  }
  function activatePool() external onlyNotPaused onlyPoolAdmin {
    if (_state != IPoolLifeCycleStateDynamic.Initialized) {
      revert InvalidStateTransition();
    }
    _setState(IPoolLifeCycleStateDynamic.Active);
    activatedAt = block.timestamp;
    _depositState = IPoolDepositActiveStateDynamic.Active;
    emit DepositStateTransition(IPoolDepositActiveStateDynamic.Active);
    _withdrawState = IPoolWithdrawActiveStateDynamic.Active;
    emit WithdrawStateTransition(IPoolWithdrawActiveStateDynamic.Active);
  }

  function closePool() external onlyNotPaused onlyPoolAdmin {
    if (pool.totalAssets() > 0) revert PoolSettingsInvalid();
    _setState(IPoolLifeCycleStateDynamic.Closed);
    _depositState = IPoolDepositActiveStateDynamic.Inactive;
    emit DepositStateTransition(IPoolDepositActiveStateDynamic.Inactive);
    _withdrawState = IPoolWithdrawActiveStateDynamic.Inactive;
    emit WithdrawStateTransition(IPoolWithdrawActiveStateDynamic.Inactive);
  }

  function disruptionOrDefault() external onlyNotPaused onlyPoolAdmin atActiveOrClosedState {
    _state = IPoolLifeCycleStateDynamic.DisruptionOrDefault;

    emit DisruptionOrDefault(address(pool));
    _depositState = IPoolDepositActiveStateDynamic.Inactive;
    emit DepositStateTransition(IPoolDepositActiveStateDynamic.Inactive);
    _withdrawState = IPoolWithdrawActiveStateDynamic.Inactive;
    emit WithdrawStateTransition(IPoolWithdrawActiveStateDynamic.Inactive);
  }

  function reactivateAfterDisrution() external onlyNotPaused onlyPoolAdmin {
    if (_state != IPoolLifeCycleStateDynamic.DisruptionOrDefault) {
      revert InvalidStateTransition();
    }
    _setState(IPoolLifeCycleStateDynamic.Active);
    _depositState = IPoolDepositActiveStateDynamic.Active;
    emit DepositStateTransition(IPoolDepositActiveStateDynamic.Active);
    _withdrawState = IPoolWithdrawActiveStateDynamic.Active;
    emit WithdrawStateTransition(IPoolWithdrawActiveStateDynamic.Active);
  }
}
