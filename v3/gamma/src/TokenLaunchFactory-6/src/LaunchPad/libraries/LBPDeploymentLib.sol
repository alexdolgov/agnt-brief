// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {OrderBookFactory} from "../../LimitOrderBook/OrderBookFactory.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IMultiPositionManager} from "../../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {RebalanceLogic} from "../../MultiPositionManager/libraries/RebalanceLogic.sol";
import {MigrationData} from "liquidity-launcher/src/types/MigrationData.sol";

/// @title LBPDeploymentLib
/// @notice Library for SuperchainLBPStrategy deployment logic
/// @dev Extracted to reduce SuperchainLBPStrategy contract size
library LBPDeploymentLib {
    /// @dev Must stay in sync with VolatilityDynamicFeeLimitOrderHook fee validation.
    function volatilitySurgeMultiplierBps() internal pure returns (uint24) {
        return 30_000; // 3x surge
    }

    /// @notice Parameters for deployment context
    struct DeploymentContext {
        address token;
        address currency;
        uint24 poolLPFee;
        int24 poolTickSpacing;
        address positionRecipient;
        string mpmName;
        IMultiPositionManager.RebalanceParams rebalanceParams;
        address hookOwner; // Who owns the hook (can modify fee params)
        bytes32 hookSalt; // Pre-computed salt for lazy hook deployment
        bytes32 callerSalt; // Caller-unique salt from LiquidityLauncher (emitted with reservation)
    }

    /// @notice Calls OrderBookFactory to create a VOLATILITY pool with MultiPositionManager
    /// @param orderBookFactory The OrderBookFactory contract
    /// @param data Migration data containing sqrtPriceX96
    /// @param currency0 The first currency of the pool
    /// @param currency1 The second currency of the pool
    /// @param deposit0Desired The desired deposit amount for currency0
    /// @param deposit1Desired The desired deposit amount for currency1
    /// @param ethValue The ETH value to send (if currency is native)
    /// @param inMin Minimum amounts for slippage protection
    /// @param ctx Deployment context containing pool configuration
    /// @return poolKey The deployed pool key
    /// @return mpm The deployed MultiPositionManager address
    function callFactoryFunction(
        OrderBookFactory orderBookFactory,
        MigrationData memory data,
        Currency currency0,
        Currency currency1,
        uint256 deposit0Desired,
        uint256 deposit1Desired,
        uint256 ethValue,
        uint256[2][] memory inMin,
        DeploymentContext memory ctx
    ) external returns (PoolKey memory poolKey, address mpm) {
        RebalanceLogic.SwapParams memory emptySwapParams;

        // Hook is deployed lazily during pool creation using ctx.hookSalt.
        // The salt must match what was used for poolId computation during reservation.
        // callerSalt is emitted with reservations for off-chain correlation.
        (poolKey, mpm) = orderBookFactory.createVolatilityDynamicLimitOrderPoolWithManager{value: ethValue}(
            OrderBookFactory.VolatilityDynamicPoolParams({
                currency0: currency0,
                currency1: currency1,
                tickSpacing: ctx.poolTickSpacing,
                sqrtPriceX96: data.sqrtPriceX96,
                salt: ctx.hookSalt, // Pre-computed salt for lazy hook deployment
                baseFee: ctx.poolLPFee,
                surgeMultiplier: volatilitySurgeMultiplierBps(),
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
                rebalanceParams: ctx.rebalanceParams,
                hookOwner: ctx.hookOwner,
                callerSalt: ctx.callerSalt // For reservation lookup and events
            })
        );
    }
}
