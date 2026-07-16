// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IDistributionContract} from "liquidity-launcher/src/interfaces/IDistributionContract.sol";
import {MigratorParameters} from "liquidity-launcher/src/types/MigratorParameters.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {OrderBookFactory} from "../LimitOrderBook/OrderBookFactory.sol";
import {SuperchainLBPStrategy} from "./SuperchainLBPStrategy.sol";
import {SuperchainLBPStrategyDeployer} from "./SuperchainLBPStrategyDeployer.sol";
import {ISuperchainLBPStrategyFactory} from "./interfaces/ISuperchainLBPStrategyFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {Currency, CurrencyLibrary} from "@uniswap/v4-core/src/types/Currency.sol";
import {LPFeeLibrary} from "@uniswap/v4-core/src/libraries/LPFeeLibrary.sol";
import {LBPDeploymentLib} from "./libraries/LBPDeploymentLib.sol";

/// @title SuperchainLBPStrategyFactory
/// @notice Factory for deploying SuperchainLBPStrategy instances
/// @dev Implements IDistributionStrategy for integration with LiquidityLauncher
///      Uses reservation system for front-running protection
contract SuperchainLBPStrategyFactory is ISuperchainLBPStrategyFactory {
    using CurrencyLibrary for Currency;
    uint256 private constant BPS_DENOMINATOR = 10_000;

    /// @dev Parameters for strategy deployment (used to avoid stack too deep)
    struct DeployParams {
        address token;
        uint128 amount;
        bytes32 salt;
        bytes32 hookSalt;
    }

    /// @notice The OrderBookFactory used to deploy pools and MPMs
    OrderBookFactory public immutable orderBookFactory;

    /// @notice The PoolManager used for Uniswap V4 pools
    IPoolManager public immutable poolManager;

    /// @notice The deployer contract for SuperchainLBPStrategy (reduces factory bytecode size)
    SuperchainLBPStrategyDeployer public immutable deployer;

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
    constructor(OrderBookFactory _orderBookFactory, IPoolManager _poolManager, address _liquidityLauncher, address _ccaFactory) {
        if (address(_orderBookFactory) == address(0)) revert InvalidConfigData();
        if (address(_poolManager) == address(0)) revert InvalidConfigData();
        if (_liquidityLauncher == address(0)) revert InvalidConfigData();
        if (_ccaFactory == address(0)) revert InvalidConfigData();

        orderBookFactory = _orderBookFactory;
        poolManager = _poolManager;
        liquidityLauncher = _liquidityLauncher;
        ccaFactory = _ccaFactory;

        // Deploy the deployer contract with this factory as authorized caller
        deployer = new SuperchainLBPStrategyDeployer(address(this));
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

        // Decode configuration (always VOLATILITY pool type)
        (
            MigratorParameters memory migratorParams,
            IMultiPositionManager.RebalanceParams memory rebalanceParams,
            string memory mpmName,
            bytes memory auctionParams,
            bytes32 hookSalt
        ) = abi.decode(configData, (MigratorParameters, IMultiPositionManager.RebalanceParams, string, bytes, bytes32));

        _validateVolatilityFeeCompatibility(migratorParams.poolLPFee);

        // Override user-provided auctionFactory with canonical CCA factory
        migratorParams.auctionFactory = ccaFactory;
        bytes32 effectiveHookSalt = _deriveEffectiveHookSalt(hookSalt, salt);

        // Deploy strategy and reserve pool
        DeployParams memory params = DeployParams({
            token: token,
            amount: uint128(amount),
            salt: salt,
            hookSalt: effectiveHookSalt
        });

        SuperchainLBPStrategy newStrategy = _deployStrategy(params, migratorParams, rebalanceParams, mpmName, auctionParams);
        _reservePool(params.token, migratorParams, params.hookSalt, address(newStrategy));

        emit SuperchainLBPStrategyCreated(address(newStrategy), token, amount);
        return IDistributionContract(address(newStrategy));
    }

    /// @dev Internal function to deploy strategy (avoids stack too deep)
    function _deployStrategy(
        DeployParams memory params,
        MigratorParameters memory migratorParams,
        IMultiPositionManager.RebalanceParams memory rebalanceParams,
        string memory mpmName,
        bytes memory auctionParams
    ) internal returns (SuperchainLBPStrategy) {
        // Cache struct fields to reduce stack pressure
        bytes32 _salt = params.salt;
        bytes32 _hookSalt = params.hookSalt;
        address deployed = deployer.deploy(
            _salt, params.token, params.amount, migratorParams, auctionParams,
            poolManager, orderBookFactory, rebalanceParams, mpmName,
            _hookSalt, _salt // salt is also callerSalt
        );
        return SuperchainLBPStrategy(payable(deployed));
    }

    /// @dev Internal function to reserve pool (avoids stack too deep)
    function _reservePool(
        address token,
        MigratorParameters memory migratorParams,
        bytes32 hookSalt,
        address strategy
    ) internal {
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

        bytes32 poolId = orderBookFactory.computePoolIdForVolatilityLimitOrder(
            hookOwner, hookSalt, currency0, currency1, migratorParams.poolTickSpacing
        );
        orderBookFactory.reservePoolForStrategy(poolId, strategy);

        emit PoolReservedForStrategy(poolId, strategy, hookOwner);
    }

    /// @dev Derives a caller-specific hook salt so each caller creates a unique pool reservation.
    function _deriveEffectiveHookSalt(bytes32 hookSalt, bytes32 callerSalt) internal pure returns (bytes32) {
        return keccak256(abi.encode(hookSalt, callerSalt));
    }

    /// @dev Ensure launch-time base fee is compatible with the fixed migration surge multiplier.
    function _validateVolatilityFeeCompatibility(uint24 poolLPFee) internal pure {
        uint256 maxPossibleFee = uint256(poolLPFee)
            + (uint256(poolLPFee) * LBPDeploymentLib.volatilitySurgeMultiplierBps() / BPS_DENOMINATOR);
        if (maxPossibleFee > LPFeeLibrary.MAX_LP_FEE) revert InvalidConfigData();
    }

}
