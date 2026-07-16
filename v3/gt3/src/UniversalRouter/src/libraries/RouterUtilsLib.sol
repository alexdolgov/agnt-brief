// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {IPair} from "src/interfaces/IPair.sol";
import {IPairFactory} from "src/interfaces/IPairFactory.sol";

library RouterUtilsLib {
    uint256 internal constant MINIMUM_LIQUIDITY = 10 ** 3;
    uint256 internal constant MAX_BPS = 100_00;

    error IdenticalAddresses();
    error ZeroAddress();
    error InvalidPathLength();
    error NotExistPair();

    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        if (tokenA == tokenB) revert IdenticalAddresses();
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        if (token0 == address(0)) revert ZeroAddress();
    }

    function getReserves(address factory, address tokenA, address tokenB)
        internal
        view
        returns (uint256 reserveA, uint256 reserveB)
    {
        (address token0,) = sortTokens(tokenA, tokenB);
        address pair = IPairFactory(factory).getPair(tokenA, tokenB);
        if (pair == address(0)) revert NotExistPair();
        (uint256 reserve0, uint256 reserve1,) = IPair(pair).getReserves();
        (reserveA, reserveB) = tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }
}
