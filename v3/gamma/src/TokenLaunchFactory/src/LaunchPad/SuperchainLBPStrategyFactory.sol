// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IDistributionContract} from "liquidity-launcher/src/interfaces/IDistributionContract.sol";
import {MigratorParameters} from "liquidity-launcher/src/types/MigratorParameters.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {OrderBookFactory} from "../LimitOrderBook/OrderBookFactory.sol";
import {SuperchainLBPStrategy} from "./SuperchainLBPStrategy.sol";
import {SuperchainLBPStrategyDeployer} from "./SuperchainLBPStrategyDeployer.sol";
import {ISuperchainLBPStrategyFactory} from "./interfaces/ISuperchainLBPStrategyFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {Currency, CurrencyLibrary} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {LPFeeLibrary} from "@uniswap/v4-core/src/libraries/LPFeeLibrary.sol";

/// @title SuperchainLBPStrategyFactory
/// @notice Factory for deploying SuperchainLBPStrategy instances
/// @dev Implements IDistributionStrategy for integration with LiquidityLauncher
///      Uses reservation system for front-running protection
contract SuperchainLBPStrategyFactory is ISuperchainLBPStrategyFactory {
    using CurrencyLibrary for Currency;

    /// @notice The OrderBookFactory used to deploy pools and MPMs
    OrderBookFactory public immutable orderBookFactory;

    /// @notice The PoolManager used for Uniswap V4 pools
    IPoolManager public immutable poolManager;

    /// @notice The deployer contract for SuperchainLBPStrategy (reduces factory bytecode size)
    SuperchainLBPStrategyDeployer public immutable deployer;

    /// @notice Error thrown when configuration data is invalid
    error InvalidConfigData();

    /// @notice Event emitted when a pool is reserved for a strategy
    event PoolReservedForStrategy(bytes32 indexed poolId, address indexed strategy, address indexed hookOwner);

    /// @param _orderBookFactory The OrderBookFactory contract
    /// @param _poolManager The Uniswap V4 PoolManager contract
    constructor(OrderBookFactory _orderBookFactory, IPoolManager _poolManager) {
        if (address(_orderBookFactory) == address(0)) revert InvalidConfigData();
        if (address(_poolManager) == address(0)) revert InvalidConfigData();

        orderBookFactory = _orderBookFactory;
        poolManager = _poolManager;

        // Deploy the deployer contract (separates bytecode to reduce factory size)
        deployer = new SuperchainLBPStrategyDeployer();
    }

    /// @notice Initializes a new distribution strategy
    /// @dev Decodes configData and deploys a new SuperchainLBPStrategy
    ///      Uses reservation system for front-running protection
    /// @param token The token being distributed
    /// @param amount The amount of tokens being distributed
    /// @param configData Encoded configuration containing:
    ///        - MigratorParameters (currency, fees, blocks, etc.)
    ///        - IMultiPositionManager.RebalanceParams (strategy configuration)
    ///        - string mpmName (name for MPM ERC20 token)
    ///        - bytes auctionParams (CCA auction parameters)
    /// @param salt Salt for deterministic deployment
    /// @return distributionContract The deployed SuperchainLBPStrategy
    function initializeDistribution(address token, uint256 amount, bytes calldata configData, bytes32 salt)
        external
        virtual
        override
        returns (IDistributionContract distributionContract)
    {
        // Decode configuration (always VOLATILITY pool type)
        (
            MigratorParameters memory migratorParams,
            IMultiPositionManager.RebalanceParams memory rebalanceParams,
            string memory mpmName,
            bytes memory auctionParams,
            bytes32 hookSalt  // Pre-computed salt for early hook deployment
        ) = abi.decode(configData, (MigratorParameters, IMultiPositionManager.RebalanceParams, string, bytes, bytes32));

        // Validate amount fits in uint128
        if (amount > type(uint128).max) revert InvalidConfigData();

        // Deploy SuperchainLBPStrategy via deployer (reduces factory bytecode size)
        SuperchainLBPStrategy newStrategy = SuperchainLBPStrategy(
            payable(
                deployer.deploy(
                    salt,
                    token,
                    uint128(amount),
                    migratorParams,
                    auctionParams,
                    poolManager,
                    orderBookFactory,
                    rebalanceParams,
                    mpmName,
                    hookSalt
                )
            )
        );

        // Reserve the pool for this strategy (front-running protection)
        // Scoped block to avoid stack too deep
        {
            // hookOwner is the positionRecipient (original token creator)
            address hookOwner = migratorParams.positionRecipient;

            // Determine currency ordering (currency0 < currency1)
            Currency currency0;
            Currency currency1;
            if (migratorParams.currency < token) {
                currency0 = Currency.wrap(migratorParams.currency);
                currency1 = Currency.wrap(token);
            } else {
                currency0 = Currency.wrap(token);
                currency1 = Currency.wrap(migratorParams.currency);
            }

            // Compute poolId using pre-computed salt (cheap CREATE2 math, no deployment)
            // Hook will be deployed lazily during pool creation
            bytes32 poolId = orderBookFactory.computePoolIdForVolatilityLimitOrder(
                hookOwner,
                hookSalt,
                currency0,
                currency1,
                migratorParams.poolTickSpacing
            );
            orderBookFactory.reservePoolForStrategy(poolId, address(newStrategy));

            emit PoolReservedForStrategy(poolId, address(newStrategy), hookOwner);
        }

        emit SuperchainLBPStrategyCreated(address(newStrategy), token, amount);

        return IDistributionContract(address(newStrategy));
    }

}
