// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5/token/ERC20/utils/SafeERC20.sol";

import { IUniPoolMintCallback } from "../interfaces/IUniPoolMintCallback.sol";
import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";
import { UniPoolPairUtils as Utils } from "./UniPoolPairUtils.sol";

/// @title Payments for the UniPool Pair
library UniPoolPairPayments {
    using SafeERC20 for IERC20;

    /**
     * @notice Requests payment to the caller during the mint process.
     * @param token0 The address of the first token of the pair.
     * @param token1 The address of the second token of the pair.
     * @param amount0 The amount of token0 to transfer.
     * @param amount1 The amount of token1 to transfer.
     * @param data The additional data required to perform the token transfer.
     */
    function mintPayment(IERC20 token0, IERC20 token1, uint256 amount0, uint256 amount1, bytes calldata data) internal {
        IUniPoolMintCallback(msg.sender)
            .uniPoolMintCallback(
                IUniPoolMintCallback.MintCallbackData({
                    token0: address(token0), token1: address(token1), amount0: amount0, amount1: amount1, data: data
                })
            );
    }

    /// @dev Transfers accumulated protocol fees to the fee collector and resets their counters.
    function distributeProtocolFees() internal {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        address feeCollector = s.feeCollector;
        uint128 feesToken0 = s.token0.feePoolAccumulated;
        uint128 feesToken1 = s.token1.feePoolAccumulated;

        s.token0.feePoolAccumulated = 0;
        s.token1.feePoolAccumulated = 0;

        if (feesToken0 > 0) {
            s.token0.tokenAddress.safeTransfer(feeCollector, feesToken0);
        }
        if (feesToken1 > 0) {
            s.token1.tokenAddress.safeTransfer(feeCollector, feesToken1);
        }
    }
}
