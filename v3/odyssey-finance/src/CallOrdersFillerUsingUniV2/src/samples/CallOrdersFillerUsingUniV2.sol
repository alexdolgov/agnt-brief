// // SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IWETH} from "../interfaces/external/IWETH.sol";
import {UsingUniV2, IUniswapV2Router} from "./UsingUniV2.sol";
import {CallOrderExecutor} from "src/executors/advanced-transactions/CallOrderExecutor.sol";

contract CallOrdersFillerUsingUniV2 is UsingUniV2 {
    using SafeERC20 for IERC20;

    uint256 private constant MAX_BPS = 100_00;
    uint256 private constant GAS_OVERHEAD_FACTOR = 105_00; // covers any overhead from the gas cost of the transaction

    event OrderFilled(uint256 cost, uint256 amountOut);

    error InvalidOrderType();
    error NotProfitable(uint256 cost, uint256 amountOut);

    constructor(IUniswapV2Router router_, IWETH weth_) UsingUniV2(router_, weth_) {}

    function fill(CallOrderExecutor.Order memory order_, uint256 minProfit_) external {
        uint256 _gasleftBefore = gasleft();

        CallOrderExecutor(order_.executor).fill(order_, "");

        uint256 _outcome = _swap(order_.incentive.token, ETH, order_.incentive.amount, 0, msg.sender);
        uint256 _cost = (tx.gasprice * (_gasleftBefore - gasleft()) * GAS_OVERHEAD_FACTOR) / MAX_BPS;
        if (_outcome < _cost + minProfit_) revert NotProfitable(_cost, _outcome);

        emit OrderFilled(_cost, _outcome);
    }
}
