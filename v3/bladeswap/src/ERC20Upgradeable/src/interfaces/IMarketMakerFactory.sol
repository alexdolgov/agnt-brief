// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";

interface IMarketMakerFactory {
    function handleTradingFee(IERC20 token, uint256 amount) external;
    function handleReward(IERC20 token, uint256 amount) external;
    function handleRebalanceProfit(IERC20 token, uint256 amount) external;
}
