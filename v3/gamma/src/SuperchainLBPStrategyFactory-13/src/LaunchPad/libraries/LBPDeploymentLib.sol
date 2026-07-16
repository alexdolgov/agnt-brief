// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {OrderBookFactory} from "../../LimitOrderBook/OrderBookFactory.sol";
import {IMultiPositionManager} from "../../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {RebalanceLogic} from "../../MultiPositionManager/libraries/RebalanceLogic.sol";
import {PoolType} from "../types/PoolType.sol";
import {MigrationData} from "liquidity-launcher/src/types/MigrationData.sol";

/// @title LBPDeploymentLib
/// @notice Library for SuperchainLBPStrategy deployment logic
/// @dev Extracted to reduce SuperchainLBPStrategy contract size
library LBPDeploymentLib {
    /// @notice Parameters for deployment context
    struct DeploymentContext {
        address token;
        address currency;
        uint24 poolLPFee;
        int24 poolTickSpacing;
        address positionRecipient;
        string mpmName;
        IMultiPositionManager.RebalanceParams rebalanceParams;
    }

    /// @notice Calls appropriate OrderBookFactory function based on pool type
    /// @param orderBookFactory The OrderBookFactory contract
    /// @param poolType The type of pool to create (REGULAR, DYNAMIC, or VOLATILITY)
    /// @param data Migration data containing sqrtPriceX96
    /// @param currency0 The first currency of the pool
    /// @param currency1 The second currency of the pool
    /// @param deposit0Desired The desired deposit amount for currency0
    /// @param deposit1Desired The desired deposit amount for currency1
    /// @param ethValue The ETH value to send (if currency is native)
    /// @param inMin Minimum amounts for slippage protection
    /// @param ctx Deployment context containing pool configuration
    /// @return mpm The deployed MultiPositionManager address
    function callFactoryFunction(
        OrderBookFactory orderBookFactory,
        PoolType poolType,
        MigrationData memory data,
        Currency currency0,
        Currency currency1,
        uint256 deposit0Desired,
        uint256 deposit1Desired,
        uint256 ethValue,
        uint256[2][] memory inMin,
        DeploymentContext memory ctx
    ) external returns (address mpm) {
        RebalanceLogic.SwapParams memory emptySwapParams;

        if (poolType == PoolType.REGULAR) {
            (, mpm) = orderBookFactory.createRegularPoolWithManager{value: ethValue}(
                OrderBookFactory.RegularPoolParams({
                    currency0: currency0,
                    currency1: currency1,
                    fee: ctx.poolLPFee,
                    tickSpacing: ctx.poolTickSpacing,
                    sqrtPriceX96: data.sqrtPriceX96,
                    deposit0Desired: deposit0Desired,
                    deposit1Desired: deposit1Desired,
                    managerOwner: ctx.positionRecipient,
                    name: ctx.mpmName,
                    to: ctx.positionRecipient,
                    useSwap: false,
                    swapParams: emptySwapParams,
                    inMin: inMin,
                    rebalanceParams: ctx.rebalanceParams
                })
            );
        } else if (poolType == PoolType.DYNAMIC) {
            (, mpm) = orderBookFactory.createDynamicPoolWithManager{value: ethValue}(
                OrderBookFactory.DynamicPoolParams({
                    currency0: currency0,
                    currency1: currency1,
                    tickSpacing: ctx.poolTickSpacing,
                    sqrtPriceX96: data.sqrtPriceX96,
                    salt: keccak256(abi.encode(ctx.token, ctx.currency, block.timestamp)),
                    initialFee: ctx.poolLPFee,
                    deposit0Desired: deposit0Desired,
                    deposit1Desired: deposit1Desired,
                    managerOwner: ctx.positionRecipient,
                    name: ctx.mpmName,
                    to: ctx.positionRecipient,
                    useSwap: false,
                    swapParams: emptySwapParams,
                    inMin: inMin,
                    rebalanceParams: ctx.rebalanceParams
                })
            );
        } else {
            (, mpm) = orderBookFactory.createVolatilityDynamicPoolWithManager{value: ethValue}(
                OrderBookFactory.VolatilityDynamicPoolParams({
                    currency0: currency0,
                    currency1: currency1,
                    tickSpacing: ctx.poolTickSpacing,
                    sqrtPriceX96: data.sqrtPriceX96,
                    salt: keccak256(abi.encode(ctx.token, ctx.currency, block.timestamp)),
                    baseFee: ctx.poolLPFee,
                    surgeMultiplier: 30000,
                    surgeDuration: 1800,
                    initialMaxTicksPerBlock: 50,
                    deposit0Desired: deposit0Desired,
                    deposit1Desired: deposit1Desired,
                    managerOwner: ctx.positionRecipient,
                    name: ctx.mpmName,
                    to: ctx.positionRecipient,
                    useSwap: false,
                    swapParams: emptySwapParams,
                    inMin: inMin,
                    rebalanceParams: ctx.rebalanceParams
                })
            );
        }
    }
}
