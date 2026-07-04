// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/IReserveAdapter.sol";
import "../interfaces/IChainlinkEthAdapter.sol";
import "../interfaces/IPriceFeedAggregator.sol";
import "../library/ExternalContractAddresses.sol";
import "../library/UniswapV2SwapLibrary.sol";
import "../library/UniswapV3SwapLibrary.sol";
import "../library/CurveSwapLibrary.sol";

abstract contract RebasingAdapter is IReserveAdapter, Ownable {
  using SafeERC20 for IERC20;

  IPriceFeedAggregator public immutable priceFeedAggregator;
  address public immutable reserveHolder;
  address public immutable asset;

  Pool public poolType;
  uint256 public totalDeposited;

  modifier onlyReserveHolder() {
    if (msg.sender != reserveHolder) {
      revert NotReserveHolder();
    }
    _;
  }

  constructor(address _reserveHolder, address _priceFeedAggregator, address _asset) Ownable() {
    reserveHolder = _reserveHolder;
    priceFeedAggregator = IPriceFeedAggregator(_priceFeedAggregator);
    asset = _asset;
  }

  /// @inheritdoc IReserveAdapter
  function getReserveValue() external view returns (uint256) {
    uint256 ethPrice = priceFeedAggregator.peek(ExternalContractAddresses.WETH);
    uint256 totalDepositedValue = Math.mulDiv(totalDeposited, ethPrice, 1e18);
    return totalDepositedValue;
  }

  /// @inheritdoc IReserveAdapter
  function setPoolType(Pool _poolType) external onlyOwner {
    poolType = _poolType;
    emit SetPoolType(_poolType);
  }

  /// @inheritdoc IReserveAdapter
  function rescueReserves() external onlyOwner {
    IERC20(asset).safeTransfer(msg.sender, IERC20(asset).balanceOf(address(this)));
    emit RescueReserves();
  }

  /// @inheritdoc IReserveAdapter
  function swapExactAmountIn(
    address assetIn,
    uint256 amountIn,
    uint256 minAmountOut
  ) external onlyReserveHolder returns (uint256) {
    uint256 amountOut;
    if (poolType == Pool.UNISWAP_V2) {
      amountOut = UniswapV2SwapLibrary.swapExactAmountIn(
        assetIn,
        ExternalContractAddresses.WETH,
        amountIn,
        minAmountOut,
        reserveHolder
      );
    } else if (poolType == Pool.UNISWAP_V3) {
      amountOut = UniswapV3SwapLibrary.swapExactAmountIn(
        assetIn,
        ExternalContractAddresses.WETH,
        amountIn,
        minAmountOut,
        reserveHolder
      );
    } else if (poolType == Pool.CURVE) {
      amountOut = CurveSwapLibrary.swapExactAmountForEth(assetIn, amountIn, minAmountOut, reserveHolder);
    }

    return amountOut;
  }

  /// @inheritdoc IReserveAdapter
  function swapExactAmountOut(
    address assetIn,
    uint256 amountOut,
    uint256 maxAmountIn
  ) external onlyReserveHolder returns (uint256) {
    IERC20(assetIn).safeTransferFrom(address(reserveHolder), address(this), maxAmountIn);

    uint256 amountIn;
    if (poolType == Pool.UNISWAP_V2) {
      amountIn = UniswapV2SwapLibrary.swapExactAmountOut(
        assetIn,
        ExternalContractAddresses.WETH,
        amountOut,
        maxAmountIn,
        address(this)
      );
    } else if (poolType == Pool.UNISWAP_V3) {
      amountIn = UniswapV3SwapLibrary.swapExactAmountOut(
        assetIn,
        ExternalContractAddresses.WETH,
        amountOut,
        maxAmountIn,
        address(this)
      );
    }

    IERC20(ExternalContractAddresses.WETH).safeTransfer(reserveHolder, maxAmountIn - amountIn);

    return amountIn;
  }
}
