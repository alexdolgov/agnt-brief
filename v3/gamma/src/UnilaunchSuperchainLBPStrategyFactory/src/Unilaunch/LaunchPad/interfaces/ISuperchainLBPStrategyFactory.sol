// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IDistributionStrategy} from "liquidity-launcher/src/interfaces/IDistributionStrategy.sol";
import {IOrderBookFactory} from "../../LimitOrderBook/interfaces/IOrderBookFactory.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";

/// @title ISuperchainLBPStrategyFactory
/// @notice Factory for deploying SuperchainLBPStrategy instances
interface ISuperchainLBPStrategyFactory is IDistributionStrategy {
    /// @notice Emitted when a new SuperchainLBPStrategy is created
    /// @param strategy The address of the created strategy
    /// @param token The token being distributed
    /// @param amount The amount of tokens being distributed
    event SuperchainLBPStrategyCreated(address indexed strategy, address indexed token, uint256 amount);

    /// @notice Gets the OrderBookFactory used by this factory
    /// @return The OrderBookFactory contract
    function orderBookFactory() external view returns (IOrderBookFactory);

    /// @notice Gets the PoolManager used by this factory
    /// @return The PoolManager contract
    function poolManager() external view returns (IPoolManager);

    /// @notice Gets the authorized LiquidityLauncher
    /// @return The LiquidityLauncher address
    function liquidityLauncher() external view returns (address);

    /// @notice Gets the canonical ContinuousClearingAuction factory
    /// @return The CCA factory address
    function ccaFactory() external view returns (address);
}
