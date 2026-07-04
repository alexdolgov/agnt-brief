pragma solidity ^0.8.19;
// SPDX-License-Identifier: AGPL-3.0-or-later
// Origami (common/swappers/OrigamiSwapperWithCallback.sol)

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IOrigamiSwapper } from "contracts/interfaces/common/swappers/IOrigamiSwapper.sol";
import { IOrigamiSwapCallback } from "contracts/interfaces/common/swappers/IOrigamiSwapCallback.sol";
import { OrigamiElevatedAccess } from "contracts/common/access/OrigamiElevatedAccess.sol";
import { CommonEventsAndErrors } from "contracts/libraries/CommonEventsAndErrors.sol";
import { DexAggregator } from "contracts/libraries/DexAggregator.sol";

/**
 * @title Origami DEX Aggregator Swapper With Callback
 * @notice An on chain swapper contract to integrate with a DEX Aggregator. After the swap it 
 * ensures the minimum amount is met, then calls `swapCallback()` on the designated receiver
 */
contract OrigamiSwapperWithCallback is IOrigamiSwapper, OrigamiElevatedAccess {
    using SafeERC20 for IERC20;
    using DexAggregator for address;

    /// @notice Approved router contracts for swaps
    mapping(address router => bool allowed) public whitelistedRouters;

    constructor(address _initialOwner) OrigamiElevatedAccess(_initialOwner) {}

    function whitelistRouter(address router, bool allowed) external onlyElevatedAccess {
        whitelistedRouters[router] = allowed;
        emit RouterWhitelisted(router, allowed);
    }

    /**
     * @notice Recover any token
     * @param token Token to recover
     * @param to Recipient address
     * @param amount Amount to recover
     */
    function recoverToken(address token, address to, uint256 amount) external onlyElevatedAccess {
        emit CommonEventsAndErrors.TokenRecovered(to, token, amount);
        IERC20(token).safeTransfer(to, amount);
    }
 
    /**
     * @notice Execute a DEX aggregator swap
     * @dev 
     *   - The sellToken is transferred in advance to this contract
     *   - The buyToken is transferred back to the caller and `swapCallback()` is then called
     *   - It is a protected call since the sellTokens may be sitting in this contract for a
     *     period of time
     */
    function execute(
        IERC20 sellToken,
        uint256 sellTokenAmount,
        IERC20 buyToken,
        bytes calldata swapData
    ) external override onlyElevatedAccess returns (uint256 buyTokenAmount) {
        RouteDataWithCallback memory routeData = abi.decode(
            swapData, (RouteDataWithCallback)
        );

        if (!whitelistedRouters[routeData.router]) revert InvalidRouter(routeData.router);

        buyTokenAmount = routeData.router.swap(sellToken, sellTokenAmount, buyToken, routeData.data);

        uint256 minBuyAmount = routeData.minBuyAmount;
        if (buyTokenAmount < minBuyAmount) revert CommonEventsAndErrors.Slippage(minBuyAmount, buyTokenAmount);

        buyToken.safeTransfer(routeData.receiver, buyTokenAmount);
        emit Swap(address(sellToken), sellTokenAmount, address(buyToken), buyTokenAmount);

        IOrigamiSwapCallback(routeData.receiver).swapCallback();
    }
}
