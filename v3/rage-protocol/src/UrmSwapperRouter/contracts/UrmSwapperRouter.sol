// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {IV3SwapRouter} from "@uniswap/swap-router-contracts/contracts/interfaces/IV3SwapRouter.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {IUrmSwapper} from "./IUrmSwapper.sol";

contract UrmSwapperRouter is ReentrancyGuard {
  // constant
  IERC20 private constant USDC   = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IERC20 private constant WETH   = IERC20(0x4200000000000000000000000000000000000006);
  IERC20 private constant HESTIA = IERC20(0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8);
  IERC20 private constant CIRCLE = IERC20(0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402);
  IERC20 private constant RAGE   = IERC20(0xc0df50143EA93AeC63e38A6ED4E92B378079eA15);
  IRageChaosEngine private constant RCE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);
  IV3SwapRouter private constant SWAP_ROUTER = IV3SwapRouter(0x2626664c2603336E57B271c5C0b26F421741e481);
  IUniswapV3Pool private constant HESTIA_USDC_POOL = IUniswapV3Pool(0x1B39fC4C93EfbE733B8D2770bcfaa46885d5343a);
  IUniswapV3Pool private constant CIRCLE_WETH_POOL = IUniswapV3Pool(0xDA679706FF21114AC9faC5198BfF24543F357a16);
  IUniswapV3Pool private constant RAGE_USDC_POOL   = IUniswapV3Pool(0xd474B32a5a2BF93453996287D361a00f661E04FF);

  // immutable
  IERC20 private immutable URM;
  IUniswapV3Pool private immutable URM_USDC_POOL;
  IUrmSwapper private immutable URM_SWAPPER;   // for getUsdcWethPool()

  // constructor
  // wires deployment-specific addresses and approves the router to pull each input token
  constructor(address urm, address urmUsdcPool, address urmSwapper) {
    URM = IERC20(urm);
    URM_USDC_POOL = IUniswapV3Pool(urmUsdcPool);
    URM_SWAPPER = IUrmSwapper(urmSwapper);

    USDC.approve(address(SWAP_ROUTER), type(uint256).max);
    RAGE.approve(address(SWAP_ROUTER), type(uint256).max);
    HESTIA.approve(address(SWAP_ROUTER), type(uint256).max);
    CIRCLE.approve(address(SWAP_ROUTER), type(uint256).max);
  }

  // withdrawEth
  function withdrawEth() external nonReentrant {
    require(msg.sender == RCE.getAutomator(), "auth");
    uint256 balance = address(this).balance;
    require(balance > 0, "bal");
    (bool success, ) = payable(RCE.getMultisig()).call{value: balance}("");
    require(success, "trans");
  }

  // withdrawToken
  function withdrawToken(address tokenAdr) external nonReentrant {
    require(msg.sender == RCE.getAutomator(), "auth");
    require(tokenAdr != address(0), "invalid");

    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, "bal");
    require(token.transfer(RCE.getMultisig(), balance), "trans");
  }

  // swapUsdcToExactUrm
  // USDC -> exact URM (single hop)
  function swapUsdcToExactUrm(uint256 urmAmount, uint256 maxUsdc) external nonReentrant returns (uint256 usdcSold, uint256 urmReceived, uint256 usdcRefund) {
    require(USDC.transferFrom(msg.sender, address(this), maxUsdc), "trans");

    usdcSold = SWAP_ROUTER.exactOutputSingle(IV3SwapRouter.ExactOutputSingleParams({
      tokenIn: address(USDC),
      tokenOut: address(URM),
      fee: URM_USDC_POOL.fee(),
      recipient: msg.sender,
      amountOut: urmAmount,
      amountInMaximum: maxUsdc,
      sqrtPriceLimitX96: 0
    }));

    urmReceived = urmAmount;
    usdcRefund  = maxUsdc - usdcSold;
    if (usdcRefund > 0) require(USDC.transfer(msg.sender, usdcRefund), "refund");
  }

  // swapRageToExactUrm
  // RAGE -> USDC -> exact URM; only the required RAGE is consumed, surplus refunded directly
  function swapRageToExactUrm(uint256 urmAmount, uint256 maxRage) external nonReentrant returns (uint256 rageSold, uint256 urmReceived, uint256 rageRefund) {
    require(RAGE.transferFrom(msg.sender, address(this), maxRage), "trans");

    bytes memory path = abi.encodePacked(
      address(URM), URM_USDC_POOL.fee(),
      address(USDC), RAGE_USDC_POOL.fee(),
      address(RAGE)
    );

    rageSold = SWAP_ROUTER.exactOutput(IV3SwapRouter.ExactOutputParams({
      path: path,
      recipient: msg.sender,
      amountOut: urmAmount,
      amountInMaximum: maxRage
    }));

    urmReceived = urmAmount;
    rageRefund  = maxRage - rageSold;
    if (rageRefund > 0) require(RAGE.transfer(msg.sender, rageRefund), "refund");
  }

  // swapHestiaToExactUrm
  // HESTIA -> USDC -> exact URM; only the required HESTIA is consumed, surplus refunded directly
  function swapHestiaToExactUrm(uint256 urmAmount, uint256 maxHestia) external nonReentrant returns (uint256 hestiaSold, uint256 urmReceived, uint256 hestiaRefund) {
    require(HESTIA.transferFrom(msg.sender, address(this), maxHestia), "trans");

    bytes memory path = abi.encodePacked(
      address(URM), URM_USDC_POOL.fee(),
      address(USDC), HESTIA_USDC_POOL.fee(),
      address(HESTIA)
    );

    hestiaSold = SWAP_ROUTER.exactOutput(IV3SwapRouter.ExactOutputParams({
      path: path,
      recipient: msg.sender,
      amountOut: urmAmount,
      amountInMaximum: maxHestia
    }));

    urmReceived  = urmAmount;
    hestiaRefund = maxHestia - hestiaSold;
    if (hestiaRefund > 0) require(HESTIA.transfer(msg.sender, hestiaRefund), "refund");
  }

  // swapCircleToExactUrm
  // CIRCLE -> WETH -> USDC -> exact URM; only the required CIRCLE is consumed, surplus refunded directly
  function swapCircleToExactUrm(uint256 urmAmount, uint256 maxCircle) external nonReentrant returns (uint256 circleSold, uint256 urmReceived, uint256 circleRefund) {
    require(CIRCLE.transferFrom(msg.sender, address(this), maxCircle), "trans");

    uint24 usdcWethFee = IUniswapV3Pool(URM_SWAPPER.getUsdcWethPool()).fee();
    bytes memory path = abi.encodePacked(
      address(URM), URM_USDC_POOL.fee(),
      address(USDC), usdcWethFee,
      address(WETH), CIRCLE_WETH_POOL.fee(),
      address(CIRCLE)
    );

    circleSold = SWAP_ROUTER.exactOutput(IV3SwapRouter.ExactOutputParams({
      path: path,
      recipient: msg.sender,
      amountOut: urmAmount,
      amountInMaximum: maxCircle
    }));

    urmReceived  = urmAmount;
    circleRefund = maxCircle - circleSold;
    if (circleRefund > 0) require(CIRCLE.transfer(msg.sender, circleRefund), "refund");
  }
}
