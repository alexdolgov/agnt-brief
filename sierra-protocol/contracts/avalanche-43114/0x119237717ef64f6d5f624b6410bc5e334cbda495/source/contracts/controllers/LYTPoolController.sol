//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "../interfaces/ILYTPool.sol";

import "./interfaces/ILYTPoolController.sol";

import "../interfaces/ILYTPoolServiceConfiguration.sol";

import "../upgrades/BeaconImplementation.sol";

/**
 * @title Pool admin controller for the pool.
 * @dev Deployed as a beacon proxy contract.
 */
contract LYTPoolController is ILYTPoolController, BeaconImplementation {
  /*//////////////////////////////////////////////////////////////
                              STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev A reference to the pool for this controller.
   */
  ILYTPool public pool;

  /**
   * @dev The address of the pool administrator with elevated privileges for pool management operations
   */
  address public poolAdmin;

  /**
   * @dev A reference to the global service configuration.
   */
  address public serviceConfiguration;

  /**
   * @dev Settings configurable by the PoolAdmin. Some are fixed at pool creation,
   * and some are modifiable during certain Pool lifecycle states.
   */
  ILYTPoolConfigurableSettings private _settings;

  /**
   * @dev The current pool lifecycle state.
   */
  ILYTPoolLifeCycleState private _state;

  /**
   * @dev The current deposit active state for the pool
   */
  ILYTPoolDepositActiveState private _depositState;

  /**
   * @dev The current withdraw active state for the pool
   */
  ILYTPoolWithdrawActiveState private _withdrawState;

  /**
   * @dev Timestamp when the pool was activated, set when transitioning from Initialized to Active state
   */
  uint256 public activatedAt;

  /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

  error NotPaused();
  error Paused();
  error NotProtocolAdmin();
  error NotProtocolAdminOrIssuer();
  error NotAuthorized();
  error PoolSettingsInvalid();
  error NotFiatGateway();
  error NotFeeCollector();
  error NotIssuer();
  error IncorrectExchangeRateType();
  error InvalidExchangeRate();
  error InvalidStateTransition();

  /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Modifier that checks that the protocol is not paused and reverts with `Paused()` if the protocol is currently paused
   */
  modifier onlyNotPaused() {
    if (ILYTPoolServiceConfiguration(serviceConfiguration).paused() == true) {
      revert Paused();
    }
    _;
  }

  /**
   * @dev Modifier that restricts access to issuers or automation addresses only, allows only the designated issuer or authorized automation to execute the function
   */
  modifier onlyIssuerOrAutomation() {
    if (
      !_isIssuer() &&
      !ILYTPoolServiceConfiguration(serviceConfiguration).isAutomation(msg.sender)
    ) {
      revert NotAuthorized();
    }
    _;
  }

  /**
   * @dev Modifier that checks that the Protocol Admin is the transaction sender and requires both protocol admin privileges and that the sender is the pool admin
   */
  modifier onlyProtocolAdmin() {
    if (!_isProtocolAdmin()) {
      revert NotProtocolAdmin();
    }

    // if (poolAdmin == address(0) || msg.sender != poolAdmin) {
    //   revert NotProtocolAdmin();
    // }
    _;
  }

  /**
   * @dev Modifier that restricts access to issuers only, allows only the designated issuer to execute the function
   */
  modifier onlyIssuer() {
    if (!_isIssuer()) {
      revert NotIssuer();
    }
    _;
  }

  /**
   * @dev Modifier that restricts access to operators only, allows only addresses with the OPERATOR_ROLE to execute the function
   */
  modifier onlyAuthorized() {
    if (msg.sender != poolAdmin && !ILYTPoolServiceConfiguration(serviceConfiguration).isOperator(msg.sender)) {
      revert NotAuthorized();
    }
    _;
  }

  /**
   * @dev Modifier that validates the exchange rate type matches the expected type and reverts if the pool's exchange rate type doesn't match the expected type
   * @param _exchangeRateType The expected exchange rate type
   */
  modifier onlyExchangeRateType(ILYTPoolExchangeRateType _exchangeRateType) {
    if (ILYTPoolExchangeRateType(_settings.exchangeRateType) != _exchangeRateType) {
      revert IncorrectExchangeRateType();
    }
    _;
  }

  /*//////////////////////////////////////////////////////////////
                             INITIALIZATION
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Constructor for this beacon implementation that initializes the controller with the provided parameters and sets initial states
   * @param pool_ Address of the pool contract this controller manages
   * @param serviceConfiguration_ Address of the global service configuration
   * @param poolAdmin_ Address of the pool administrator
   * @param poolSettings_ Initial pool configuration settings
   */
  function initialize(
    address pool_,
    address serviceConfiguration_,
    address poolAdmin_,
    ILYTPoolConfigurableSettings memory poolSettings_
  ) public initializer {
    if (!ILYTPoolServiceConfiguration(serviceConfiguration_).isProtocolAdmin(poolAdmin_)) {
      revert NotProtocolAdmin();
    }

    // Validate that the issuer has the ISSUER_ROLE
    if (!ILYTPoolServiceConfiguration(serviceConfiguration_).isIssuer(poolSettings_.issuer)) {
      revert NotIssuer();
    }

    // Validate that the treasury wallet has the FIAT_GATEWAY role
    if (!ILYTPoolServiceConfiguration(serviceConfiguration_).isFiatGateway(poolSettings_.treasuryWalletAddr)) {
      revert NotFiatGateway();
    }

    // Validate that the fee collector has the FEE_COLLECTOR role
    if (!ILYTPoolServiceConfiguration(serviceConfiguration_).isFeeCollector(poolSettings_.feeCollectorAddress)) {
      revert NotFeeCollector();
    }

    serviceConfiguration = serviceConfiguration_;
    pool = ILYTPool(pool_);
    poolAdmin = poolAdmin_;

    // Set settings after validation
    _settings = poolSettings_;

    // Initialize pool with activated status
    _depositState = ILYTPoolDepositActiveState.Active;
    _withdrawState = ILYTPoolWithdrawActiveState.Active;
    _state = ILYTPoolLifeCycleState.Active;
    activatedAt = block.timestamp;
  }

  /*//////////////////////////////////////////////////////////////
                               SETTINGS
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Returns the current pool configuration settings
   * @return The complete pool configuration settings struct
   */
  function settings() external view returns (ILYTPoolConfigurableSettings memory) {
    return _settings;
  }

  /**
   * @dev Returns the address of the current issuer
   * @return The issuer address from the pool settings
   */
  function issuer() external view returns (address) {
    return _settings.issuer;
  }

  /**
   * @dev Updates the issuer address for the pool, only callable by protocol admin when not paused, the new issuer must be registered in the service configuration
   * @param _issuer The new issuer address
   */
  function setIssuer(address _issuer) external onlyNotPaused onlyProtocolAdmin {
    if (!ILYTPoolServiceConfiguration(serviceConfiguration).isIssuer(_issuer)) {
      revert NotIssuer();
    }
    _settings.issuer = _issuer;
  }

  /**
   * @dev Updates the pool admin address, only callable by protocol admin when not paused, the new pool admin must be registered as a protocol admin
   * @param _poolAdmin The new pool admin address
   */
  function setPoolAdmin(address _poolAdmin) external onlyNotPaused onlyProtocolAdmin {
    if (!ILYTPoolServiceConfiguration(serviceConfiguration).isProtocolAdmin(_poolAdmin)) {
      revert NotProtocolAdmin();
    }
    poolAdmin = _poolAdmin;
  }

  /**
   * @dev Returns the current fee collector address
   * @return The fee collector address from the pool settings
   */
  function feeCollectorAddress() external view returns (address) {
    return _settings.feeCollectorAddress;
  }

  /**
   * @dev Updates the fee collector address for the pool, only callable by the issuer when not paused, the new fee collector must be registered in the service configuration
   * @param _feeCollectorAddress The new fee collector address
   */
  function setFeeCollectorAddress(address _feeCollectorAddress) external onlyNotPaused onlyIssuer {
    if (!ILYTPoolServiceConfiguration(serviceConfiguration).isFeeCollector(_feeCollectorAddress)) {
      revert NotFeeCollector();
    }
    _settings.feeCollectorAddress = _feeCollectorAddress;
  }

  /**
   * @dev Returns the current treasury wallet address
   * @return The treasury wallet address from the pool settings
   */
  function treasuryWalletAddr() external view returns (address) {
    return _settings.treasuryWalletAddr;
  }

  /**
   * @dev Updates the treasury wallet address for the pool, only callable by the issuer when not paused, the new treasury wallet must be registered as a fiat gateway
   * @param _treasuryWalletAddr The new treasury wallet address
   */
  function setTreasuryWalletAddr(address _treasuryWalletAddr) external onlyNotPaused onlyIssuer {
    if (!ILYTPoolServiceConfiguration(serviceConfiguration).isFiatGateway(_treasuryWalletAddr)) {
      revert NotFiatGateway();
    }
    _settings.treasuryWalletAddr = _treasuryWalletAddr;
  }

  /*//////////////////////////////////////////////////////////////
                                STATE
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Returns the current pool lifecycle state
   * @return The current lifecycle state of the pool
   */
  function state() public view returns (ILYTPoolLifeCycleState) {
    return _state;
  }

  /**
   * @dev Returns the current deposit active state
   * @return The current deposit state (Active or Inactive)
   */
  function depositState() public view returns (ILYTPoolDepositActiveState) {
    return _depositState;
  }

  /**
   * @dev Returns the current withdraw active state
   * @return The current withdraw state (Active or Inactive)
   */
  function withdrawState() public view returns (ILYTPoolWithdrawActiveState) {
    return _withdrawState;
  }

  /*//////////////////////////////////////////////////////////////
                           INTERNAL HELPERS
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Helper function to check if sender is a protocol admin
   * @return true if the sender is a protocol admin or the pool admin
   */
  function _isProtocolAdmin() internal view returns (bool) {
    return ILYTPoolServiceConfiguration(serviceConfiguration).isProtocolAdmin(msg.sender) || msg.sender == poolAdmin;
  }

  /**
   * @dev Helper function to check if sender is an issuer
   * @return true if the sender is the designated issuer
   */
  function _isIssuer() internal view returns (bool) {
    return msg.sender == _settings.issuer;
  }

  /**
   * @dev Set the pool lifecycle state.
   * @param newState The new lifecycle state to transition to
   */
  function _setState(ILYTPoolLifeCycleState newState) internal {
    if (_state != newState) {
      _state = newState;
      emit LifeCycleStateTransition(newState);
    }
  }

  /*//////////////////////////////////////////////////////////////
                            POOL OPERATIONS
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Adds adjustment amounts for a specific lender, only callable by the issuer when not paused
   * @param lender The address of the lender
   * @param debit The debit adjustment amount
   * @param credit The credit adjustment amount
   */
  function addAdjustmentAmount(address lender, uint256 debit, uint256 credit) external onlyNotPaused onlyIssuer {
    pool.addAdjustmentAmount(lender, debit, credit);
  }

  /*//////////////////////////////////////////////////////////////
                        EXCHANGE RATE MANAGEMENT
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Sets a dynamic exchange rate for the pool, only works with pools configured for dynamic exchange rates, only callable by pool admin, issuer, or automation when not paused
   * @param _exchangeRate The new exchange rate value
   */
  function setExchangeRateDynamic(
    uint256 _exchangeRate
  )
    public
    onlyExchangeRateType(ILYTPoolExchangeRateType.Dynamic)
    onlyNotPaused
    onlyIssuerOrAutomation
  {
    if (_exchangeRate == 0) revert InvalidExchangeRate();
    pool.setExchangeRate(_exchangeRate, 0, 0, 0);
  }

  /**
   * @dev Sets a linear exchange rate for the pool, only works with pools configured for linear exchange rates, only callable by pool admin, issuer, or automation when not paused
   * @param _exchangeRate The base exchange rate value
   * @param _exchangeRateChange The linear rate change parameter
   * @param _interestRate The interest rate for the pool
   */
  function setExchangeRateLinear(
    uint256 _exchangeRate,
    uint256 _exchangeRateChange,
    uint256 _interestRate
  ) public onlyNotPaused onlyIssuerOrAutomation onlyExchangeRateType(ILYTPoolExchangeRateType.Linear) {
    if (_exchangeRate == 0) revert InvalidExchangeRate();
    pool.setExchangeRate(_exchangeRate, _exchangeRateChange, 0, _interestRate);
  }

  /**
   * @dev Sets a compounding exchange rate for the pool, only works with pools configured for compounding exchange rates, only callable by pool admin, issuer, or automation when not paused
   * @param _exchangeRate The base exchange rate value
   * @param _exchangeRateCompoundingRate The compounding rate parameter
   * @param _interestRate The interest rate for the pool
   */
  function setExchangeRateCompounding(
    uint256 _exchangeRate,
    uint256 _exchangeRateCompoundingRate,
    uint256 _interestRate
  )
    public
    onlyNotPaused
    onlyIssuerOrAutomation
    onlyExchangeRateType(ILYTPoolExchangeRateType.Compounding)
  {
    if (_exchangeRate == 0) revert InvalidExchangeRate();
    pool.setExchangeRate(_exchangeRate, _exchangeRateCompoundingRate, 0, _interestRate);
  }

  /**
   * @dev Sets an exchange rate at maturity for term pools, only works with pools configured for term exchange rates, only callable by pool admin, issuer, or automation when not paused
   * @param _exchangeRate The base exchange rate value
   * @param _exchangeRateAtMaturity The exchange rate at maturity
   * @param _exchangeRateMaturityDay The maturity day for the exchange rate
   * @param _interestRate The interest rate for the pool
   */
  function setExchangeRateAtMaturity(
    uint256 _exchangeRate,
    uint256 _exchangeRateAtMaturity,
    uint256 _exchangeRateMaturityDay,
    uint256 _interestRate
  ) public onlyNotPaused onlyIssuerOrAutomation onlyExchangeRateType(ILYTPoolExchangeRateType.Term) {
    if (_exchangeRate == 0) revert InvalidExchangeRate();
    pool.setExchangeRate(_exchangeRate, _exchangeRateAtMaturity, _exchangeRateMaturityDay, _interestRate);
  }

  /**
   * @dev Sets indicative and collateral rates for the pool, only callable by the issuer when not paused
   * @param _indicativeInterestRate The indicative interest rate
   * @param _collateralRate The collateral rate
   */
  function setIndicativeAndCollateralRates(
    uint256 _indicativeInterestRate,
    uint256 _collateralRate
  ) external onlyNotPaused onlyIssuer {
    pool.setIndicativeAndCollateralRates(_indicativeInterestRate, _collateralRate);
  }

  /*//////////////////////////////////////////////////////////////
                        LIFECYCLE MANAGEMENT
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Transitions the pool to a new lifecycle state, only callable by protocol admin when not paused, validates that the state transition is allowed
   * @param newState The target lifecycle state
   */
  function transitionTo(ILYTPoolLifeCycleState newState) external onlyNotPaused onlyProtocolAdmin {
    ILYTPoolLifeCycleState currentState = _state;

    if (newState == currentState) {
      return;
    }

    // Verify this transition is valid
    bool validTransition = false;

    if (currentState == ILYTPoolLifeCycleState.Active && newState == ILYTPoolLifeCycleState.Closed) {
      validTransition = true;
    }

    if (!validTransition) {
      revert InvalidStateTransition();
    }

    _setState(newState);
  }

  /**
   * @dev Pauses deposits for the pool, only callable by authorized addresses when not paused
   */
  function pauseDeposits() external onlyNotPaused onlyAuthorized {
    _depositState = ILYTPoolDepositActiveState.Inactive;
    emit DepositStateTransition(ILYTPoolDepositActiveState.Inactive);
  }

  /**
   * @dev Resumes deposits for the pool, only callable by authorized addresses when not paused
   */
  function resumeDeposits() external onlyNotPaused onlyAuthorized {
    _depositState = ILYTPoolDepositActiveState.Active;
    emit DepositStateTransition(ILYTPoolDepositActiveState.Active);
  }

  /**
   * @dev Pauses withdrawals for the pool, only callable by authorized addresses when not paused
   */
  function pauseWithdraws() external onlyNotPaused onlyAuthorized {
    _withdrawState = ILYTPoolWithdrawActiveState.Inactive;
    emit WithdrawStateTransition(_withdrawState);
  }

  /**
   * @dev Resumes withdrawals for the pool, only callable by authorized addresses when not paused
   */
  function resumeWithdraws() external onlyNotPaused onlyAuthorized {
    _withdrawState = ILYTPoolWithdrawActiveState.Active;
    emit WithdrawStateTransition(_withdrawState);
  }

}