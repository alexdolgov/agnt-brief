// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {IERC20} from '../../@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {ISynthereumFinder} from '../core/interfaces/IFinder.sol';
import {IStandardERC20} from '../base/interfaces/IStandardERC20.sol';
import {IPoolVault} from '../synthereum-pool/common/interfaces/IPoolVault.sol';
import {IVault} from './interfaces/IVault.sol';
import {SynthereumInterfaces} from '../core/Constants.sol';
import {PreciseUnitMath} from '../base/utils/PreciseUnitMath.sol';
import {SafeERC20} from '../../@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {SynthereumBaseVaultStorage} from './BaseVaultStorage.sol';

contract SynthereumVault is IVault, SynthereumBaseVaultStorage {
  using SafeERC20 for IERC20;
  using PreciseUnitMath for uint256;

  uint256 public immutable TIMELOCK; // timeLock in seconds

  struct DepositCache {
    address sender;
    uint256 netCollateralDeposited;
    uint256 actualCollateralAmount;
    uint256 positionCollBefore;
    uint256 rate;
    uint256 discountedRate;
    uint256 totalSupply;
    uint256 vaultCoverage;
    uint256 scalingValue;
    uint256 maxCollateralAtDiscount;
    uint128 overCollateralFactor;
  }

  struct WithdrawCache {
    address sender;
    uint256 vaultCollateralAmount;
    uint256 totSupply;
    uint256 scalingValue;
    uint256 rate;
    uint256 collateralEquivalent;
  }

  modifier onlyVaultRegistry() {
    address vaultRegistry = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.VaultRegistry
    );
    require(msg.sender == vaultRegistry, 'Sender must be vault registry');
    _;
  }

  constructor(uint256 _timeLock) {
    require(_timeLock > 0, 'No timeLock');
    TIMELOCK = _timeLock;
    version = 2;
    _disableInitializers();
  }

  function initialize(
    string memory _lpTokenName,
    string memory _lpTokenSymbol,
    address _pool,
    uint128 _overCollateralization,
    ISynthereumFinder _finder
  ) external override initializer nonReentrant {
    pool = IPoolVault(_pool);
    priceFeedIdentifier = pool.priceFeedIdentifier();
    collateralAsset = pool.collateralToken();
    overCollateralization = _overCollateralization;
    synthereumFinder = _finder;
    collateralDecimals = IStandardERC20(address(collateralAsset)).decimals();
    version = 2;

    __ReentrancyGuard_init();
    __ERC20_init(_lpTokenName, _lpTokenSymbol);
    __ERC20Permit_init(_lpTokenName);
  }

  function reinitialize() external override reinitializer(2) nonReentrant {
    version = 2;
  }

  function deposit(uint256 _collateralAmount)
    external
    override
    nonReentrant
    returns (uint256 lpTokensOut)
  {
    require(_collateralAmount > 0, 'Zero amount');

    DepositCache memory cache;

    cache.sender = _msgSender();

    collateralAsset.safeTransferFrom(
      cache.sender,
      address(this),
      _collateralAmount
    );
    collateralAsset.safeIncreaseAllowance(address(pool), _collateralAmount);

    cache.totalSupply = totalSupply();
    cache.overCollateralFactor = overCollateralization;

    IPoolVault.LPInfo memory vaultPosition;

    if (isLpActive) {
      vaultPosition = pool.positionLPInfo(address(this));
      (cache.netCollateralDeposited, cache.actualCollateralAmount) = pool
        .addLiquidity(_collateralAmount);
      if (cache.totalSupply == 0) {
        vaultPosition.coverage = PreciseUnitMath.MAX_UINT_256;
      }
    } else {
      cache.netCollateralDeposited = pool.activateLP(
        _collateralAmount,
        cache.overCollateralFactor
      );
      cache.actualCollateralAmount = cache.netCollateralDeposited;
      vaultPosition.coverage = PreciseUnitMath.MAX_UINT_256;
      isLpActive = true;
      emit LPActivated(_collateralAmount, cache.overCollateralFactor);
    }

    cache.scalingValue = scalingFactor();
    cache.vaultCoverage = vaultPosition.coverage;

    cache.positionCollBefore =
      cache.actualCollateralAmount -
      cache.netCollateralDeposited;
    if (
      cache.vaultCoverage >=
      PreciseUnitMath.PRECISE_UNIT + cache.overCollateralFactor
    ) {
      cache.rate = _calculateRate(
        cache.positionCollBefore,
        cache.totalSupply,
        cache.scalingValue
      );
      lpTokensOut = (cache.netCollateralDeposited * cache.scalingValue).div(
        cache.rate
      );
    } else {
      (
        cache.rate,
        cache.discountedRate,
        cache.maxCollateralAtDiscount
      ) = _calculateDiscountedRate(
        cache.vaultCoverage,
        cache.positionCollBefore,
        cache.totalSupply,
        cache.scalingValue,
        cache.overCollateralFactor
      );

      if (cache.netCollateralDeposited <= cache.maxCollateralAtDiscount) {
        lpTokensOut = (cache.netCollateralDeposited * cache.scalingValue).div(
          cache.discountedRate
        );
        cache.rate = 0;
      } else {
        lpTokensOut =
          (cache.maxCollateralAtDiscount * cache.scalingValue).div(
            cache.discountedRate
          ) +
          (
            ((cache.netCollateralDeposited - cache.maxCollateralAtDiscount) *
              cache.scalingValue).div(cache.rate)
          );
      }
    }

    _mint(cache.sender, lpTokensOut);

    emit Deposit(
      cache.sender,
      _collateralAmount,
      lpTokensOut,
      cache.rate,
      cache.discountedRate
    );
  }

  function withdraw(uint256 _lpTokensAmount)
    external
    override
    nonReentrant
    returns (uint256 collateralOut)
  {
    require(_lpTokensAmount > 0, 'Zero amount');

    IPoolVault.LPInfo memory vaultPosition = pool.positionLPInfo(address(this));

    WithdrawCache memory cache;

    cache.vaultCollateralAmount = vaultPosition.actualCollateralAmount;

    cache.totSupply = totalSupply();
    cache.scalingValue = scalingFactor();
    cache.rate = _calculateRate(
      cache.vaultCollateralAmount,
      cache.totSupply,
      cache.scalingValue
    );

    cache.collateralEquivalent = _lpTokensAmount == cache.totSupply
      ? cache.vaultCollateralAmount
      : _lpTokensAmount.mul(cache.rate) / cache.scalingValue;

    cache.sender = _msgSender();
    _burn(cache.sender, _lpTokensAmount);

    (, collateralOut, ) = pool.removeLiquidity(cache.collateralEquivalent);

    collateralAsset.safeTransfer(cache.sender, collateralOut);

    emit Withdrawal(cache.sender, _lpTokensAmount, collateralOut, cache.rate);
  }

  function donate(uint256 _collateralAmount) external override nonReentrant {
    require(_collateralAmount > 0, 'Zero amount');

    address sender = _msgSender();
    collateralAsset.safeTransferFrom(sender, address(this), _collateralAmount);

    collateralAsset.safeIncreaseAllowance(address(pool), _collateralAmount);

    pool.addLiquidity(_collateralAmount);

    emit Donation(sender, _collateralAmount);
  }

  function setReferencePool(address _newPool)
    external
    override
    onlyVaultRegistry
  {
    pool = IPoolVault(_newPool);
  }

  function getRate() external view override returns (uint256 rate) {
    rate = _calculateRate(
      (pool.positionLPInfo(address(this))).actualCollateralAmount,
      totalSupply(),
      scalingFactor()
    );
  }

  function getDiscountedRate()
    external
    view
    override
    returns (
      uint256 rate,
      uint256 discountedRate,
      uint256 maxCollateralDiscounted
    )
  {
    IPoolVault.LPInfo memory vaultPosition = pool.positionLPInfo(address(this));
    uint256 coverage = vaultPosition.coverage;
    uint128 overCollateralFactor = overCollateralization;

    if (coverage >= PreciseUnitMath.PRECISE_UNIT + overCollateralFactor) {
      return (
        _calculateRate(
          vaultPosition.actualCollateralAmount,
          totalSupply(),
          scalingFactor()
        ),
        0,
        0
      );
    }

    (rate, discountedRate, maxCollateralDiscounted) = _calculateDiscountedRate(
      coverage,
      vaultPosition.actualCollateralAmount,
      totalSupply(),
      scalingFactor(),
      overCollateralFactor
    );
  }

  function getVersion() external view override returns (uint256) {
    return version;
  }

  function getPool() external view override returns (address poolAddress) {
    poolAddress = address(pool);
  }

  function getPoolCollateral()
    external
    view
    override
    returns (address collateral)
  {
    collateral = address(collateralAsset);
  }

  function getOvercollateralization()
    external
    view
    override
    returns (uint128 overcollateral)
  {
    overcollateral = overCollateralization;
  }

  function getAccountLockInfo(address _account)
    external
    view
    override
    returns (
      bool isLocked,
      uint256 timeLock,
      uint256 remainingTime
    )
  {
    timeLock = timeLocks[_account];
    isLocked = block.timestamp <= timeLock;
    if (isLocked) {
      remainingTime = timeLock - block.timestamp;
    }
  }

  function _beforeTokenTransfer(
    address _from,
    address _to,
    uint256
  ) internal override {
    if (_from == address(0)) {
      timeLocks[_to] = block.timestamp + TIMELOCK;
    } else {
      require(block.timestamp > timeLocks[_from], 'TimeLocked account');
    }
  }

  function scalingFactor() internal view returns (uint256) {
    return 10**(18 - collateralDecimals);
  }

  function _calculateRate(
    uint256 _positionCollateralAmount,
    uint256 _totalSupply,
    uint256 _scalingValue
  ) internal pure returns (uint256 rate) {
    rate = _totalSupply == 0
      ? PreciseUnitMath.PRECISE_UNIT
      : (_positionCollateralAmount * _scalingValue).div(_totalSupply);
  }

  function _calculateDiscountedRate(
    uint256 _coverage,
    uint256 _actualCollateralAmount,
    uint256 _totalSupply,
    uint256 _scalingValue,
    uint256 _overCollateralFactor
  )
    internal
    pure
    returns (
      uint256 rate,
      uint256 discountedRate,
      uint256 collateralDeficit
    )
  {
    rate = _calculateRate(_actualCollateralAmount, _totalSupply, _scalingValue);

    uint256 collateralExpected = _actualCollateralAmount
      .mul(_overCollateralFactor)
      .div(_coverage - PreciseUnitMath.PRECISE_UNIT);

    collateralDeficit = collateralExpected - _actualCollateralAmount;

    discountedRate = rate - rate.mul(collateralDeficit.div(collateralExpected));
  }
}
