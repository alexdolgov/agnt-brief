// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IUniswapV3Pool} from "@uniswap/v3-core/interfaces/IUniswapV3Pool.sol";
import {IUniswapV3Factory} from "@uniswap/v3-core/interfaces/IUniswapV3Factory.sol";
import {INonfungiblePositionManager} from "@uniswap/v3-periphery/interfaces/INonfungiblePositionManager.sol";
import {WETH} from "solmate/tokens/WETH.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import {ERC721} from "solmate/tokens/ERC721.sol";
import {Owned} from "solmate/auth/Owned.sol";

import {Circle} from "./Circle.sol";
import {LiquidityLock} from "./LiquidityLock.sol";

/// @dev Create Chaos Transfer Protocol
contract CCTP is Owned {
  INonfungiblePositionManager public immutable uniswapV3PositionManager;
  IUniswapV3Pool public pool;
  Circle public circle;
  LiquidityLock public lock;

  // base
  address public weth = 0x4200000000000000000000000000000000000006;
  // base
  address public positionManager = 0x03a520b32C04BF3bEEf7BEb72E919cf822Ed34f1;
  // base
  address public factoryAddress = 0x33128a8fC17869897dcE68Ed026d694621f6FDfD;

  uint256 public validityChecks = 6;
  uint256 public validityCap = 1 ether;

  uint24 private poolFee = 10_000;
  uint256 private tokenSupply = 1_000_000e18;
  uint256 private benchmarkSupply = tokenSupply / 100;
  uint256 private lastBenchmark;
  address private deployer;
  address private token0;

  /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
  uint160 internal constant MIN_SQRT_RATIO = 4295128739;
  /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
  uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

  constructor() Owned(msg.sender) {
    deployer = msg.sender;
    circle = new Circle(msg.sender, tokenSupply);
    lock = new LiquidityLock(msg.sender);

    ERC20(circle).approve(address(positionManager), type(uint256).max);
    WETH(payable(weth)).approve(address(positionManager), type(uint256).max);

    circle.renounceOwnership();
  }

  receive() external payable {
    WETH(payable(weth)).deposit{value: msg.value}();
  }

  function claimFees() external {
    uint256 wethBalance = WETH(payable(weth)).balanceOf(address(this));
    lock.claimFees();
    uint256 wethBalanceAfter = WETH(payable(weth)).balanceOf(address(this));
    uint256 wethGain = (wethBalanceAfter - wethBalance) / 10;
    // help pay the validity checks gas bill and cause chaos
    if (wethGain > 0) {
      WETH(payable(weth)).transfer(owner, wethGain);
    }
  }

  function setValidityChecks(uint256 _newCheckCount) external onlyOwner {
    validityChecks = _newCheckCount;
  }

  function causeChaos() external {
    if (lock.nftId() == 0) {
      return;
    } else if (address(pool) == address(0)) {
      IUniswapV3Factory factory = IUniswapV3Factory(factoryAddress);
      pool = IUniswapV3Pool(factory.getPool(weth, address(circle), poolFee));
      ERC20(circle).approve(address(pool), type(uint256).max);
      WETH(payable(weth)).approve(address(pool), type(uint256).max);
      require(address(pool) != address(0));
      token0 = pool.token0();
    }

    uint256 circleBalance = circle.balanceOf(address(this));

    if (circleBalance > 0) {
      circle.transfer(address(0), circleBalance);
    }

    uint256 wethBalance = WETH(payable(weth)).balanceOf(address(this));

    address tokenIn;
    address tokenOut;
    uint256 swapBalance;
    for (uint256 i = 0; i < validityChecks; i++) {
      tokenIn = i % 2 == 0 ? weth : address(circle);
      tokenOut = i % 2 == 0 ? address(circle) : weth;
      swapBalance = i % 2 == 0 ? wethBalance : circleBalance;
      if (swapBalance > 0) {
        uint256 toSwap = ((swapBalance * (i + 1)) * 10) / ((i + 2) * 10);
        swap(tokenIn, tokenOut, toSwap);
      }
      if (i % 2 == 0) {
        wethBalance = WETH(payable(weth)).balanceOf(address(this));
      } else {
        circleBalance = circle.balanceOf(address(this));
      }
    }
    circleBalance = circle.balanceOf(address(this));
    swap(address(circle), weth, circleBalance);

    uint256 burnedSupply = circle.balanceOf(address(0));
    uint256 benchmarkLevel = burnedSupply / benchmarkSupply;
    if (benchmarkLevel == 5 && lastBenchmark != 5) {
      validityCap += 2 ether;
    }
    if (benchmarkLevel == 10 && lastBenchmark != 10) {
      validityCap += 2 ether;
    }
    if (benchmarkLevel == 15 && lastBenchmark != 15) {
      validityCap += 2 ether;
    }
    if (benchmarkLevel == 30 && lastBenchmark != 30) {
      validityCap += 2 ether;
    }
    if (benchmarkLevel == 50 && lastBenchmark != 50) {
      validityCap += 2 ether;
    }

    wethBalance = WETH(payable(weth)).balanceOf(address(this));
    if (wethBalance > validityCap) {
      uint256 toClear = wethBalance - validityCap;
      WETH(payable(weth)).transfer(deployer, toClear);
    }

    lastBenchmark = benchmarkLevel;
  }

  function swap(address tokeknIn, address tokenOut, uint256 amount) internal {
    if (amount == 0) {
      return;
    }
    bool zeroForOne = tokeknIn < tokenOut;
    uint160 sqrt = zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1;
    try pool.swap(address(this), zeroForOne, int256(amount), sqrt, zeroForOne ? bytes("1") : bytes("")) {} catch {}
  }

  function uniswapV3SwapCallback(int amount0, int amount1, bytes calldata data) external {
    require(msg.sender == address(pool) && tx.origin != address(this), "not authorized");
    bool zeroForOne = data.length > 0;
    address tokenOut = zeroForOne
      ? token0
      : token0 == weth
        ? address(circle)
        : weth;

    uint amountOut;
    if (zeroForOne) {
      amountOut = uint(amount0);
    } else {
      amountOut = uint(amount1);
    }

    ERC20(tokenOut).transfer(address(pool), amountOut);
  }
}
