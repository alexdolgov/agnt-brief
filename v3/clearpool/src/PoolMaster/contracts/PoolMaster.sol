//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC20Upgradeable, IERC20MetadataUpgradeable} from '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import {SafeERC20Upgradeable} from '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';
import {ReentrancyGuardUpgradeable} from '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import {Initializable} from '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import {SafeCastUpgradeable} from '@openzeppelin/contracts-upgradeable/utils/math/SafeCastUpgradeable.sol';

import {IBondNFT, CallbackParams} from './interfaces/IBondNFT.sol';
import {IPoolFactory} from './interfaces/IPoolFactory.sol';
import {InitParams, PoolStatus} from './interfaces/IPoolMaster.sol';

import {UtilsGuard} from './utils/Utils.sol';
import {Decimal} from './libraries/Decimal.sol';
import {RewardAsset} from './libraries/RewardAsset.sol';

/**
 * @title A smart contract storage the open pool;
 * @notice Credit Vaults Pool is a very flexible lending product that has higher lender APR,
 *  potentially high flexibility for lenders, and can be customized and used by any borrower type;
 */
contract PoolMaster is Initializable, ERC20Upgradeable, ReentrancyGuardUpgradeable, UtilsGuard {
  using SafeERC20Upgradeable for IERC20MetadataUpgradeable;
  using Decimal for uint256;
  using RewardAsset for RewardAsset.Data;
  using SafeCastUpgradeable for uint256;
  using SafeCastUpgradeable for int256;

  /**
   * All events:
   *  {Supplied} - returning info about supplyed of liquidity;
   *  {WithdrawalRequested} - returning info about requested amount;
   *  {Redeemed} - returning info about redeeemed liquidity;
   *  {DepositCapChanged} - returning info about the changed deposit capacity;
   *  {MinDepositChanged} - returning info about the changed minimum deposit;
   *  {NoticePeriodChanged} - returning info about the changed notice period;
   *  {RepaymentFrequencyChanged} - returning info about the changed repayment frequency;
   *  {BondRedeemed} - durning info about the redeemed bond NFT;
   *  {RepaymentRequested} - returning info about the requested repayment;
   *  {APRChanged} - returning info about the changed APR;
   *  {APRChangeRequested} - returning info about the requested APR change;
   *  {BorrowerChanged} - returning info about the changed borrower;
   *  {PoolProtocolFeeChanged} - returning info about the changed pool protocol fee;
   *  {RewardAssetInfoSet} - returning info about the set reward asset info;
   *  {FullRepayment} - returning info about the full repayment;
   *  {Repayment} - returning info about the repayment;
   *  {RewardWithdrawn} - returning info about the withdrawn reward;
   *  {Closed} - returning if the pool is closed;
   *  {Defaulted} - returning if the pool is defaulted;
   */
  event Supplied(address indexed lender, uint256 amount, uint256 tokensAmount);
  event WithdrawalRequested(
    address indexed lender,
    uint256 repaymentDate,
    uint256 amount,
    uint256 bondNFTIdCounter
  );
  event Redeemed(address indexed lender, uint256 amount, uint256 tokensAmount);
  event DepositCapChanged(uint256 newDepositCap);
  event MinDepositChanged(uint256 newMinDeposit);
  event NoticePeriodChanged(uint256 newValue);
  event RepaymentFrequencyChanged(uint256 newRepaymentFrequency);
  event PeriodToStartAuctionSet(uint256 period);
  event BondRedeemed(
    address indexed lender,
    uint256 indexed bondId,
    uint256 amount,
    uint256 receivedAmount
  );
  event RepaymentRequested(uint256 repaymentDate);
  event APRChanged(uint256 newAPR);
  event APRChangeRequested(uint256 newAPR, uint256 applyDate);
  event BorrowerChanged(address newBorrower);

  event PoolProtocolFeeChanged(uint256 newProtocolFee);
  event RewardAssetInfoSet(address asset, uint256 rate);
  event FullRepayment(uint256 amount, uint256 penaltyAmount, uint256 feesAmount);
  event Repayment(uint256 amount, uint256 penaltyAmount, uint256 feesAmount);
  event RewardWithdrawn(address asset, uint256 amount);
  event Closed();
  event Defaulted();

  /**
   *  All Errors:
   */
  error WrongNumber();
  error OnlyFactory();
  error OnlyBorrower();
  error OnlyGovernor();
  error PoolInactive();
  error PoolHasLiquidity();
  error InsufficientFunds();
  error NoDebtFound();
  error RepaymentMissing();

  /**
   * @notice Deposit Cap - amount beyond which Lenders can't execute deposit transaction
   */
  uint256 public depositCap;

  /**
   * @notice repayments are being made (every X days)
   */
  uint256 public repaymentFrequency;

  /**
   * @notice notice period for withdrawals
   */
  uint256 public minimumNoticePeriod;

  /**
   * @notice minimum deposit amount
   */
  uint256 public minDeposit;

  /**
   * @notice Lending APR
   */
  uint256 public lendAPR;

  uint256 public penaltyRate;
  uint256 public gracePeriod;
  uint256 public protocolFee;
  uint256 public periodToStartAuction;

  bool public isKycRequired;

  address public borrower;
  IERC20MetadataUpgradeable public asset;
  IPoolFactory public poolFactory;
  IBondNFT public bondNFT;

  uint8 private _decimals;
  uint256 private _bondNFTIdCounter;
  uint256 private _fullRepaymentDate;

  bool internal isAuctionStarted;
  uint256 internal _currentRepaymentDate;
  uint256 internal _lastRequestIndex;

  struct RepaymentRoundInfo {
    uint256 debtAmount;
    uint256 bondTokenId;
    uint256 paidAt;
    uint256 exchangeRate;
  }

  /**
   * @dev Record the debt info for a specific repayment period.
   * @notice `Repayment` date -> `Repayment round` info;
   */
  mapping(uint256 => RepaymentRoundInfo) public repaymentRoundInfo;

  struct BorrowInfo {
    uint256 borrows;
    uint256 feesAmount;
    uint256 penaltyAmount;
    uint256 exchangeRate;
    uint256 lastAccrual;
    uint256 overdueEntrance;
    PoolStatus status;
  }

  BorrowInfo internal _info;
  RewardAsset.Data internal rewardAssetInfo;

  mapping(uint256 => uint256) internal _aprChanges;

  /// @notice Number of unpaid repayment rounds, used to block withdrawals if there are 2 active rounds
  uint8 private _unpaidRounds;

  /**
   * @dev Modifier that allows only PoolsFactory to call the function;
   */
  modifier onlyPoolFactory() {
    if (msg.sender != address(poolFactory)) revert OnlyFactory();
    _;
  }

  /**
   * @dev Modifier that allows only `borrower`;
   */
  modifier onlyBorrower() {
    if (msg.sender != borrower) revert OnlyBorrower();
    _;
  }

  /**
   * @dev Modifier that pool was closed;
   */
  modifier onlyActive() {
    accrueInterest();
    PoolStatus poolStatus = _status(_info);
    if (poolStatus != PoolStatus.Active && poolStatus != PoolStatus.Overdue) revert PoolInactive();
    _;
  }

  modifier onlyEligible(address _account) {
    /// Exclude ongoing pool transfers;
    if (_account != address(this) && _account != address(0)) {
      checkKycStatus(_account);
    }
    _;
  }

  modifier onlyGovernor() {
    if (msg.sender != poolFactory.owner()) revert OnlyGovernor();
    _;
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev Initializing parameters of the term pool contract;
   * @notice Initializing pool with input parameters,
   *  returning `true` if all `success`;
   */
  function __init(
    InitParams calldata params,
    bool kycRequired
  ) public virtual initializer returns (bool) {
    __ReentrancyGuard_init();

    asset = IERC20MetadataUpgradeable(params.asset);

    string memory currencySymbol = asset.symbol();
    __ERC20_init(
      params.name,
      string(
        bytes.concat(bytes('cp'), bytes(params.borrowerSymbol), bytes('-'), bytes(currencySymbol))
      )
    );
    _decimals = asset.decimals();

    /// Setting address of the `BondNFT`;
    bondNFT = IBondNFT(params.bondNFT);
    /// Setting address of the `PoolFactory.sol`;
    poolFactory = IPoolFactory(msg.sender);

    /// Initializing a new `nft contract` with parameters;
    bool success = bondNFT.__init(address(this), '');
    /// For some reason, the pool was not created;
    if (success == false) return false;

    /// Setting `protocol rates and fees`;
    RewardAsset.RewardAssetData[] memory _rewardAssetInfo;
    (penaltyRate, gracePeriod, protocolFee, periodToStartAuction, _rewardAssetInfo) = poolFactory
      .getPoolConfigVars();

    // Copy rewardAsset info from pool factory;
    // Sets the index of each asset and saves asset info;
    for (uint256 i; i < _rewardAssetInfo.length; i++) {
      rewardAssetInfo.insert(_rewardAssetInfo[i].asset, _rewardAssetInfo[i].rate);
    }
    /// We initialize its data;
    minDeposit = params.minDeposit;
    depositCap = params.depositCap;
    repaymentFrequency = params.repaymentFrequency;
    minimumNoticePeriod = params.minimumNoticePeriod;
    lendAPR = params.lendAPR;
    borrower = params.borrower;
    isKycRequired = kycRequired;

    _info.lastAccrual = block.timestamp;
    _info.exchangeRate = Decimal.MULTIPLIER;

    return true;
  }

  /**
   * @dev Supply of liquidity for open pool;
   * @notice `Lender` provides the borrower pool with the required amount of `asset`;
   *  {tokensAmount} - amount after you deposit USDC;
   */
  function supply(uint256 _amount) external onlyActive nonReentrant onlyEligible(msg.sender) {
    if (msg.sender == borrower) revert ActionNotAllowed();

    /// @dev If borrower is blacklisted, deposits are blocked
    poolFactory.checkBorrowerStatus(borrower);

    uint256 currentSize = poolSize();
    if (_amount == type(uint256).max) {
      if (currentSize >= depositCap) revert WrongNumber();

      _amount = asset.balanceOf(msg.sender);

      uint256 allowedAmount = depositCap - currentSize;
      _amount = _amount > allowedAmount ? allowedAmount : _amount;
    }
    if (_amount == 0 || minDeposit > _amount || _amount + currentSize > depositCap)
      revert WrongNumber();

    if (_currentRepaymentDate == 0) {
      /// Set currentRepayment date on initial supply;
      _currentRepaymentDate = block.timestamp + repaymentFrequency;
      /// Set the last reward distribution date on initial supply;
      rewardAssetInfo.lastRewardDistribution = block.timestamp;
    }

    // swap the supplied amount
    uint256 tokensAmount = _amount.divDecimal(_info.exchangeRate);
    _info.borrows += _amount;

    _mint(msg.sender, tokensAmount);
    asset.safeTransferFrom(msg.sender, borrower, _amount);

    emit Supplied(msg.sender, _amount, tokensAmount);
  }

  /**
   * @notice Used to request a withdrawal;
   * @param _amount - number of asset user wants to withdraw;
   *  {calculatedAmount} - calculated amount of the `bondNFT`;
   */
  function requestWithdrawal(uint256 _amount) external onlyActive {
    if (_fullRepaymentDate != 0) revert ActionNotAllowed();
    if (_amount == type(uint256).max) {
      _amount = balanceOf(msg.sender);
    }
    if (_amount == 0 || _amount > balanceOf(msg.sender)) revert InsufficientFunds();

    // get current repayment date
    uint256 currentRepDate = currentRepaymentDate();

    // Get the next repayment date allowed for withdrawal
    uint256 repDate = getNextRepaymentDate();

    // store current repayment date in case it was virtually calculated
    if (repaymentRoundInfo[currentRepDate].debtAmount == 0 && currentRepDate != repDate) {
      _currentRepaymentDate = repDate;
    } else {
      _currentRepaymentDate = currentRepDate;
    }

    RepaymentRoundInfo storage info = repaymentRoundInfo[repDate];
    if (info.bondTokenId == 0) {
      /// Increasing `_bondNFTIdCounter` only if the repayment round is different;
      _bondNFTIdCounter += 1;
      info.bondTokenId = _bondNFTIdCounter;

      // Block withdrawals in case there are already 2 active repayment rounds
      if (_unpaidRounds == 2) revert ActionNotAllowed();
      ++_unpaidRounds;
    } else if (info.paidAt != 0 && _unpaidRounds == 0) {
      // the current round was paid already, but still may store withdrawals

      /// Increasing `_bondNFTIdCounter` so the new withdrawals can have different exchange rate;
      _bondNFTIdCounter += 1;
      info.bondTokenId = _bondNFTIdCounter;

      /// @dev use-case when there are multiple payment for the same round
      ++_unpaidRounds;
    }

    /// Lock `_amount` tokens in the smart contract;
    _transfer(msg.sender, address(this), _amount);

    // start accruing round reward per share
    RewardAsset.RewardAssetData[] memory _rewardAsset = getRewardAssetInfo();
    _accrueRoundReward(repDate);
    for (uint256 i; i < _rewardAsset.length; i++) {
      address rewardAssetAddr = _rewardAsset[i].asset;
      rewardAssetInfo.decreaseRewardCorrection(
        rewardAssetAddr,
        msg.sender,
        _amount,
        rewardAssetInfo.magnifiedRoundRewardPerShare[info.bondTokenId][rewardAssetAddr]
      );
    }
    rewardAssetInfo.roundLastDistribution[info.bondTokenId] = block.timestamp;
    info.debtAmount += _amount;

    /// Store withdrawal info snapshot as token metadata;
    /// Mint ERC1155 tokens to `lender`;
    bondNFT.mint(
      msg.sender,
      _bondNFTIdCounter,
      _amount,
      '',
      CallbackParams({
        endDate: repDate,
        penaltyRate: penaltyRate,
        interestRate: lendAPR,
        exchangeRate: 0
      })
    );
    emit WithdrawalRequested(msg.sender, repDate, _amount, _bondNFTIdCounter);
  }

  /**
   * @notice Used to request a repayment by the governor;
   * @dev only called by governor;
   * @param _repaymentDate The repayment date when borrower should repay;
   */
  function requestFullRepayment(uint256 _repaymentDate) external onlyGovernor onlyActive {
    if (_fullRepaymentDate != 0 || _currentRepaymentDate == 0) revert ActionNotAllowed();

    /// Disallow repayment date in past;
    uint256 currentRepDate = currentRepaymentDate();
    if (block.timestamp > _repaymentDate) revert InvalidArgument();

    /// Repayment date is either future date, or the current unpaid round date;
    _currentRepaymentDate = currentRepDate;
    _fullRepaymentDate = _repaymentDate;
    emit RepaymentRequested(_repaymentDate);
  }

  /**
   * @notice Used by borrower to repay full amount;
   */
  function repayAll() external nonReentrant onlyBorrower onlyActive {
    uint256 repayAmount;
    uint256 penaltyAmount;
    uint256 feesAmount;
    uint256 nextRepDate;

    // In case the full repayment was request, repay interest up to the current timestamp
    if (_fullRepaymentDate != 0) {
      // The existing accrual info should be used to repay full amount
      repayAmount = _info.borrows;
      penaltyAmount = _info.penaltyAmount;
      feesAmount = _info.feesAmount;
      _fullRepaymentDate = 0;

      if (repaymentRoundInfo[_currentRepaymentDate].debtAmount > 0) {
        // Accrue rewards interest for the current round
        _accrueRoundReward(_currentRepaymentDate);

        // Mark future repayments as paid in case the are any
        repaymentRoundInfo[_currentRepaymentDate].debtAmount = 0;
        repaymentRoundInfo[_currentRepaymentDate].paidAt = block.timestamp;
        repaymentRoundInfo[_currentRepaymentDate].exchangeRate = _info.exchangeRate;
      }

      nextRepDate = _getNextUnpaidRound(true);
      if (repaymentRoundInfo[nextRepDate].debtAmount > 0) {
        // Mark future repayments as paid in case the are any
        repaymentRoundInfo[nextRepDate].paidAt = block.timestamp;
        repaymentRoundInfo[nextRepDate].exchangeRate = _info.exchangeRate;
      }
    } else {
      uint256 currentRepDate = currentRepaymentDate();
      RepaymentRoundInfo storage roundInfo = repaymentRoundInfo[currentRepDate];
      BorrowInfo memory bInfo;
      if (roundInfo.debtAmount != 0) {
        // get precalculated amounts for the current repayment date
        uint256 roundSupply = roundInfo.debtAmount;
        (repayAmount, penaltyAmount, feesAmount) = _handleRoundRepay(currentRepDate);

        // burn locked tokens obtained during the withdrawal requests in the current round
        _burn(address(this), roundSupply);

        if (block.timestamp > currentRepDate) {
          // in case the timestamp is above repayment date apply pre-calculated interest for remaining liquidity up to nearest repayment date (in future)
          bInfo = _accrueInterestVirtual(currentRepDate + repaymentFrequency);
          repayAmount += bInfo.borrows;
          feesAmount += bInfo.feesAmount;
          penaltyAmount += bInfo.penaltyAmount;

          /// Store the ex rate for redeeming conversion;
          _info.exchangeRate = bInfo.exchangeRate;

          // get new current repayment date after repaing the overdue one
          nextRepDate = _getNextUnpaidRound(true);
          if (repaymentRoundInfo[nextRepDate].debtAmount > 0) {
            // Mark future repayments as paid in case the are any
            repaymentRoundInfo[nextRepDate].exchangeRate = bInfo.exchangeRate;
            repaymentRoundInfo[nextRepDate].paidAt = bInfo.lastAccrual;
          }
        } else {
          // in case the timestamp is prior to the exchange rate, pre-calculate interest for the remaining liquidity up to the repayment date
          bInfo = _accrueInterestVirtual(currentRepDate);
          repayAmount += bInfo.borrows;
          feesAmount += bInfo.feesAmount;
          penaltyAmount += bInfo.penaltyAmount;

          /// Store the round ex rate for redeeming conversion;
          _info.exchangeRate = roundInfo.exchangeRate;

          nextRepDate = _getNextUnpaidRound(true);
          if (repaymentRoundInfo[nextRepDate].debtAmount > 0) {
            // Mark future repayments as paid in case the are any
            repaymentRoundInfo[nextRepDate].exchangeRate = roundInfo.exchangeRate;
            repaymentRoundInfo[nextRepDate].paidAt = roundInfo.paidAt;
          }
        }
      } else {
        // in case there is no repayment rounds (no withdrawals requested), apply the pre-calculated interest up to repayment date as total interest
        bInfo = _accrueInterestVirtual(currentRepDate);
        repayAmount = bInfo.borrows;
        feesAmount = bInfo.feesAmount;
        penaltyAmount = bInfo.penaltyAmount;

        /// Store the accrued ex rate for redeeming conversion;
        _info.exchangeRate = bInfo.exchangeRate;
      }
    }
    // Reset borrows info
    _info.feesAmount = 0;
    _info.borrows = 0;
    _info.penaltyAmount = 0;
    _info.overdueEntrance = 0;

    // Decrease unpaid rounds;
    _unpaidRounds = 0;

    // Accrue rewards interest for the next round
    _accrueRoundReward(nextRepDate);

    /// Burn all locked tokens obtained during withdrawals requests;
    _burn(address(this), balanceOf(address(this)));

    _transferRepayment(repayAmount, penaltyAmount, feesAmount);
    emit FullRepayment(repayAmount, penaltyAmount, feesAmount);
    _closePool();
  }

  /**
   * @notice used to repay current period debt
   */
  function repay() external nonReentrant onlyBorrower onlyActive {
    uint256 currentRepDate = currentRepaymentDate();
    RepaymentRoundInfo storage roundInfo = repaymentRoundInfo[currentRepDate];
    if (roundInfo.debtAmount == 0) revert NoDebtFound();

    // get precalculated amounts for the current repayment date
    uint256 roundAmount = roundInfo.debtAmount;
    (uint256 amount, uint256 penaltyAmount, uint256 feesAmount) = _handleRoundRepay(currentRepDate);

    // Decrease unpaid rounds;
    _unpaidRounds -= 1;

    // update storage variable // set next repayment date in case in the current one no more withdrawals allowed
    if (minimumNoticePeriod == 0) {
      _currentRepaymentDate = currentRepaymentDate();
    } else {
      _currentRepaymentDate = _getNextUnpaidRound(true);
    }

    // burn locked tokens obtained during the withdrawal requests
    _burn(address(this), roundAmount);

    _transferRepayment(amount, penaltyAmount, feesAmount);
    emit Repayment(amount, penaltyAmount, feesAmount);
  }

  function _handleRoundRepay(
    uint256 currentRepDate
  ) internal returns (uint256 amount, uint256 penaltyAmount, uint256 feesAmount) {
    RepaymentRoundInfo storage roundInfo = repaymentRoundInfo[currentRepDate];

    // calculate the repayment amounts for the current repayment date
    (amount, penaltyAmount, feesAmount) = _dueOf(_info, roundInfo, block.timestamp, currentRepDate);

    if (block.timestamp > currentRepDate) {
      // in case the repayment is happen during overdue period, store payment date and exchange rate for redeeming swap
      roundInfo.paidAt = block.timestamp;
      roundInfo.exchangeRate = _info.exchangeRate;

      // Substract the accrued fees, interest and penalty for lenders requested repayment
      _info.feesAmount -= feesAmount;
      _info.borrows -= amount;
      _info.penaltyAmount -= penaltyAmount;
      _info.overdueEntrance = 0;
    } else {
      roundInfo.paidAt = currentRepDate;

      // apply the exchange rate for redeeming
      roundInfo.exchangeRate = _accrueInterestVirtual(currentRepDate).exchangeRate;

      // apply the exchange rate to the bond
      bondNFT.setExchangeRate(roundInfo.bondTokenId, roundInfo.exchangeRate);

      // calculate interest accrued for lenders that requested repayment up to current ts
      uint256 _borrows = roundInfo.debtAmount.mulDecimal(_info.exchangeRate);

      // extract penalty from _borrows
      _borrows -= penaltyAmount;

      // Substract the accrued fees and interest for lenders requested repayment
      _info.feesAmount -= calcRateAmount(_borrows, _info.borrows, _info.feesAmount);
      _info.borrows -= _borrows;
      _info.penaltyAmount -= penaltyAmount;
    }

    // update rounds reward per share accumulated since first request
    _accrueRoundReward(currentRepDate);
    _accrueRoundReward(_getNextUnpaidRound(false));

    /// @dev After repayment is made the remaining interest and fees are for the available liquidity
    roundInfo.debtAmount = 0;

    return (amount, penaltyAmount, feesAmount);
  }

  function _transferRepayment(uint256 amount, uint256 penaltyAmount, uint256 feesAmount) internal {
    if (feesAmount > 0) {
      // transfer the fees amount to the treasury
      asset.safeTransferFrom(msg.sender, poolFactory.treasury(), feesAmount);
    }
    asset.safeTransferFrom(msg.sender, address(this), amount + penaltyAmount);
  }

  /**
   * @notice Used to redeem liquidity from the pool
   * @param _amount Amount to be redeemed
   */
  function redeem(uint256 _amount) external nonReentrant {
    accrueInterest();
    uint256 tokensBalance = balanceOf(msg.sender);

    // Allow redeeming only if the pool is closed
    if (_info.status != PoolStatus.Closed) revert RepaymentMissing();
    if (_amount == type(uint256).max) _amount = tokensBalance;
    // Disallow redeeming if the amount exceeds balance
    if (_amount == 0 || tokensBalance == 0 || _amount > tokensBalance) revert InsufficientFunds();

    /// Exchange cpTokens for currency tokens
    uint256 receivedAmount = _amount.mulDecimal(_info.exchangeRate);

    /// Burn cpTokens;
    _burn(msg.sender, _amount);

    /// Transfer the currency tokens;
    asset.safeTransfer(msg.sender, receivedAmount);

    emit Redeemed(msg.sender, receivedAmount, _amount);
  }

  /**
   * @dev Swap the bond NFT with the asset amount;
   * @notice Redeeming `_amount` of the NFT to amount `asset`;
   *  {lenderBondAmount} - bond balance of the `lender`;
   */
  function redeemBond(uint256 _id) external nonReentrant {
    accrueInterest();

    /// Get Bond balance of the `lender`;
    uint256 lenderBondAmount = bondNFT.balanceOf(msg.sender, _id);
    if (lenderBondAmount == 0) revert NonZeroValue();

    // get bond token metadata
    CallbackParams memory bondParams = bondNFT.tokenData(_id);
    RepaymentRoundInfo storage roundInfo = repaymentRoundInfo[bondParams.endDate];
    if (roundInfo.paidAt == 0 || roundInfo.paidAt > block.timestamp) revert RepaymentMissing();

    // apply the bond rewards accrued during tokens lock, up to repayment date
    RewardAsset.RewardAssetData[] memory _rewardAsset = getRewardAssetInfo();
    for (uint256 i; i < _rewardAsset.length; i++) {
      address rewardAssetAddr = _rewardAsset[i].asset;
      rewardAssetInfo.increaseRewardCorrection(
        rewardAssetAddr,
        msg.sender,
        lenderBondAmount,
        rewardAssetInfo.magnifiedRoundRewardPerShare[_id][rewardAssetAddr]
      );
    }

    /// burn bond tokens;
    bondNFT.burn(msg.sender, _id, lenderBondAmount);

    // Exchange bond tokens for currency tokens
    uint256 receivedAmount = lenderBondAmount.mulDecimal(roundInfo.exchangeRate);

    // If the bond has the exchange rate stored, use it for conversion
    if (bondParams.exchangeRate != 0) {
      receivedAmount = lenderBondAmount.mulDecimal(bondParams.exchangeRate);
    }

    asset.safeTransfer(msg.sender, receivedAmount);
    emit BondRedeemed(msg.sender, _id, lenderBondAmount, receivedAmount);
  }

  /*
   * @dev Close this pool;
   * @notice `borrower` call this function for closing;
   */
  function closePool() external onlyBorrower {
    // Pool can be closed only if there is no liquidity provided
    if (_currentRepaymentDate != 0) revert PoolHasLiquidity();
    _closePool();
  }

  // this should close even if pool is in default state
  function _closePool() internal {
    if (_info.status == PoolStatus.Closed) revert PoolInactive();
    _info.status = PoolStatus.Closed;
    _currentRepaymentDate = 0;
    emit Closed();
  }

  /**
   * @notice Calculate total due amounts
   * @return Returns the total due amounts;
   */
  function totalDue() external view returns (uint256, uint256, uint256) {
    if (_info.borrows == 0) return (0, 0, 0);
    return _totalDue();
  }

  /**
   * @notice Calculate due amounts
   * @param repDate Repayment round timestamp
   * @return Returns the due for the `round`;
   */
  function dueOf(uint256 repDate) external view returns (uint256, uint256, uint256) {
    RepaymentRoundInfo storage roundInfo = repaymentRoundInfo[repDate];

    if (roundInfo.debtAmount == 0) return (0, 0, 0);
    return _dueOf(_accrueInterestVirtual(block.timestamp), roundInfo, block.timestamp, repDate);
  }

  function _totalDue()
    internal
    view
    returns (uint256 amount, uint256 penaltyAmount, uint256 feesAmount)
  {
    BorrowInfo memory bInfo = _accrueInterestVirtual(block.timestamp);
    if (_fullRepaymentDate != 0 || bInfo.status == PoolStatus.Default) {
      // If the full repayment was requested calculate due values based on round stored amount up to the current timestamp
      return (bInfo.borrows, bInfo.penaltyAmount, bInfo.feesAmount);
    }

    uint256 currentRepDate = currentRepaymentDate();
    RepaymentRoundInfo storage roundInfo = repaymentRoundInfo[currentRepDate];
    if (roundInfo.debtAmount != 0) {
      (amount, penaltyAmount, feesAmount) = _dueOf(
        bInfo,
        roundInfo,
        block.timestamp,
        currentRepDate
      );

      if (block.timestamp > currentRepDate) {
        // Substract the accrued fees, interest and penalty for lenders requested repayment
        bInfo.feesAmount -= feesAmount;
        bInfo.borrows -= amount;

        if (bInfo.borrows > 0) {
          (uint256 _amount, , uint256 _fees) = _accrueToRepaymentDate(
            bInfo,
            currentRepDate + repaymentFrequency
          );

          amount += _amount;
          feesAmount += _fees;
        }
      } else {
        // calculate amount for remaining funds
        uint256 _borrows = roundInfo.debtAmount.mulDecimal(bInfo.exchangeRate);

        // extract penalty from _borrows
        _borrows -= penaltyAmount;

        bInfo.feesAmount -= calcRateAmount(_borrows, bInfo.borrows, bInfo.feesAmount);
        bInfo.borrows -= _borrows;

        /// @dev The virtual interest amount contains accrual for the remaining funds until current repayment date
        if (bInfo.borrows > 0) {
          (uint256 _amount, , uint256 _fees) = _accrueToRepaymentDate(bInfo, currentRepDate);

          amount += _amount;
          feesAmount += _fees;
        }
      }
      return (amount, bInfo.penaltyAmount, feesAmount);
    }

    // if no withdrawals calculate due up to nearest repayment date (in future)
    return _accrueToRepaymentDate(bInfo, currentRepDate);
  }

  function _accrueToRepaymentDate(
    BorrowInfo memory bInfo,
    uint256 repDate
  ) internal view returns (uint256, uint256, uint256) {
    // get period
    uint256 deltaPeriod = 0;
    if (repDate > block.timestamp) {
      deltaPeriod = repDate - block.timestamp;
    }
    // calculate due up to nearest repayment date (in future)
    bInfo.feesAmount += bInfo.borrows.mulDecimal(calcDeltaRate(deltaPeriod, protocolFee));
    bInfo.borrows += bInfo.borrows.mulDecimal(calcDeltaRate(deltaPeriod, lendAPR));

    return (bInfo.borrows, bInfo.penaltyAmount, bInfo.feesAmount);
  }

  function _dueOf(
    BorrowInfo memory bInfo,
    RepaymentRoundInfo memory info,
    uint256 timestamp,
    uint256 repaymentDate
  ) internal view returns (uint256 amount, uint256 penaltyAmount, uint256 feesAmount) {
    if (timestamp > repaymentDate) {
      // calculate total interest that contains penalty interest + additional interest;
      amount = info.debtAmount.mulDecimal(bInfo.exchangeRate);

      // calculate amount penality in case the timestamp is above repayment date
      penaltyAmount =
        amount -
        calcRateAmount(amount, bInfo.borrows + bInfo.penaltyAmount, bInfo.borrows);

      // substract the penalty interest from the calculated amount
      amount -= penaltyAmount;
      feesAmount = calcRateAmount(amount, bInfo.borrows, bInfo.feesAmount);
    } else {
      // calculate accrued fees for the specific amount up to current repayment date
      (amount, penaltyAmount, feesAmount) = accrueAmounts(
        bInfo.borrows,
        bInfo.feesAmount,
        bInfo.penaltyAmount,
        info.debtAmount,
        totalSupply(),
        calcDeltaRate(repaymentDate - timestamp, lendAPR),
        calcDeltaRate(repaymentDate - timestamp, protocolFee)
      );
    }
    return (amount, penaltyAmount, feesAmount);
  }

  /**
   * @notice Used to check if the account is passed KYC
   * @param _account The wallet address of the account
   */
  function checkKycStatus(address _account) public {
    if (isKycRequired) {
      poolFactory.checkKycStatus(_account);
    }
  }

  /**
   * @notice Function is called through Factory to withdraw reward for some user
   * @param _asset The address of reward asset
   * @param account Account to withdraw reward for
   * @return withdrawable amount
   */
  function withdrawReward(
    address _asset,
    address account
  ) external onlyPoolFactory onlyEligible(account) returns (uint256) {
    accrueInterest();
    _accrueReward();
    uint256 _withdrawable = withdrawableRewardOf(_asset, account);
    if (_withdrawable > 0) {
      rewardAssetInfo.updateRewardWithdrawals(_asset, account, _withdrawable);
      emit RewardWithdrawn(_asset, _withdrawable);
    }

    return _withdrawable;
  }

  /**
   * @notice Gets currently withdrawable reward of some account
   * @dev the withdrawable reward is returned in 18 decimal place
   * @return Withdrawable reward of account
   */
  function withdrawableRewardOf(
    address _rewardAsset,
    address account
  ) public view returns (uint256) {
    return _accumulativeRewardOf(_rewardAsset, account) - withdrawnRewardOf(_rewardAsset, account);
  }

  /**
   * @notice Gets withdrawn part of reward of some account
   * @dev The withdrawn reward is returned in 18 decimal place
   * @return Withdrawn reward of account
   */
  function withdrawnRewardOf(address _rewardAsset, address account) public view returns (uint256) {
    return rewardAssetInfo.rewardWithdrawals[_rewardAsset][account];
  }

  /**
   * @notice Returns the accumulated reward of specific reward asset for the given account
   * @dev Returns the accumulated reward in 18 decimal places
   * @param _rewardAsset The address of reward asset
   * @param account The address of the user
   * @return returns accumulated rewards of the specific reward asset for the given account
   */
  function accumulativeRewardOf(
    address _rewardAsset,
    address account
  ) external view returns (uint256) {
    return _accumulativeRewardOf(_rewardAsset, account);
  }

  function _accumulativeRewardOf(
    address _rewardAsset,
    address account
  ) internal view returns (uint256) {
    uint256 currentTime = block.timestamp;
    uint256 currentRewardPerShare = rewardAssetInfo.magnifiedRewardPerShare[_rewardAsset];
    uint256 index = rewardAssetInfo.addressIndex[_rewardAsset];
    uint256 rate = rewardAssetInfo.rewardAssetData[index].rate;
    if (
      totalSupply() != 0 &&
      rewardAssetInfo.lastRewardDistribution != 0 &&
      currentTime > rewardAssetInfo.lastRewardDistribution &&
      rate != 0
    ) {
      uint256 period = currentTime - rewardAssetInfo.lastRewardDistribution;
      currentRewardPerShare += (REWARD_MAGNITUDE * period * rate) / totalSupply();
    }
    return
      ((balanceOf(account) * currentRewardPerShare).toInt256() +
        rewardAssetInfo.magnifiedRewardCorrections[_rewardAsset][account]).toUint256() /
      REWARD_MAGNITUDE;
  }

  /**
   * @notice accrue reward
   */
  function _accrueReward() internal {
    // get reward assets array
    if (
      totalSupply() != 0 &&
      rewardAssetInfo.lastRewardDistribution != 0 &&
      block.timestamp > rewardAssetInfo.lastRewardDistribution
    ) {
      RewardAsset.RewardAssetData[] memory _rewardAsset = getRewardAssetInfo();
      for (uint256 i; i < _rewardAsset.length; i++) {
        if (_rewardAsset[i].rate != 0) {
          rewardAssetInfo.updateMagnifiedRewardPerShare(
            _rewardAsset[i].asset,
            block.timestamp - rewardAssetInfo.lastRewardDistribution,
            _rewardAsset[i].rate,
            REWARD_MAGNITUDE,
            totalSupply()
          );
        }
      }
      rewardAssetInfo.lastRewardDistribution = block.timestamp;
    }
  }

  /**
   * @notice accrue round bond reward
   * @dev A round can incorporate multiple bonds
   */
  function _accrueRoundReward(uint256 roundDate) internal {
    RepaymentRoundInfo storage roundInfo = repaymentRoundInfo[roundDate];

    uint256 bondId = roundInfo.bondTokenId;
    uint256 lastDistribution = rewardAssetInfo.roundLastDistribution[bondId];
    if (totalSupply() != 0 && block.timestamp > lastDistribution && roundInfo.debtAmount > 0) {
      RewardAsset.RewardAssetData[] memory _rewardAsset = getRewardAssetInfo();
      // update round reward per share accumulated since first request
      for (uint256 i; i < _rewardAsset.length; i++) {
        rewardAssetInfo.updateMagnifiedRoundRewardPerShare(
          _rewardAsset[i].asset,
          bondId,
          block.timestamp - lastDistribution,
          _rewardAsset[i].rate,
          REWARD_MAGNITUDE,
          totalSupply()
        );
      }
      rewardAssetInfo.roundLastDistribution[bondId] = block.timestamp;
    }
  }

  /**
   * @notice Used to change repayment frequency;
   * @dev The minimal repayment frequency is one day.
   * @param _newRepaymentFrequency The new repayment frequency to be set;
   */
  function changeRepaymentFrequency(
    uint256 _newRepaymentFrequency
  ) external onlyBorrower onlyActive {
    if (_newRepaymentFrequency < 1 days || _unpaidRounds == 2) revert ActionNotAllowed();
    // Unable to increase repayment frequency if pool is active;
    if (_newRepaymentFrequency > repaymentFrequency && _currentRepaymentDate != 0)
      revert PoolHasLiquidity();
    repaymentFrequency = _newRepaymentFrequency;
    emit RepaymentFrequencyChanged(_newRepaymentFrequency);
  }

  /**
   * @notice Is used to either decrease or increase deposit capacity;
   * @param _newDepositCap  the deposit capacity to be set;
   */
  function changeDepositCapacity(uint256 _newDepositCap) external onlyBorrower onlyActive {
    depositCap = _newDepositCap;
    emit DepositCapChanged(_newDepositCap);
  }

  /**
   * @notice Is used to change mininum deposit amount;
   * @param _newMinDeposit the min deposit about to be set;
   */
  function changeMinDeposit(uint256 _newMinDeposit) external onlyBorrower onlyActive {
    // Disallow values higher then current deposit cap in case there is
    if (depositCap > 0 && _newMinDeposit > depositCap) revert MinDepositExceedCap();
    minDeposit = _newMinDeposit;
    emit MinDepositChanged(_newMinDeposit);
  }

  /**
   * @notice Setting less period of the pool, the period can be 0;
   * @dev Change `minimumNoticePeriod` in this pool;
   */
  function changeNoticePeriod(uint256 _newNoticePeriod) external onlyBorrower onlyActive {
    // After the pool is created the notice period cannot be increased
    if (_newNoticePeriod > minimumNoticePeriod) revert ActionNotAllowed();

    minimumNoticePeriod = _newNoticePeriod;
    emit NoticePeriodChanged(_newNoticePeriod);
  }

  /**
   * @notice Used to change pool protocol fee
   * @dev Only called by governor
   * @param _newProtocolFee New Protocol fee to be set
   */
  function changePoolProtocolFee(uint256 _newProtocolFee) external onlyGovernor onlyActive {
    if (_newProtocolFee == 0 || _newProtocolFee > 1e18) revert WrongNumber();

    protocolFee = _newProtocolFee;
    emit PoolProtocolFeeChanged(_newProtocolFee);
  }

  /**
   * @notice used to set a period to start auction
   * @param period the new start auction period
   */
  function setPeriodToStartAuction(uint256 period) external onlyGovernor {
    if (period == 0) revert WrongNumber();

    periodToStartAuction = period;
    emit PeriodToStartAuctionSet(period);
  }

  /**
   * @notice Used to change pool borrower address
   * @dev Only called by pool factory
   * @param _newBorrower The address of the new borrower
   */
  function changeBorrower(address _newBorrower) external onlyPoolFactory {
    borrower = _newBorrower;
    emit BorrowerChanged(_newBorrower);
  }

  /**
   * @notice Used to set the reward asset and rating
   * @dev Only called by owner(governor)
   * @param _asset The address of reward asset to be set
   * @param _rate The reward rate per sec to be set;
   */
  function setRewardAssetInfo(
    address _asset,
    uint256 _rate
  ) external onlyGovernor nonZeroAddress(_asset) {
    accrueInterest();
    _accrueReward();

    _accrueRoundReward(currentRepaymentDate());
    _accrueRoundReward(_getNextUnpaidRound(false));

    bool success = rewardAssetInfo.insert(_asset, _rate);
    if (!success) revert RequestFailed();
    emit RewardAssetInfoSet(_asset, _rate);
  }

  /**
   * @notice Change lending APR percentage
   * @dev Function can change lending APR;
   */
  function changeAPR(
    uint256 _newAPR
  ) external onlyActive onlyBorrower nonSameValue(_newAPR, lendAPR) {
    if (_newAPR == 0) revert WrongNumber();

    // if current repayment date is zero or no supplies yet the decrease apr request is applied immediately
    uint256 applyDate = currentRepaymentDate();
    if (_newAPR > lendAPR || applyDate == 0) {
      // in case an increase request is submitted, the change is applied immediately.
      lendAPR = _newAPR;

      // remove the old request
      _aprChanges[_lastRequestIndex] = 0;
      emit APRChanged(_newAPR);
    } else {
      // APR decrease change is applied in the upcoming repayment after 2 notice periods
      while (block.timestamp + 2 * minimumNoticePeriod > applyDate) {
        applyDate += repaymentFrequency;
      }
      _aprChanges[applyDate] = _newAPR;
      _lastRequestIndex = applyDate;
      emit APRChangeRequested(_newAPR, applyDate);
    }
  }

  /**
   * @notice Used to set the pool status to `Default`;
   * @dev Only called by the governor;
   */
  function forceDefault() external onlyGovernor onlyActive {
    _info.status = PoolStatus.Default;
    emit Defaulted();
  }

  /**
   * @notice Function is called by Auction contract when auction is started
   */
  function processAuctionStart() external onlyPoolFactory {
    accrueInterest();
    isAuctionStarted = true;
  }

  /**
   * @notice used to cancel unstarted auction
   */
  function cancelAuction() external {
    accrueInterest();

    bool periodToStartPassed = block.timestamp >= _info.lastAccrual + periodToStartAuction;
    if (_info.status == PoolStatus.Default && !isAuctionStarted && periodToStartPassed) {
      _processAuctionResolution(0);
    } else {
      revert ActionNotAllowed();
    }
  }

  /**
   * @notice Function is called by Auction contract to process pool debt claim
   * @param _payedAmount The total amount obtained after auction resolution
   * @dev Closes pool after auction ends, regardless of auction result
   */
  function processDebtClaim(uint256 _payedAmount) external onlyPoolFactory {
    return _processAuctionResolution(_payedAmount);
  }

  /**
   * @dev Return the `decimals` of this ERC20 standard;
   */
  function decimals() public view override returns (uint8) {
    return _decimals;
  }

  /**
   * @dev Function to get current pool `status`;
   * @return Pool `status` as state `enumerable`;
   */
  function status() external view returns (PoolStatus) {
    return _status(_accrueInterestVirtual(block.timestamp));
  }

  function cash() public view returns (uint256) {
    return asset.balanceOf(address(this));
  }

  /**
   * @notice Pool Size == Total Borrows == Borrower Balance;
   * @return Returns total borrowed amount for all `lenders`;
   */
  function poolSize() public view returns (uint256) {
    BorrowInfo memory bInfo = _accrueInterestVirtual(block.timestamp);
    return bInfo.borrows + bInfo.penaltyAmount;
  }

  /**
   * @notice Returns the array of reward asset info;
   */
  function getRewardAssetInfo() public view returns (RewardAsset.RewardAssetData[] memory) {
    return rewardAssetInfo.getList();
  }

  /**
   * @dev Used to calculate the exchange rate;
   * @return Returns the current exchange rate;
   */
  function exchangeRate() external view returns (uint256) {
    return _accrueInterestVirtual(block.timestamp).exchangeRate;
  }

  /**
   * @dev Used to calculate the current unpaid repayment date;
   * @return newRepaymentDate Returns the current unpaid repayment date;
   */
  function currentRepaymentDate() public view returns (uint256 newRepaymentDate) {
    newRepaymentDate = _currentRepaymentDate;

    if (newRepaymentDate == 0) return 0;

    // in case the stored repayment date is unpaid return it
    if (repaymentRoundInfo[newRepaymentDate].debtAmount > 0) {
      return newRepaymentDate;
    }

    // in case the full repayment is requested return it
    if (_fullRepaymentDate != 0) return _fullRepaymentDate;

    // get the new repayment date, by iterate over repayment frequency periods
    while (block.timestamp > newRepaymentDate) {
      newRepaymentDate += repaymentFrequency;
      if (repaymentRoundInfo[newRepaymentDate].debtAmount > 0) break;
    }
  }

  /**
   * @dev Used to calculate the next repayment date used for request withdrawals;
   * @return nextRepDate the next repayment date;
   */
  function getNextRepaymentDate() public view returns (uint256 nextRepDate) {
    nextRepDate = currentRepaymentDate();
    if (nextRepDate == 0) return 0;

    // In case the notice period is zero or less than the remaining time until repayment date, assign new repayment round date
    if (minimumNoticePeriod == 0 || (block.timestamp + minimumNoticePeriod > nextRepDate)) {
      while (block.timestamp + minimumNoticePeriod > nextRepDate) {
        nextRepDate += repaymentFrequency;
      }
    }
  }

  // ------- Internal functions -------------- //

  function _getNextUnpaidRound(bool checkCurrentRound) internal view returns (uint256 nextRepDate) {
    nextRepDate = currentRepaymentDate();

    if (checkCurrentRound && repaymentRoundInfo[nextRepDate].debtAmount > 0) {
      return nextRepDate;
    }

    while (block.timestamp + minimumNoticePeriod > nextRepDate) {
      nextRepDate += repaymentFrequency;
      if (repaymentRoundInfo[nextRepDate].debtAmount > 0) break;
    }
  }

  /**
   * @dev Function to get current pool `status`;
   * @notice Compare variables for set `status`;
   *  {debt} - amount of the debt;
   *  {overdue} - time of the overdue;
   * @return Pool `status` as state `enumerable`;
   *  {PoolStatus.Overdue} - if there are overdue repayments;
   *  {PoolStatus.Default} - if the pool is in default state;
   *  {PoolStatus.Closed} - if the pool is closed;
   */
  function _status(BorrowInfo memory info) internal view returns (PoolStatus) {
    if (info.status == PoolStatus.Closed || info.status == PoolStatus.Default) {
      return info.status;
    }

    uint256 currentRepDate = currentRepaymentDate();
    if (
      block.timestamp > currentRepDate &&
      block.timestamp < currentRepDate + gracePeriod &&
      (repaymentRoundInfo[currentRepDate].debtAmount > 0 || _fullRepaymentDate != 0)
    ) {
      return PoolStatus.Overdue;
    }
    return info.status;
  }

  function accrueInterest() public {
    // apply new APR in case it is requested
    if (_aprChanges[_lastRequestIndex] != 0 && block.timestamp > _lastRequestIndex) {
      // calculate exchange rate with the old apr until prev repayment date
      _info = _accrueInterestVirtual(_lastRequestIndex);

      uint256 newAPR = _aprChanges[_lastRequestIndex];
      _aprChanges[_lastRequestIndex] = 0;
      lendAPR = newAPR;
      emit APRChanged(newAPR);
    }
    // accrue interest up to current timestamp
    _info = _accrueInterestVirtual(block.timestamp);
  }

  function _accrueInterestVirtual(
    uint256 timestamp
  ) internal view returns (BorrowInfo memory newInfo) {
    /// @dev Read info from storage to memory
    newInfo = _info;

    /// @dev If last accrual was at current block or pool is closed or in default, return info as is
    if (
      timestamp <= newInfo.lastAccrual ||
      newInfo.status == PoolStatus.Default ||
      newInfo.status == PoolStatus.Closed
    ) {
      return newInfo;
    }
    newInfo.overdueEntrance = _overdueEntrance();
    uint256 lastAccrual = timestamp;
    // in case current timestamp is in overdue period, calculate the interest until the pool entered in overdue period
    if (newInfo.overdueEntrance != 0 && newInfo.overdueEntrance < lastAccrual) {
      newInfo = _accrueInterestVirtual(newInfo.overdueEntrance);
    }

    if (totalSupply() != 0) {
      uint256 penaltyPeriod = 0;

      // if the pool is in overdue period calculate penalty period
      if (newInfo.overdueEntrance != 0 && newInfo.overdueEntrance < lastAccrual) {
        penaltyPeriod = lastAccrual - newInfo.lastAccrual;
      }

      // check for default state
      if (newInfo.overdueEntrance != 0 && timestamp > newInfo.overdueEntrance + gracePeriod) {
        lastAccrual = newInfo.overdueEntrance + gracePeriod;
        penaltyPeriod = lastAccrual - newInfo.lastAccrual;
        newInfo.status = PoolStatus.Default;
      }

      uint256 timeDelta = lastAccrual - newInfo.lastAccrual;

      // calculate interest and penalty for the time period
      uint256 borrowsDelta = calcDeltaRate(timeDelta, lendAPR);
      uint256 feesDelta = calcDeltaRate(timeDelta, protocolFee);
      uint256 penaltyDelta = calcDeltaRate(penaltyPeriod, penaltyRate);

      // calc borrows, penalty and fees for borrows amount (compounding)
      newInfo.penaltyAmount += newInfo.borrows.mulDecimal(penaltyDelta);
      newInfo.feesAmount += newInfo.borrows.mulDecimal(feesDelta);
      newInfo.borrows += newInfo.borrows.mulDecimal(borrowsDelta);

      // Calculate new exchange rate  borrows + penalty + cash / totalSupply
      newInfo.exchangeRate = (newInfo.borrows + newInfo.penaltyAmount).divDecimal(totalSupply());
    }
    newInfo.lastAccrual = lastAccrual;
  }

  function _overdueEntrance() internal view returns (uint256) {
    // if the pool is already in overdue period return the entering date
    if (_info.overdueEntrance != 0) {
      return _info.overdueEntrance;
    }

    uint256 repDate = currentRepaymentDate();
    // if the current timestamp pass the repayment date return the entering date
    if (
      block.timestamp > repDate &&
      (repaymentRoundInfo[repDate].debtAmount > 0 || _fullRepaymentDate != 0)
    ) {
      return repDate;
    }
    return 0;
  }

  function _processAuctionResolution(uint256 _payedAmount) internal {
    /// @dev Calculate new exchange rate based on the amount obtained for the auction
    _info.exchangeRate = _payedAmount.divDecimal(
      (_info.borrows + _info.penaltyAmount).divDecimal(_info.exchangeRate)
    );
    _info.borrows = 0;
    _info.penaltyAmount = 0;
    _fullRepaymentDate = 0;

    uint256 currentRepDate = currentRepaymentDate();

    // Mark the current repayment date as paid (the period that causes default -> Auction)
    if (repaymentRoundInfo[currentRepDate].debtAmount > 0) {
      // Accrue rewards interest for the current round
      _accrueRoundReward(currentRepDate);

      repaymentRoundInfo[currentRepDate].debtAmount = 0;
      repaymentRoundInfo[currentRepDate].paidAt = _info.lastAccrual;
      repaymentRoundInfo[currentRepDate].exchangeRate = _info.exchangeRate;
    }

    uint256 nextRepDate = _getNextUnpaidRound(true);
    // Mark the future repayment date as paid (in case exists)
    if (repaymentRoundInfo[nextRepDate].debtAmount > 0) {
      // Accrue rewards interest for the next round
      _accrueRoundReward(nextRepDate);

      repaymentRoundInfo[nextRepDate].paidAt = _info.lastAccrual;
      repaymentRoundInfo[nextRepDate].exchangeRate = _info.exchangeRate;
    }

    // burn all locked tokens obtained during withdrawal requests
    _burn(address(this), balanceOf(address(this)));

    _closePool();
  }

  /*
   * @dev {see ERC20 _beforeTokenTransfer}
   */
  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 amount
  ) internal override onlyEligible(to) {
    super._beforeTokenTransfer(from, to, amount);
  }

  /**
   * @notice Override of mint function with rewards corrections
   * @param account Account to mint for
   * @param amount Amount to mint
   */
  function _mint(address account, uint256 amount) internal override {
    _accrueReward();
    _accrueRoundReward(currentRepaymentDate());
    _accrueRoundReward(_getNextUnpaidRound(false));

    RewardAsset.RewardAssetData[] memory _rewardAsset = getRewardAssetInfo();
    for (uint256 i; i < _rewardAsset.length; i++) {
      rewardAssetInfo.decreaseRewardCorrection(_rewardAsset[i].asset, account, amount);
    }
    super._mint(account, amount);
  }

  /**
   * @notice Override of burn function with rewards corrections
   * @param account Account to burn from
   * @param amount Amount to burn
   */
  function _burn(address account, uint256 amount) internal override {
    _accrueReward();

    RewardAsset.RewardAssetData[] memory _rewardAsset = getRewardAssetInfo();
    for (uint256 i; i < _rewardAsset.length; i++) {
      rewardAssetInfo.increaseRewardCorrection(_rewardAsset[i].asset, account, amount);
    }
    super._burn(account, amount);
  }

  /**
   * @notice Override of transfer function with rewards corrections
   * @param from Account to transfer from
   * @param to Account to transfer to
   * @param amount Amount to transfer
   */
  function _transfer(address from, address to, uint256 amount) internal override {
    accrueInterest();
    _accrueReward();

    RewardAsset.RewardAssetData[] memory _rewardAsset = getRewardAssetInfo();
    for (uint256 i; i < _rewardAsset.length; i++) {
      address rewardAssetAddr = _rewardAsset[i].asset;
      rewardAssetInfo.increaseRewardCorrection(rewardAssetAddr, from, amount);
      rewardAssetInfo.decreaseRewardCorrection(rewardAssetAddr, to, amount);
    }
    super._transfer(from, to, amount);
  }

  /**
   * @notice Override of bond transfer function with rewards corrections
   * @param roundDate round date
   * @param bondId bond id
   * @param from Account to transfer from
   * @param to Account to transfer to
   * @param amount Amount to transfer
   */
  function applyBondRewardCorections(
    uint256 roundDate,
    uint256 bondId,
    address from,
    address to,
    uint256 amount
  ) external {
    if (msg.sender != address(bondNFT)) revert ActionNotAllowed();

    _accrueRoundReward(roundDate);
    RewardAsset.RewardAssetData[] memory _rewardAsset = getRewardAssetInfo();
    for (uint256 i; i < _rewardAsset.length; i++) {
      address rewardAssetAddr = _rewardAsset[i].asset;
      rewardAssetInfo.increaseRewardCorrection(
        rewardAssetAddr,
        from,
        amount,
        rewardAssetInfo.magnifiedRoundRewardPerShare[bondId][rewardAssetAddr]
      );
      rewardAssetInfo.decreaseRewardCorrection(
        rewardAssetAddr,
        to,
        amount,
        rewardAssetInfo.magnifiedRoundRewardPerShare[bondId][rewardAssetAddr]
      );
    }
  }

  /**
   * @dev Return calculated rate for a specific time period
   */
  function calcDeltaRate(uint256 timeDelta, uint256 rate) private pure returns (uint256) {
    return (rate * timeDelta) / YEAR;
  }

  /**
   * @dev Return rated fees amount for a specific value based on full amount and fees
   */
  function calcRateAmount(
    uint256 amount,
    uint256 fullAmount,
    uint256 feesAmount
  ) private pure returns (uint256) {
    return (amount * feesAmount) / fullAmount;
  }

  /**
   * @dev Return pre-calculated amounts for a specific period
   */
  function accrueAmounts(
    uint256 _borrows,
    uint256 _feesAmount,
    uint256 _penaltyAmount,
    uint256 _amount,
    uint256 _supply,
    uint256 interestDelta,
    uint256 feesDelta
  ) private pure returns (uint256, uint256, uint256) {
    _feesAmount += _borrows.mulDecimal(feesDelta);
    _borrows += _borrows.mulDecimal(interestDelta);

    _amount = _amount.mulDecimal(_borrows.divDecimal(_supply));
    _penaltyAmount = _amount - calcRateAmount(_amount, _borrows + _penaltyAmount, _borrows);

    // substract the penalty interest from the calculated amount
    _amount -= _penaltyAmount;

    return (_amount, _penaltyAmount, calcRateAmount(_amount, _borrows, _feesAmount));
  }
}
