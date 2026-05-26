//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { IERC20MetadataUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";

import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "./upgrades/BeaconImplementation.sol";

import "./interfaces/IPoolDynamic.sol";
import "./factories/interfaces/IPoolControllerFactoryDynamic.sol";

import "./factories/interfaces/IPoolAccessControlFactory.sol";

/**
 * @title Liquidity pool for Perimeter.
 * @dev Used through a beacon proxy.
 */

contract PoolDynamic is IPoolDynamic, ERC20Upgradeable, BeaconImplementation {
  using SafeERC20Upgradeable for IERC20Upgradeable;
  using EnumerableSet for EnumerableSet.Bytes32Set;

  using SafeCast for uint256;

  /**
   * @dev The reference to the access control contract
   */
  IPoolAccessControl public poolAccessControl;

  /**
   * @dev Reference to the global service configuration.
   */
  IServiceConfigurationV5 private _serviceConfiguration;

  /**
   * @dev Reference to the underlying liquidity asset for the pool.
   */
  IERC20Upgradeable private _liquidityAsset;

  /**
   * @dev Various accounting statistics updated throughout the pool lifetime.
   */
  IPoolAccountingsDynamic private _accountings;

  /**
   * @dev Reference to the admin's controller for the pool.
   */
  IPoolControllerDynamic public poolControllerDynamic;

  mapping(address => IPoolLenderDataDynamic) private _lenderData;
  mapping(bytes32 => IPoolWithdrawDynamic) private _activeWithdraws;
  EnumerableSet.Bytes32Set private activeWithdrawKeys;

  event PoolCreated();
  event PoolDeposit(
    address indexed lender,
    uint256 assets,
    uint256 shares,
    IPoolDynamicDepositType depositType,
    bytes32 transferTxHash
  );

  event RedeemRequested(address indexed lender, uint256 assets, uint256 shares, bytes32 uuid);
  event RedeemAccepted(address indexed lender, uint256 assets, uint256 shares, bytes32 uuid);
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

  error RedemptionDoesNotCoverDeposits();
  error NotPoolController();
  error NotLender();
  error NotBorrowerManager();
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
  error DebitGreaterThanAssets();
  error RedemptionNotFound();
  error MintingToPool();
  error ZeroAmount();
  error InvalidRedemptions();
  error ExchangeRateInvalid();

  /**
   * @dev Modifier to ensure only the PoolController calls a method.
   */
  modifier onlyPoolController() {
    if (msg.sender != address(poolControllerDynamic)) revert NotPoolController();
    _;
  }

  /**
   * @dev Modifier that checks that the caller is a pool lender
   */
  modifier onlyLenderWithPPT() {
    if (balanceOf(msg.sender) == 0) revert NotLender();

    _;
  }

  modifier depositStateActive() {
    if (poolControllerDynamic.depositState() != IPoolDepositActiveStateDynamic.Active) revert PoolInvalidState();
    _;
  }
  modifier withdrawStateActive() {
    if (poolControllerDynamic.withdrawState() != IPoolWithdrawActiveStateDynamic.Active) revert PoolInvalidState();
    _;
  }

  modifier atState(IPoolLifeCycleStateDynamic state_) {
    if (poolControllerDynamic.state() != state_) revert PoolInvalidState();
    _;
  }
  /**
   * @dev Modifier to check that the protocol is not paused
   */
  modifier onlyNotPaused() {
    if (_serviceConfiguration.paused() == true) revert PoolPaused();
    _;
  }

  function decimals() public view override returns (uint8) {
    return IERC20MetadataUpgradeable(address(_liquidityAsset)).decimals();
  }

  modifier onlyPermittedLender() {
    if (!poolAccessControl.isAllowed(msg.sender)) revert NotLender();

    _;
  }
  modifier onlyBorrowerManager() {
    if (IPoolControllerDynamic(poolControllerDynamic).borrowerManager() != msg.sender) revert NotBorrowerManager();

    _;
  }
  modifier onlyPoolAdmin() {
    if (IPoolControllerDynamic(poolControllerDynamic).poolAdmin() != msg.sender) revert NotPoolAdmin();

    _;
  }

  function isPermittedLender(address receiver) public view returns (bool) {
    return poolAccessControl.isAllowed(receiver);
  }

  /**
     * @dev Initializer for Pool

     * @param poolSettings configurable settings for the pool
     * @param tokenName Name used for issued pool tokens
     * @param tokenSymbol Symbol used for issued pool tokens
     */
  function initialize(
    PoolAddressListDynamic memory poolAddressList,
    IPoolConfigurableSettingsDynamic memory poolSettings,
    string memory tokenName,
    string memory tokenSymbol
  ) public initializer {
    __ERC20_init(tokenName, tokenSymbol);
    _serviceConfiguration = IServiceConfigurationV5(poolAddressList.serviceConfiguration);

    _liquidityAsset = IERC20Upgradeable(poolAddressList.liquidityAsset);

    // Build the admin controller
    poolControllerDynamic = IPoolControllerDynamic(
      IPoolControllerFactoryDynamic(poolAddressList.poolControllerFactoryDynamic).createController(
        address(this),
        poolAddressList.serviceConfiguration,
        poolAddressList.poolAdmin,
        poolSettings
      )
    );
    poolAccessControl = IPoolAccessControl(
      IPoolAccessControlFactory(poolAddressList.poolAccessControlFactory).create(address(this))
    );

    // Allow the contract to move infinite amount of vault liquidity assets
    // _liquidityAsset.safeApprove(address(this), type(uint256).max);

    _accountings.exchangeRate = 1e18;
    _accountings.exchangeRateSetDay = block.timestamp / 1 days;
    _accountings.exchangeRateChangeRate = 0;
    _accountings.exchangeRateCompoundingRate = 1e18;
    _accountings.exchangeRateAtMaturity = 1e18;
    _accountings.exchangeRateMaturityDay = (block.timestamp / 1 days);

    emit PoolCreated();
  }

  /**
   * @inheritdoc IPoolBase
   */
  function serviceConfiguration() public view returns (IServiceConfigurationV5) {
    return _serviceConfiguration;
  }

  function settings() public view returns (IPoolConfigurableSettingsDynamic memory poolSettings) {
    return poolControllerDynamic.settings();
  }

  function state() public view returns (IPoolLifeCycleStateDynamic) {
    return poolControllerDynamic.state();
  }

  function getActiveWithdraws() public view returns (IPoolWithdrawDynamic[] memory) {
    IPoolWithdrawDynamic[] memory withdraws = new IPoolWithdrawDynamic[](activeWithdrawKeys.length());
    for (uint256 i = 0; i < activeWithdrawKeys.length(); i++) {
      withdraws[i] = _activeWithdraws[activeWithdrawKeys.at(i)];
    }
    return withdraws;
  }
  function admin() public view override returns (address) {
    return poolControllerDynamic.poolAdmin();
  }

  function borrowerManagerAddr() public view override returns (address) {
    return poolControllerDynamic.borrowerManager();
  }

  function borrowerWalletAddr() external view override returns (address) {
    return poolControllerDynamic.borrowerWalletAddr();
  }

  function accountings() external view returns (IPoolAccountingsDynamic memory) {
    return _accountings;
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

  /**
   * @inheritdoc IRequestWithdrawable
   */
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

  /**
   * @inheritdoc IRequestWithdrawable
   */
  function previewWithdrawRequest(uint256 assets) external view returns (uint256 shares) {
    shares = convertToShares(assets);
    previewRedeemRequest(shares);
    // if (shares == 0) {
    //   revert ZeroAmount();
    // }
    // if (shares > maxRedeemRequest(msg.sender)) {
    //   revert RedeemExceedsBalance();
    // }
    // if (_lenderData[msg.sender].outstandingRequests > 4) {
    //   revert InvalidRedemptions();
    // }
  }

  function requestRedeem(
    uint256 shares
  )
    public
    onlyNotPaused
    atState(IPoolLifeCycleStateDynamic.Active)
    onlyPermittedLender
    onlyLenderWithPPT
    withdrawStateActive
    returns (uint256 assets)
  {
    if (shares == 0) {
      revert ZeroAmount();
    }
    assets = requestRedeemExecute(msg.sender, shares, false);
  }

  /**
   * @inheritdoc IRequestWithdrawable
   */
  function maxRedeemRequest(address owner) public view returns (uint256 maxShares) {
    if (poolControllerDynamic.withdrawState() != IPoolWithdrawActiveStateDynamic.Active) {
      return 0;
    }
    if (_lenderData[owner].requestedShares + _lenderData[owner].acceptedShares >= balanceOf(owner)) {
      return 0;
    }
    maxShares = balanceOf(owner) - _lenderData[owner].requestedShares - _lenderData[owner].acceptedShares;
  }

  function changeRedemptionDestination(
    address lender,
    bytes32 uuid,
    address fundsDestination
  ) external onlyNotPaused atState(IPoolLifeCycleStateDynamic.Active) onlyPoolAdmin {
    if (fundsDestination != address(0) && !poolAccessControl.isAllowed(fundsDestination)) revert NotLender();
    if (lender != _activeWithdraws[uuid].lender) revert NotLender();
    if (_activeWithdraws[uuid].shares == 0) {
      revert RedemptionNotFound();
    }
    _activeWithdraws[uuid].fundsDestination = fundsDestination;
    uint256 shares = _activeWithdraws[uuid].shares;
    uint256 assets = _activeWithdraws[uuid].assets;
    emit RedeemDestinationChanged(lender, assets, shares, uuid, fundsDestination);
  }
  function acceptRedemption(
    address lender,
    bytes32 uuid
  ) external onlyNotPaused atState(IPoolLifeCycleStateDynamic.Active) onlyBorrowerManager {
    if (_activeWithdraws[uuid].stage != IPoolDynamicWithdrawStage.Requested) {
      revert RedemptionNotFound();
    }
    if (_activeWithdraws[uuid].lender != lender) {
      revert NotLender();
    }
    _activeWithdraws[uuid].stage = IPoolDynamicWithdrawStage.Accepted;
    uint256 shares = _activeWithdraws[uuid].shares;
    uint256 assets = _activeWithdraws[uuid].assets;
    _lenderData[lender].acceptedShares += shares;
    _lenderData[lender].acceptedAssets += assets;

    _lenderData[lender].requestedShares -= shares;
    _lenderData[lender].requestedAssets -= assets;
    emit RedeemAccepted(lender, assets, shares, uuid);
  }

  function repayRedemption(
    address lender,
    uint256 repayment,
    uint256 fees,
    bytes32 uuid
  ) external onlyNotPaused atState(IPoolLifeCycleStateDynamic.Active) onlyPoolAdmin {
    if (_activeWithdraws[uuid].stage != IPoolDynamicWithdrawStage.Accepted) {
      revert RedemptionNotFound();
    }
    if (_activeWithdraws[uuid].lender != lender) {
      revert NotLender();
    }
    if (!poolAccessControl.isAllowed(lender)) revert NotLender();
    uint256 shares = _activeWithdraws[uuid].shares;
    address fundsDestination = _activeWithdraws[uuid].fundsDestination;

    bool isTransferRedeem = _activeWithdraws[uuid].transferRedeem;

    address feeCollectorAddress = poolControllerDynamic.feeCollectorAddress();

    // int256 adjustment = repayment.toInt256() + fees.toInt256() - (_activeWithdraws[uuid].assets).toInt256();

    emit RedeemRepay(lender, shares, repayment, fees, uuid, _activeWithdraws[uuid].assets, fundsDestination);

    _lenderData[lender].acceptedShares -= shares;
    _lenderData[lender].acceptedAssets -= _activeWithdraws[uuid].assets;
    _lenderData[lender].outstandingRequests -= 1;

    _lenderData[lender].assetsWithdrawn += repayment;
    _accountings.totalAssetsWithdrawn += repayment;

    delete _activeWithdraws[uuid];
    if (!activeWithdrawKeys.remove(uuid)) {
      revert InvalidAccess();
    }

    if (isTransferRedeem) {
      _burn(address(this), shares);
    } else {
      _burn(lender, shares);
    }

    if (fundsDestination != address(0)) {
      if (!poolAccessControl.isAllowed(fundsDestination)) revert NotLender();

      _liquidityAsset.safeTransfer(fundsDestination, repayment);
    }

    _liquidityAsset.safeTransfer(feeCollectorAddress, fees);
  }

  /**
   * @inheritdoc IRequestWithdrawable
   */
  function maxWithdrawRequest(address owner) public view returns (uint256 maxAssets) {
    maxAssets = convertToAssets(maxRedeemRequest(owner));
  }

  function setIndicativeAndCollateralRates(
    uint256 _indicativeInterestRate,
    uint256 _collateralRate
  ) public onlyPoolController {
    _accountings.indicativeInterestRate = _indicativeInterestRate;
    _accountings.collateralRate = _collateralRate;
  }

  function setExchangeRate(
    uint256 _exchangeRate,
    uint256 _typeDependantChangeParam,
    uint256 _exchangeRateMaturityDay,
    uint256 _interestRate
  ) public onlyPoolController {
    _accountings.exchangeRate = _exchangeRate;
    _accountings.exchangeRateSetDay = block.timestamp / 1 days;
    _accountings.interestRate = _interestRate;
    IPoolDynamicExchangeRateType exchangeRateType = poolControllerDynamic.settings().exchangeRateType;
    if (exchangeRateType == IPoolDynamicExchangeRateType.Linear) {
      _accountings.exchangeRateChangeRate = _typeDependantChangeParam;
    } else if (exchangeRateType == IPoolDynamicExchangeRateType.Compounding) {
      _accountings.exchangeRateCompoundingRate = _typeDependantChangeParam;
    } else if (exchangeRateType == IPoolDynamicExchangeRateType.Term) {
      _accountings.exchangeRateAtMaturity = _typeDependantChangeParam;
      _accountings.exchangeRateMaturityDay = _exchangeRateMaturityDay;
    }
    emit ExchangeRateSet(_exchangeRate, _interestRate, _typeDependantChangeParam, _exchangeRateMaturityDay);
  }

  function exchangeRate() public view returns (uint256 _exchangeRate) {
    uint256 numberOfDays = (block.timestamp / 1 days) - _accountings.exchangeRateSetDay;
    IPoolDynamicExchangeRateType exchangeRateType = poolControllerDynamic.settings().exchangeRateType;
    if (exchangeRateType == IPoolDynamicExchangeRateType.Dynamic) {
      _exchangeRate = _accountings.exchangeRate;
    } else if (exchangeRateType == IPoolDynamicExchangeRateType.Linear) {
      _exchangeRate = _accountings.exchangeRate + numberOfDays * (_accountings.exchangeRateChangeRate);
    } else if (exchangeRateType == IPoolDynamicExchangeRateType.Compounding) {
      if (numberOfDays > 0) {
        _exchangeRate = _accountings.exchangeRate;
        if (numberOfDays > 7) {
          revert ExchangeRateInvalid();
        }
        for (uint256 i = 0; i < numberOfDays; i++) {
          _exchangeRate = (_exchangeRate * (_accountings.exchangeRateCompoundingRate)) / (1e18);
        }
      } else {
        _exchangeRate = _accountings.exchangeRate;
      }
    } else if (exchangeRateType == IPoolDynamicExchangeRateType.Term) {
      uint256 duration = _accountings.exchangeRateMaturityDay - _accountings.exchangeRateSetDay;

      if (numberOfDays >= duration) {
        _exchangeRate = _accountings.exchangeRateAtMaturity;
      } else {
        if (_accountings.exchangeRateAtMaturity > _accountings.exchangeRate) {
          _exchangeRate =
            _accountings.exchangeRate +
            ((numberOfDays * (_accountings.exchangeRateAtMaturity - _accountings.exchangeRate)) / duration);
        } else {
          _exchangeRate =
            _accountings.exchangeRate -
            (numberOfDays * (_accountings.exchangeRate - _accountings.exchangeRateAtMaturity)) /
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

  function convertToAssets(uint256 shares) public view returns (uint256 assets) {
    assets = (exchangeRate() * (shares)) / (1e18);
  }

  function addAdjustmentAmount(
    address lender,
    uint256 debit,
    uint256 credit
  ) public atState(IPoolLifeCycleStateDynamic.Active) onlyPoolController {
    if (debit > 0 && credit > 0) {
      revert InvalidAccess();
    }
    if (lender == address(0) || lender == address(this)) {
      revert InvalidAccess();
    }

    if (!poolAccessControl.isAllowed(lender)) revert NotLender();
    if (debit > 0) {
      if (debit > assetBalanceOf(lender)) {
        revert DebitGreaterThanAssets();
      }
      uint256 shares = convertToShares(debit);
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
    address lender
  ) public virtual onlyNotPaused atState(IPoolLifeCycleStateDynamic.Active) onlyPoolAdmin returns (uint256 shares) {
    if (!poolAccessControl.isAllowed(lender)) revert NotLender();
    if (assets == 0) revert InvalidAccess();

    shares = (assets * (1e18)) / (exchangeRate());
    _accountings.totalAssetsDeposited += assets;
    _lenderData[lender].assetsDeposited += assets;

    _mint(lender, shares);

    emit PoolDeposit(lender, assets, shares, IPoolDynamicDepositType.OffChainDeposit, bytes32(0));
  }

  function deposit(
    uint256 assets,
    address lender
  )
    public
    virtual
    onlyNotPaused
    atState(IPoolLifeCycleStateDynamic.Active)
    onlyPermittedLender
    depositStateActive
    returns (uint256 shares)
  {
    // lender parameter could be msg.sender, but we choose to keep it as a parameter
    // to keep the interface compatible with previous versions.
    if (msg.sender != lender) revert PoolInvalidState();
    if (assets == 0) revert InvalidAccess();

    shares = (assets * (1e18)) / (exchangeRate());

    _accountings.totalAssetsDeposited += assets;
    _lenderData[lender].assetsDeposited += assets;

    _liquidityAsset.safeTransferFrom(msg.sender, address(this), assets);
    _mint(lender, shares);

    address borrowerWalletAddr_ = poolControllerDynamic.borrowerWalletAddr();
    _liquidityAsset.safeTransfer(borrowerWalletAddr_, assets);

    emit PoolDeposit(lender, assets, shares, IPoolDynamicDepositType.ContractDeposit, bytes32(0));
  }

  function transferToBorrowerWallet(uint256 assets) public onlyPoolAdmin {
    address borrowerWalletAddr_ = poolControllerDynamic.borrowerWalletAddr();
    _liquidityAsset.safeTransfer(borrowerWalletAddr_, assets);
    emit TransferAssets(borrowerWalletAddr_, assets);
  }

  function depositFromTransfer(
    uint256 assets,
    address lender,
    bytes32 transferTxHash
  ) public virtual onlyNotPaused atState(IPoolLifeCycleStateDynamic.Active) onlyPoolAdmin returns (uint256 shares) {
    if (!poolAccessControl.isAllowed(lender)) revert NotLender();
    if (assets == 0 || transferTxHash == 0) revert InvalidAccess();

    shares = (assets * (1e18)) / (exchangeRate());

    _accountings.totalAssetsDeposited += assets;
    _lenderData[lender].assetsDeposited += assets;

    _mint(lender, shares);

    address borrowerWalletAddr_ = poolControllerDynamic.borrowerWalletAddr();
    _liquidityAsset.safeTransfer(borrowerWalletAddr_, assets);

    emit PoolDeposit(lender, assets, shares, IPoolDynamicDepositType.TransferDeposit, transferTxHash);
  }

  /*//////////////////////////////////////////////////////////////
                            ERC-20 Overrides
    //////////////////////////////////////////////////////////////*/

  function requestRedeemViaTransfer(
    address lender,
    uint256 shares
  ) internal onlyNotPaused atState(IPoolLifeCycleStateDynamic.Active) returns (uint256 assets) {
    if (!poolAccessControl.isAllowed(lender)) {
      revert TransferDisabled();
    }

    return requestRedeemExecute(lender, shares, true);
  }

  function requestRedeemExecute(
    address lender,
    uint256 shares,
    bool transferRedeem
  ) internal withdrawStateActive returns (uint256 assets) {
    assets = convertToAssets(shares);

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

    _activeWithdraws[uuid] = IPoolWithdrawDynamic({
      uuid: uuid,
      lender: lender,
      assets: assets,
      shares: shares,
      stage: IPoolDynamicWithdrawStage.Requested,
      fundsDestination: lender,
      transferRedeem: transferRedeem
    });
    if (!activeWithdrawKeys.add(uuid)) {
      revert InvalidAccess();
    }
    emit RedeemRequested(lender, assets, shares, uuid);
    return assets;
  }

  /**
   * @dev Disables Perimeter Pool Token transfers.
   */
  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 amount
  ) internal virtual override atState(IPoolLifeCycleStateDynamic.Active) onlyNotPaused {
    super._beforeTokenTransfer(from, to, amount);

    if (
      !poolAccessControl.isAllowed(msg.sender) &&
      msg.sender != admin() &&
      msg.sender != borrowerManagerAddr() &&
      msg.sender != address(poolControllerDynamic)
    ) {
      revert TransferDisabled();
    }

    if (to == address(this)) {
      if (from == address(0)) revert MintingToPool();
      requestRedeemViaTransfer(from, amount);
    } else {
      if (to != address(0) && from != address(0)) {
        if (!poolAccessControl.isAllowed(from) || !poolAccessControl.isAllowed(to)) {
          revert TransferDisabled();
        }
        if (maxRedeemRequest(from) < amount) {
          revert TransferDisabled();
        }
      }
    }
  }

  function poolType() external pure returns (IPoolType) {
    return IPoolType.DynamicPool;
  }

  function getPoolDynamicConfigurationState()
    public
    view
    returns (IPoolConfigurationStateDynamic memory _poolConfigutationState)
  {
    IPoolConfigurableSettingsDynamic memory _settings = poolControllerDynamic.settings();
    return
      IPoolConfigurationStateDynamic({
        poolAddr: address(this),
        name: name(),
        symbol: symbol(),
        poolAccessControl: address(poolAccessControl),
        poolControllerDynamic: address(poolControllerDynamic),
        activatedAt: poolControllerDynamic.activatedAt(),
        // PoolControllerDynamic
        serviceConfiguration: poolControllerDynamic.serviceConfiguration(),
        liquidityAssetAddr: address(_liquidityAsset),
        poolAdmin: poolControllerDynamic.poolAdmin(),
        borrowerManager: _settings.borrowerManager,
        borrowerWalletAddr: _settings.borrowerWalletAddr,
        feeCollectorAddress: _settings.feeCollectorAddress,
        closeOfDepositTime: _settings.closeOfDepositTime,
        closeOfWithdrawTime: _settings.closeOfWithdrawTime,
        transferOutDays: _settings.transferOutDays,
        exchangeRateType: _settings.exchangeRateType
      });
  }
  function getPoolDynamicOverviewState() public view returns (IPoolOverviewStateDynamic memory _poolOverviewState) {
    return
      IPoolOverviewStateDynamic({
        poolAddr: address(this),
        state: uint256(poolControllerDynamic.state()),
        // accountings
        totalAssetsDeposited: _accountings.totalAssetsDeposited,
        totalAssetsWithdrawn: _accountings.totalAssetsWithdrawn,
        exchangeRate: exchangeRate(),
        exchangeRateAtSetDay: _accountings.exchangeRate,
        exchangeRateSetDay: _accountings.exchangeRateSetDay,
        exchangeRateChangeRate: _accountings.exchangeRateChangeRate,
        exchangeRateCompoundingRate: _accountings.exchangeRateCompoundingRate,
        exchangeRateAtMaturity: _accountings.exchangeRateAtMaturity,
        exchangeRateMaturityDay: _accountings.exchangeRateMaturityDay,
        interestRate: _accountings.interestRate,
        indicativeInterestRate: _accountings.indicativeInterestRate,
        collateralRate: _accountings.collateralRate,
        activeWithdraws: getActiveWithdraws(),
        totalShares: totalSupply(),
        totalAssets: totalAvailableAssets()
      });
  }

  function getPoolDynamicAccountState(
    address lender
  ) public view returns (IPoolAccountStateDynamic memory _poolAccountState) {
    return
      IPoolAccountStateDynamic({
        poolAddr: address(this),
        accountAddr: lender,
        liquidityAssetAddr: address(_liquidityAsset),
        tokenBalance: balanceOf(lender),
        assetBalance: assetBalanceOf(lender),
        maxWithdrawRequest: maxWithdrawRequest(lender),
        maxRedeemRequest: maxRedeemRequest(lender),
        requestedSharesOf: _lenderData[lender].requestedShares,
        requestedAssetsOf: _lenderData[lender].requestedAssets,
        acceptedShares: _lenderData[lender].acceptedShares,
        acceptedAssets: _lenderData[lender].acceptedAssets,
        assetsDeposited: _lenderData[lender].assetsDeposited,
        assetsWithdrawn: _lenderData[lender].assetsWithdrawn
      });
  }
}
