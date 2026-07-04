// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/ICurvePool.sol";
import "../interfaces/IWETH.sol";
import "contracts/library/ExternalContractAddresses.sol";

library CurveSwapLibrary {
  using SafeERC20 for IWETH;

  ICurvePool public constant curvePool = ICurvePool(ExternalContractAddresses.CURVE_ETH_STETH_POOL);
  IWETH public constant WETH = IWETH(ExternalContractAddresses.WETH);

  function swapExactAmountForEth(
    address assetIn,
    uint256 amountIn,
    uint256 minAmountOut,
    address receiver
  ) external returns (uint256) {
    IERC20(assetIn).approve(address(curvePool), amountIn);
    uint256 ethReceived = curvePool.exchange(1, 0, amountIn, minAmountOut);

    WETH.deposit{value: ethReceived}();
    WETH.safeTransfer(receiver, ethReceived);

    return ethReceived;
  }
}
