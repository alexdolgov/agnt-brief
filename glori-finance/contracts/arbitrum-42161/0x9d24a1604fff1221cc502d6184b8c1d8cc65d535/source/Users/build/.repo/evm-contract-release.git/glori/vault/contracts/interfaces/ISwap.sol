// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

interface ISwap {
    // swap from one token to another token
    function swap(address fromToken, address toToken, uint256 amount, uint256 minOut) external;
    // zap token to pair
    function zapLPToken(address fromToken, address pair, uint256 amount, address to) external; 
}
