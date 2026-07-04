// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "../interfaces/IPriceFeedAggregator.sol";
import "../interfaces/ISTETH.sol";
import "../interfaces/IWETH.sol";
import "../interfaces/ICurvePool.sol";
import "../interfaces/IReserveHolderV2.sol";
import "../interfaces/IChainlinkEthAdapter.sol";
import "../interfaces/IReserveAdapter.sol";
import "../library/ExternalContractAddresses.sol";

/// @title Contract for holding LST reserves
/// @notice This contract holds LST reserves and rebalances them
/// @notice Part of reserves are is WETH so arbitrage can take them and perform aribtrage without swapping LSTs for WETH
/// @dev This contract is upgradeable
contract ReserveHolderV2 is IReserveHolderV2, OwnableUpgradeable {
  using SafeERC20 for ISTETH;
  using SafeERC20 for IWETH;
  using SafeERC20 for IERC20;

  uint256 public constant BASE_PRICE = 1e8;
  uint256 public constant MAX_PERCENTAGE = 100_00;
  IWETH public constant WETH = IWETH(ExternalContractAddresses.WETH);
  ISTETH public constant stETH = ISTETH(ExternalContractAddresses.stETH);
  ICurvePool public constant curvePool = ICurvePool(ExternalContractAddresses.CURVE_ETH_STETH_POOL);

  IPriceFeedAggregator public priceFeedAggregator;
  address public claimer;
  uint256 public totalClaimed;
  uint256 public swapEthTolerance;
  uint256 public ethThreshold;
  uint256 public totalStEthDeposited;
  uint256 public curveStEthSafeGuardPercentage;

  mapping(address account => bool status) public isArbitrager;

  // Upgrade for V2
  uint256 public swapTolerance; // add setter
  address[] public reserveAssets;

  mapping(address => IReserveAdapter) public reserveAdapters;
  mapping(address => uint256) public percentages;
  mapping(address => bool) public isRebalancer;

  modifier onlyArbitrager() {
    if (isArbitrager[msg.sender] != true) {
      revert NotArbitrager(msg.sender);
    }
    _;
  }

  modifier onlyClaimer() {
    if (msg.sender != claimer) {
      revert NotClaimer(msg.sender);
    }
    _;
  }

  modifier onlyRebalancer() {
    if (isRebalancer[msg.sender] != true) {
      revert NotRebalancer(msg.sender);
    }
    _;
  }

  function initialize(
    IPriceFeedAggregator _priceFeedAggregator,
    address _claimer,
    uint256 _ethThreshold,
    uint256 _curveStEthSafeGuardPercentage
  ) external initializer {
    if (_ethThreshold > MAX_PERCENTAGE) {
      revert ThresholdTooHigh(_ethThreshold);
    }
    __Ownable_init();
    claimer = _claimer;
    priceFeedAggregator = _priceFeedAggregator;
    ethThreshold = _ethThreshold;
    curveStEthSafeGuardPercentage = _curveStEthSafeGuardPercentage;
    swapEthTolerance = 0.1 ether;
  }

  /// @inheritdoc IReserveHolderV2
  function setArbitrager(address arbitrager, bool status) external onlyOwner {
    isArbitrager[arbitrager] = status;
    emit SetArbitrager(arbitrager, status);
  }

  /// @inheritdoc IReserveHolderV2
  function setClaimer(address _claimer) external onlyOwner {
    claimer = _claimer;
    emit SetClaimer(_claimer);
  }

  /// @inheritdoc IReserveHolderV2
  function setRebalancer(address rebalancer, bool status) external onlyOwner {
    isRebalancer[rebalancer] = status;
    emit SetRebalancer(rebalancer, status);
  }

  /// @inheritdoc IReserveHolderV2
  function addReserveAsset(address reserveAsset) external onlyOwner {
    reserveAssets.push(reserveAsset);
    emit AddReserveAsset(reserveAsset);
  }

  /// @inheritdoc IReserveHolderV2
  function setReserveAssetAdapter(address reserveAsset, address adapter) external onlyOwner {
    reserveAdapters[reserveAsset] = IReserveAdapter(adapter);
    emit SetReserveAssetAdapter(reserveAsset, adapter);
  }

  /// @inheritdoc IReserveHolderV2
  function setReserveAssetPercentage(address reserveAsset, uint256 percentage) external onlyOwner {
    percentages[reserveAsset] = percentage;
    emit SetReserveAssetPercentage(reserveAsset, percentage);
  }

  /// @inheritdoc IReserveHolderV2
  function getReserveValue() public view returns (uint256) {
    uint256 totalReserveValue;

    for (uint256 i = 0; i < reserveAssets.length; i++) {
      totalReserveValue += reserveAdapters[reserveAssets[i]].getReserveValue();
    }

    return totalReserveValue;
  }

  /// @inheritdoc IReserveHolderV2
  function deposit(address reserveAsset, uint256 amount) external {
    uint256 reserveAssetBalanceBefore = IERC20(reserveAsset).balanceOf(address(this));
    IERC20(reserveAsset).safeTransferFrom(msg.sender, address(this), amount);
    uint256 reserveAssetBalanceAfter = IERC20(reserveAsset).balanceOf(address(this));

    uint256 actualAmount = reserveAssetBalanceAfter - reserveAssetBalanceBefore;
    reserveAdapters[reserveAsset].deposit(actualAmount);

    emit Deposit(msg.sender, reserveAsset, amount);
  }

  /// @inheritdoc IReserveHolderV2
  function rebalance(uint256[] calldata protectionParams) external onlyRebalancer {
    uint256 totalReserveValue = getReserveValue();

    for (uint256 i = 0; i < reserveAssets.length; i++) {
      uint256 protectionParam = protectionParams[i];
      address reserveAsset = reserveAssets[i];
      uint256 reserveAssetPercentage = percentages[reserveAsset];

      uint256 reserveAssetTargetValue = Math.mulDiv(totalReserveValue, reserveAssetPercentage, MAX_PERCENTAGE);
      uint256 reserveAssetValue = reserveAdapters[reserveAsset].getReserveValue();
      uint256 maxReserveAssetValueForSell = Math.mulDiv(
        reserveAssetTargetValue,
        MAX_PERCENTAGE - swapTolerance,
        MAX_PERCENTAGE
      );
      if (reserveAssetValue < maxReserveAssetValueForSell) {
        uint256 reserveAssetValueToSwap = reserveAssetTargetValue - reserveAssetValue;
        uint256 reserveAssetAmountToSwap = Math.mulDiv(
          reserveAssetValueToSwap,
          10 ** IERC20Metadata(reserveAsset).decimals(),
          _peek(reserveAsset)
        );

        reserveAdapters[reserveAsset].swapExactAmountIn(reserveAsset, reserveAssetAmountToSwap, protectionParam);

        continue;
      }
      uint256 minReserveAssetValueForBuy = Math.mulDiv(
        reserveAssetTargetValue,
        MAX_PERCENTAGE + swapTolerance,
        MAX_PERCENTAGE
      );
      if (reserveAssetValue > minReserveAssetValueForBuy) {
        uint256 reserveAssetValueToBuy = reserveAssetValue - reserveAssetTargetValue;
        uint256 reserveAssetAmountToBuy = Math.mulDiv(
          reserveAssetValueToBuy,
          10 ** IERC20Metadata(reserveAsset).decimals(),
          _peek(reserveAsset)
        );

        reserveAdapters[reserveAsset].swapExactAmountOut(reserveAsset, reserveAssetAmountToBuy, protectionParam);
      }
    }

    emit Rebalance();
  }

  /// @inheritdoc IReserveHolderV2
  function redeem(uint256 amount) external onlyArbitrager returns (uint256) {
    WETH.safeTransfer(msg.sender, amount);
    emit Redeem(msg.sender, amount);
    return amount;
  }

  /// @inheritdoc IReserveHolderV2
  function claimRewards(address account) external onlyClaimer {
    for (uint256 i = 0; i < reserveAssets.length; i++) {
      reserveAdapters[reserveAssets[i]].claimRewards(account);
    }

    emit ClaimRewards(account);
  }

  /// @inheritdoc IReserveHolderV2
  function swapReserveForEth(address reserve, uint256 amountIn, uint256 minAmountOut) external onlyArbitrager {
    reserveAdapters[reserve].swapExactAmountIn(reserve, amountIn, minAmountOut);
  }

  function _peek(address asset) private view returns (uint256) {
    uint256 price = priceFeedAggregator.peek(asset);
    return price;
  }
}
