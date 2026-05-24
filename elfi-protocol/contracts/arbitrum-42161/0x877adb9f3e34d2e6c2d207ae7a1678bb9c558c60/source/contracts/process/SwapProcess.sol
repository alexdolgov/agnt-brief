// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../interfaces/ISwap.sol";
import "../interfaces/IOneInchSwap.sol";
import "../storage/AppConfig.sol";
import "../storage/AppTradeConfig.sol";
import "../storage/CommonData.sol";
import "../utils/CalUtils.sol";
import "../utils/TransferUtils.sol";
import "../utils/TokenUtils.sol";
import "./VaultProcess.sol";
import "./OneInchSwapProcess.sol";

library SwapProcess {
    struct SwapSingleParam {
        address fromTokenAddress;
        address fromToken;
        uint256 fromAmount;
        address toTokenAddress;
        address toToken;
        uint256 minToTokenAmount;
        ISwap.SwapType swapType;
        bytes swapData;
    }

    function transferAndApproveToOneInchRouter(address vault, address token, uint256 value) external {
        VaultProcess.transferOut(vault, token, address(this), value, false);
        TransferHelper.safeApprove(token, AppConfig.getOneInchRouter(), value);
    }

    function unTransferAndApproveToOneInchRouter(address vault, address token, uint256 value) external {
        TransferHelper.safeApprove(token, AppConfig.getOneInchRouter(), 0);
        TransferUtils.transfer(token, vault, value);
    }

    function singleSwap(SwapSingleParam memory params) external returns (uint256 toAmount) {
        if (params.swapType == ISwap.SwapType.ONE_INCH) {
            toAmount = OneInchSwapProcess.swap(
                IOneInchSwap.SwapParams({
                    token: params.fromToken,
                    tokenAmount: params.fromAmount,
                    router: AppConfig.getOneInchRouter(),
                    data: params.swapData
                })
            );

            TransferUtils.transfer(params.toToken, params.toTokenAddress, toAmount);
        }
    }
}
