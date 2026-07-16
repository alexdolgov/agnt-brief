// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
interface IRageSwapper {
    // Administrative functions
    function withdrawEth() external;
    function withdrawToken(address tokenAdr) external;
    
    // ETH swap
    function swapEthForUsdc(uint256 deadline) external payable returns (uint256);
    
    // Individual token swaps
    function swapHestiaForUsdc(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapUsdcForHestia(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapRageForUsdc(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapUsdcForRage(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapCircleForUsdc(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    function swapUsdcForCircle(uint256 amount, uint256 slippage, uint256 deadline) external returns (uint256);
    
    // Rage to underlying swap
    function swapRageForUnderlying(
        uint256 amount,
        uint256 percentHestia,
        uint256 percentCircle,
        uint256 slippage,
        uint256 deadline
    ) external returns (uint256 pHestiaOut, uint256 pCircleOut);
    
    // Bond/Debond conversions
    function convertHestiaToPHestia(uint256 amount, uint256 deadline) external returns (uint256);
    function convertPHestiaToHestia(uint256 amount, uint256 deadline) external returns (uint256);
    function convertCircleToPCircle(uint256 amount, uint256 deadline) external returns (uint256);
    function convertPCircleToCircle(uint256 amount, uint256 deadline) external returns (uint256);
    
    // Multi-asset swaps
    function swapUsdcToAssets(
        uint256 usdcIn,
        uint256 percentHestia,
        uint256 percentCircle,
        uint256 hestiaSlippage,
        uint256 circleSlippage,
        uint256 deadline
    ) external returns (uint256 hestiaOut, uint256 circleOut);
    
    function swapAssetsToUsdc(
        uint256 hestiaIn,
        uint256 circleIn,
        uint256 hestiaSlippage,
        uint256 circleSlippage,
        uint256 deadline
    ) external returns (uint256);
    
    // Multi-asset bond/debond
    function bondAssets(
        uint256 hestiaIn,
        uint256 circleIn,
        uint256 deadline
    ) external returns (uint256 pHestiaOut, uint256 pCircleOut);
    
    function debondAssets(
        uint256 pHestiaIn,
        uint256 pCircleIn,
        uint256 deadline
    ) external returns (uint256 hestiaOut, uint256 circleOut);
    
    // Uniswap callback
    function uniswapV3SwapCallback(int amount0, int amount1, bytes calldata data) external;
}