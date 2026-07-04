// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IERC20.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IWETH.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";

import "../library/SafeToken.sol";
import "../library/Whitelist.sol";

import "../interfaces/ICore.sol";
import "../interfaces/ILToken.sol";
import "../interfaces/IPriceCalculator.sol";
import "../interfaces/IFlashLoanReceiver.sol";
import "../interfaces/IPool.sol";

contract Liquidation is IFlashLoanReceiver, Ownable, Whitelist, ReentrancyGuard {
  using SafeMath for uint256;
  using SafeToken for address;

  /* ========== CONSTANTS ============= */

  address private constant ETH = address(0);
  address private constant WETH = address(0x82aF49447D8a07e3bd95BD0d56f35241523fBab1);
  address private constant WBTC = address(0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f);
  address private constant DAI = address(0xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1);
  address private constant USDT = address(0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9);
  address private constant USDC = address(0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8);

  IUniswapV2Factory private constant factory = IUniswapV2Factory(0xc35DADB65012eC5796536bD9864eD8773aBc74C4);
  IUniswapV2Router02 private constant router = IUniswapV2Router02(0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506);
  IPool private constant lendPool = IPool(0x794a61358D6845594F94dc1DB02A252b5b4814aD);

  /* ========== STATE VARIABLES ========== */

  mapping(address => mapping(address => bool)) private tokenApproval;
  ICore public core;
  IPriceCalculator public priceCalculator;

  receive() external payable {}

  /* ========== Event ========== */

  event Liquidated(
    address lTokenBorrowed,
    address lTokenCollateral,
    address borrower,
    uint256 amount,
    uint256 rebateAmount
  );

  /* ========== INITIALIZER ========== */

  constructor(address _core, address _priceCalculator) public {
    require(_core != address(0), "Liquidation: core address can't be zero");
    require(_priceCalculator != address(0), "Liquidation: priceCalculator address can't be zero");

    core = ICore(_core);
    priceCalculator = IPriceCalculator(_priceCalculator);

    _approveTokens();
  }

  function setPriceCalculator(address _priceCalculator) external onlyOwner {
    priceCalculator = IPriceCalculator(_priceCalculator);
  }

  /* ========== MUTATIVE FUNCTIONS ========== */

  function liquidate(
    address lTokenBorrowed,
    address lTokenCollateral,
    address borrower,
    uint256 amount
  ) external onlyWhitelisted nonReentrant {
    (uint256 collateralInUSD, , uint256 borrowInUSD) = core.accountLiquidityOf(borrower);
    require(borrowInUSD > collateralInUSD, "Liquidation: Insufficient shortfall");

    _flashLoan(lTokenBorrowed, lTokenCollateral, borrower, amount);

    address underlying = ILToken(lTokenBorrowed).underlying();

    emit Liquidated(
      lTokenBorrowed,
      lTokenCollateral,
      borrower,
      amount,
      underlying == ETH ? address(this).balance : IERC20(ILToken(lTokenBorrowed).underlying()).balanceOf(address(this))
    );

    _sendTokenToRebateDistributor(underlying);
  }

  /// @notice Liquidate borrower's max value debt using max value collateral
  /// @param borrower borrower account address
  function autoLiquidate(address borrower) external onlyWhitelisted nonReentrant {
    (uint256 collateralInUSD, , uint256 borrowInUSD) = core.accountLiquidityOf(borrower);
    require(borrowInUSD > collateralInUSD, "Liquidation: Insufficient shortfall");

    (address lTokenBorrowed, address lTokenCollateral) = _getTargetMarkets(borrower);
    uint256 liquidateAmount = _getMaxLiquidateAmount(lTokenBorrowed, lTokenCollateral, borrower);
    require(liquidateAmount > 0, "Liquidation: liquidate amount error");

    _flashLoan(lTokenBorrowed, lTokenCollateral, borrower, liquidateAmount);

    address underlying = ILToken(lTokenBorrowed).underlying();

    emit Liquidated(
      lTokenBorrowed,
      lTokenCollateral,
      borrower,
      liquidateAmount,
      underlying == ETH ? address(this).balance : IERC20(ILToken(lTokenBorrowed).underlying()).balanceOf(address(this))
    );

    _sendTokenToRebateDistributor(underlying);
  }

  /* ========== PRIVATE FUNCTIONS ========== */

  function _approveTokens() private {
    address[] memory markets = core.allMarkets();

    for (uint256 i = 0; i < markets.length; i++) {
      address token = ILToken(markets[i]).underlying();
      _approveToken(token, address(markets[i]));
      _approveToken(token, address(router));
      _approveToken(token, address(lendPool));
    }
    _approveToken(WETH, address(router));
    _approveToken(WETH, address(lendPool));
  }

  function _approveToken(address token, address spender) private {
    if (token != ETH && !tokenApproval[token][spender]) {
      token.safeApprove(spender, uint256(-1));
      tokenApproval[token][spender] = true;
    }
  }

  function _flashLoan(address lTokenBorrowed, address lTokenCollateral, address borrower, uint256 amount) private {
    address[] memory assets = new address[](1);
    uint256[] memory amounts = new uint256[](1);
    uint256[] memory modes = new uint256[](1);
    bytes memory params = abi.encode(lTokenBorrowed, lTokenCollateral, borrower, amount);

    address underlying = ILToken(lTokenBorrowed).underlying();

    assets[0] = underlying == ETH ? WETH : underlying;
    amounts[0] = amount;
    modes[0] = 0;

    lendPool.flashLoan(address(this), assets, amounts, modes, address(this), params, 0);
  }

  function executeOperation(
    address[] calldata assets,
    uint256[] calldata amounts,
    uint256[] calldata premiums,
    address initiator,
    bytes calldata params
  ) external override returns (bool) {
    require(msg.sender == address(lendPool), "Liquidation: Invalid sender");
    require(initiator == address(this), "Liquidation Invalid initiator");
    require(assets.length == 1, "Liquidation: Invalid assets");
    require(amounts.length == 1, "Liquidation: Invalid amounts");
    require(premiums.length == 1, "Liquidation: Invalid premiums");
    (address lTokenBorrowed, address lTokenCollateral, address borrower, uint256 liquidateAmount) = abi.decode(
      params,
      (address, address, address, uint256)
    );
    uint256 repayAmount = amounts[0].add(premiums[0]);

    if (assets[0] == WETH) {
      IWETH(WETH).withdraw(amounts[0]);
    }

    _liquidate(lTokenBorrowed, lTokenCollateral, borrower, liquidateAmount);

    if (ILToken(lTokenCollateral).underlying() == ETH) {
      IWETH(WETH).deposit{value: address(this).balance}();
    }

    if (lTokenCollateral != lTokenBorrowed) {
      _swapForRepay(lTokenCollateral, lTokenBorrowed, repayAmount);
    }

    return true;
  }

  function _liquidate(address lTokenBorrowed, address lTokenCollateral, address borrower, uint256 amount) private {
    if (ILToken(lTokenBorrowed).underlying() == ETH) {
      core.liquidateBorrow{value: amount}(lTokenBorrowed, lTokenCollateral, borrower, 0);
    } else {
      core.liquidateBorrow(lTokenBorrowed, lTokenCollateral, borrower, amount);
    }

    uint256 lTokenCollateralBalance = ILToken(lTokenCollateral).balanceOf(address(this));
    _redeemToken(lTokenCollateral, lTokenCollateralBalance);
  }

  function _getTargetMarkets(address account) private view returns (address lTokenBorrowed, address lTokenCollateral) {
    uint256 maxSupplied;
    uint256 maxBorrowed;
    address[] memory markets = core.marketListOf(account);
    uint256[] memory prices = priceCalculator.getUnderlyingPrices(markets);

    for (uint256 i = 0; i < markets.length; i++) {
      uint256 borrowAmount = ILToken(markets[i]).borrowBalanceOf(account);
      uint256 supplyAmount = ILToken(markets[i]).underlyingBalanceOf(account);

      uint256 borrowValue = prices[i].mul(borrowAmount).div(10 ** _getDecimals(markets[i]));
      uint256 supplyValue = prices[i].mul(supplyAmount).div(10 ** _getDecimals(markets[i]));

      if (borrowValue > 0 && borrowValue > maxBorrowed) {
        maxBorrowed = borrowValue;
        lTokenBorrowed = markets[i];
      }

      uint256 collateralFactor = core.marketInfoOf(markets[i]).collateralFactor;
      if (collateralFactor > 0 && supplyValue > 0 && supplyValue > maxSupplied) {
        maxSupplied = supplyValue;
        lTokenCollateral = markets[i];
      }
    }
  }

  function _getMaxLiquidateAmount(
    address lTokenBorrowed,
    address lTokenCollateral,
    address borrower
  ) private view returns (uint256 liquidateAmount) {
    uint256 borrowPrice = priceCalculator.getUnderlyingPrice(lTokenBorrowed);
    uint256 supplyPrice = priceCalculator.getUnderlyingPrice(lTokenCollateral);
    require(supplyPrice != 0 && borrowPrice != 0, "Liquidation: price error");

    uint256 borrowAmount = ILToken(lTokenBorrowed).borrowBalanceOf(borrower);
    uint256 supplyAmount = ILToken(lTokenCollateral).underlyingBalanceOf(borrower);

    uint256 borrowValue = borrowPrice.mul(borrowAmount).div(10 ** _getDecimals(lTokenBorrowed));
    uint256 supplyValue = supplyPrice.mul(supplyAmount).div(10 ** _getDecimals(lTokenCollateral));

    uint256 liquidationIncentive = core.liquidationIncentive();
    uint256 maxCloseValue = borrowValue.mul(core.closeFactor()).div(1e18);
    uint256 maxCloseValueWithIncentive = maxCloseValue.mul(liquidationIncentive).div(1e18);

    liquidateAmount = maxCloseValueWithIncentive < supplyValue
      ? maxCloseValue.mul(1e18).div(borrowPrice).div(10 ** (18 - _getDecimals(lTokenBorrowed)))
      : supplyValue.mul(1e36).div(liquidationIncentive).div(borrowPrice).div(10 ** (18 - _getDecimals(lTokenBorrowed)));
  }

  function _redeemToken(address lToken, uint256 lAmount) private {
    core.redeemToken(lToken, lAmount);
  }

  function _sendTokenToRebateDistributor(address token) private {
    address rebateDistributor = core.rebateDistributor();
    uint256 balance = token == ETH ? address(this).balance : IERC20(token).balanceOf(address(this));

    if (balance > 0 && token == ETH) {
      SafeToken.safeTransferETH(rebateDistributor, balance);
    } else if (balance > 0) {
      token.safeTransfer(rebateDistributor, balance);
    }
  }

  function _swapForRepay(address lTokenCollateral, address lTokenBorrowed, uint256 minReceiveAmount) private {
    address collateralToken = ILToken(lTokenCollateral).underlying();
    if (collateralToken == ETH) {
      collateralToken = WETH;
    }

    uint256 collateralTokenAmount = IERC20(collateralToken).balanceOf(address(this));
    require(collateralTokenAmount > 0, "Liquidation: Insufficent collateral");

    address borrowToken = ILToken(lTokenBorrowed).underlying();
    _swapToken(collateralToken, collateralTokenAmount, borrowToken, minReceiveAmount);
  }

  function _swapToken(address token, uint256 amount, address receiveToken, uint256 minReceiveAmount) private {
    address[] memory path = _getSwapPath(token == ETH ? WETH : token, receiveToken == ETH ? WETH : receiveToken);
    router.swapExactTokensForTokens(amount, minReceiveAmount, path, address(this), block.timestamp);
  }

  function _getSwapPath(address token1, address token2) private pure returns (address[] memory) {
    if (token1 == WETH || token2 == WETH) {
      address[] memory path = new address[](2);
      path[0] = token1;
      path[1] = token2;
      return path;
    } else {
      address[] memory path = new address[](3);
      path[0] = token1;
      path[1] = WETH;
      path[2] = token2;
      return path;
    }
  }

  function _getDecimals(address lToken) private view returns (uint256 decimals) {
    address underlying = ILToken(lToken).underlying();
    if (underlying == address(0)) {
      decimals = 18;
    } else {
      decimals = IERC20(underlying).decimals();
    }
  }
}
