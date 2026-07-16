// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

interface IMultiDexAggregator {
    error InvalidDexIndex(uint8 dexIndex);
    error InsufficientOutput(uint256 amountOut, uint256 amountOutMin);
    error NotOwner(address sender);

    event DexRouterSet(uint8 indexed dexIndex, address router);

    function swap(
        uint8 dexIndex,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata dexParams
    ) external returns (uint256 amountOut);

    function setDexRouter(uint8 index, address router) external;

    function getDexRouter(uint8 index) external view returns (address);
}
