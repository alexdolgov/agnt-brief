// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

interface IUniswapOracle {
    function getSpotPrice(IUniswapV3Pool pool) external view returns (uint256 spotPrice_);
    function getTwaps(
        IUniswapV3Pool pool,
        uint32[] memory secondsAgo_
    )
        external
        view
        returns (uint256[] memory prices_);
}
