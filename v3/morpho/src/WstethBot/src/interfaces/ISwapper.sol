// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface ISwapper {
    /**
     * @notice Sell from tokenFrom to tokenTo, need to approuve first
     * @param amountIn number of token to sell (tokenFrom), 0 means sell all
     */
    function sell(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn
    ) external returns (uint256);

    /**
     * @notice Preview from tokenFrom to tokenTo and return the amount you would get
     * @param amountIn number of token to sell (tokenFrom), 0 means sell all
     */
    function previewSell(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn
    ) external view returns (uint256);
}
