// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IUrmSwapper {
    function withdrawEth() external;
    function withdrawToken(address tokenAdr) external;
    function getUsdcWethPool() external view returns (address);
    function setUsdcWethPool(address poolAddress) external;
    function swapUsdcToUrm(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapEthToUrm(uint256 slippage, uint256 deadline) external payable returns (uint256);
    function swapHestiaToUrm(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapCircleToUrm(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapRageToUrm(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapUsdcToRage(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapUsdcToUnderlyingAssets(uint256 usdcIn, uint256 slippage, uint256 deadline) external returns (uint256 hestiaOut, uint256 circleOut);
    function swapUnderlyingAssetsToUrm(uint256 hestiaAvailable, uint256 circleAvailable, uint256 defenseSize, uint256 slippage, uint32 twap, uint256 deadline) external returns (uint256 hestiaSold, uint256 circleSold, uint256 urmOut);
    function swapUrmToRage(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapUrmToHestia(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapUrmToCircle(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapUrmToUsdc(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function uniswapV3SwapCallback(int256 amount0, int256 amount1, bytes calldata data) external;
}
