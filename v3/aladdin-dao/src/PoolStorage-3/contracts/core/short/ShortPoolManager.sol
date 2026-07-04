// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import { IPoolConfiguration } from "../../interfaces/IPoolConfiguration.sol";
import { ILongPoolManager } from "../../interfaces/ILongPoolManager.sol";
import { IPoolManager } from "../../interfaces/IPoolManager.sol";
import { IReservePool } from "../../interfaces/IReservePool.sol";
import { IRewardSplitter } from "../../interfaces/IRewardSplitter.sol";
import { IShortPool } from "../../interfaces/IShortPool.sol";
import { IShortPoolManager } from "../../interfaces/IShortPoolManager.sol";
import { IRateProvider } from "../../rate-provider/interfaces/IRateProvider.sol";

import { WordCodec } from "../../common/codec/WordCodec.sol";
import { AssetManagement } from "../../fund/AssetManagement.sol";
import { FlashLoans } from "../FlashLoans.sol";
import { ProtocolFees } from "../ProtocolFees.sol";

contract ShortPoolManager is ProtocolFees, FlashLoans, AssetManagement, IShortPoolManager {
  using EnumerableSet for EnumerableSet.AddressSet;
  using SafeERC20 for IERC20;
  using WordCodec for bytes32;

  /**********
   * Errors *
   **********/

  error ErrorCollateralExceedCapacity();

  error ErrorDebtExceedCapacity();

  error ErrorPoolNotRegistered();

  error ErrorInvalidPool();

  error ErrorRedeemExceedTotalDebt();

  error ErrorInsufficientRedeemedCollateral();

  /*************
   * Constants *
   *************/

  /// @dev The role for emergency operations.
  bytes32 public constant EMERGENCY_ROLE = keccak256("EMERGENCY_ROLE");

  /// @dev The role for debt reducer.
  bytes32 public constant DEBT_REDUCER_ROLE = keccak256("DEBT_REDUCER_ROLE");

  /// @dev The role for harvester
  bytes32 public constant HARVESTER_ROLE = keccak256("HARVESTER_ROLE");

  /// @dev The precision for token rate.
  uint256 internal constant PRECISION = 1e18;

  /// @dev The precision for token rate.
  int256 internal constant PRECISION_I256 = 1e18;

  /// @dev The precision for referral fee.
  uint256 internal constant REFERRAL_FEE_PRECISION = (1 << 24) - 1;

  uint256 private constant COLLATERAL_CAPACITY_OFFSET = 0;
  uint256 private constant COLLATERAL_BALANCE_OFFSET = 96;
  uint256 private constant COLLATERAL_DATA_BITS = 96;

  uint256 private constant DEBT_CAPACITY_OFFSET = 0;
  uint256 private constant DEBT_BALANCE_OFFSET = 96;
  uint256 private constant DEBT_DATA_BITS = 96;

  /***********************
   * Immutable Variables *
   ***********************/

  /// @inheritdoc IPoolManager
  address public immutable fxUSD;

  /// @inheritdoc IPoolManager
  address public immutable counterparty;

  /// @inheritdoc IPoolManager
  address public immutable configuration;

  /***********
   * Structs *
   ***********/

  /// @dev The struct for pool information.
  /// @param collateralData The data for collateral.
  ///   ```text
  ///   * Field                     Bits    Index       Comments
  ///   * collateral capacity       96      0           The maximum allowed amount of collateral tokens.
  ///   * collateral balance        96      96          The amount of collateral tokens deposited.
  ///   * reserved                  64      192         Reserved data.
  ///   ```
  /// @param debtData The data for debt.
  ///   ```text
  ///   * Field             Bits    Index       Comments
  ///   * debt capacity     96      0           The maximum allowed amount of debt tokens.
  ///   * debt balance      96      96          The amount of debt tokens borrowed.
  ///   * reserved          64      192         Reserved data.
  ///   ```
  struct PoolStruct {
    bytes32 collateralData;
    bytes32 debtData;
  }

  /// @dev The struct for token rate information.
  /// @param scalar The token scalar to reach 18 decimals.
  /// @param rateProvider The address of token rate provider.
  struct TokenRate {
    uint96 scalar;
    address rateProvider;
  }

  /// @dev Memory variables for liquidate or rebalance.
  /// @param scalingFactor The scaling factor for debt token.
  /// @param debtToken The address of debt token.
  /// @param rawColls The amount of raw collateral tokens liquidated or rebalanced, including bonus.
  /// @param bonusRawColls The amount of raw collateral tokens used as bonus.
  /// @param rawDebts The amount of raw debt tokens liquidated or rebalanced.
  struct LiquidateOrRebalanceMemoryVar {
    uint256 scalingFactor;
    address debtToken;
    uint256 rawColls;
    uint256 bonusRawColls;
    uint256 rawDebts;
  }

  struct OperationMemoryVar {
    uint256 poolSupplyFeeRatio;
    uint256 poolWithdrawFeeRatio;
    uint256 poolBorrowFeeRatio;
    uint256 poolRepayFeeRatio;
    address referral;
    uint256 referralSupplyFeeRatio;
    uint256 referralWithdrawFeeRatio;
    uint256 referralBorrowFeeRatio;
    uint256 referralRepayFeeRatio;
  }

  /*********************
   * Storage Variables *
   *********************/

  /// @dev The list of registered pools.
  EnumerableSet.AddressSet private pools;

  /// @notice Mapping to pool address to pool struct.
  mapping(address => PoolStruct) private poolInfo;

  /// @notice Mapping from pool address to rewards splitter.
  mapping(address => address) public rewardSplitter;

  /// @notice Mapping from token address to token rate struct.
  mapping(address => TokenRate) public tokenRates;

  /// @notice The threshold for permissioned liquidate or rebalance.
  uint256 public permissionedLiquidationThreshold;

  /*************
   * Modifiers *
   *************/

  modifier onlyRegisteredPool(address pool) {
    if (!pools.contains(pool)) revert ErrorPoolNotRegistered();
    _;
  }

  /***************
   * Constructor *
   ***************/

  constructor(address _fxUSD, address _counterparty, address _configuration) {
    fxUSD = _fxUSD;
    counterparty = _counterparty;
    configuration = _configuration;
  }

  function initialize(
    address admin,
    uint256 _expenseRatio,
    uint256 _harvesterRatio,
    uint256 _flashLoanFeeRatio,
    address _treasury,
    address _revenuePool,
    address _reservePool
  ) external initializer {
    __Context_init();
    __AccessControl_init();
    __ERC165_init();

    _grantRole(DEFAULT_ADMIN_ROLE, admin);

    __ProtocolFees_init(_expenseRatio, _harvesterRatio, _flashLoanFeeRatio, _treasury, _revenuePool, _reservePool);
    __FlashLoans_init();
  }

  /*************************
   * Public View Functions *
   *************************/

  /// @notice Return the pool information.
  /// @param pool The address of pool to query.
  /// @return collateralCapacity The maximum allowed amount of collateral tokens.
  /// @return collateralBalance The amount of collateral tokens deposited.
  /// @return debtCapacity The maximum allowed amount of debt tokens.
  /// @return debtBalance The amount of debt tokens borrowed.
  function getPoolInfo(
    address pool
  )
    external
    view
    returns (uint256 collateralCapacity, uint256 collateralBalance, uint256 debtCapacity, uint256 debtBalance)
  {
    bytes32 data = poolInfo[pool].collateralData;
    collateralCapacity = data.decodeUint(COLLATERAL_CAPACITY_OFFSET, COLLATERAL_DATA_BITS);
    collateralBalance = data.decodeUint(COLLATERAL_BALANCE_OFFSET, COLLATERAL_DATA_BITS);
    data = poolInfo[pool].debtData;
    debtCapacity = data.decodeUint(DEBT_CAPACITY_OFFSET, DEBT_DATA_BITS);
    debtBalance = data.decodeUint(DEBT_BALANCE_OFFSET, DEBT_DATA_BITS);
  }

  /****************************
   * Public Mutated Functions *
   ****************************/

  /// @inheritdoc IPoolManager
  function operate(address pool, uint256 positionId, int256 newColl, int256 newDebt) external returns (uint256) {
    return operate(pool, positionId, newColl, newDebt, bytes32(0));
  }

  /// @inheritdoc IPoolManager
  function operate(
    address pool,
    uint256 positionId,
    int256 newColl,
    int256 newDebt,
    bytes32 referral
  ) public onlyRegisteredPool(pool) nonReentrant whenNotPaused returns (uint256) {
    OperationMemoryVar memory vars;

    address debtToken = IShortPool(pool).debtToken();
    uint256 scalingFactor = _getTokenScalingFactor(debtToken);

    (
      vars.poolSupplyFeeRatio,
      vars.poolWithdrawFeeRatio,
      vars.poolBorrowFeeRatio,
      vars.poolRepayFeeRatio
    ) = IPoolConfiguration(configuration).getPoolFeeRatio(pool, _msgSender());
    (
      vars.referral,
      vars.referralSupplyFeeRatio,
      vars.referralWithdrawFeeRatio,
      vars.referralBorrowFeeRatio,
      vars.referralRepayFeeRatio
    ) = _decodeReferralData(referral);

    // in case of supply, we deduct the fee here first and transfer the collateral to pool.
    if (newColl > 0) {
      newColl = int256(
        _handleSupply(pool, uint256(newColl), vars.poolSupplyFeeRatio, vars.referral, vars.referralSupplyFeeRatio)
      );
    }

    int256 newRawDebt = newDebt;
    if (newRawDebt != type(int256).min) {
      newRawDebt = _scaleUp(newRawDebt, scalingFactor);
    }

    // @dev the `protocolFees` is deprecated, it is always zero now.
    (positionId, newColl, newRawDebt, ) = IShortPool(pool).operate(positionId, newColl, newRawDebt, _msgSender());

    newDebt = _scaleDown(newRawDebt, scalingFactor);
    _changePoolDebts(pool, newRawDebt);
    if (newColl > 0) {
      _changePoolCollateral(pool, int256(newColl));
    } else if (newColl < 0) {
      _handleWithdraw(pool, uint256(-newColl), vars.poolWithdrawFeeRatio, vars.referral, vars.referralWithdrawFeeRatio);
    }

    if (newDebt > 0) {
      _handleBorrow(
        pool,
        debtToken,
        uint256(newDebt),
        uint256(newRawDebt),
        vars.poolBorrowFeeRatio,
        vars.referral,
        vars.referralBorrowFeeRatio
      );
    } else if (newDebt < 0) {
      _handleRepay(
        pool,
        debtToken,
        uint256(-newDebt),
        uint256(-newRawDebt),
        vars.poolRepayFeeRatio,
        vars.referral,
        vars.referralRepayFeeRatio
      );
    }

    emit Operate(pool, positionId, newColl, newDebt, 0);

    return positionId;
  }

  /// @inheritdoc IPoolManager
  function redeem(
    address pool,
    uint256 debts,
    uint256 minColls
  ) external onlyRegisteredPool(pool) nonReentrant whenNotPaused returns (uint256 colls) {
    address debtToken = IShortPool(pool).debtToken();
    IERC20(debtToken).safeTransferFrom(_msgSender(), address(this), debts);

    uint256 scalingFactor = _getTokenScalingFactor(debtToken);
    uint256 rawDebts = _scaleUp(debts, scalingFactor);
    if (rawDebts > IShortPool(pool).getTotalRawDebts()) {
      revert ErrorRedeemExceedTotalDebt();
    }

    colls = IShortPool(pool).redeem(rawDebts);

    _changePoolCollateral(pool, -int256(colls));
    _changePoolDebts(pool, -int256(rawDebts));

    uint256 protocolFees = (colls * getRedeemFeeRatio()) / FEE_PRECISION;
    _accumulatePoolMiscFee(pool, protocolFees);
    colls -= protocolFees;
    if (colls < minColls) revert ErrorInsufficientRedeemedCollateral();

    _transferOut(fxUSD, colls, _msgSender());
    ILongPoolManager(counterparty).repay(IShortPool(pool).counterparty(), pool, rawDebts, 0);

    emit Redeem(pool, colls, debts, protocolFees);
  }

  /// @inheritdoc IShortPoolManager
  function redeemByCreditNote(
    address pool,
    uint256 debts,
    uint256 minColls
  ) external onlyRegisteredPool(pool) nonReentrant whenNotPaused returns (uint256 colls) {
    address creditNote = IShortPool(pool).creditNote();
    IERC20(creditNote).safeTransferFrom(_msgSender(), address(this), debts);

    if (debts > IShortPool(pool).getTotalRawDebts()) {
      revert ErrorRedeemExceedTotalDebt();
    }

    colls = IShortPool(pool).redeemByCreditNote(debts);

    _changePoolCollateral(pool, -int256(colls));
    _changePoolDebts(pool, -int256(debts));

    uint256 protocolFees = (colls * getRedeemFeeRatio()) / FEE_PRECISION;
    _accumulatePoolMiscFee(pool, protocolFees);
    colls -= protocolFees;
    if (colls < minColls) revert ErrorInsufficientRedeemedCollateral();

    _transferOut(fxUSD, colls, _msgSender());
    ILongPoolManager(counterparty).repayByCreditNote(IShortPool(pool).counterparty(), pool, debts);

    emit RedeemByCreditNote(pool, colls, debts, protocolFees);
  }

  /// @inheritdoc IShortPoolManager
  function rebalance(
    address pool,
    address receiver,
    int16 tick,
    uint256 maxDebt
  ) external onlyRegisteredPool(pool) nonReentrant whenNotPaused returns (uint256 colls, uint256 debts) {
    LiquidateOrRebalanceMemoryVar memory op = _beforeRebalanceOrLiquidate(pool);
    IShortPool.RebalanceResult memory result = IShortPool(pool).rebalance(tick, maxDebt);
    op.rawColls = result.rawColls + result.bonusRawColls;
    op.bonusRawColls = result.bonusRawColls;
    op.rawDebts = result.rawDebts;
    (colls, debts) = _afterRebalanceOrLiquidate(pool, op, receiver);

    emit RebalanceTick(pool, tick, colls, debts);
  }

  /// @inheritdoc IShortPoolManager
  function rebalance(
    address pool,
    address receiver,
    uint256 maxDebt
  ) external onlyRegisteredPool(pool) nonReentrant whenNotPaused returns (uint256 colls, uint256 debts) {
    LiquidateOrRebalanceMemoryVar memory op = _beforeRebalanceOrLiquidate(pool);
    IShortPool.RebalanceResult memory result = IShortPool(pool).rebalance(maxDebt);
    op.rawColls = result.rawColls + result.bonusRawColls;
    op.bonusRawColls = result.bonusRawColls;
    op.rawDebts = result.rawDebts;
    (colls, debts) = _afterRebalanceOrLiquidate(pool, op, receiver);

    emit Rebalance(pool, colls, debts);
  }

  /// @inheritdoc IShortPoolManager
  function liquidate(
    address pool,
    address receiver,
    uint256 maxDebt
  ) external onlyRegisteredPool(pool) nonReentrant whenNotPaused returns (uint256 colls, uint256 debts) {
    (bool underCollateral, uint256 shortfall) = IShortPool(pool).isUnderCollateral();
    if (underCollateral) {
      address debtToken = IShortPool(pool).debtToken();
      uint256 scalingFactor = _getTokenScalingFactor(debtToken);
      // user must liquidate all
      colls = IShortPool(pool).getTotalRawCollaterals();
      uint256 rawDebts = IShortPool(pool).getTotalRawDebts();
      // user needs to pay (rawDebts - shortfall)
      debts = _scaleDown(rawDebts - shortfall, scalingFactor);
      IERC20(IShortPool(pool).debtToken()).safeTransferFrom(_msgSender(), address(this), debts);
      // request shortfall from reserve pool first
      uint256 rawReserveFund = _scaleUp(IReservePool(reservePool).getBalance(debtToken), scalingFactor);
      if (rawReserveFund >= shortfall) {
        rawReserveFund = shortfall;
        shortfall = 0;
      } else {
        shortfall -= rawReserveFund;
      }
      if (rawReserveFund > 0) {
        IReservePool(reservePool).requestBonus(debtToken, address(this), _scaleDown(rawReserveFund, scalingFactor));
      }
      // repay user funds + reserve fund
      ILongPoolManager(counterparty).repay(
        IShortPool(pool).counterparty(),
        pool,
        _scaleUp(debts, scalingFactor) + rawReserveFund,
        shortfall
      );
      _transferOut(fxUSD, colls, _msgSender());
      IShortPool(pool).kill();
      return (colls, debts);
    }

    LiquidateOrRebalanceMemoryVar memory op = _beforeRebalanceOrLiquidate(pool);
    {
      IShortPool.LiquidateResult memory result;
      uint256 reservedColls = IReservePool(reservePool).getBalance(fxUSD);
      result = IShortPool(pool).liquidate(maxDebt, reservedColls);
      op.rawColls = result.rawColls + result.bonusRawColls;
      op.bonusRawColls = result.bonusRawColls;
      op.rawDebts = result.rawDebts;

      // take bonus or shortfall from reserve pool
      uint256 bonusFromReserve = result.bonusFromReserve;
      if (bonusFromReserve > 0) {
        bonusFromReserve = _scaleDown(result.bonusFromReserve, op.scalingFactor);
        IReservePool(reservePool).requestBonus(fxUSD, address(this), bonusFromReserve);

        // increase pool reserve first
        _changePoolCollateral(pool, int256(bonusFromReserve));
      }
    }

    (colls, debts) = _afterRebalanceOrLiquidate(pool, op, receiver);

    emit Liquidate(pool, colls, debts);
  }

  /// @inheritdoc IPoolManager
  function harvest(
    address pool
  )
    external
    onlyRegisteredPool(pool)
    onlyRole(HARVESTER_ROLE)
    nonReentrant
    returns (uint256 amountRewards, uint256 amountFunding)
  {
    uint256 collateralRecorded;
    {
      bytes32 data = poolInfo[pool].collateralData;
      collateralRecorded = data.decodeUint(COLLATERAL_BALANCE_OFFSET, COLLATERAL_DATA_BITS);
    }
    uint256 performanceFee;
    uint256 harvestBounty;
    uint256 pendingRewards;
    // compute funding
    uint256 rawCollateral = IShortPool(pool).getTotalRawCollaterals();
    if (collateralRecorded > rawCollateral) {
      unchecked {
        amountFunding = collateralRecorded - rawCollateral;
        _changePoolCollateral(pool, -int256(amountFunding));

        performanceFee = (getFundingExpenseRatio() * amountFunding) / FEE_PRECISION;
        harvestBounty = (getHarvesterRatio() * amountFunding) / FEE_PRECISION;
        pendingRewards = amountFunding - harvestBounty - performanceFee;
      }
    }

    // transfer performance fee to treasury
    if (performanceFee > 0) {
      _transferOut(fxUSD, performanceFee, treasury);
    }
    // transfer various fees to revenue pool
    _takeAccumulatedPoolFee(pool);
    // transfer harvest bounty
    if (harvestBounty > 0) {
      _transferOut(fxUSD, harvestBounty, _msgSender());
    }
    // transfer rewards for fxBASE
    if (pendingRewards > 0) {
      address splitter = rewardSplitter[pool];
      _transferOut(fxUSD, pendingRewards, splitter);
      IRewardSplitter(splitter).split(fxUSD);
    }

    emit Harvest(_msgSender(), pool, amountRewards, amountFunding, performanceFee, harvestBounty);
  }

  /// @inheritdoc IPoolManager
  /// @dev This is a risky operation, only allowed by whitelisted caller.
  function reduceDebt(
    address pool,
    uint256 amount
  ) external onlyRole(DEBT_REDUCER_ROLE) onlyRegisteredPool(pool) nonReentrant {
    address debtToken = IShortPool(pool).debtToken();
    IERC20(debtToken).safeTransferFrom(_msgSender(), address(this), amount);

    uint256 scalingFactor = _getTokenScalingFactor(debtToken);
    uint256 rawAmount = _scaleDown(amount, scalingFactor);

    IShortPool(pool).reduceDebt(rawAmount);
    ILongPoolManager(counterparty).repay(IShortPool(pool).counterparty(), pool, rawAmount, 0);

    emit ReduceDebt(pool, amount);
  }

  /************************
   * Restricted Functions *
   ************************/

  /// @notice Pause or unpause the system.
  /// @param status The pause status to update.
  function setPause(bool status) external onlyRole(EMERGENCY_ROLE) {
    if (status) _pause();
    else _unpause();
  }

  /// @notice Register a new pool with reward splitter.
  /// @param pool The address of pool.
  /// @param splitter The address of reward splitter.
  function registerPool(
    address pool,
    address splitter,
    uint96 collateralCapacity,
    uint96 debtCapacity
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (pools.add(pool)) {
      emit RegisterPool(pool);

      // approve max to counterparty since we trust it.
      address debtToken = IShortPool(pool).debtToken();
      IERC20(debtToken).forceApprove(counterparty, type(uint256).max);

      _updateRewardSplitter(pool, splitter);
      _updatePoolCapacity(pool, collateralCapacity, debtCapacity);
    }
  }

  /// @notice Update rate provider for the given token.
  /// @param token The address of the token.
  /// @param provider The address of corresponding rate provider.
  function updateRateProvider(address token, address provider) external onlyRole(DEFAULT_ADMIN_ROLE) {
    uint256 scale = 10 ** (18 - IERC20Metadata(token).decimals());
    tokenRates[token] = TokenRate(uint96(scale), provider);

    emit UpdateTokenRate(token, scale, provider);
  }

  /// @notice Update the address of reward splitter for the given pool.
  /// @param pool The address of the pool.
  /// @param newSplitter The address of reward splitter.
  function updateRewardSplitter(
    address pool,
    address newSplitter
  ) external onlyRole(DEFAULT_ADMIN_ROLE) onlyRegisteredPool(pool) {
    _updateRewardSplitter(pool, newSplitter);
  }

  /// @notice Update the pool capacity.
  /// @param pool The address of fx pool.
  /// @param collateralCapacity The capacity for collateral token.
  /// @param debtCapacity The capacity for debt token.
  function updatePoolCapacity(
    address pool,
    uint96 collateralCapacity,
    uint96 debtCapacity
  ) external onlyRole(DEFAULT_ADMIN_ROLE) onlyRegisteredPool(pool) {
    _updatePoolCapacity(pool, collateralCapacity, debtCapacity);
  }

  /**********************
   * Internal Functions *
   **********************/

  /// @dev Internal function to update the address of reward splitter for the given pool.
  /// @param pool The address of the pool.
  /// @param newSplitter The address of reward splitter.
  function _updateRewardSplitter(address pool, address newSplitter) internal {
    address oldSplitter = rewardSplitter[pool];
    rewardSplitter[pool] = newSplitter;

    emit UpdateRewardSplitter(pool, oldSplitter, newSplitter);
  }

  /// @dev Internal function to update the pool capacity.
  /// @param pool The address of fx pool.
  /// @param collateralCapacity The capacity for collateral token.
  /// @param debtCapacity The capacity for debt token.
  function _updatePoolCapacity(address pool, uint96 collateralCapacity, uint96 debtCapacity) internal {
    poolInfo[pool].collateralData = poolInfo[pool].collateralData.insertUint(
      collateralCapacity,
      COLLATERAL_CAPACITY_OFFSET,
      COLLATERAL_DATA_BITS
    );
    poolInfo[pool].debtData = poolInfo[pool].debtData.insertUint(debtCapacity, DEBT_CAPACITY_OFFSET, DEBT_DATA_BITS);

    emit UpdatePoolCapacity(pool, collateralCapacity, debtCapacity);
  }

  /// @dev Internal function to scaler up for `uint256`.
  function _scaleUp(uint256 value, uint256 scale) internal pure returns (uint256) {
    return (value * scale) / PRECISION;
  }

  /// @dev Internal function to scaler up for `int256`.
  function _scaleUp(int256 value, uint256 scale) internal pure returns (int256) {
    return (value * int256(scale)) / PRECISION_I256;
  }

  /// @dev Internal function to scaler down for `uint256`, rounding down.
  function _scaleDown(uint256 value, uint256 scale) internal pure returns (uint256) {
    return (value * PRECISION) / scale;
  }

  /// @dev Internal function to scaler down for `uint256`, rounding up.
  function _scaleDownRoundingUp(uint256 value, uint256 scale) internal pure returns (uint256) {
    return (value * PRECISION + scale - 1) / scale;
  }

  /// @dev Internal function to scaler down for `int256`.
  function _scaleDown(int256 value, uint256 scale) internal pure returns (int256) {
    return (value * PRECISION_I256) / int256(scale);
  }

  /// @dev Internal function to handle supply.
  /// @param pool The address of pool.
  /// @param newColl The amount of fxUSD supplied.
  /// @param poolFeeRatio The pool supply fee ratio, multiplied by 10^9.
  /// @param referral The address of referral.
  /// @param referralFeeRatio The referral supply fee ratio, multiplied by 2^24-1.
  /// @return newColl The amount of fxUSD supplied after fees.
  function _handleSupply(
    address pool,
    uint256 newColl,
    uint256 poolFeeRatio,
    address referral,
    uint256 referralFeeRatio
  ) internal returns (uint256) {
    // handle supply fee for protocol and referral, it is safe to use unchecked here
    unchecked {
      uint256 poolFee = (newColl * poolFeeRatio) / FEE_PRECISION;
      uint256 referralFee = (newColl * referralFeeRatio) / REFERRAL_FEE_PRECISION;
      if (poolFee > 0) {
        _accumulatePoolOpenFee(pool, poolFee);
      }
      if (referralFee > 0) {
        IERC20(fxUSD).safeTransferFrom(_msgSender(), referral, referralFee);
      }
      IERC20(fxUSD).safeTransferFrom(_msgSender(), address(this), newColl - referralFee);
      return newColl - referralFee - poolFee;
    }
  }

  /// @dev Internal function to handle withdraw.
  /// @param pool The address of pool.
  /// @param newColl The amount of fxUSD withdrawn.
  /// @param poolFeeRatio The pool withdraw fee ratio, multiplied by 10^9.
  /// @param referral The address of referral.
  /// @param referralFeeRatio The withdraw supply fee ratio, multiplied by 2^24-1.
  function _handleWithdraw(
    address pool,
    uint256 newColl,
    uint256 poolFeeRatio,
    address referral,
    uint256 referralFeeRatio
  ) internal {
    _changePoolCollateral(pool, -int256(newColl));

    // handle withdraw fee for protocol and referral, it is safe to use unchecked here
    unchecked {
      uint256 poolFee = (newColl * poolFeeRatio) / FEE_PRECISION;
      uint256 referralFee = (newColl * referralFeeRatio) / REFERRAL_FEE_PRECISION;
      if (poolFee > 0) {
        _accumulatePoolCloseFee(pool, poolFee);
      }
      if (referralFee > 0) {
        _transferOut(fxUSD, referralFee, referral);
      }
      _transferOut(fxUSD, newColl - poolFee - referralFee, _msgSender());
    }
  }

  /// @dev Internal function to handle borrow.
  /// @param pool The address of pool.
  /// @param debtAmount The amount of debt token borrowed.
  /// @param rawDebtAmount The amount of raw debt token borrowed.
  /// @param poolFeeRatio The pool borrow fee ratio, multiplied by 10^9.
  /// @param referral The address of referral.
  /// @param referralFeeRatio The borrow supply fee ratio, multiplied by 2^24-1.
  function _handleBorrow(
    address pool,
    address debtToken,
    uint256 debtAmount,
    uint256 rawDebtAmount,
    uint256 poolFeeRatio,
    address referral,
    uint256 referralFeeRatio
  ) internal {
    ILongPoolManager(counterparty).borrow(IShortPool(pool).counterparty(), pool, rawDebtAmount);

    // handle borrow fee for protocol and referral, it is safe to use unchecked here
    unchecked {
      uint256 poolFee = (debtAmount * poolFeeRatio) / FEE_PRECISION;
      uint256 referralFee = (debtAmount * referralFeeRatio) / REFERRAL_FEE_PRECISION;
      if (poolFee > 0) {
        IERC20(debtToken).safeTransfer(openRevenuePool, poolFee);
      }
      if (referralFee > 0) {
        IERC20(debtToken).safeTransfer(referral, referralFee);
      }
      IERC20(debtToken).safeTransfer(_msgSender(), debtAmount - poolFee - referralFee);
    }
  }

  /// @dev Internal function to handle repay.
  /// @param pool The address of pool.
  /// @param debtAmount The amount of debt token repaid.
  /// @param rawDebtAmount The amount of raw debt token repaid.
  /// @param poolFeeRatio The pool repay fee ratio, multiplied by 10^9.
  /// @param referral The address of referral.
  /// @param referralFeeRatio The repay supply fee ratio, multiplied by 2^24-1.
  function _handleRepay(
    address pool,
    address debtToken,
    uint256 debtAmount,
    uint256 rawDebtAmount,
    uint256 poolFeeRatio,
    address referral,
    uint256 referralFeeRatio
  ) internal {
    // handle repay fee for protocol and referral, it is safe to use unchecked here
    unchecked {
      uint256 poolFee = (debtAmount * poolFeeRatio) / FEE_PRECISION;
      uint256 referralFee = (debtAmount * referralFeeRatio) / REFERRAL_FEE_PRECISION;
      if (poolFee > 0) {
        IERC20(debtToken).safeTransferFrom(_msgSender(), closeRevenuePool, poolFee);
      }
      if (referralFee > 0) {
        IERC20(debtToken).safeTransferFrom(_msgSender(), referral, referralFee);
      }
      IERC20(debtToken).safeTransferFrom(_msgSender(), address(this), debtAmount);
      ILongPoolManager(counterparty).repay(IShortPool(pool).counterparty(), pool, rawDebtAmount, 0);
    }
  }

  /// @dev Internal function to prepare variables before rebalance or liquidate.
  /// @param pool The address of pool to liquidate or rebalance.
  function _beforeRebalanceOrLiquidate(address pool) internal view returns (LiquidateOrRebalanceMemoryVar memory op) {
    op.debtToken = IShortPool(pool).debtToken();
    op.scalingFactor = _getTokenScalingFactor(op.debtToken);
  }

  /// @dev Internal function to do actions after rebalance or liquidate.
  /// @param pool The address of pool to liquidate or rebalance.
  /// @param op The memory helper variable.
  /// @param receiver The address collateral token receiver.
  /// @return colls The actual amount of collateral token rebalanced or liquidated.
  /// @return debts The amount of debt token used.
  function _afterRebalanceOrLiquidate(
    address pool,
    LiquidateOrRebalanceMemoryVar memory op,
    address receiver
  ) internal returns (uint256 colls, uint256 debts) {
    colls = op.rawColls;
    debts = _scaleDown(op.rawDebts, op.scalingFactor);
    _changePoolCollateral(pool, -int256(colls));
    _changePoolDebts(pool, -int256(op.rawDebts));

    // take debt token
    IERC20(op.debtToken).safeTransferFrom(_msgSender(), address(this), debts);
    ILongPoolManager(counterparty).repay(IShortPool(pool).counterparty(), pool, op.rawDebts, 0);

    // transfer collateral
    uint256 protocolRevenue = (op.bonusRawColls * getLiquidationExpenseRatio()) / FEE_PRECISION;
    _accumulatePoolMiscFee(pool, protocolRevenue);
    unchecked {
      colls -= protocolRevenue;
    }
    _transferOut(fxUSD, colls, receiver);
  }

  /// @dev Internal function to update collateral balance.
  function _changePoolCollateral(address pool, int256 delta) internal {
    bytes32 data = poolInfo[pool].collateralData;
    uint256 capacity = data.decodeUint(COLLATERAL_CAPACITY_OFFSET, COLLATERAL_DATA_BITS);
    uint256 balance = uint256(int256(data.decodeUint(COLLATERAL_BALANCE_OFFSET, COLLATERAL_DATA_BITS)) + delta);
    if (balance > capacity) revert ErrorCollateralExceedCapacity();
    poolInfo[pool].collateralData = data.insertUint(balance, COLLATERAL_BALANCE_OFFSET, COLLATERAL_DATA_BITS);
  }

  /// @dev Internal function to update debt balance.
  function _changePoolDebts(address pool, int256 delta) internal {
    bytes32 data = poolInfo[pool].debtData;
    uint256 capacity = data.decodeUint(DEBT_CAPACITY_OFFSET, DEBT_DATA_BITS);
    uint256 balance = uint256(int256(data.decodeUint(DEBT_BALANCE_OFFSET, DEBT_DATA_BITS)) + delta);
    if (balance > capacity) revert ErrorDebtExceedCapacity();
    poolInfo[pool].debtData = data.insertUint(balance, DEBT_BALANCE_OFFSET, DEBT_DATA_BITS);
  }

  /// @dev Internal function to get token scaling factor.
  function _getTokenScalingFactor(address token) internal view returns (uint256 value) {
    TokenRate memory rate = tokenRates[token];
    value = rate.scalar;
    unchecked {
      if (rate.rateProvider != address(0)) {
        value *= IRateProvider(rate.rateProvider).getRate();
      } else {
        value *= PRECISION;
      }
    }
  }

  /// @dev Internal function to decode referral data.
  /// @param referralData The data of referral.
  /// @return referral The address of referral.
  /// @return supplyFeeRatio The supply fee ratio for referral.
  /// @return withdrawFeeRatio The withdraw fee ratio for referral.
  /// @return borrowFeeRatio The borrow fee ratio for referral.
  /// @return repayFeeRatio The repay fee ratio for referral.
  function _decodeReferralData(
    bytes32 referralData
  )
    internal
    pure
    returns (
      address referral,
      uint256 supplyFeeRatio,
      uint256 withdrawFeeRatio,
      uint256 borrowFeeRatio,
      uint256 repayFeeRatio
    )
  {
    referral = address(uint160(referralData.decodeUint(0, 160)));
    supplyFeeRatio = referralData.decodeUint(160, 24);
    withdrawFeeRatio = referralData.decodeUint(184, 24);
    borrowFeeRatio = referralData.decodeUint(208, 24);
    repayFeeRatio = referralData.decodeUint(232, 24);
  }
}
