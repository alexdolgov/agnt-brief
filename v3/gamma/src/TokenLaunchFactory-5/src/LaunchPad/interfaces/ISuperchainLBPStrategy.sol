// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ILBPStrategyBasic} from "liquidity-launcher/src/interfaces/ILBPStrategyBasic.sol";
import {IMultiPositionManager} from "../../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {OrderBookFactory} from "../../LimitOrderBook/OrderBookFactory.sol";

/// @title ISuperchainLBPStrategy
/// @notice Interface for SuperchainLBPStrategy that migrates auction liquidity to MultiPositionManager
interface ISuperchainLBPStrategy is ILBPStrategyBasic {
    /// @notice Emitted when MultiPositionManager is deployed and liquidity is migrated
    /// @param mpm The address of the deployed MultiPositionManager
    /// @param shares The number of shares minted to the position recipient
    event MPMDeployed(address indexed mpm, uint256 shares);

    /// @notice Error thrown when OrderBookFactory address is zero
    error InvalidOrderBookFactory();

    /// @notice Error thrown when strategy address is zero
    error InvalidStrategy();

    /// @notice Gets the OrderBookFactory used to deploy pools and MPMs
    /// @return The OrderBookFactory contract
    function orderBookFactory() external view returns (OrderBookFactory);

    /// @notice Gets the strategy contract address
    /// @return The strategy contract address
    function strategy() external view returns (address);

    /// @notice Gets the encoded strategy parameters
    /// @return The encoded strategy parameters
    function strategyData() external view returns (bytes memory);
}
