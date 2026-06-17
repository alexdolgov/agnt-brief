//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { ERC20Upgradeable } from '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import { IERC20 } from '@openzeppelin/contracts/token/ERC20/IERC20.sol';

import { SafeERC20 } from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import { IERC20Metadata } from '@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';

import { SafeCast } from '@openzeppelin/contracts/utils/math/SafeCast.sol';
import '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

import './upgrades/BeaconImplementation.sol';

import './interfaces/ILYTPool.sol';
import './factories/interfaces/ILYTPoolControllerFactory.sol';

import './factories/interfaces/ILYTPoolAccessControlFactory.sol';

/**
 * @title Liquidity pool for Perimeter.
 * @dev Used through a beacon proxy.
 */

contract LYTPool is ILYTPool, ERC20Upgradeable, BeaconImplementation {
  using SafeERC20 for IERC20;
  using EnumerableSet for EnumerableSet.Bytes32Set;

  using SafeCast for uint256;

  /**
   * @dev The reference to the access control contract
   */
  ILYTPoolAccessControl public poolAccessControl;

  /**
   * @dev Reference to the global service configuration.
   */
  ILYTPoolServiceConfiguration private _serviceConfiguration;

  /**
   * @dev Reference to the underlying liquidity asset for the pool.
   */
  IERC20 private _liquidityAsset;

  /**
   * @dev Various accounting statistics updated throughout the pool lifetime.
   */
  ILYTPoolAccounting private _accounting;

  /**
   * @dev Reference to the admin's controller for the pool.
   */
  ILYTPoolController public lytPoolController;

  mapping(address => ILYTPoolLenderData) private _lenderData;
  mapping(bytes32 => ILYTPoolWithdraw) private _activeWithdraws;
  EnumerableSet.Bytes32Set private activeWithdrawKeys;

  event PoolCreated();
  event PoolDeposit(
    address indexed lender,
    uint256 assets,
    uint256 shares,
    ILYTPoolDepositType depositType,
    bytes32 transferTxHash
  );

  event RedeemRequested(address indexed lender, uint256 assets, uint256 shares, bytes32 uuid);
  event RedeemRepay(
    address indexed lender,
    uint256 shares,
    uint256 assets,
    uint256 fees,
    bytes32 uuid,
    uint256 expectedAssets,
    address fundsDestination
  );
  event RedeemDestinationChanged(
    address indexed lender,
    uint256 assets,
    uint256 shares,
    bytes32 uuid,
    address fundsDestination
  );

  event AccountDebit(address indexed lender, uint256 amount);
  event AccountCredit(address indexed lender, uint256 amount, uint256 shares);
  event TransferAssets(address indexed fundsDestination, uint256 amount);
  event ExchangeRateSet(
    uint256 _exchangeRate,
    uint256 interestRate,
    uint256 typeDependantChangeParam,
    uint256 exchangeRateMaturityDay
  );
  event IndicativeAndCollateralRatesSet(
    uint256 _indicativeInterestRate,
    uint256 _collateralRate
  );

  error RedemptionDoesNotCoverDeposits();
  error NotPoolController();
  error NotMarketMaker();
  error NotIssuer();
  error NotPoolAdmin();
  error PoolNotActive();
  error InvalidAccess();
  error InvalidLoan();
  error PoolInvalidState();
  error PoolPaused();
  error TransferDisabled();
  error CrossChainError();
  error RedeemExceedsBalance();
  error NoAdjustmentsToZeroBalance();
  error BurnExceedsBalance();
  error RedemptionNotFound();
  error MintingToPool();
  error ZeroAmount();
  error InvalidRedemptions();
  error ExchangeRateInvalid();
  error BlacklistedAddress(address addr);

  /**
   * @dev Modifier to ensure only the PoolController calls a method.
   */
  modifier onlyPoolController() {
    if (msg.sender != address(lytPoolController)) revert NotPoolController();
    _;
  }

  /**
   * @dev Modifier that checks that the caller is a pool lender
   */
  modifier onlyMarketMakerWithPPT() {
    if (balanceOf(msg.sender) == 0) revert NotMarketMaker();

    _;
  }

  modifier depositStateActive() {
    if (lytPoolController.depositState() != ILYTPoolDepositActiveState.Active) revert PoolInvalidState();
    _;
  }
  modifier withdrawStateActive() {
    if (lytPoolController.withdrawState() != ILYTPoolWithdrawActiveState.Active) revert PoolInvalidState();
    _;
  }

  modifier atState(ILYTPoolLifeCycleState state_) {
    if (lytPoolController.state() != state_) revert PoolInvalidState();
    _;
  }
  /**
   * @dev Modifier to check that the protocol is not paused
   */
  modifier onlyNotPaused() {
    if (_serviceConfiguration.paused() == true) revert PoolPaused();
    _;
  }

  /**
   * @dev Modifier to check that an address is not blacklisted
   * @param addr The address to check
   */
  modifier notBlacklisted(address addr) {
    if (_serviceConfiguration.isBlacklisted(addr)) {
      revert BlacklistedAddress(addr);
    }
    _;
  }

  /**
   * @dev Modifier to check that neither from nor to addresses are blacklisted
   * @param from The address tokens are being transferred from (skip check if zero address for minting)
   * @param to The address tokens are being transferred to (skip check if zero address for burning)
   */
  modifier notBlacklistedTransfer(address from, address to) {
    // Check if from address is blacklisted (skip check for minting from zero address)
    if (from != address(0) && _serviceConfiguration.isBlacklisted(from)) {
      revert BlacklistedAddress(from);
    }

    // Check if to address is blacklisted (skip check for burning to zero address)
    if (to != address(0) && _serviceConfiguration.isBlacklisted(to)) {
      revert BlacklistedAddress(to);
    }
    _;
  }

  function decimals() public view override returns (uint8) {
    return IERC20Metadata(address(_liquidityAsset)).decimals();
  }

  modifier onlyMarketMaker() {
    if (!poolAccessControl.isAllowed(msg.sender)) revert NotMarketMaker();

    _;
  }
  modifier onlyIssuer() {
    if (ILYTPoolController(lytPoolController).issuer() != msg.sender) revert NotIssuer();

    _;
  }
  modifier onlyPoolAdmin() {
    if (ILYTPoolController(lytPoolController).poolAdmin() != msg.sender) revert NotPoolAdmin();

    _;
  }

  /**
     * @dev Initializer for Pool

     * @param poolSettings configurable settings for the pool
     * @param tokenName Name used for issued pool tokens
     * @param tokenSymbol Symbol used for issued pool tokens
     */
  function initialize(
    LYTPoolAddressList memory poolAddressList,
    ILYTPoolConfigurableSettings memory poolSettings,
    string memory tokenName,
    string memory tokenSymbol
  ) public initializer {
    __ERC20_init(tokenName, tokenSymbol);
    _serviceConfiguration = ILYTPoolServiceConfiguration(poolAddressList.serviceConfiguration);

    _liquidityAsset = IERC20(poolAddressList.liquidityAsset);

    // Build the admin controller
    lytPoolController = ILYTPoolController(
      ILYTPoolControllerFactory(poolAddressList.lytPoolControllerFactory).createController(
        address(this),
        poolAddressList.serviceConfiguration,
        poolAddressList.poolAdmin,
        poolSettings
      )
    );
    poolAccessControl = ILYTPoolAccessControl(
      ILYTPoolAccessControlFactory(poolAddressList.poolAccessControlFactory).create(address(this))
    );

    _accounting.exchangeRate = 1e18;
    _accounting.exchangeRateSetDay = block.timestamp / 1 days;
    _accounting.exchangeRateChangeRate = 0;
    _accounting.exchangeRateCompoundingRate = 1e18;
    _accounting.exchangeRateAtMaturity = 1e18;
    _accounting.exchangeRateMaturityDay = (block.timestamp / 1 days);

    emit PoolCreated();
  }

  /**
   * @inheritdoc IPoolBase
   */
  function serviceConfiguration() public view returns (ILYTPoolServiceConfiguration) {
    return _serviceConfiguration;
  }

  function settings() public view returns (ILYTPoolConfigurableSettings memory poolSettings) {
    return lytPoolController.settings();
  }

  function state() public view returns (ILYTPoolLifeCycleState) {
    return lytPoolController.state();
  }

  function getActiveWithdraws() public view returns (ILYTPoolWithdraw[] memory) {
    ILYTPoolWithdraw[] memory withdraws = new ILYTPoolWithdraw[](activeWithdrawKeys.length());
    for (uint256 i = 0; i < activeWithdrawKeys.length(); i++) {
      withdraws[i] = _activeWithdraws[activeWithdrawKeys.at(i)];
    }
    return withdraws;
  }

  function admin() public view override returns (address) {
    return lytPoolController.poolAdmin();
  }

  function issuerAddr() public view override returns (address) {
    return lytPoolController.issuer();
  }

  function treasuryWalletAddr() external view override returns (address) {
    return lytPoolController.treasuryWalletAddr();
  }

  function accounting() external view returns (ILYTPoolAccounting memory) {
    return _accounting;
  }

  function liquidityAssetAddr() public view returns (address) {
    return address(_liquidityAsset);
  }

  function asset() public view returns (address) {
    return address(_liquidityAsset);
  }

  function totalAvailableAssets() public view returns (uint256 assets) {
    return convertToAssets(totalSupply());
  }

  function previewRedeemRequest(uint256 shares) public view returns (uint256 assets) {
    if (shares == 0) {
      revert ZeroAmount();
    }
    if (shares > maxRedeemRequest(msg.sender)) {
      revert RedeemExceedsBalance();
    }
    if (_lenderData[msg.sender].outstandingRequests > 100) {
      revert InvalidRedemptions();
    }

    assets = convertToAssets(shares);
  }

  function previewWithdrawRequest(uint256 assets) external view returns (uint256 shares) {
    shares = convertToSharesRoundUp(assets);
    previewRedeemRequest(shares);
  }

  function requestRedeem(
    uint256 shares
  )
    public
    onlyNotPaused
    atState(ILYTPoolLifeCycleState.Active)
    onlyMarketMaker
    onlyMarketMakerWithPPT
    notBlacklisted(msg.sender)
    withdrawStateActive
    returns (uint256 assets)
  {
    if (shares == 0) {
      revert ZeroAmount();
    }
    assets = requestRedeemExecute(msg.sender, shares);
  }

  function maxRedeemRequest(address owner) public view onlyNotPaused atState(ILYTPoolLifeCycleState.Active) withdrawStateActive returns (uint256 maxShares) {
    if (_lenderData[owner].requestedShares >= balanceOf(owner)) {
      return 0;
    }
    maxShares = balanceOf(owner) - _lenderData[owner].requestedShares;
  }

  function changeRedemptionDestination(
    address lender,
    bytes32 uuid,
    address fundsDestination
  ) external onlyNotPaused atState(ILYTPoolLifeCycleState.Active) withdrawStateActive onlyIssuer {
    if (_serviceConfiguration.isBlacklisted(fundsDestination)) {
      revert BlacklistedAddress(fundsDestination);
    }
    // Note: funds destination must be whitelisted necessarily (be a market maker)
    // This requirement should be reviewed in the future. (Maybe use a role check instead of poolAccessControl)
    if (fundsDestination != address(0) && !poolAccessControl.isAllowed(fundsDestination)) revert NotMarketMaker();
    if (lender != _activeWithdraws[uuid].lender) revert NotMarketMaker();
    if (_activeWithdraws[uuid].shares == 0) {
      revert RedemptionNotFound();
    }
    _activeWithdraws[uuid].fundsDestination = fundsDestination;
    uint256 shares = _activeWithdraws[uuid].shares;
    uint256 assets = _activeWithdraws[uuid].assets;
    emit RedeemDestinationChanged(lender, assets, shares, uuid, fundsDestination);
  }

  function processRedemption(
    address lender,
    uint256 repayment,
    uint256 fees,
    bytes32 uuid
  ) external onlyNotPaused atState(ILYTPoolLifeCycleState.Active) withdrawStateActive onlyIssuer {
    if (_activeWithdraws[uuid].stage != ILYTPoolWithdrawStage.Requested) {
      revert RedemptionNotFound();
    }
    if (_activeWithdraws[uuid].lender != lender) {
      revert NotMarketMaker();
    }
    if (!poolAccessControl.isAllowed(lender)) revert NotMarketMaker();

    uint256 shares = _activeWithdraws[uuid].shares;
    address fundsDestination = _activeWithdraws[uuid].fundsDestination;
    if (_serviceConfiguration.isBlacklisted(fundsDestination)) {
      revert BlacklistedAddress(fundsDestination);
    }
    address feeCollectorAddress = lytPoolController.feeCollectorAddress();

    emit RedeemRepay(lender, shares, repayment, fees, uuid, _activeWithdraws[uuid].assets, fundsDestination);

    _lenderData[lender].requestedShares -= shares;
    _lenderData[lender].requestedAssets -= _activeWithdraws[uuid].assets;
    _lenderData[lender].outstandingRequests -= 1;

    _lenderData[lender].assetsWithdrawn += repayment;
    _accounting.totalAssetsWithdrawn += repayment;

    delete _activeWithdraws[uuid];
    if (!activeWithdrawKeys.remove(uuid)) {
      revert InvalidAccess();
    }

    _burn(lender, shares);

    if (fundsDestination != address(0)) {
      if (!poolAccessControl.isAllowed(fundsDestination)) revert NotMarketMaker();
      _liquidityAsset.safeTransfer(fundsDestination, repayment);
    }

    _liquidityAsset.safeTransfer(feeCollectorAddress, fees);
  }

  function maxWithdrawRequest(address owner) public view returns (uint256 maxAssets) {
    maxAssets = convertToAssets(maxRedeemRequest(owner));
  }

  function setIndicativeAndCollateralRates(
    uint256 _indicativeInterestRate,
    uint256 _collateralRate
  ) public onlyPoolController atState(ILYTPoolLifeCycleState.Active) {
    _accounting.indicativeInterestRate = _indicativeInterestRate;
    _accounting.collateralRate = _collateralRate;
    emit IndicativeAndCollateralRatesSet(_indicativeInterestRate, _collateralRate);
  }

  function setExchangeRate(
    uint256 _exchangeRate,
    uint256 _typeDependantChangeParam,
    uint256 _exchangeRateMaturityDay,
    uint256 _interestRate
  ) public onlyPoolController atState(ILYTPoolLifeCycleState.Active) {
    _accounting.exchangeRate = _exchangeRate;
    _accounting.exchangeRateSetDay = block.timestamp / 1 days;
    _accounting.interestRate = _interestRate;
    ILYTPoolExchangeRateType exchangeRateType = lytPoolController.settings().exchangeRateType;
    if (exchangeRateType == ILYTPoolExchangeRateType.Linear) {
      _accounting.exchangeRateChangeRate = _typeDependantChangeParam;
    } else if (exchangeRateType == ILYTPoolExchangeRateType.Compounding) {
      _accounting.exchangeRateCompoundingRate = _typeDependantChangeParam;
    } else if (exchangeRateType == ILYTPoolExchangeRateType.Term) {
      _accounting.exchangeRateAtMaturity = _typeDependantChangeParam;
      _accounting.exchangeRateMaturityDay = _exchangeRateMaturityDay;
    }
    emit ExchangeRateSet(_exchangeRate, _interestRate, _typeDependantChangeParam, _exchangeRateMaturityDay);
  }

  function exchangeRate() public view returns (uint256 _exchangeRate) {
    uint256 numberOfDays = (block.timestamp / 1 days) - _accounting.exchangeRateSetDay;
    ILYTPoolExchangeRateType exchangeRateType = lytPoolController.settings().exchangeRateType;
    if (exchangeRateType == ILYTPoolExchangeRateType.Dynamic) {
      _exchangeRate = _accounting.exchangeRate;
    } else if (exchangeRateType == ILYTPoolExchangeRateType.Linear) {
      _exchangeRate = _accounting.exchangeRate + numberOfDays * (_accounting.exchangeRateChangeRate);
    } else if (exchangeRateType == ILYTPoolExchangeRateType.Compounding) {
      if (numberOfDays > 0) {
        _exchangeRate = _accounting.exchangeRate;
        if (numberOfDays > 7) {
          revert ExchangeRateInvalid();
        }
        for (uint256 i = 0; i < numberOfDays; i++) {
          _exchangeRate = (_exchangeRate * (_accounting.exchangeRateCompoundingRate)) / (1e18);
        }
      } else {
        _exchangeRate = _accounting.exchangeRate;
      }
    } else if (exchangeRateType == ILYTPoolExchangeRateType.Term) {
      uint256 duration = _accounting.exchangeRateMaturityDay - _accounting.exchangeRateSetDay;

      if (numberOfDays >= duration) {
        _exchangeRate = _accounting.exchangeRateAtMaturity;
      } else {
        if (_accounting.exchangeRateAtMaturity > _accounting.exchangeRate) {
          _exchangeRate =
            _accounting.exchangeRate +
            ((numberOfDays * (_accounting.exchangeRateAtMaturity - _accounting.exchangeRate)) / duration);
        } else {
          _exchangeRate =
            _accounting.exchangeRate -
            (numberOfDays * (_accounting.exchangeRate - _accounting.exchangeRateAtMaturity)) /
            duration;
        }
      }
    } else {
      revert ExchangeRateInvalid();
    }
  }

  /*//////////////////////////////////////////////////////////////
                        ERC-4626 Methods
    //////////////////////////////////////////////////////////////*/

  function totalAssets() public view returns (uint256) {
    return convertToAssets(totalSupply());
  }

  function convertToShares(uint256 assets) public view returns (uint256 shares) {
    shares = (assets * (1e18)) / (exchangeRate());
  }

  /**
   * @dev Converts assets to shares with rounding up (ceiling division).
   * This favors the pool contract in withdrawal scenarios.
   * @param assets The amount of assets to convert
   * @return shares The amount of shares, rounded up
   */
  function convertToSharesRoundUp(uint256 assets) internal view returns (uint256 shares) {
    uint256 rate = exchangeRate();
    shares = (assets * (1e18) + rate - 1) / rate;
  }

  function convertToAssets(uint256 shares) public view returns (uint256 assets) {
    assets = (exchangeRate() * (shares)) / (1e18);
  }

  function addAdjustmentAmount(
    address lender,
    uint256 debit,
    uint256 credit
  ) public atState(ILYTPoolLifeCycleState.Active) onlyPoolController {
    if (debit > 0 && credit > 0) {
      revert InvalidAccess();
    }
    if (lender == address(0) || lender == address(this)) {
      revert InvalidAccess();
    }

    if (!poolAccessControl.isAllowed(lender)) revert NotMarketMaker();
    if (debit > 0) {
      uint256 shares = convertToShares(debit);
      if (shares > maxRedeemRequest(lender)) {
        revert BurnExceedsBalance();
      }
      _burn(lender, shares);
      emit AccountDebit(lender, debit);
    } else if (credit > 0) {
      uint256 shares = convertToShares(credit);
      _mint(lender, shares);

      emit AccountCredit(lender, credit, shares);
    } else {
      revert InvalidAccess();
    }
  }

  function assetBalanceOf(address lender) public view returns (uint256) {
    return convertToAssets(balanceOf(lender));
  }

  function depositOffChain(
    uint256 assets,
    address lender,
    bytes32 transferTxHash
  ) public virtual onlyNotPaused atState(ILYTPoolLifeCycleState.Active) onlyIssuer depositStateActive returns (uint256 shares) {
    if (!poolAccessControl.isAllowed(lender)) revert NotMarketMaker();
    if (assets == 0) revert InvalidAccess();

    shares = (assets * (1e18)) / (exchangeRate());
    _accounting.totalAssetsDeposited += assets;
    _lenderData[lender].assetsDeposited += assets;

    _mint(lender, shares);

    emit PoolDeposit(lender, assets, shares,  ILYTPoolDepositType.OffChainDeposit,transferTxHash);
  }

  function deposit(
    uint256 assets,
    address lender
  )
    public
    virtual
    onlyNotPaused
    atState(ILYTPoolLifeCycleState.Active)
    onlyMarketMaker
    depositStateActive
    returns (uint256 shares)
  {
    if (msg.sender != lender) revert PoolInvalidState();
    if (assets == 0) revert InvalidAccess();

    shares = (assets * (1e18)) / (exchangeRate());

    _accounting.totalAssetsDeposited += assets;
    _lenderData[lender].assetsDeposited += assets;

    _mint(lender, shares);
    _liquidityAsset.safeTransferFrom(msg.sender, address(this), assets);

    address treasuryWalletAddress_ = lytPoolController.treasuryWalletAddr();
    _liquidityAsset.safeTransfer(treasuryWalletAddress_, assets);

    emit PoolDeposit(lender, assets, shares, ILYTPoolDepositType.ContractDeposit, bytes32(0));
  }

  function transferToTreasuryWallet(uint256 assets) public onlyIssuer {
    address treasuryWalletAddress_ = lytPoolController.treasuryWalletAddr();
    _liquidityAsset.safeTransfer(treasuryWalletAddress_, assets);
    emit TransferAssets(treasuryWalletAddress_, assets);
  }

  function depositFromTransfer(
    uint256 assets,
    address lender,
    bytes32 transferTxHash
  ) public virtual onlyNotPaused atState(ILYTPoolLifeCycleState.Active) onlyIssuer depositStateActive returns (uint256 shares) {
    if (!poolAccessControl.isAllowed(lender)) revert NotMarketMaker();
    if (assets == 0 || transferTxHash == 0) revert InvalidAccess();

    shares = (assets * (1e18)) / (exchangeRate());

    _accounting.totalAssetsDeposited += assets;
    _lenderData[lender].assetsDeposited += assets;

    _mint(lender, shares);

    address treasuryWalletAddress_ = lytPoolController.treasuryWalletAddr();
    _liquidityAsset.safeTransfer(treasuryWalletAddress_, assets);

    emit PoolDeposit(lender, assets, shares, ILYTPoolDepositType.TransferDeposit, transferTxHash);
  }

  function requestRedeemExecute(address lender, uint256 shares) internal returns (uint256 assets) {
    assets = convertToAssets(shares);

    // This is already verified by the requestRedeem() which calls this internal function
    if (shares == 0) {
      revert ZeroAmount();
    }
    if (shares > maxRedeemRequest(lender)) {
      revert RedeemExceedsBalance();
    }
    if (_lenderData[lender].outstandingRequests > 100) {
      revert InvalidRedemptions();
    }

    _lenderData[lender].requestedShares += shares;
    _lenderData[lender].requestedAssets += assets;
    _lenderData[lender].outstandingRequests += 1;
    bytes32 uuid = keccak256(abi.encodePacked(block.timestamp, lender, shares, assets));

    if (_activeWithdraws[uuid].lender != address(0)) {
      revert InvalidRedemptions();
    }

    _activeWithdraws[uuid] = ILYTPoolWithdraw({
      uuid: uuid,
      lender: lender,
      assets: assets,
      shares: shares,
      stage: ILYTPoolWithdrawStage.Requested,
      fundsDestination: lender
    });
    if (!activeWithdrawKeys.add(uuid)) {
      revert InvalidAccess();
    }
    emit RedeemRequested(lender, assets, shares, uuid);
    return assets;
  }

  /*//////////////////////////////////////////////////////////////
                            ERC-20 Overrides
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Disables Perimeter Pool Token transfers.
   */
  function _update(
    address from,
    address to,
    uint256 amount
  ) internal override atState(ILYTPoolLifeCycleState.Active) onlyNotPaused notBlacklistedTransfer(from, to) {
    if (to == address(this)) {
      if (from == address(0)) {
        revert MintingToPool();
      }
      // Prevent sending tokens back to the pool
      revert TransferDisabled();
    }

    if (to != address(0) && from != address(0) && amount > maxRedeemRequest(from)) {
      revert TransferDisabled();
    }

    super._update(from, to, amount);
  }

  function poolType() external pure returns (IPoolType) {
    return IPoolType.LytPool;
  }

  function getLYTPoolConfigurationState()
    public
    view
    returns (ILYTPoolConfigurationState memory _poolConfigurationState)
  {
    ILYTPoolConfigurableSettings memory _settings = lytPoolController.settings();
    return
      ILYTPoolConfigurationState({
        poolAddr: address(this),
        name: name(),
        symbol: symbol(),
        poolAccessControl: address(poolAccessControl),
        lytPoolController: address(lytPoolController),
        activatedAt: lytPoolController.activatedAt(),
        // LYTPoolController
        serviceConfiguration: lytPoolController.serviceConfiguration(),
        liquidityAssetAddr: address(_liquidityAsset),
        poolAdmin: lytPoolController.poolAdmin(),
        issuer: _settings.issuer,
        treasuryWalletAddr: _settings.treasuryWalletAddr,
        feeCollectorAddress: _settings.feeCollectorAddress,
        exchangeRateType: _settings.exchangeRateType
      });
  }

  function getLYTPoolOverviewState() public view returns (ILYTPoolOverviewState memory _poolOverviewState) {
    return
      ILYTPoolOverviewState({
        poolAddr: address(this),
        state: uint256(lytPoolController.state()),
        // accounting
        totalAssetsDeposited: _accounting.totalAssetsDeposited,
        totalAssetsWithdrawn: _accounting.totalAssetsWithdrawn,
        exchangeRate: exchangeRate(),
        exchangeRateAtSetDay: _accounting.exchangeRate,
        exchangeRateSetDay: _accounting.exchangeRateSetDay,
        exchangeRateChangeRate: _accounting.exchangeRateChangeRate,
        exchangeRateCompoundingRate: _accounting.exchangeRateCompoundingRate,
        exchangeRateAtMaturity: _accounting.exchangeRateAtMaturity,
        exchangeRateMaturityDay: _accounting.exchangeRateMaturityDay,
        interestRate: _accounting.interestRate,
        indicativeInterestRate: _accounting.indicativeInterestRate,
        collateralRate: _accounting.collateralRate,
        activeWithdraws: getActiveWithdraws(),
        totalShares: totalSupply(),
        totalAssets: totalAvailableAssets()
      });
  }

  function getLYTPoolAccountState(address lender) public view returns (ILYTPoolAccountState memory _poolAccountState) {
    return
      ILYTPoolAccountState({
        poolAddr: address(this),
        accountAddr: lender,
        liquidityAssetAddr: address(_liquidityAsset),
        tokenBalance: balanceOf(lender),
        assetBalance: assetBalanceOf(lender),
        maxWithdrawRequest: maxWithdrawRequest(lender),
        maxRedeemRequest: maxRedeemRequest(lender),
        requestedSharesOf: _lenderData[lender].requestedShares,
        requestedAssetsOf: _lenderData[lender].requestedAssets,
        assetsDeposited: _lenderData[lender].assetsDeposited,
        assetsWithdrawn: _lenderData[lender].assetsWithdrawn
      });
  }
}
