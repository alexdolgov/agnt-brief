// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

interface IRouterEvent {
    /**
     * @dev Emitted when UniswapV3 multihop path of tokenIn/tokenOut pair is changed
     * @param tokenIn The address of tokenIn
     * @param tokenOut The address of tokenOut
     * @param oldPath The old UniswapV3 multihop path
     * @param newPath The new UniswapV3 multihop path
     */
    event UpdateUniswapV3Path(address tokenIn, address tokenOut, bytes oldPath, bytes newPath);
}
