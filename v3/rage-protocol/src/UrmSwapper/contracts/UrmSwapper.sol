// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IWETH} from "./IWETH.sol";
import {IRageBuyingProtocol} from "./IRageBuyingProtocol.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {IUrmOracle} from "./IUrmOracle.sol";

contract UrmSwapper is ReentrancyGuard {
  // constant
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IWETH private constant WETH = IWETH(0x4200000000000000000000000000000000000006);
  IERC20 private constant HESTIA = IERC20(0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8);
  IERC20 private constant CIRCLE = IERC20(0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402);
  IUniswapV3Pool private constant HESTIA_USDC_POOL = IUniswapV3Pool(0x1B39fC4C93EfbE733B8D2770bcfaa46885d5343a);
  IUniswapV3Pool private constant CIRCLE_WETH_POOL = IUniswapV3Pool(0xDA679706FF21114AC9faC5198BfF24543F357a16);
  IERC20 private constant RAGE = IERC20(0xc0df50143EA93AeC63e38A6ED4E92B378079eA15);
  IUniswapV3Pool private constant RAGE_USDC_POOL = IUniswapV3Pool(0xd474B32a5a2BF93453996287D361a00f661E04FF);
  IRageBuyingProtocol private constant RBP = IRageBuyingProtocol(0xff70Cd1E1931372F869c936582a7F42e49B6DA4c);
  IRageChaosEngine private constant RCE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);
  uint160 private constant MIN_SQRT_RATIO = 4295128739;
  uint160 private constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;
  uint160 private constant MAX_SLIPPAGE = 2500;
  uint256 private constant BPS = 10000;

  // immutable
  IERC20 private immutable URM;
  IUniswapV3Pool private immutable URM_USDC_POOL;
  IUrmOracle private immutable URM_ORACLE;

  // state
  IUniswapV3Pool private USDC_WETH_POOL = IUniswapV3Pool(0x6c561B446416E1A00E8E93E221854d6eA4171372);
  address private pendingUsdcWethPool;
  address private pendingUsdcWethPoolProposer;

  // events
  event UsdcWethPoolSet(address pool);

  // constructor
  constructor(address urm, address pool, address urmOracle) {
    URM = IERC20(urm);
    URM_USDC_POOL = IUniswapV3Pool(pool);
    URM_ORACLE = IUrmOracle(urmOracle);
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

  // getUsdcWethPool
  function getUsdcWethPool() external view returns (address) {
    return address(USDC_WETH_POOL);
  }

  // setUsdcWethPool
  // proposes or confirms a new USDC/WETH pool; requires both RCE owners to submit the same address
  function setUsdcWethPool(address poolAddress) external nonReentrant {
    (address owner1, address owner2) = getOwners();
    require(msg.sender == owner1 || msg.sender == owner2, "auth");
    require(poolAddress != address(0), "addr");

    IUniswapV3Pool newPool = IUniswapV3Pool(poolAddress);
    address token0 = newPool.token0();
    address token1 = newPool.token1();
    require(
      (token0 == address(USDC) && token1 == address(WETH)) ||
      (token0 == address(WETH) && token1 == address(USDC)),
      "conf"
    );

    bool matches = pendingUsdcWethPool == poolAddress
      && pendingUsdcWethPoolProposer != address(0)
      && pendingUsdcWethPoolProposer != msg.sender;

    if (matches) {
      USDC_WETH_POOL = newPool;
      pendingUsdcWethPool = address(0);
      pendingUsdcWethPoolProposer = address(0);
      emit UsdcWethPoolSet(poolAddress);
    } else {
      pendingUsdcWethPool = poolAddress;
      pendingUsdcWethPoolProposer = msg.sender;
    }
  }

  // swapUsdcToUrm
  // USDC -> URM
  function swapUsdcToUrm(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    return performSwap(USDC, URM, amount, URM_USDC_POOL, slippage, deadline);
  }

  // swapEthToUrm
  // ETH -> WETH -> USDC -> URM
  function swapEthToUrm(uint256 slippage, uint256 deadline) external payable nonReentrant returns (uint256) {
    require(msg.value > 0, "amount");

    WETH.deposit{value: msg.value}();

    uint256 usdcReceived = executeSwap(USDC_WETH_POOL, address(WETH), address(USDC), msg.value, 0, deadline);
    uint256 urmReceived = executeSwap(URM_USDC_POOL, address(USDC), address(URM), usdcReceived, slippage, deadline);

    require(URM.transfer(msg.sender, urmReceived), "trans");
    return urmReceived;
  }

  // swapHestiaToUrm
  // HESTIA -> USDC -> URM
  function swapHestiaToUrm(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    require(HESTIA.transferFrom(msg.sender, address(this), amount), "trans");

    uint256 usdcReceived = executeSwap(HESTIA_USDC_POOL, address(HESTIA), address(USDC), amount, slippage, deadline);
    uint256 urmReceived = executeSwap(URM_USDC_POOL, address(USDC), address(URM), usdcReceived, slippage, deadline);

    require(URM.transfer(msg.sender, urmReceived), "trans");
    return urmReceived;
  }

  // swapCircleToUrm
  // CIRCLE -> WETH -> USDC -> URM
  function swapCircleToUrm(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    require(CIRCLE.transferFrom(msg.sender, address(this), amount), "trans");

    uint256 wethReceived = executeSwap(CIRCLE_WETH_POOL, address(CIRCLE), address(WETH), amount, slippage, deadline);
    uint256 usdcReceived = executeSwap(USDC_WETH_POOL, address(WETH), address(USDC), wethReceived, 0, deadline);
    uint256 urmReceived = executeSwap(URM_USDC_POOL, address(USDC), address(URM), usdcReceived, slippage, deadline);

    require(URM.transfer(msg.sender, urmReceived), "trans");
    return urmReceived;
  }

  // swapRageToUrm
  // RAGE -> USDC -> URM
  function swapRageToUrm(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    require(RAGE.transferFrom(msg.sender, address(this), amount), "trans");

    uint256 usdcReceived = executeSwap(RAGE_USDC_POOL, address(RAGE), address(USDC), amount, slippage, deadline);
    uint256 urmReceived = executeSwap(URM_USDC_POOL, address(USDC), address(URM), usdcReceived, slippage, deadline);

    require(URM.transfer(msg.sender, urmReceived), "trans");
    return urmReceived;
  }

  // swapUsdcToRage
  // USDC -> RAGE
  function swapUsdcToRage(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    return performSwap(USDC, RAGE, amount, RAGE_USDC_POOL, slippage, deadline);
  }

  // swapUsdcToUnderlyingAssets
  // USDC -> Hestia/Circle (split per RBP invest percents); sends tokens to caller
  function swapUsdcToUnderlyingAssets(uint256 usdcIn, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256 hestiaOut, uint256 circleOut) {
    require(USDC.transferFrom(msg.sender, address(this), usdcIn), "trans");

    (, uint256 percentCircle) = RBP.getInvestPercents();

    uint256 usdcForCircle = (usdcIn * percentCircle) / 100;
    uint256 usdcForHestia = usdcIn - usdcForCircle;

    if (usdcForHestia > 0) {
      hestiaOut = executeSwap(HESTIA_USDC_POOL, address(USDC), address(HESTIA), usdcForHestia, slippage, deadline);
    }
    if (usdcForCircle > 0) {
      uint256 wethReceived = executeSwap(USDC_WETH_POOL, address(USDC), address(WETH), usdcForCircle, 0, deadline);
      circleOut = executeSwap(CIRCLE_WETH_POOL, address(WETH), address(CIRCLE), wethReceived, slippage, deadline);
    }

    if (hestiaOut > 0) require(HESTIA.transfer(msg.sender, hestiaOut), "trans");
    if (circleOut > 0) require(CIRCLE.transfer(msg.sender, circleOut), "trans");
  }

  // swapUnderlyingAssetsToUrm
  // Hestia/Circle -> USDC -> URM, proportional to their USD value at oracle price
  function swapUnderlyingAssetsToUrm(
    uint256 hestiaAvailable,
    uint256 circleAvailable,
    uint256 defenseSize,
    uint256 slippage,
    uint32 twap,
    uint256 deadline
  ) external nonReentrant returns (uint256 hestiaSold, uint256 circleSold, uint256 urmOut) {
    uint256 hestiaUsdValue = hestiaAvailable > 0 ? URM_ORACLE.getHestiaTwapUsdcPrice(hestiaAvailable, twap) : 0;
    uint256 circleUsdValue = circleAvailable > 0 ? URM_ORACLE.getCircleTwapUsdcPrice(circleAvailable, twap) : 0;
    uint256 totalUsdValue = hestiaUsdValue + circleUsdValue;
    require(totalUsdValue >= defenseSize, "insufficient");

    uint256 usdcFromHestia = (hestiaUsdValue * defenseSize) / totalUsdValue;
    uint256 usdcFromCircle = defenseSize - usdcFromHestia;

    hestiaSold = usdcFromHestia > 0 ? (hestiaAvailable * usdcFromHestia) / hestiaUsdValue : 0;
    circleSold = usdcFromCircle > 0 ? (circleAvailable * usdcFromCircle) / circleUsdValue : 0;

    if (hestiaSold > 0) require(HESTIA.transferFrom(msg.sender, address(this), hestiaSold), "trans");
    if (circleSold > 0) require(CIRCLE.transferFrom(msg.sender, address(this), circleSold), "trans");

    uint256 usdcReceived;
    if (hestiaSold > 0) {
      usdcReceived += executeSwap(HESTIA_USDC_POOL, address(HESTIA), address(USDC), hestiaSold, slippage, deadline);
    }
    if (circleSold > 0) {
      uint256 wethReceived = executeSwap(CIRCLE_WETH_POOL, address(CIRCLE), address(WETH), circleSold, slippage, deadline);
      usdcReceived += executeSwap(USDC_WETH_POOL, address(WETH), address(USDC), wethReceived, 0, deadline);
    }

    urmOut = executeSwap(URM_USDC_POOL, address(USDC), address(URM), usdcReceived, slippage, deadline);
    require(URM.transfer(msg.sender, urmOut), "trans");
  }

  // swapUrmToRage
  // URM -> USDC -> RAGE
  function swapUrmToRage(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    require(URM.transferFrom(msg.sender, address(this), amount), "trans");

    uint256 usdcReceived = executeSwap(URM_USDC_POOL, address(URM), address(USDC), amount, slippage, deadline);
    uint256 rageReceived = executeSwap(RAGE_USDC_POOL, address(USDC), address(RAGE), usdcReceived, slippage, deadline);

    require(RAGE.transfer(msg.sender, rageReceived), "trans");
    return rageReceived;
  }

  // swapUrmToHestia
  // URM -> USDC -> HESTIA
  function swapUrmToHestia(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    require(URM.transferFrom(msg.sender, address(this), amount), "trans");

    uint256 usdcReceived = executeSwap(URM_USDC_POOL, address(URM), address(USDC), amount, slippage, deadline);
    uint256 hestiaReceived = executeSwap(HESTIA_USDC_POOL, address(USDC), address(HESTIA), usdcReceived, slippage, deadline);

    require(HESTIA.transfer(msg.sender, hestiaReceived), "trans");
    return hestiaReceived;
  }

  // swapUrmToCircle
  // URM -> USDC -> WETH -> CIRCLE
  function swapUrmToCircle(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    require(URM.transferFrom(msg.sender, address(this), amount), "trans");

    uint256 usdcReceived = executeSwap(URM_USDC_POOL, address(URM), address(USDC), amount, slippage, deadline);
    uint256 wethReceived = executeSwap(USDC_WETH_POOL, address(USDC), address(WETH), usdcReceived, 0, deadline);
    uint256 circleReceived = executeSwap(CIRCLE_WETH_POOL, address(WETH), address(CIRCLE), wethReceived, slippage, deadline);

    require(CIRCLE.transfer(msg.sender, circleReceived), "trans");
    return circleReceived;
  }

  // swapUrmToUsdc
  // URM -> USDC
  function swapUrmToUsdc(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
    return performSwap(URM, USDC, amount, URM_USDC_POOL, slippage, deadline);
  }

  // performSwap
  function performSwap(IERC20 tokenIn, IERC20 tokenOut, uint256 amountIn, IUniswapV3Pool pool, uint256 slippage, uint256 deadline) internal returns (uint256) {
    require(tokenIn.transferFrom(msg.sender, address(this), amountIn), "trans");

    uint256 amountOut = executeSwap(pool, address(tokenIn), address(tokenOut), amountIn, slippage, deadline);

    require(tokenOut.transfer(msg.sender, amountOut), "trans");
    return amountOut;
  }

  // executeSwap
  function executeSwap(IUniswapV3Pool pool, address tokenIn, address tokenOut, uint256 amountIn, uint256 slippage, uint256 deadline) internal returns (uint256) {
    require(amountIn > 0, "amount");
    require(slippage <= MAX_SLIPPAGE, "slippage");
    require(block.timestamp <= deadline, "dl");

    address token0 = pool.token0();
    bool zeroForOne = tokenIn == token0;
    uint160 sqrtPriceLimitX96 = zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1;

    if (slippage > 0) {
      (uint160 currentSqrtPriceX96,,,,,,) = pool.slot0();
      if (zeroForOne) {
        uint256 adjustedPrice = uint256(currentSqrtPriceX96) * swapSqrt(BPS - slippage);
        sqrtPriceLimitX96 = uint160(adjustedPrice / swapSqrt(BPS));
      } else {
        uint256 adjustedPrice = uint256(currentSqrtPriceX96) * swapSqrt(BPS);
        sqrtPriceLimitX96 = uint160(adjustedPrice / swapSqrt(BPS - slippage));
      }
    }

    uint256 tokenInBalanceBefore = IERC20(tokenIn).balanceOf(address(this));
    uint256 tokenOutBalanceBefore = IERC20(tokenOut).balanceOf(address(this));

    require(tokenInBalanceBefore >= amountIn, "insufficientBalance");

    pool.swap(address(this), zeroForOne, int256(amountIn), sqrtPriceLimitX96, abi.encode(tokenIn, token0));

    uint256 tokenInBalanceAfter = IERC20(tokenIn).balanceOf(address(this));
    uint256 tokenOutBalanceAfter = IERC20(tokenOut).balanceOf(address(this));

    require(tokenInBalanceAfter == tokenInBalanceBefore - amountIn, "slippageHit");

    uint256 amountOut = tokenOutBalanceAfter - tokenOutBalanceBefore;
    require(amountOut > 0, "noOutput");

    return amountOut;
  }

  // uniswapV3SwapCallback
  function uniswapV3SwapCallback(int256 amount0, int256 amount1, bytes calldata data) external {
    require(
      msg.sender == address(USDC_WETH_POOL) ||
      msg.sender == address(HESTIA_USDC_POOL) ||
      msg.sender == address(CIRCLE_WETH_POOL) ||
      msg.sender == address(RAGE_USDC_POOL) ||
      msg.sender == address(URM_USDC_POOL),
      "callback"
    );

    (address tokenIn, address token0) = abi.decode(data, (address, address));

    int256 amountOwed = tokenIn == token0 ? amount0 : amount1;
    require(amountOwed > 0, "swapAmount");

    require(IERC20(tokenIn).transfer(msg.sender, uint256(amountOwed)), "trans");
  }

  // swapSqrt
  function swapSqrt(uint256 x) internal pure returns (uint256) {
    if (x == 0) return 0;

    uint256 z = (x + 1) / 2;
    uint256 y = x;

    while (z < y) {
      y = z;
      z = (x / z + z) / 2;
    }

    return y;
  }

  // getOwners
  function getOwners() internal view returns (address, address) {
    return RCE.getOwners();
  }
}
