// // SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {UsingUniV2, IUniswapV2Router} from "./UsingUniV2.sol";
import {IWETH} from "../interfaces/external/IWETH.sol";
import {AdvancedTransactionExecutor} from "src/executors/advanced-transactions/AdvancedTransactionExecutor.sol";
import {SwapOrderExecutor} from "src/executors/advanced-transactions/SwapOrderExecutor.sol";
import {IMasterOracle} from "src/interfaces/external/IMasterOracle.sol";

interface IRecurringSwapOrderExecutor {
    function oracle() external view returns (IMasterOracle);
}

contract SwapOrdersFillerUsingUniV2 is UsingUniV2 {
    uint256 private constant MAX_BPS = 100_00;
    uint256 private constant GAS_OVERHEAD_FACTOR = 105_00; // covers any overhead from the gas cost of the transaction

    event OrderFilled(uint256 cost, uint256 amountOut);

    error InvalidOrderType();
    error NotProfitable(uint256 cost, uint256 amountOut);

    constructor(IUniswapV2Router router_, IWETH weth_) UsingUniV2(router_, weth_) {}

    function fill(AdvancedTransactionExecutor.Order memory order_, uint256 minProfit_) external {
        uint256 _gasleftBefore = gasleft();

        (IERC20 _tokenIn, IERC20 _tokenOut, uint256 _amountIn, uint256 _amountOutMin) = _extractSwapParams(order_);

        AdvancedTransactionExecutor(order_.executor).fill(
            order_,
            abi.encode(order_.smartAccount, _tokenIn, _tokenOut, _amountIn, _amountOutMin)
        );

        uint256 _outcome = _swap(_tokenOut, ETH, type(uint256).max, 0, msg.sender) +
            _swap(order_.incentive.token, ETH, order_.incentive.amount, 0, msg.sender);
        uint256 _cost = (tx.gasprice * (_gasleftBefore - gasleft()) * GAS_OVERHEAD_FACTOR) / MAX_BPS;
        if (_outcome < _cost + minProfit_) revert NotProfitable(_cost, _outcome);

        emit OrderFilled(_cost, _outcome);
    }

    function callback(bytes memory data_) external {
        (address _smartAccount, IERC20 _tokenIn, IERC20 _tokenOut, uint256 _amountIn, uint256 _amountOutMin) = abi
            .decode(data_, (address, IERC20, IERC20, uint256, uint256));

        _amountIn = Math.min(_amountIn, _balance(_tokenIn));
        _swap(_tokenIn, _tokenOut, _amountIn, _amountOutMin, address(this));
        _transferAsset(_tokenOut, _smartAccount, _amountOutMin);
    }

    function _extractSwapParams(
        AdvancedTransactionExecutor.Order memory order_
    ) private pure returns (IERC20 _tokenIn, IERC20 _tokenOut, uint256 _amountIn, uint256 _amountOutMin) {
        SwapOrderExecutor.AdditionalData memory _additionalData = abi.decode(
            order_.additionalData,
            (SwapOrderExecutor.AdditionalData)
        );
        _tokenIn = _additionalData.tokenIn;
        _tokenOut = _additionalData.tokenOut;
        _amountIn = _additionalData.amountIn;
        _amountOutMin = _additionalData.amountOutMin;
    }
}
