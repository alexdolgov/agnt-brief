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
import {PoolType} from "./types/PoolType.sol";
import {Currency, CurrencyLibrary} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {LPFeeLibrary} from "@uniswap/v4-core/src/libraries/LPFeeLibrary.sol";

/// @title SuperchainLBPStrategyFactory
/// @notice Factory for deploying SuperchainLBPStrategy instances
/// @dev Implements IDistributionStrategy for integration with LiquidityLauncher
contract SuperchainLBPStrategyFactory is ISuperchainLBPStrategyFactory {
    using CurrencyLibrary for Currency;

    /// @notice The OrderBookFactory used to deploy pools and MPMs
    OrderBookFactory public immutable orderBookFactory;

    /// @notice The PoolManager used for Uniswap V4 pools
    IPoolManager public immutable poolManager;

    /// @notice Shared volatility hook for token launches (cached from OrderBookFactory)
    address public immutable sharedVolatilityHook;

    /// @notice The deployer contract for SuperchainLBPStrategy (reduces factory bytecode size)
    SuperchainLBPStrategyDeployer public immutable deployer;

    /// @notice Error thrown when configuration data is invalid
    error InvalidConfigData();

    /// @param _orderBookFactory The OrderBookFactory contract
    /// @param _poolManager The Uniswap V4 PoolManager contract
    constructor(OrderBookFactory _orderBookFactory, IPoolManager _poolManager) {
        if (address(_orderBookFactory) == address(0)) revert InvalidConfigData();
        if (address(_poolManager) == address(0)) revert InvalidConfigData();

        orderBookFactory = _orderBookFactory;
        poolManager = _poolManager;

        // Cache the shared volatility hook address from OrderBookFactory
        sharedVolatilityHook = _orderBookFactory.tokenLaunchVolatilityHook();

        // Deploy the deployer contract (separates bytecode to reduce factory size)
        deployer = new SuperchainLBPStrategyDeployer();
    }

    /// @notice Initializes a new distribution strategy
    /// @dev Decodes configData and deploys a new SuperchainLBPStrategy
    /// @param token The token being distributed
    /// @param amount The amount of tokens being distributed
    /// @param configData Encoded configuration containing:
    ///        - MigratorParameters (currency, fees, blocks, etc.)
    ///        - PoolType (REGULAR, DYNAMIC, or VOLATILITY)
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
        // Decode configuration
        (
            MigratorParameters memory migratorParams,
            PoolType poolType,
            IMultiPositionManager.RebalanceParams memory rebalanceParams,
            string memory mpmName,
            bytes memory auctionParams
        ) = abi.decode(configData, (MigratorParameters, PoolType, IMultiPositionManager.RebalanceParams, string, bytes));

        // Validate amount fits in uint128
        if (amount > type(uint128).max) revert InvalidConfigData();

        // Only reserve pools for VOLATILITY type (which uses shared hook)
        if (poolType == PoolType.VOLATILITY && sharedVolatilityHook != address(0)) {
            // 1. Compute the future pool key that will be created during migration
            PoolKey memory futurePoolKey = _computeFuturePoolKey(token, migratorParams);

            // 2. Predict the strategy address using CREATE2 via deployer
            address futureStrategyAddress = deployer.computeAddress(
                salt, token, uint128(amount), migratorParams, auctionParams, poolManager, orderBookFactory, poolType, rebalanceParams, mpmName
            );

            // 3. Reserve this pool for the strategy we're about to deploy
            orderBookFactory.reservePoolForStrategy(futurePoolKey, futureStrategyAddress);
        }

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
                    poolType,
                    rebalanceParams,
                    mpmName
                )
            )
        );

        emit SuperchainLBPStrategyCreated(address(newStrategy), token, amount);

        return IDistributionContract(address(newStrategy));
    }

    /// @notice Computes the pool key that will be created during migration
    /// @dev This must match the logic in SuperchainLBPStrategy._initializePool()
    /// @param token The pool token address
    /// @param migratorParams Migration parameters containing currency and pool config
    /// @return key The computed pool key
    function _computeFuturePoolKey(address token, MigratorParameters memory migratorParams)
        internal
        view
        returns (PoolKey memory key)
    {
        address currency = migratorParams.currency;

        // Sort currencies (same as SuperchainLBPStrategy._initializePool)
        Currency currency0 = Currency.wrap(currency < token ? currency : token);
        Currency currency1 = Currency.wrap(currency < token ? token : currency);

        // For VOLATILITY pools, use DYNAMIC_FEE_FLAG and shared hook
        key = PoolKey({
            currency0: currency0,
            currency1: currency1,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: migratorParams.poolTickSpacing,
            hooks: IHooks(sharedVolatilityHook)
        });
    }

}
