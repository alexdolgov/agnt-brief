// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {MarketParams} from "@lending-market/interfaces/ILendingMarket.sol";

interface ILiquidityInjector {
    function injectLiquidity(MarketParams calldata params, uint256 amountToMintAndInject) external;

    function withdrawLiquidity(MarketParams calldata params, uint256 amountToWithdrawAndBurn) external;
}
