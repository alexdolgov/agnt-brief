// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IPeaPods} from "./IPeaPods.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IWETH} from "./IWETH.sol";

contract RageSwapper is ReentrancyGuard {
  // constant
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IWETH private constant WETH = IWETH(0x4200000000000000000000000000000000000006);
  IERC20 private constant HESTIA = IERC20(0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8);
  IERC20 private constant CIRCLE = IERC20(0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402);
  IUniswapV3Pool private constant USDC_WETH_POOL = IUniswapV3Pool(0xb2cc224c1c9feE385f8ad6a55b4d94E92359DC59);
  IUniswapV3Pool private constant HESTIA_USDC_POOL = IUniswapV3Pool(0x1B39fC4C93EfbE733B8D2770bcfaa46885d5343a);
  IUniswapV3Pool private constant CIRCLE_WETH_POOL = IUniswapV3Pool(0xDA679706FF21114AC9faC5198BfF24543F357a16);
  IERC20 private constant PHESTIA = IERC20(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  IPeaPods private constant PHESTIA_POD = IPeaPods(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  IERC20 private constant PCIRCLE = IERC20(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  IPeaPods private constant PCIRCLE_POD = IPeaPods(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  uint256 private constant PODS_BOND_SLIPPAGE = 50; // 2%
  uint256 private constant PODS_DEBOND_SLIPPAGE = 50; // 2%
  uint160 private constant MIN_SQRT_RATIO = 4295128739;
  uint160 private constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;
  uint256 private constant BPS = 10000;
  address private constant MULTISIG = 0x507fbdE39ba40DA4Fc79426AD5E3C64944fE43d4;

  // immutable
  address public immutable owner;
  IERC20 private immutable RAGE;
  IUniswapV3Pool private immutable RAGE_USDC_POOL;

  // constructor
  constructor(address rage, address rageUsdcPool) {
    owner = msg.sender;
    RAGE = IERC20(rage);
    RAGE_USDC_POOL = IUniswapV3Pool(rageUsdcPool);

    require(HESTIA.approve(address(PHESTIA_POD), type(uint256).max),'appr');
    require(PHESTIA.approve(address(PHESTIA_POD), type(uint256).max),'appr');
    require(CIRCLE.approve(address(PCIRCLE_POD), type(uint256).max),'appr');
    require(PCIRCLE.approve(address(PCIRCLE_POD), type(uint256).max),'appr');
  }

  // balance functions
  function balanceUsdc() internal view returns (uint256) {
    return USDC.balanceOf(address(this));
  }

  function balanceWeth() internal view returns (uint256) {
    return WETH.balanceOf(address(this));
  }

  function balanceHestia() internal view returns (uint256) {
    return HESTIA.balanceOf(address(this));
  }

  function balanceCircle() internal view returns (uint256) {
    return CIRCLE.balanceOf(address(this));
  }

  function balanceRage() internal view returns (uint256) {
    return RAGE.balanceOf(address(this));
  }

  function balancePHestia() internal view returns (uint256) {
    return PHESTIA.balanceOf(address(this));
  }

  function balancePCircle() internal view returns (uint256) {
    return PCIRCLE.balanceOf(address(this));
  }

  // withdrawEth
  function withdrawEth() external {
    require(msg.sender == owner, "deny");

    uint256 balance = address(this).balance;
    require(balance > 0, "bal");
    (bool success, ) = payable(MULTISIG).call{value: balance}("");
    require(success, "trans");
  }

  // withdrawToken
  function withdrawToken(address tokenAdr) external {
    require(msg.sender == owner, "deny");
    require(tokenAdr != address(0), "invalid");
    
    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, 'bal');
    require(token.transfer(MULTISIG, balance), 'trans');
  }

  // swapEthForUsdc
  function swapEthForUsdc(uint256 deadline) external nonReentrant payable returns (uint256) {
    require(msg.value > 0, 'amount');
    
    WETH.deposit{value: msg.value}();
    
    uint256 usdcReceived = executeSwap(USDC_WETH_POOL, address(WETH), address(USDC), msg.value, 0, deadline);

    require(USDC.transfer(msg.sender, usdcReceived), "trans");
    return usdcReceived;
  }

  // swapHestiaForUsdc
  function swapHestiaForUsdc(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
      return performSwap(HESTIA, USDC, amount, HESTIA_USDC_POOL, slippage, deadline);
  }

  // swapUsdcForHestia
  function swapUsdcForHestia(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
      return performSwap(USDC, HESTIA, amount, HESTIA_USDC_POOL, slippage, deadline);
  }

  // swapRageForUsdc
  function swapRageForUsdc(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
      return performSwap(RAGE, USDC, amount, RAGE_USDC_POOL, slippage, deadline);
  }

  // swapUsdcForRage
  function swapUsdcForRage(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
      return performSwap(USDC, RAGE, amount, RAGE_USDC_POOL, slippage, deadline);
  }

  // convertHestiaToPHestia
  function convertHestiaToPHestia(uint256 amount, uint256 deadline) external nonReentrant returns (uint256) {
      return performBond(HESTIA, PHESTIA, PHESTIA_POD, amount, deadline);
  }

  // convertPHestiaToHestia
  function convertPHestiaToHestia(uint256 amount, uint256 deadline) external nonReentrant returns (uint256) {
      return performDebond(PHESTIA, HESTIA, PHESTIA_POD, amount, deadline);
  }

  // convertCircleToPCircle
  function convertCircleToPCircle(uint256 amount, uint256 deadline) external nonReentrant returns (uint256) {
      return performBond(CIRCLE, PCIRCLE, PCIRCLE_POD, amount, deadline);
  }

  // convertPCircleToCircle
  function convertPCircleToCircle(uint256 amount, uint256 deadline) external nonReentrant returns (uint256) {
      return performDebond(PCIRCLE, CIRCLE, PCIRCLE_POD, amount, deadline);
  }

  // swapCircleForUsdc
  function swapCircleForUsdc(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
      require(amount > 0, "amount");
      require(CIRCLE.transferFrom(msg.sender, address(this), amount), "trans");
      
      uint256 usdcReceived = processCircleToUsdc(amount, slippage, deadline);
      
      require(USDC.transfer(msg.sender, usdcReceived), "trans");
      return usdcReceived;
  }

  // swapUsdcForCircle
  function swapUsdcForCircle(uint256 amount, uint256 slippage, uint256 deadline) external nonReentrant returns (uint256) {
      require(amount > 0, "amount");
      require(USDC.transferFrom(msg.sender, address(this), amount), "trans");
      
      uint256 circleReceived = processUsdcToCircle(amount, slippage, deadline);
      
      require(CIRCLE.transfer(msg.sender, circleReceived), "trans");
      return circleReceived;
  }

  // swapRageForUnderlying
  function swapRageForUnderlying(
      uint256 amount, 
      uint256 percentHestia, 
      uint256 percentCircle,
      uint256 slippage, 
      uint256 deadline
  ) external nonReentrant returns (uint256 pHestiaOut, uint256 pCircleOut) {
      require(amount > 0, "amount");
      require(percentHestia + percentCircle == 100, "percent");
      
      // get initial balances
      uint256 rageBefore = balanceRage();
      
      // transfer rage from caller
      require(RAGE.transferFrom(msg.sender, address(this), amount), "trans");
      require(balanceRage() == rageBefore + amount, "balance");
      
      // swap rage to usdc
      uint256 usdcReceived = executeSwap(RAGE_USDC_POOL, address(RAGE), address(USDC), amount, slippage, deadline);
      
      // calculate allocation
      uint256 usdcForCircle = (usdcReceived * percentCircle) / 100;
      uint256 usdcForHestia = usdcReceived - usdcForCircle;
      
      // swap usdc to assets
      uint256 hestiaReceived = 0;
      if (usdcForHestia > 0) {
          hestiaReceived = executeSwap(HESTIA_USDC_POOL, address(USDC), address(HESTIA), usdcForHestia, slippage, deadline);
      }
      
      uint256 circleReceived = 0;
      if (usdcForCircle > 0) {
          circleReceived = processUsdcToCircle(usdcForCircle, slippage, deadline);
      }
      
      // bond assets to pTokens
      if (hestiaReceived > 0) {
          pHestiaOut = executeBond(HESTIA, PHESTIA, PHESTIA_POD, hestiaReceived, deadline);
      }
      
      if (circleReceived > 0) {
          pCircleOut = executeBond(CIRCLE, PCIRCLE, PCIRCLE_POD, circleReceived, deadline);
      }
      
      // transfer pTokens back to caller
      if (pHestiaOut > 0) require(PHESTIA.transfer(msg.sender, pHestiaOut), "trans");
      if (pCircleOut > 0) require(PCIRCLE.transfer(msg.sender, pCircleOut), "trans");
  }

  // swapUsdcToAssets
  function swapUsdcToAssets(
    uint256 usdcIn, 
    uint256 percentHestia, 
    uint256 percentCircle,
    uint256 hestiaSlippage, 
    uint256 circleSlippage,
    uint256 deadline
) external nonReentrant returns (uint256 hestiaOut, uint256 circleOut) {
    require(percentHestia + percentCircle == 100, "percent");
    require(usdcIn > 0, "amount");
    
    require(USDC.transferFrom(msg.sender, address(this), usdcIn), "trans");
    
    uint256 usdcForCircle = (usdcIn * percentCircle) / 100;
    uint256 usdcForHestia = usdcIn - usdcForCircle;
    
    if (usdcForHestia > 0) {
        hestiaOut = executeSwap(HESTIA_USDC_POOL, address(USDC), address(HESTIA), usdcForHestia, hestiaSlippage, deadline);
    }
    
    if (usdcForCircle > 0) {
        circleOut = processUsdcToCircle(usdcForCircle, circleSlippage, deadline);
    }
    
    if (hestiaOut > 0) {
        require(HESTIA.transfer(msg.sender, hestiaOut), "trans");
    }
    if (circleOut > 0) {
        require(CIRCLE.transfer(msg.sender, circleOut), "trans");
    }
  }

  // swapAssetsToUsdc
  function swapAssetsToUsdc(uint256 hestiaIn, uint256 circleIn, uint256 hestiaSlippage, uint256 circleSlippage, uint256 deadline) external nonReentrant returns (uint256) {
      require(hestiaIn > 0 || circleIn > 0, "amount");
      
      uint256 usdcOut = 0;
      
      if (hestiaIn > 0) {
          require(HESTIA.transferFrom(msg.sender, address(this), hestiaIn), "trans");
          usdcOut += executeSwap(HESTIA_USDC_POOL, address(HESTIA), address(USDC), hestiaIn, hestiaSlippage, deadline);
      }
      
      if (circleIn > 0) {
          require(CIRCLE.transferFrom(msg.sender, address(this), circleIn), "trans");
          usdcOut += processCircleToUsdc(circleIn, circleSlippage, deadline);
      }
      
      require(usdcOut > 0, "amount");
      require(USDC.transfer(msg.sender, usdcOut), "trans");

      return usdcOut;
  }

  // processUsdcToCircle
  function processUsdcToCircle(uint256 usdcAmount, uint256 slippage, uint256 deadline) internal returns (uint256) {
      uint256 wethReceived = executeSwap(USDC_WETH_POOL, address(USDC), address(WETH), usdcAmount, 0, deadline);
      uint256 circleReceived = executeSwap(CIRCLE_WETH_POOL, address(WETH), address(CIRCLE), wethReceived, slippage, deadline);

      return circleReceived;
  }

  // processCircleToUsdc
  function processCircleToUsdc(uint256 circleAmount, uint256 slippage, uint256 deadline) internal returns (uint256) {
      uint256 wethReceived = executeSwap(CIRCLE_WETH_POOL, address(CIRCLE), address(WETH), circleAmount, slippage, deadline);
      uint256 usdcReceived = executeSwap(USDC_WETH_POOL, address(WETH), address(USDC), wethReceived, 0, deadline);

      return usdcReceived;
  }

  // performSwap
  function performSwap(IERC20 tokenIn, IERC20 tokenOut, uint256 amountIn, IUniswapV3Pool pool, uint256 slippage, uint256 deadline) internal returns (uint256) {
    require(tokenIn.transferFrom(msg.sender, address(this), amountIn), "trans");
    
    uint256 amountOut = executeSwap(pool, address(tokenIn), address(tokenOut), amountIn, slippage, deadline);
    
    require(tokenOut.transfer(msg.sender, amountOut), "trans");
    return amountOut;
  }

  // executeSwap
  function executeSwap(IUniswapV3Pool pool, address tokenIn, address tokenOut, uint256 amountIn, uint256 slippage, uint256 deadline) internal returns(uint256) {
    require(amountIn > 0, "amount");
    require(slippage <= 2500, "slippage");
    require(block.timestamp <= deadline, "dl");

    address token0 = pool.token0();
    bool zeroForOne = tokenIn == token0;
    uint160 sqrtPriceLimitX96 = zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1;
    
    if(slippage >= 50) 
    {
      (uint160 currentSqrtPriceX96,,,,,,) = pool.slot0();
      if (zeroForOne) {
          uint256 adjustedPrice = uint256(currentSqrtPriceX96) * swapSqrt(BPS - slippage);
          sqrtPriceLimitX96 = uint160(adjustedPrice / swapSqrt(BPS));
      } else {
          uint256 adjustedPrice = uint256(currentSqrtPriceX96) * swapSqrt(BPS);
          sqrtPriceLimitX96 = uint160(adjustedPrice / swapSqrt(BPS - slippage));
      }
    }

    // get balance before swap
    uint256 tokenInBalanceBefore = IERC20(tokenIn).balanceOf(address(this));
    uint256 tokenOutBalanceBefore = IERC20(tokenOut).balanceOf(address(this));
    
    // check we have enough tokenIn
    require(tokenInBalanceBefore >= amountIn, "insufficientBalance");
    
    // execute swap (callback will transfer tokens during this call)
    pool.swap(address(this), zeroForOne, int256(amountIn), sqrtPriceLimitX96, abi.encode(tokenIn, token0));
    
    // get balances after swap
    uint256 tokenInBalanceAfter = IERC20(tokenIn).balanceOf(address(this));
    uint256 tokenOutBalanceAfter = IERC20(tokenOut).balanceOf(address(this));
    
    // verify all input tokens were consumed (no slippage hit)
    require(tokenInBalanceAfter == tokenInBalanceBefore - amountIn, "slippageHit");
    
    // calculate and return output amount
    uint256 amountOut = tokenOutBalanceAfter - tokenOutBalanceBefore;
    require(amountOut > 0, "noOutput");
    
    return amountOut;
  }

  // uniswapV3SwapCallback
  function uniswapV3SwapCallback(int amount0, int amount1, bytes calldata data) external {
    require(
        msg.sender == address(USDC_WETH_POOL) ||
        msg.sender == address(HESTIA_USDC_POOL) ||
        msg.sender == address(CIRCLE_WETH_POOL) ||
        msg.sender == address(RAGE_USDC_POOL),
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

  // bondAssets
  function bondAssets(uint256 hestiaIn, uint256 circleIn, uint256 deadline) external nonReentrant returns (uint256 pHestiaOut, uint256 pCircleOut) {
    require(hestiaIn > 0 || circleIn > 0, "amount");
    
    if (hestiaIn > 0) {
        require(HESTIA.transferFrom(msg.sender, address(this), hestiaIn), "trans");
        pHestiaOut = executeBond(HESTIA, PHESTIA, PHESTIA_POD, hestiaIn, deadline);
    }
    
    if (circleIn > 0) {
        require(CIRCLE.transferFrom(msg.sender, address(this), circleIn), "trans");
        pCircleOut = executeBond(CIRCLE, PCIRCLE, PCIRCLE_POD, circleIn, deadline);
    }
    
    // Transfer all outputs at once
    if (pHestiaOut > 0) require(PHESTIA.transfer(msg.sender, pHestiaOut), "trans");
    if (pCircleOut > 0) require(PCIRCLE.transfer(msg.sender, pCircleOut), "trans");
  }

  // debondAssets
  function debondAssets(uint256 pHestiaIn, uint256 pCircleIn, uint256 deadline) external nonReentrant returns (uint256 hestiaOut, uint256 circleOut) {
    require(pHestiaIn > 0 || pCircleIn > 0, "amount");
    
    if (pHestiaIn > 0) {
        require(PHESTIA.transferFrom(msg.sender, address(this), pHestiaIn), "trans");
        hestiaOut = executeDebond(HESTIA, PHESTIA_POD, pHestiaIn, deadline);
    }
    
    if (pCircleIn > 0) {
        require(PCIRCLE.transferFrom(msg.sender, address(this), pCircleIn), "trans");
        circleOut = executeDebond(CIRCLE, PCIRCLE_POD, pCircleIn, deadline);
    }
    
    // Transfer all outputs at once
    if (hestiaOut > 0) require(HESTIA.transfer(msg.sender, hestiaOut), "trans");
    if (circleOut > 0) require(CIRCLE.transfer(msg.sender, circleOut), "trans");
  }

  // executeBond
  function executeBond(IERC20 tokenIn, IERC20 tokenOut, IPeaPods pod, uint256 tknIn, uint256 deadline) internal returns (uint256) {
    require(block.timestamp <= deadline, "dl");
    
    // get balances before bond
    uint256 tokenOutBalanceBefore = tokenOut.balanceOf(address(this));
    uint256 tokenInBalanceBefore = tokenIn.balanceOf(address(this));
    
    // verify we have the tokens to bond
    require(tokenInBalanceBefore >= tknIn, "insufficientBalance");
    
    uint256 minAmount = pod.convertToShares(tknIn);
    minAmount = minAmount - (minAmount / PODS_BOND_SLIPPAGE);

    pod.bond(address(tokenIn), tknIn, minAmount);
    
    // get balances after bond
    uint256 tokenOutBalanceAfter = tokenOut.balanceOf(address(this));
    uint256 tokenInBalanceAfter = tokenIn.balanceOf(address(this));
    
    // verify input tokens were consumed
    require(tokenInBalanceAfter == tokenInBalanceBefore - tknIn, "tokenInNotConsumed");
    
    // calculate output amount
    uint256 amountOut = tokenOutBalanceAfter - tokenOutBalanceBefore;
    require(amountOut > 0, "noOutput");

    return amountOut;
  }

  // executeDebond
  function executeDebond(IERC20 tokenOut, IPeaPods pod, uint256 ptknIn, uint256 deadline) internal returns (uint256) {
    require(block.timestamp <= deadline, "dl");
    uint256 balanceBefore = tokenOut.balanceOf(address(this));
    
    // calculate expected amount and minimum acceptable amount
    uint256 expectedAmount = pod.convertToAssets(ptknIn);
    uint256 minAmount = expectedAmount - (expectedAmount / PODS_DEBOND_SLIPPAGE);
    
    address[] memory _tokens = new address[](0);
    uint8[] memory _percentages = new uint8[](0);
    pod.debond(ptknIn, _tokens, _percentages);
    
    uint256 actualAmount = tokenOut.balanceOf(address(this)) - balanceBefore;
    
    // verify we received at least the minimum amount
    require(actualAmount >= minAmount, "debond");
    
    return actualAmount;
  }

  // performBond
  function performBond(IERC20 tokenIn, IERC20 tokenOut, IPeaPods pod, uint256 tknIn, uint256 deadline) internal returns (uint256) {
    require(tokenIn.transferFrom(msg.sender, address(this), tknIn), "trans");
    
    uint256 ptknOut = executeBond(tokenIn, tokenOut, pod, tknIn, deadline);
    
    require(tokenOut.transfer(msg.sender, ptknOut), "trans");
    return ptknOut;
  }

  // performDebond
  function performDebond(IERC20 tokenIn, IERC20 tokenOut, IPeaPods pod, uint256 ptknIn, uint256 deadline) internal returns (uint256) {
    require(tokenIn.transferFrom(msg.sender, address(this), ptknIn), "trans");
    
    uint256 tknOut = executeDebond(tokenOut, pod, ptknIn, deadline);
    
    require(tokenOut.transfer(msg.sender, tknOut), "trans");
    return tknOut;
  }
}
