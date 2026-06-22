// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import "../src/interfaces/IRouteProcessor.sol";
import "../src/interfaces/ISushiXSwapV2Adapter.sol";
import "forge-std/console.sol";

struct ISushiXSwapV2AdapterSwapData {
    ISushiXSwapV2Adapter adapter;
    uint256 amountBridged;
    bytes swapData;
    address token;
    bytes payloadData;
}

contract GasEstimator {
    using SafeERC20 for IERC20;

    IRouteProcessor public routeProcessor;

    constructor(address _routeProcessor) {
        routeProcessor = IRouteProcessor(_routeProcessor);
    }

    function estimateAdapterSwapGas(
        IRouteProcessor.RouteProcessorData calldata nativeSwapData,
        ISushiXSwapV2AdapterSwapData calldata adapterSwapData
    ) external payable returns (uint256 adapterSwapGasUsed) {
        if (nativeSwapData.route.length > 0) {
            if (nativeSwapData.tokenIn != 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
                revert('nativeSwapData.tokenIn should be NATIVE');
            if (nativeSwapData.to != address(adapterSwapData.adapter))
                revert('nativeSwapData.to should be adapterSwapData.adapter');

            try 
                routeProcessor.processRoute{value: address(this).balance}(
                    nativeSwapData.tokenIn,
                    nativeSwapData.amountIn,
                    nativeSwapData.tokenOut,
                    nativeSwapData.amountOutMin,
                    nativeSwapData.to,
                    nativeSwapData.route
                )
            {} catch (bytes memory) {
                revert('nativeSwap failed');
            }
        }

        console.log('balanceOf', IERC20(adapterSwapData.token).balanceOf(address(routeProcessor)));

        uint256 gasBefore = gasleft();

        adapterSwapData.adapter.swap{value: address(this).balance}(
            adapterSwapData.amountBridged,
            adapterSwapData.swapData,
            adapterSwapData.token,
            adapterSwapData.payloadData
        );

        uint256 gasAfter = gasleft();

        return gasBefore - gasAfter;
    }
}