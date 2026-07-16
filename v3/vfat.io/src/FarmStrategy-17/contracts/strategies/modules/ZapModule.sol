// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import "../../interfaces/ILiquidityConnector.sol";
import "./SwapModule.sol";

abstract contract ZapModule is SwapModule {
    error LiquidityAmountError(); // 0x4d0ab6b4

    struct ZapInData {
        address tokenIn;
        uint256 amountIn;
        SwapData[] swaps;
        AddLiquidityData addLiquidityData;
    }

    struct ZapOutData {
        RemoveLiquidityData removeLiquidityData;
        SwapData[] swaps;
        address tokenOut;
    }

    constructor(ConnectorRegistry _connectorRegistry)
        SwapModule(_connectorRegistry)
    { }

    function zapIn(ZapInData memory zapData) external payable {
        for (uint256 i; i < zapData.swaps.length;) {
            _swap(zapData.swaps[i]);
            unchecked {
                i++;
            }
        }

        if (zapData.addLiquidityData.lpToken != address(0)) {
            bool atLeastOneNonZero = false;

            AddLiquidityData memory addLiquidityData = zapData.addLiquidityData;
            for (uint256 i; i < addLiquidityData.tokens.length; i++) {
                if (addLiquidityData.tokens[i] == address(0)) {
                    continue;
                }
                if (addLiquidityData.desiredAmounts[i] == 0) {
                    addLiquidityData.desiredAmounts[i] = IERC20(
                        addLiquidityData.tokens[i]
                    ).balanceOf(address(this));
                }
                if (addLiquidityData.desiredAmounts[i] > 0) {
                    atLeastOneNonZero = true;
                    SafeTransferLib.safeApprove(
                        addLiquidityData.tokens[i],
                        addLiquidityData.router,
                        addLiquidityData.desiredAmounts[i]
                    );
                }
            }

            if (!atLeastOneNonZero) {
                revert LiquidityAmountError();
            }

            address routerConnector =
                connectorRegistry.connectorOf(addLiquidityData.router);

            _delegateTo(
                routerConnector,
                abi.encodeCall(
                    ILiquidityConnector.addLiquidity, (addLiquidityData)
                )
            );
        }
    }

    function zapOut(ZapOutData memory zapData) external {
        if (zapData.removeLiquidityData.lpToken != address(0)) {
            if (zapData.removeLiquidityData.lpAmountIn > 0) {
                SafeTransferLib.safeApprove(
                    zapData.removeLiquidityData.lpToken,
                    zapData.removeLiquidityData.router,
                    zapData.removeLiquidityData.lpAmountIn
                );
            }
            address routerConnector = connectorRegistry.connectorOf(
                zapData.removeLiquidityData.router
            );
            _delegateTo(
                address(routerConnector),
                abi.encodeCall(
                    ILiquidityConnector.removeLiquidity,
                    zapData.removeLiquidityData
                )
            );
        }

        for (uint256 i; i < zapData.swaps.length;) {
            _swap(zapData.swaps[i]);
            unchecked {
                i++;
            }
        }
    }
}
