// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IDistributionContract} from "liquidity-launcher/src/interfaces/IDistributionContract.sol";
import {MigratorParameters} from "liquidity-launcher/src/types/MigratorParameters.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {UnilaunchOrderBookFactory} from "../LimitOrderBook/UnilaunchOrderBookFactory.sol";
import {UnilaunchSuperchainLBPStrategy} from "./UnilaunchSuperchainLBPStrategy.sol";
import {UnilaunchSuperchainLBPStrategyDeployer} from "./UnilaunchSuperchainLBPStrategyDeployer.sol";
import {ISuperchainLBPStrategyFactory} from "./interfaces/ISuperchainLBPStrategyFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {IOrderBookFactory} from "../LimitOrderBook/interfaces/IOrderBookFactory.sol";

/// @title SuperchainLBPStrategyFactory
/// @notice Factory for deploying SuperchainLBPStrategy instances
/// @dev Implements IDistributionStrategy for integration with LiquidityLauncher
///      Uses reservation system for front-running protection
contract UnilaunchSuperchainLBPStrategyFactory is ISuperchainLBPStrategyFactory {

    /// @dev Parameters for strategy deployment (used to avoid stack too deep)
    struct DeployParams {
        address token;
        uint128 amount;
        bytes32 salt;
        bytes32 hookSalt;
    }

    struct StrategyConfig {
        MigratorParameters migratorParams;
        IMultiPositionManager.RebalanceParams rebalanceParams;
        string mpmName;
        bytes auctionParams;
        bytes32 hookSalt;
        address callOptionFactory;
        address buyback;
    }

    /// @notice The OrderBookFactory used to deploy pools and MPMs
    UnilaunchOrderBookFactory private immutable unilaunchOrderBookFactory;

    /// @notice The PoolManager used for Uniswap V4 pools
    IPoolManager public immutable poolManager;

    /// @notice The deployer contract for SuperchainLBPStrategy (reduces factory bytecode size)
    UnilaunchSuperchainLBPStrategyDeployer public immutable deployer;

    /// @notice The canonical LiquidityLauncher that can call initializeDistribution
    address public immutable liquidityLauncher;

    /// @notice The canonical ContinuousClearingAuction factory
    address public immutable ccaFactory;

    /// @notice Error thrown when configuration data is invalid
    error InvalidConfigData();

    /// @notice Error when caller is not the liquidity launcher
    error UnauthorizedCaller();

    /// @notice Event emitted when a pool is reserved for a strategy
    event PoolReservedForStrategy(bytes32 indexed poolId, address indexed strategy, address indexed hookOwner);

    /// @param _orderBookFactory The OrderBookFactory contract
    /// @param _poolManager The Uniswap V4 PoolManager contract
    /// @param _liquidityLauncher The canonical LiquidityLauncher authorized to call initializeDistribution
    /// @param _ccaFactory The canonical ContinuousClearingAuction factory
    constructor(UnilaunchOrderBookFactory _orderBookFactory, IPoolManager _poolManager, address _liquidityLauncher, address _ccaFactory) {
        if (address(_orderBookFactory) == address(0)) revert InvalidConfigData();
        if (address(_poolManager) == address(0)) revert InvalidConfigData();
        if (_liquidityLauncher == address(0)) revert InvalidConfigData();
        if (_ccaFactory == address(0)) revert InvalidConfigData();

        unilaunchOrderBookFactory = _orderBookFactory;
        poolManager = _poolManager;
        liquidityLauncher = _liquidityLauncher;
        ccaFactory = _ccaFactory;

        // Deploy the deployer contract with this factory as authorized caller
        deployer = new UnilaunchSuperchainLBPStrategyDeployer(address(this));
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
        if (msg.sender != liquidityLauncher) revert UnauthorizedCaller();
        if (amount > type(uint128).max) revert InvalidConfigData();
        distributionContract = IDistributionContract(_initializeStrategy(token, uint128(amount), configData, salt));
    }

    function _initializeStrategy(address token, uint128 amount, bytes calldata configData, bytes32 salt)
        internal
        returns (address strategyAddress)
    {
        StrategyConfig memory config = _decodeConfig(configData);
        strategyAddress = _deployAndAuthorize(token, amount, salt, config);
        emit SuperchainLBPStrategyCreated(strategyAddress, token, amount);
    }

    function _decodeConfig(bytes calldata configData) internal view returns (StrategyConfig memory config) {
        (
            MigratorParameters memory migratorParams,
            IMultiPositionManager.RebalanceParams memory rebalanceParams,
            string memory mpmName,
            bytes memory auctionParams,
            bytes32 hookSalt,
            address callOptionFactory,
            address buyback
        ) = abi.decode(
            configData,
            (MigratorParameters, IMultiPositionManager.RebalanceParams, string, bytes, bytes32, address, address)
        );

        migratorParams.auctionFactory = ccaFactory;
        if (migratorParams.currency != address(0)) revert InvalidConfigData();
        if (migratorParams.poolTickSpacing != 60) revert InvalidConfigData();

        config = StrategyConfig({
            migratorParams: migratorParams,
            rebalanceParams: rebalanceParams,
            mpmName: mpmName,
            auctionParams: auctionParams,
            hookSalt: hookSalt,
            callOptionFactory: callOptionFactory,
            buyback: buyback
        });
    }

    function _deployAndAuthorize(
        address token,
        uint128 amount,
        bytes32 salt,
        StrategyConfig memory config
    ) internal returns (address strategyAddress) {
        DeployParams memory params = DeployParams({token: token, amount: amount, salt: salt, hookSalt: config.hookSalt});
        UnilaunchSuperchainLBPStrategy newStrategy = _deployStrategy(
            params,
            config.migratorParams,
            config.rebalanceParams,
            config.mpmName,
            config.auctionParams,
            config.callOptionFactory,
            config.buyback
        );
        unilaunchOrderBookFactory.authorizeStrategy(address(newStrategy), true);
        return address(newStrategy);
    }

    /// @dev Internal function to deploy strategy (avoids stack too deep)
    function _deployStrategy(
        DeployParams memory params,
        MigratorParameters memory migratorParams,
        IMultiPositionManager.RebalanceParams memory rebalanceParams,
        string memory mpmName,
        bytes memory auctionParams,
        address callOptionFactory,
        address buyback
    ) internal returns (UnilaunchSuperchainLBPStrategy) {
        // Cache struct fields to reduce stack pressure
        bytes32 _salt = params.salt;
        bytes32 _hookSalt = params.hookSalt;
        UnilaunchSuperchainLBPStrategy.StrategyInitParams memory init =
            UnilaunchSuperchainLBPStrategy.StrategyInitParams({
                token: params.token,
                totalSupply: params.amount,
                migratorParams: migratorParams,
                auctionParams: auctionParams,
                positionManager: IPositionManager(address(0)),
                poolManager: poolManager,
                orderBookFactory: unilaunchOrderBookFactory,
                rebalanceParams: rebalanceParams,
                mpmName: mpmName,
                hookSalt: _hookSalt,
                callerSalt: _salt,
                callOptionFactory: callOptionFactory,
                buyback: buyback
            });

        address deployed = deployer.deploy(_salt, init);
        return UnilaunchSuperchainLBPStrategy(payable(deployed));
    }

    /// @inheritdoc ISuperchainLBPStrategyFactory
    function orderBookFactory() external view override returns (IOrderBookFactory) {
        return IOrderBookFactory(address(unilaunchOrderBookFactory));
    }
}
