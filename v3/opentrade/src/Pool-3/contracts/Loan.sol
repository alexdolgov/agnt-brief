//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./interfaces/ILoan.sol";
import "./interfaces/IPool.sol";
import "./interfaces/IServiceConfigurationV3.sol";
import "./interfaces/IVault.sol";
import "./factories/interfaces/IVaultFactory.sol";
import "./libraries/LoanLib.sol";
import "./upgrades/BeaconImplementation.sol";
import "./Pool.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./interfaces/IPoolAccessControl.sol";

/**
 * @title Perimeter Loan contract.
 */
contract Loan is ILoan, BeaconImplementation {
  using SafeMath for uint256;

  using SafeERC20 for IERC20;

  IServiceConfigurationV3 private _serviceConfiguration;
  /**
   * @dev The reference to the access control contract
   */
  IPoolAccessControl public poolAccessControl;

  address private _factory;
  ILoanLifeCycleState private _state = ILoanLifeCycleState.Requested;
  ILoanTransitionState private _transitionState = ILoanTransitionState.Created;
  address private _borrower;
  address private _pool;
  IVault public fundingVault;
  uint256 public createdAt;
  address public liquidityAsset;
  uint256 public interest;
  uint256 public indicativeInterest;
  uint256 public originationFee;

  ILoanRolloverAccounting public rolloverAccounting;

  uint256 public accrualStartTimestamp;
  uint256 public depositClosingTimestamp;
  uint256 public redemptionRequestClosingTimestamp;
  uint256 public earlyRedeemRequestClosingTimestamp;
  uint256 public maturingTimestamp;
  uint256 public redemptionAvailableTimestamp;

  uint256 public _assetsRolloverToNextLoan;
  uint256 public _assetsToReturnToPool;

  ILoanSettings public settings;

  event FundsReclaimed(uint256 amount, address pool);

  event LoanScheduleViolation(
    ILoanTransitionState transitionState,
    uint256 timestamp,
    uint256 windowStart,
    uint256 windowEnd
  );
  event LoanDeposit(address indexed lender, uint256 assets, uint256 shares);

  /**
   * @dev Modifier that requires the protocol not be paused.
   */
  modifier onlyNotPaused() {
    require(IServiceConfigurationV3(_serviceConfiguration).paused() == false, "Loan: Protocol paused");
    _;
  }

  /**
   * @dev Modifier that requires the Loan be in the given `state_`
   */
  modifier onlyLifeCycleState(ILoanLifeCycleState state_) {
    require(_state == state_, "Loan: FunctionInvalidAtThisILoanLifeCycleState");
    _;
  }
  modifier onlyTransitionState(ILoanTransitionState transitionState_) {
    require(_transitionState == transitionState_, "Loan: FunctionInvalidAtThisILoanLifeCycleState");
    _;
  }

  /**
   * @dev Modifier that requires `msg.sender` to be the pool. Loan assumes the pool has performed access checks
   */
  modifier onlyPool() {
    require(msg.sender == _pool, "Loan: caller is not pool");
    _;
  }

  /**
   * @dev Modifier that can be overriden by derived classes to enforce
   * access control.
   */
  modifier onlyPermittedBorrower() {
    require(poolAccessControl.isAllowed(msg.sender), "Loan: Only Permitted Borrower allowed");
    _;
  }

  function version() public pure returns (uint16) {
    return 256 * 1 + 0;
  }

  function roundToDays(uint256 timestamp) public pure returns (uint256) {
    return timestamp.div(1 days).mul(1 days);
  }

  function inDepositWindow() external view override returns (bool) {
    return block.timestamp < depositClosingTimestamp;
  }

  function canRequestRedemption() external view override returns (bool) {
    return
      _transitionState == ILoanTransitionState.Created ||
      _transitionState == ILoanTransitionState.ApprovedForDeposits ||
      _transitionState == ILoanTransitionState.AccruingInterest;
  }

  function inInitiateRolloverWindow() external view override returns (bool) {
    return block.timestamp > depositClosingTimestamp && block.timestamp < accrualStartTimestamp;
  }

  function initialize(
    address serviceConfiguration_,
    address factory_,
    address borrower_,
    address pool_,
    address liquidityAsset_,
    address vaultFactory,
    ILoanSettings memory settings_
  ) public virtual initializer {
    require(settings_.indicativeApr > 0, "Loan:  APR cannot be zero");
    require(settings_.durationDays > 0, "Loan:  Duration cannot be zero");
    require(settings_.transferInWindowDurationDays > 0, "Loan:  transferInWindowDurationDays cannot be zero");
    require(settings_.transferOutWindowDurationDays > 0, "Loan:  transition cannot be zero");
    require(
      settings_.accrualStartDayTimestamp > block.timestamp + settings_.transferInWindowDurationDays * (1 days),
      "Loan: accrualStartDayTimestamp must be greater than now plus transferInWindowDurationDays"
    );
    require(factory_ != address(0), "Loan:  Factory cannot be zero");
    require(pool_ != address(0), "Loan:  Factory cannot be zero");
    require(vaultFactory != address(0), "Loan:  VaultFactory cannot be zero");
    require(borrower_ == IPool(pool_).borrowerManagerAddr(), "Loan:  Borrower must be pool borrower manager");
    _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration_);
    poolAccessControl = IPool(pool_).poolAccessControl();

    _factory = factory_;
    _borrower = borrower_;
    _pool = pool_;

    fundingVault = IVault(IVaultFactory(vaultFactory).createVault(address(this), IVaultType.FundingVault));
    createdAt = block.timestamp;
    liquidityAsset = liquidityAsset_;
    settings = settings_;
    calculateSchedule();
    require(_serviceConfiguration.isLiquidityAsset(liquidityAsset), "LoanLib: Liquidity asset not allowed");
    require(settings_.durationDays > 0, "LoanLib: Duration cannot be zero");

    require(IPool(pool_).asset() == liquidityAsset, "LoanLib: Not allowed asset for pool");
  }

  function calculateSchedule() internal {
    accrualStartTimestamp = roundToDays(settings.accrualStartDayTimestamp) + IPool(_pool).closeOfBusinessTime();
    depositClosingTimestamp = accrualStartTimestamp - settings.transferInWindowDurationDays * (1 days);

    redemptionRequestClosingTimestamp =
      accrualStartTimestamp +
      (settings.durationDays - settings.transferInWindowDurationDays) *
      (1 days);
    maturingTimestamp = accrualStartTimestamp + settings.durationDays * (1 days);
    redemptionAvailableTimestamp =
      accrualStartTimestamp +
      (settings.durationDays + settings.transferOutWindowDurationDays) *
      (1 days);
    earlyRedeemRequestClosingTimestamp =
      accrualStartTimestamp +
      (settings.durationDays - settings.transferInWindowDurationDays - settings.transferOutWindowDurationDays) *
      (1 days);
  }

  function reschedule(
    uint256 accrualStartDayTimestamp_,
    uint256 transferInWindowDurationDays_,
    uint256 transferOutWindowDurationDays_,
    uint256 durationDays_
  ) external override onlyPool onlyNotPaused {
    require(
      _state != ILoanLifeCycleState.Settled && _state != ILoanLifeCycleState.Canceled,
      "Loan: can not be settled or canceled"
    );
    require(transferInWindowDurationDays_ > 0, "Loan:  transferInWindowDurationDays cannot be zero");
    require(transferOutWindowDurationDays_ > 0, "Loan:  transferOutWindowDurationDays cannot be zero");
    require(durationDays_ > 0, "Loan:  transferOutWindowDurationDays cannot be zero");
    settings.accrualStartDayTimestamp = accrualStartDayTimestamp_;
    settings.transferInWindowDurationDays = transferInWindowDurationDays_;
    settings.transferOutWindowDurationDays = transferOutWindowDurationDays_;
    settings.durationDays = durationDays_;
    calculateSchedule();
  }

  function getRolloverAccounting() external view returns (ILoanRolloverAccounting memory) {
    return rolloverAccounting;
  }

  function approve() external override onlyPool onlyNotPaused onlyTransitionState(ILoanTransitionState.Created) {
    _transitionState = ILoanTransitionState.ApprovedForDeposits;
  }

  /**
   * @inheritdoc ILoan
   */
  function rolloverAllocation(
    uint256 assetsRolloverToNextLoan_,
    uint256 assetToReturnToPool_
  )
    external
    onlyPool
    onlyNotPaused
    onlyTransitionState(ILoanTransitionState.AccruingInterest)
    onlyLifeCycleState(ILoanLifeCycleState.Active)
  {
    _transitionState = ILoanTransitionState.RedemptionsClosed;
    _assetsRolloverToNextLoan = assetsRolloverToNextLoan_;
    _assetsToReturnToPool = assetToReturnToPool_;
  }

  //    function checkExchangeRate(uint256 _apr) internal view {
  //        uint256 exchangeRate = rolloverAccounting.exchangeRateAtDeposit.add(
  //            rolloverAccounting
  //                .exchangeRateAtDeposit
  //                .mul(_apr)
  //                .mul(settings.durationDays)
  //                .div(3600000)
  //        );
  //
  //        //    require(exchangeRate == rolloverAccounting.exchangeRateAtMaturity,
  //        //            "Loan:  Exchange rate is not equal to the exchange rate at maturity");
  //    }

  /**
   * @inheritdoc ILoan
   */

  function fundRollover(
    uint256 assetsFromPool_,
    uint256 assetsFromPriorLoan,
    uint256 totalSupply,
    address priorLoan
  )
    external
    onlyPool
    onlyNotPaused
    onlyLifeCycleState(ILoanLifeCycleState.Requested)
    onlyTransitionState(ILoanTransitionState.ApprovedForDeposits)
    returns (ILoanLifeCycleState)
  {
    _transitionState = ILoanTransitionState.TransitioningFundsIn;

    rolloverAccounting.totalSupply = totalSupply;
    rolloverAccounting.assetsFromPool = assetsFromPool_;
    rolloverAccounting.assetsFromPriorLoan = assetsFromPriorLoan;
    // rolloverAccounting.assetToReturnToPool = assetToReturnToPool_;
    uint256 totalAsset = assetsFromPool_ + assetsFromPriorLoan;
    settings.principal = totalAsset;
    settings.startingPrincipal = totalAsset;
    IVault borrowerVault = IVault(IPool(_pool).withdrawController().borrowerVault());
    _state = LoanLib.fundRolloverLoan(liquidityAsset, borrowerVault, assetsFromPool_);

    //        if (priorLoan != address(0)) {
    //            ILoan(priorLoan).rolloverAllocation(
    //                assetsFromPriorLoan,
    //                assetToReturnToPool_
    //            );
    //        }

    indicativeInterest = settings
      .principal
      .mul(settings.indicativeApr)
      .mul(settings.durationDays.mul(LoanLib.RAY).div(360))
      .div(LoanLib.RAY)
      .div(10000);

    originationFee = totalAsset
      .mul(settings.originationBps)
      .mul(settings.durationDays.mul(LoanLib.RAY).div(360))
      .div(LoanLib.RAY)
      .div(10000);

    if (priorLoan == address(0)) {
      rolloverAccounting.exchangeRateAtDeposit = 1e18;
    } else {
      rolloverAccounting.exchangeRateAtDeposit = ILoan(priorLoan).exchangeRateAtMaturity();
    }
    rolloverAccounting.exchangeRateAtMaturity = rolloverAccounting.exchangeRateAtDeposit.add(
      rolloverAccounting.exchangeRateAtDeposit.mul(settings.indicativeApr).mul(settings.durationDays).div(3600000)
    );

    //  checkExchangeRate(settings.indicativeApr);
    IPool(_pool).withdrawController().drawDownToBorrowerWallet(assetsFromPool_);

    _state = ILoanLifeCycleState.Funded;
    return _state;
  }

  function changeIndicativeApr(uint256 _apr) internal {
    require(
      _transitionState == ILoanTransitionState.ApprovedForDeposits || _transitionState == ILoanTransitionState.Created,
      "Loan:  RollOver already started"
    );
    require(_apr > 0, "Loan:  APR cannot be zero");

    settings.indicativeApr = _apr;
  }

  function finalizeApr(uint256 _apr) internal {
    require(_apr > 0, "Loan:  APR cannot be zero");

    settings.finalizedApr = _apr;
    interest = settings
      .principal
      .mul(settings.finalizedApr)
      .mul(settings.durationDays.mul(LoanLib.RAY).div(360))
      .div(LoanLib.RAY)
      .div(10000);

    uint256 totalAsset = rolloverAccounting.assetsFromPool + rolloverAccounting.assetsFromPriorLoan;

    originationFee = totalAsset
      .mul(settings.originationBps)
      .mul(settings.durationDays.mul(LoanLib.RAY).div(360))
      .div(LoanLib.RAY)
      .div(10000);

    // if (rolloverAccounting.totalSupply == 0) {
    //     rolloverAccounting.exchangeRateAtMaturity = 1e18;
    // } else {
    rolloverAccounting.exchangeRateAtMaturity =
      rolloverAccounting.exchangeRateAtDeposit +
      rolloverAccounting.exchangeRateAtDeposit.mul(_apr).mul(settings.durationDays).div(3600000);

    //     rolloverAccounting.exchangeRateAtMaturity = (rolloverAccounting
    //         .assetsFromPool +
    //         interest +
    //         rolloverAccounting.assetsFromPriorLoan).mul(1e18).div(
    //             rolloverAccounting.totalSupply
    //         );
    // }
    //checkExchangeRate(_apr);
  }

  function rolloverMaturedLoan()
    external
    onlyNotPaused
    onlyPool
    onlyTransitionState(ILoanTransitionState.RedemptionsClosed)
  {
    if (!(maturingTimestamp < block.timestamp && block.timestamp < maturingTimestamp + (1 days))) {
      emit LoanScheduleViolation(_transitionState, block.timestamp, maturingTimestamp, maturingTimestamp + (1 days));
    }
    _transitionState = ILoanTransitionState.TransitioningFundsOut;
    _state = ILoanLifeCycleState.Matured;
  }

  /**
   * @inheritdoc ILoan
   */
  function rolloverAndFinalizeApr(
    uint256 _apr
  ) external onlyNotPaused onlyPool onlyTransitionState(ILoanTransitionState.TransitioningFundsIn) {
    _transitionState = ILoanTransitionState.AccruingInterest;

    finalizeApr(_apr);
    _state = ILoanLifeCycleState.Active;
  }

  function accrualStartDayTimestamp() external view returns (uint256) {
    return settings.accrualStartDayTimestamp;
  }

  function transferInWindowDurationDays() external view returns (uint256) {
    return settings.transferInWindowDurationDays;
  }

  function transferOutWindowDurationDays() external view returns (uint256) {
    return settings.transferOutWindowDurationDays;
  }

  function assetsRolloverToNextLoan() external view returns (uint256) {
    return _assetsRolloverToNextLoan;
  }

  function assetsToReturnToPool() public view returns (uint256) {
    return _assetsToReturnToPool;
  }

  function assetsFromPool() external view returns (uint256) {
    return rolloverAccounting.assetsFromPool;
  }

  function completeRolloverNetPayment()
    external
    override
    onlyNotPaused
    onlyPool
    onlyTransitionState(ILoanTransitionState.TransitioningFundsOut)
    onlyLifeCycleState(ILoanLifeCycleState.Matured)
    returns (uint256 feeVaultAmount, uint256 assetsReturnedToPool, uint256 interestAccrued)
  {
    if (!(maturingTimestamp < block.timestamp && block.timestamp < redemptionAvailableTimestamp)) {
      emit LoanScheduleViolation(_transitionState, block.timestamp, maturingTimestamp, redemptionAvailableTimestamp);
    }

    uint256 scalingValue = LoanLib.RAY;

    feeVaultAmount = LoanLib.previewOriginationFee(settings, scalingValue);

    IPool(_pool).withdrawController().payFees(feeVaultAmount);
    assetsReturnedToPool = assetsToReturnToPool();

    if (assetsReturnedToPool > 0) {
      IPool(_pool).withdrawController().repayLoan(assetsReturnedToPool);
    }

    interestAccrued = interest;
    _transitionState = ILoanTransitionState.RedemptionsReleased;
    _state = ILoanLifeCycleState.Settled;
  }

  function exchangeRateAtDeposit() external view returns (uint256) {
    return rolloverAccounting.exchangeRateAtDeposit;
  }

  function exchangeRateAtMaturity() external view returns (uint256) {
    if (
      _transitionState == ILoanTransitionState.Created || _transitionState == ILoanTransitionState.ApprovedForDeposits
    ) {
      return 1e18;
    }

    return rolloverAccounting.exchangeRateAtMaturity;
  }

  /**
   * @inheritdoc ILoan
   */
  function state() external view returns (ILoanLifeCycleState) {
    return _state;
  }

  function transitionState() external view returns (ILoanTransitionState) {
    return _transitionState;
  }

  /**
   * @inheritdoc ILoan
   */
  function borrower() external view returns (address) {
    return _borrower;
  }

  /**
   * @inheritdoc ILoan
   */
  function pool() external view returns (address) {
    return _pool;
  }

  /**
   * @inheritdoc ILoan
   */
  function factory() external view returns (address) {
    return _factory;
  }

  /**
   * @inheritdoc ILoan
   */
  function dropDeadTimestamp() external view returns (uint256) {
    return settings.dropDeadTimestamp;
  }

  /**
   * @inheritdoc ILoan
   */
  function durationDays() external view returns (uint256) {
    return settings.durationDays;
  }

  /**
   * @inheritdoc ILoan
   */
  function finalizedApr() external view returns (uint256) {
    return settings.finalizedApr;
  }

  function indicativeApr() external view returns (uint256) {
    return settings.indicativeApr;
  }

  /**
   * @inheritdoc ILoan
   */
  function principal() external view returns (uint256) {
    return settings.principal;
  }

  function startingPrincipal() external view returns (uint256) {
    return settings.startingPrincipal;
  }

  /**
   * @inheritdoc ILoan
   */
  function serviceConfiguration() external view returns (IServiceConfigurationV3) {
    return _serviceConfiguration;
  }

  function repayEarlyWithdraw(uint256 principal_, uint256 assetReduction) external onlyPool {
    settings.principal -= principal_ < settings.principal ? principal_ : settings.principal;
    interest -= assetReduction < principal_
      ? 0
      : assetReduction - principal_ < interest
        ? assetReduction - principal_
        : interest;
  }
  function crossChainTransferMintDestination(uint256 amount, uint256 assetsAtMaturity) external override onlyPool {
    settings.principal += amount;
    settings.startingPrincipal += amount;
    interest += assetsAtMaturity - amount;
    indicativeInterest += assetsAtMaturity - amount;
    originationFee += amount
      .mul(settings.originationBps)
      .mul(settings.durationDays.mul(LoanLib.RAY).div(360))
      .div(LoanLib.RAY)
      .div(10000);
  }

  function crossChainTransferBurnSource(
    uint256 amount
  ) external override onlyPool returns (uint256 shares, uint256 assetsAtMaturity) {
    shares = IPool(msg.sender).convertToSharesAtDeposit(amount);
    assetsAtMaturity = IPool(msg.sender).convertToAssets(shares);

    settings.principal -= Math.min(amount, settings.principal);
    settings.startingPrincipal -= Math.min(amount, settings.startingPrincipal);
    interest -= Math.min(assetsAtMaturity - amount, interest);
    indicativeInterest -= Math.min(assetsAtMaturity - amount, indicativeInterest);

    originationFee -= Math.min(
      amount.mul(settings.originationBps).mul(settings.durationDays.mul(LoanLib.RAY).div(360)).div(LoanLib.RAY).div(
        10000
      ),
      originationFee
    );
    return (shares, assetsAtMaturity);
  }

  function depoistToLoan(address lender, uint256 assets, uint256 shares) external override onlyPool {
    emit LoanDeposit(lender, assets, shares);
  }
}
