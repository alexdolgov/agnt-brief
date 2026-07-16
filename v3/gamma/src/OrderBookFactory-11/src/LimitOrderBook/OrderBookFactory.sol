// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {LPFeeLibrary} from "v4-core/libraries/LPFeeLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId} from "v4-core/types/PoolId.sol";
import {Currency, CurrencyLibrary} from "v4-core/types/Currency.sol";
import {LimitOrderManager} from "./LimitOrderManager.sol";
import {LimitOrderLens} from "./periphery/LimitOrderLens.sol";
import {LimitOrderHook} from "./hooks/LimitOrderHook.sol";
import {DynamicFeeHookRegistry} from "./hooks/DynamicFeeHookRegistry.sol";
import {VolatilityDynamicFeeHookRegistry} from "./hooks/VolatilityDynamicFeeHookRegistry.sol";
import {IDynamicFeeHook} from "./interfaces/IDynamicFeeHook.sol";
import {IVolatilityDynamicFeeHook} from "./interfaces/IVolatilityDynamicFeeHook.sol";
import {HookMiner} from "v4-periphery/src/utils/HookMiner.sol";
import {CurrencySettler} from "./libraries/CurrencySettler.sol";
import {TransientStateLibrary} from "v4-core/libraries/TransientStateLibrary.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";
import {IHooks} from "v4-core/interfaces/IHooks.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {MultiPositionFactory} from "../MultiPositionManager/MultiPositionFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {RebalanceLogic} from "../MultiPositionManager/libraries/RebalanceLogic.sol";
import {VolatilityOracle} from "./libraries/VolatilityOracle.sol";
/**
 * @title OrderBookFactory
 * @notice Factory contract for creating Uniswap V4 pools with limit order support and initial liquidity
 * @dev This contract creates pools and mints initial liquidity using PositionManager's command interface.
 * Users must approve their tokens directly to the OrderBookFactory before calling pool creation functions.
 *
 * WARNING: TOKEN COMPATIBILITY
 * ============================
 * This contract and the associated LimitOrderManager DO NOT support the following token types:
 *
 * 1. Fee-on-transfer tokens: Tokens that charge a fee on transfer will cause transactions to fail
 *    because the received amount will not match the expected amount, breaking order accounting.
 *
 * 2. Rebasing tokens: Tokens that adjust balances will cause unpredictable behavior as position
 *    liquidity and order amounts will not match expected values after rebasing events.
 *
 * 3. Tokens with non-standard transfer behaviors: Including tokens with transfer hooks that can
 *    fail, pause mechanisms, or blacklisting features may cause orders to become stuck or fail.
 *
 * Using unsupported token types may result in:
 * - Failed order creation, cancellation, or claiming
 * - Loss of funds if tokens change behavior after pool creation
 * - Inability to interact with positions
 *
 * POOLS ARE CREATED AT YOUR OWN RISK. Always verify token compatibility before creating pools.
 */
contract OrderBookFactory is AccessControl {
    using CurrencySettler for Currency;
    using CurrencyLibrary for Currency;
    using TransientStateLibrary for IPoolManager;
    using StateLibrary for IPoolManager;
    using SafeERC20 for IERC20;

    // Custom errors for better gas efficiency
    error ZeroAddress();
    error TokenOrderingIncorrect();
    error NoLiquidityProvided();
    error DynamicFeeNotAllowed();
    error InsufficientETH();
    error ETHRefundFailed();
    error NoFeesToWithdraw();
    error ETHTransferFailed();
    error InvalidAmount();
    error SharedVolatilityOracleNotSet();
    error PoolAlreadyReserved();
    error PoolReservedForOther();
    error NotAuthorizedStrategyFactory();
    error InvalidHookAddress();

    bytes32 public constant FEE_COLLECTOR_ROLE = keccak256("FEE_COLLECTOR_ROLE");

    // Struct to store pool information
    struct PoolInfo {
        bytes32 poolId;
        PoolKey poolKey;
        bool isDynamic;
    }

    // Struct for regular pool creation parameters
    struct RegularPoolParams {
        Currency currency0;
        Currency currency1;
        uint24 fee;
        int24 tickSpacing;
        uint160 sqrtPriceX96;
        uint256 deposit0Desired;
        uint256 deposit1Desired;
        address managerOwner;
        string name;
        address to;
        bool useSwap;
        RebalanceLogic.SwapParams swapParams;
        uint256[2][] inMin;
        IMultiPositionManager.RebalanceParams rebalanceParams;
    }

    // Struct for dynamic pool creation parameters
    struct DynamicPoolParams {
        Currency currency0;
        Currency currency1;
        int24 tickSpacing;
        uint160 sqrtPriceX96;
        bytes32 salt;
        uint24 initialFee;
        uint256 deposit0Desired;
        uint256 deposit1Desired;
        address managerOwner;
        string name;
        address to;
        bool useSwap;
        RebalanceLogic.SwapParams swapParams;
        uint256[2][] inMin;
        IMultiPositionManager.RebalanceParams rebalanceParams;
    }

    // Struct for volatility dynamic pool creation parameters
    struct VolatilityDynamicPoolParams {
        Currency currency0;
        Currency currency1;
        int24 tickSpacing;
        uint160 sqrtPriceX96;
        bytes32 salt;
        uint24 baseFee;
        uint24 surgeMultiplier;
        uint32 surgeDuration;
        uint24 initialMaxTicksPerBlock;
        uint256 deposit0Desired;
        uint256 deposit1Desired;
        address managerOwner;
        string name;
        address to;
        bool useSwap;
        RebalanceLogic.SwapParams swapParams;
        uint256[2][] inMin;
        IMultiPositionManager.RebalanceParams rebalanceParams;
        address hookOwner;  // Who owns the hook (can modify fee params). If zero, uses msg.sender.
    }

    LimitOrderManager public limitOrderManager;
    LimitOrderLens public limitOrderLens;
    IPoolManager public poolManager;
    LimitOrderHook public limitOrderHook;
    MultiPositionFactory public immutable multiPositionFactory;
    
    // Pool creation fee settings for each pool type
    uint256 public regularPoolCreationFee;
    uint256 public dynamicPoolCreationFee;
    uint256 public volatilityDynamicCreationFee;
    uint256 public collectedFees;

    // Bytecode registries for hook deployments
    DynamicFeeHookRegistry public dynamicFeeRegistry;
    VolatilityDynamicFeeHookRegistry public volatilityDynamicRegistry;

    // One dynamic fee hook per creator
    mapping(address => address) public creatorDynamicHooks;

    // One volatility dynamic fee hook per creator
    mapping(address => address) public creatorVolatilityDynamicHooks;

    // Track pool creators using pool ID as key
    mapping(bytes32 => address) public poolCreators;
    
    // Track pool info by user address (creator)
    mapping(address => PoolInfo[]) public userToPoolInfo;

    // Shared VolatilityOracle for all per-creator hooks
    address public sharedVolatilityOracle;

    // Reservation system for front-running protection
    mapping(bytes32 => address) public reservedPools; // poolId => authorized strategy
    address public authorizedStrategyFactory;

    // Events for tracking pool creation
    event PoolCreated(bytes32 indexed poolId, address indexed creator, address indexed hook, uint24 fee);
    event PoolInfoStored(address indexed user, bytes32 indexed poolId, bool isDynamic);
    event SharedVolatilityOracleSet(address indexed oracle);
    event RegularPoolCreationFeeUpdated(uint256 newFee);
    event DynamicPoolCreationFeeUpdated(uint256 newFee);
    event VolatilityDynamicCreationFeeUpdated(uint256 newFee);
    event PoolCreationFeeCollected(address indexed creator, uint256 fee);
    event FeesWithdrawn(address indexed recipient, uint256 amount);
    event DynamicFeeRegistryUpdated(address indexed oldRegistry, address indexed newRegistry);
    event VolatilityDynamicRegistryUpdated(address indexed oldRegistry, address indexed newRegistry);
    event PoolReserved(bytes32 indexed poolId, address indexed strategy);
    event PoolReservationCleared(bytes32 indexed poolId);
    event AuthorizedStrategyFactorySet(address indexed factory);
    event VolatilityHookDeployed(address indexed hookOwner, address indexed hookAddr);

    constructor(
        address _limitOrderLens,
        address _limitOrderHook,
        address _multiPositionFactory,
        address _dynamicFeeRegistry,
        address _volatilityDynamicRegistry
    ) {
        if (_limitOrderHook == address(0)) revert ZeroAddress();
        if (_multiPositionFactory == address(0)) revert ZeroAddress();
        if (_dynamicFeeRegistry == address(0)) revert ZeroAddress();
        if (_volatilityDynamicRegistry == address(0)) revert ZeroAddress();

        limitOrderLens = LimitOrderLens(_limitOrderLens);
        poolManager = limitOrderLens.poolManager();
        limitOrderManager = limitOrderLens.limitOrderManager();

        // Store bytecode registries
        dynamicFeeRegistry = DynamicFeeHookRegistry(_dynamicFeeRegistry);
        volatilityDynamicRegistry = VolatilityDynamicFeeHookRegistry(_volatilityDynamicRegistry);
        limitOrderHook = LimitOrderHook(_limitOrderHook);
        multiPositionFactory = MultiPositionFactory(_multiPositionFactory);

        // Grant roles to deployer
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(FEE_COLLECTOR_ROLE, msg.sender);
    }

    /**
     * @notice Create a regular pool with limit order hook and deploy MultiPositionManager
     * @dev Creates pool and deploys MPM with initial liquidity
     * @dev WARNING: Do not use with fee-on-transfer, rebasing, or other non-standard tokens.
     * Such tokens will cause order failures and potential loss of funds.
     */
    function createRegularPoolWithManager(
        RegularPoolParams calldata params
    ) external payable returns (PoolKey memory poolKey, address mpm) {
        // Validate inputs
        if (Currency.unwrap(params.currency0) >= Currency.unwrap(params.currency1)) revert TokenOrderingIncorrect();
        if (params.managerOwner == address(0)) revert ZeroAddress();
        if (params.to == address(0)) revert ZeroAddress();
        if (params.deposit0Desired == 0 && params.deposit1Desired == 0) revert NoLiquidityProvided();
        if (params.fee == LPFeeLibrary.DYNAMIC_FEE_FLAG) revert DynamicFeeNotAllowed();
        if (params.useSwap && params.swapParams.aggregatorAddress == address(0)) revert ZeroAddress();

        // Create the pool
        poolKey = PoolKey({
            currency0: params.currency0,
            currency1: params.currency1,
            fee: params.fee,
            tickSpacing: params.tickSpacing,
            hooks: limitOrderHook
        });

        // Initialize pool and store info
        _initializePool(poolKey, params.sqrtPriceX96, false);

        // Calculate ETH for deployment and collect fees
        uint256 ethForDeployment = _validateETHAndCollectFee(params.currency0, params.deposit0Desired, regularPoolCreationFee);

        // Deploy MultiPositionManager first
        mpm = _deployMultiPositionManager(
            poolKey,
            ethForDeployment,
            params.managerOwner,
            params.name,
            params.deposit0Desired,
            params.deposit1Desired,
            params.to,
            params.useSwap,
            params.swapParams,
            params.inMin,
            params.rebalanceParams
        );

        // Refund excess ETH
        _refundExcessETH(params.currency0, params.deposit0Desired, regularPoolCreationFee);
    }

    /**
     * @notice Create a dynamic fee pool and deploy MultiPositionManager
     * @dev Creates pool with dynamic fee hook and deploys MPM with initial liquidity
     * @dev WARNING: Do not use with fee-on-transfer, rebasing, or other non-standard tokens.
     * Such tokens will cause order failures and potential loss of funds.
     */
    function createDynamicPoolWithManager(
        DynamicPoolParams calldata params
    ) external payable returns (PoolKey memory poolKey, address mpm) {
        // Validate inputs
        if (Currency.unwrap(params.currency0) >= Currency.unwrap(params.currency1)) revert TokenOrderingIncorrect();
        if (params.managerOwner == address(0)) revert ZeroAddress();
        if (params.to == address(0)) revert ZeroAddress();
        if (params.deposit0Desired == 0 && params.deposit1Desired == 0) revert NoLiquidityProvided();
        if (params.useSwap && params.swapParams.aggregatorAddress == address(0)) revert ZeroAddress();

        // Deploy or get dynamic fee hook
        address hookAddr = creatorDynamicHooks[msg.sender];
        if (hookAddr == address(0)) {
            hookAddr = _deployDynamicFeeHook(params.salt);
            creatorDynamicHooks[msg.sender] = hookAddr;
        }

        // Create the pool
        poolKey = PoolKey({
            currency0: params.currency0,
            currency1: params.currency1,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: params.tickSpacing,
            hooks: IHooks(hookAddr)
        });

        // Register and initialize
        IDynamicFeeHook(hookAddr).registerPool(poolKey);
        _initializePool(poolKey, params.sqrtPriceX96, true);

        // Set initial fee if specified
        if (params.initialFee > 0) {
            IDynamicFeeHook(hookAddr).updateDynamicLPFee(poolKey, params.initialFee);
        }

        // Calculate ETH for deployment and collect fees
        uint256 ethForDeployment = _validateETHAndCollectFee(params.currency0, params.deposit0Desired, dynamicPoolCreationFee);

        // Deploy MultiPositionManager
        mpm = _deployMultiPositionManager(
            poolKey,
            ethForDeployment,
            params.managerOwner,
            params.name,
            params.deposit0Desired,
            params.deposit1Desired,
            params.to,
            params.useSwap,
            params.swapParams,
            params.inMin,
            params.rebalanceParams
        );

        // Refund excess ETH
        _refundExcessETH(params.currency0, params.deposit0Desired, dynamicPoolCreationFee);
    }

    /**
     * @notice Create a volatility dynamic fee pool and deploy MultiPositionManager
     * @dev Creates pool with volatility-based dynamic fee adjustment and deploys MPM with initial liquidity
     * @dev WARNING: Do not use with fee-on-transfer, rebasing, or other non-standard tokens.
     * Such tokens will cause order failures and potential loss of funds.
     */
    function createVolatilityDynamicPoolWithManager(
        VolatilityDynamicPoolParams calldata params
    ) external payable returns (PoolKey memory poolKey, address mpm) {
        // Validate inputs
        if (Currency.unwrap(params.currency0) >= Currency.unwrap(params.currency1)) revert TokenOrderingIncorrect();
        if (params.managerOwner == address(0)) revert ZeroAddress();
        if (params.to == address(0)) revert ZeroAddress();
        if (params.deposit0Desired == 0 && params.deposit1Desired == 0) revert NoLiquidityProvided();
        if (params.surgeMultiplier > 100000) revert InvalidAmount(); // Max 10x multiplier (100000 BPS)
        if (params.surgeMultiplier < 10000) revert InvalidAmount(); // Min 1x multiplier (10000 BPS)
        if (params.useSwap && params.swapParams.aggregatorAddress == address(0)) revert ZeroAddress();

        // Track creation fee (may be exempted for reserved pools)
        uint256 creationFee;

        // Scoped block to limit stack depth - hookAddr only needed for pool setup
        {
            // Determine which hook to use and check reservations
            // wasReserved indicates if pool was reserved (fee should be skipped - charged at TokenLaunchFactory level)
            (address hookAddr, bool wasReserved) = _getOrCheckVolatilityHook(params);

            // Skip fee for reserved pools (TokenLaunchFactory collects fees instead)
            creationFee = wasReserved ? 0 : volatilityDynamicCreationFee;

            // Create the pool
            poolKey = PoolKey({
                currency0: params.currency0,
                currency1: params.currency1,
                fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
                tickSpacing: params.tickSpacing,
                hooks: IHooks(hookAddr)
            });

            // Register pool with volatility parameters (only if not already registered)
            IVolatilityDynamicFeeHook(hookAddr).registerPool(
                poolKey,
                params.baseFee,
                params.surgeMultiplier,
                params.surgeDuration,
                params.initialMaxTicksPerBlock
            );
            _initializePool(poolKey, params.sqrtPriceX96, true);
        }

        // Calculate ETH for deployment and collect fees
        uint256 ethForDeployment = _validateETHAndCollectFee(params.currency0, params.deposit0Desired, creationFee);

        // Deploy MultiPositionManager
        mpm = _deployMultiPositionManager(
            poolKey,
            ethForDeployment,
            params.managerOwner,
            params.name,
            params.deposit0Desired,
            params.deposit1Desired,
            params.to,
            params.useSwap,
            params.swapParams,
            params.inMin,
            params.rebalanceParams
        );

        // Refund excess ETH
        _refundExcessETH(params.currency0, params.deposit0Desired, creationFee);
    }

    function _initializePool(PoolKey memory poolKey, uint160 sqrtPriceX96, bool isDynamic) internal {
        poolManager.initialize(poolKey, sqrtPriceX96);
        limitOrderLens.addPoolId(poolKey.toId(), poolKey);

        // Store pool creator information
        bytes32 poolId = PoolId.unwrap(poolKey.toId());
        poolCreators[poolId] = msg.sender;

        userToPoolInfo[msg.sender].push(PoolInfo({
            poolId: poolId,
            poolKey: poolKey,
            isDynamic: isDynamic
        }));

        emit PoolCreated(poolId, msg.sender, address(poolKey.hooks), isDynamic ? LPFeeLibrary.DYNAMIC_FEE_FLAG : poolKey.fee);
        emit PoolInfoStored(msg.sender, poolId, isDynamic);
        
        // Whitelist the pool and enable the hook
        limitOrderManager.setWhitelistedPool(poolKey.toId(), true);
        limitOrderManager.enableHook(address(poolKey.hooks));
    }

    /**
     * @notice Validate ETH amount and collect pool creation fees
     * @param currency0 The first currency
     * @param deposit0Desired Amount of currency0 to deposit
     * @param creationFee The pool creation fee to collect
     * @return ethForDeployment Amount of ETH to forward to MultiPositionFactory
     */
    function _validateETHAndCollectFee(
        Currency currency0,
        uint256 deposit0Desired,
        uint256 creationFee
    ) internal returns (uint256 ethForDeployment) {
        // Calculate total ETH needed
        uint256 ethNeeded = creationFee;
        if (currency0.isAddressZero()) {
            ethNeeded += deposit0Desired;
            ethForDeployment = deposit0Desired;
        }
        if (msg.value < ethNeeded) revert InsufficientETH();

        // Collect pool creation fee
        if (creationFee > 0) {
            collectedFees += creationFee;
            emit PoolCreationFeeCollected(msg.sender, creationFee);
        }
    }

    /**
     * @notice Refund excess ETH to the user
     * @param currency0 The first currency
     * @param deposit0Desired Amount of currency0 deposited
     * @param creationFee The pool creation fee collected
     */
    function _refundExcessETH(
        Currency currency0,
        uint256 deposit0Desired,
        uint256 creationFee
    ) internal {
        uint256 ethUsed = creationFee;
        if (currency0.isAddressZero()) {
            ethUsed += deposit0Desired;
        }

        uint256 ethRemaining = msg.value - ethUsed;
        if (ethRemaining > 0) {
            (bool success, ) = msg.sender.call{value: ethRemaining}("");
            if (!success) revert ETHRefundFailed();
        }
    }

    /**
     * @notice Transfer tokens from user to OrderBookFactory
     * @param currency0 First currency
     * @param currency1 Second currency
     * @param amount0 Amount of currency0 to transfer
     * @param amount1 Amount of currency1 to transfer
     */
    function _transferTokensFromUser(
        Currency currency0,
        Currency currency1,
        uint256 amount0,
        uint256 amount1
    ) internal {
        if (!currency0.isAddressZero() && amount0 > 0) {
            IERC20(Currency.unwrap(currency0)).safeTransferFrom(msg.sender, address(this), amount0);
        }
        if (amount1 > 0) {
            IERC20(Currency.unwrap(currency1)).safeTransferFrom(msg.sender, address(this), amount1);
        }
    }

    /**
     * @notice Approve tokens for future MultiPositionManager
     * @param currency0 First currency
     * @param currency1 Second currency
     * @param amount0 Amount of currency0 to approve
     * @param amount1 Amount of currency1 to approve
     * @param mpm Address of MultiPositionManager to approve
     */
    function _approveTokensForMPM(
        Currency currency0,
        Currency currency1,
        uint256 amount0,
        uint256 amount1,
        address mpm
    ) internal {
        if (!currency0.isAddressZero() && amount0 > 0) {
            IERC20(Currency.unwrap(currency0)).forceApprove(mpm, amount0);
        }
        if (amount1 > 0) {
            IERC20(Currency.unwrap(currency1)).forceApprove(mpm, amount1);
        }
    }

    /**
     * @notice Deploy MultiPositionManager via MultiPositionFactory
     * @param poolKey The pool key
     * @param ethForDeployment Amount of ETH to forward to the factory
     * @param managerOwner Owner of the MultiPositionManager
     * @param name Name for the MPM
     * @param deposit0Desired Amount of currency0 to deposit
     * @param deposit1Desired Amount of currency1 to deposit
     * @param to Recipient of LP tokens
     * @param useSwap Whether to use swap during deployment
     * @param swapParams Swap parameters (if useSwap is true)
     * @param inMin Minimum amounts for deposit
     * @param rebalanceParams Rebalance parameters
     * @return mpm Address of the deployed MultiPositionManager
     */
    function _deployMultiPositionManager(
        PoolKey memory poolKey,
        uint256 ethForDeployment,
        address managerOwner,
        string memory name,
        uint256 deposit0Desired,
        uint256 deposit1Desired,
        address to,
        bool useSwap,
        RebalanceLogic.SwapParams memory swapParams,
        uint256[2][] memory inMin,
        IMultiPositionManager.RebalanceParams memory rebalanceParams
    ) internal returns (address mpm) {
        // Step 1: Transfer tokens from user to OrderBookFactory
        _transferTokensFromUser(poolKey.currency0, poolKey.currency1, deposit0Desired, deposit1Desired);

        // Step 2: Pre-compute future MPM address using factory's computeAddress
        address futureMPM = multiPositionFactory.computeAddress(poolKey, managerOwner, name);

        // Step 3: Pre-approve the future MPM address (before it exists!)
        _approveTokensForMPM(poolKey.currency0, poolKey.currency1, deposit0Desired, deposit1Desired, futureMPM);

        // Step 4: Deploy and deposit (with or without rebalance based on strategy)
        if (rebalanceParams.strategy == address(0)) {
            // No strategy - deploy and deposit with empty rebalance
            mpm = multiPositionFactory.deployDepositAndRebalance{value: ethForDeployment}(
                poolKey, managerOwner, name, deposit0Desired, deposit1Desired, to, inMin, rebalanceParams
            );
        } else if (useSwap) {
            // With strategy and swap
            mpm = multiPositionFactory.deployDepositAndRebalanceSwap{value: ethForDeployment}(
                poolKey, managerOwner, name, deposit0Desired, deposit1Desired, to, swapParams, inMin, rebalanceParams
            );
        } else {
            // With strategy, no swap
            mpm = multiPositionFactory.deployDepositAndRebalance{value: ethForDeployment}(
                poolKey, managerOwner, name, deposit0Desired, deposit1Desired, to, inMin, rebalanceParams
            );
        }

        // Step 5: Sanity check - verify deployed address matches prediction
        assert(mpm == futureMPM);
    }

    function _deployDynamicFeeHook(bytes32 salt) internal returns (address) {
        address dynamicFeeHookAddr;
        bytes memory bytecode = abi.encodePacked(
            dynamicFeeRegistry.getBytecode(),
            abi.encode(poolManager, address(limitOrderManager), msg.sender, address(this))
        );

        assembly {
            dynamicFeeHookAddr := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
            if iszero(extcodesize(dynamicFeeHookAddr)) {
                revert(0, 0)
            }
        }

        return dynamicFeeHookAddr;
    }

    function _deployVolatilityDynamicFeeHook(bytes32 salt, address creator) internal returns (address) {
        if (sharedVolatilityOracle == address(0)) revert SharedVolatilityOracleNotSet();

        address volatilityHookAddr;
        bytes memory bytecode = abi.encodePacked(
            volatilityDynamicRegistry.getBytecode(),
            abi.encode(
                poolManager,
                address(limitOrderManager),
                sharedVolatilityOracle,
                creator,
                address(this)
            )
        );

        // Use CREATE2 to deploy the hook with specific bytecode and salt
        // This is required for deterministic hook addresses with correct flags
        assembly ("memory-safe") {
            volatilityHookAddr := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
            if iszero(extcodesize(volatilityHookAddr)) {
                revert(0, 0)
            }
        }

        return volatilityHookAddr;
    }

    function setRegularPoolCreationFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        regularPoolCreationFee = _fee;
        emit RegularPoolCreationFeeUpdated(_fee);
    }

    function setDynamicPoolCreationFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        dynamicPoolCreationFee = _fee;
        emit DynamicPoolCreationFeeUpdated(_fee);
    }

    function setVolatilityDynamicCreationFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        volatilityDynamicCreationFee = _fee;
        emit VolatilityDynamicCreationFeeUpdated(_fee);
    }

    function setDynamicFeeRegistry(address _registry) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_registry == address(0)) revert ZeroAddress();
        address oldRegistry = address(dynamicFeeRegistry);
        dynamicFeeRegistry = DynamicFeeHookRegistry(_registry);
        emit DynamicFeeRegistryUpdated(oldRegistry, _registry);
    }

    function setVolatilityDynamicRegistry(address _registry) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_registry == address(0)) revert ZeroAddress();
        address oldRegistry = address(volatilityDynamicRegistry);
        volatilityDynamicRegistry = VolatilityDynamicFeeHookRegistry(_registry);
        emit VolatilityDynamicRegistryUpdated(oldRegistry, _registry);
    }

    function withdrawFees(address recipient) external onlyRole(FEE_COLLECTOR_ROLE) {
        if (recipient == address(0)) revert ZeroAddress();
        uint256 amount = collectedFees;
        if (amount == 0) revert NoFeesToWithdraw();

        collectedFees = 0;
        emit FeesWithdrawn(recipient, amount);

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) revert ETHTransferFailed();
    }
    
    
    function computeSaltForCreator(
        address creator,
        address _limitOrderManager,
        address factory
    ) public view returns (bytes32 salt, address hookAddress) {
        uint160 flags = uint160(
            Hooks.BEFORE_SWAP_FLAG |
            Hooks.AFTER_SWAP_FLAG
        );

        bytes memory creationCode = dynamicFeeRegistry.getBytecode();
        bytes memory constructorArgs = abi.encode(
            poolManager,
            _limitOrderManager,
            creator,
            factory
        );

        (hookAddress, salt) = HookMiner.find(
            factory, flags, creationCode, constructorArgs
        );
    }

    function computeSaltForVolatilityDynamic(
        address creator,
        address _limitOrderManager,
        address factory
    ) public view returns (bytes32 salt, address hookAddress) {
        if (sharedVolatilityOracle == address(0)) revert SharedVolatilityOracleNotSet();

        uint160 flags = uint160(
            Hooks.BEFORE_SWAP_FLAG |
            Hooks.AFTER_SWAP_FLAG |
            Hooks.BEFORE_INITIALIZE_FLAG
        );

        bytes memory creationCode = volatilityDynamicRegistry.getBytecode();
        bytes memory constructorArgs = abi.encode(
            poolManager,
            _limitOrderManager,
            sharedVolatilityOracle,
            creator,
            factory
        );

        (hookAddress, salt) = HookMiner.find(
            factory, flags, creationCode, constructorArgs
        );
    }

    /// @notice Deploy a volatility hook for a creator using a pre-computed salt
    /// @dev Salt must be computed off-chain. Verifies the resulting address has correct hook flags.
    ///      This allows early hook deployment during initializeDistribution() to avoid expensive
    ///      on-chain HookMiner.find() during migrate().
    /// @param hookOwner The owner of the hook
    /// @param salt The pre-computed salt from HookMiner
    /// @return hookAddr The deployed hook address
    function deployVolatilityHookWithSalt(address hookOwner, bytes32 salt)
        external
        returns (address hookAddr)
    {
        if (hookOwner == address(0)) revert ZeroAddress();

        // If hook already exists, return it (idempotent)
        hookAddr = creatorVolatilityDynamicHooks[hookOwner];
        if (hookAddr != address(0)) {
            return hookAddr;
        }

        // Deploy the hook with provided salt
        hookAddr = _deployVolatilityDynamicFeeHook(salt, hookOwner);

        // Verify deployed address has correct hook flags
        // VolatilityDynamicFeeHook requires: BEFORE_SWAP, AFTER_SWAP, BEFORE_INITIALIZE
        // Check that the hook address has these flag bits set in the lower bits
        uint160 hookFlags = uint160(hookAddr) & Hooks.ALL_HOOK_MASK;
        uint160 requiredFlags = Hooks.BEFORE_SWAP_FLAG | Hooks.AFTER_SWAP_FLAG | Hooks.BEFORE_INITIALIZE_FLAG;
        if ((hookFlags & requiredFlags) != requiredFlags) {
            revert InvalidHookAddress();
        }

        // Store for future lookups
        creatorVolatilityDynamicHooks[hookOwner] = hookAddr;

        // Register with shared oracle
        VolatilityOracle(sharedVolatilityOracle).addAuthorizedHook(hookAddr);

        emit VolatilityHookDeployed(hookOwner, hookAddr);
    }

    /// @notice Get all pool IDs created by a specific creator
    /// @param creator The address of the creator
    /// @return poolIds Array of pool IDs created by this address
    function getPoolsByCreator(address creator) external view returns (bytes32[] memory poolIds) {
        PoolInfo[] memory pools = userToPoolInfo[creator];
        poolIds = new bytes32[](pools.length);
        for (uint256 i = 0; i < pools.length; i++) {
            poolIds[i] = pools[i].poolId;
        }
    }
    
    /// @notice Get all pool information for a specific creator
    /// @param creator The address of the creator
    /// @return Array of PoolInfo structs containing pool details
    function getPoolInfoByCreator(address creator) external view returns (PoolInfo[] memory) {
        return userToPoolInfo[creator];
    }

    /// @notice Set the shared volatility oracle for all per-creator hooks
    /// @dev Only admin can set this. Should be called once during deployment.
    /// @param oracle The address of the shared VolatilityOracle
    function setSharedVolatilityOracle(address oracle) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (oracle == address(0)) revert ZeroAddress();
        sharedVolatilityOracle = oracle;
        emit SharedVolatilityOracleSet(oracle);
    }

    /// @notice Set the authorized strategy factory for pool reservations
    /// @dev Only admin can set this
    /// @param factory The address of the authorized strategy factory
    function setAuthorizedStrategyFactory(address factory) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (factory == address(0)) revert ZeroAddress();
        authorizedStrategyFactory = factory;
        emit AuthorizedStrategyFactorySet(factory);
    }

    /// @notice Reserve a pool ID for a specific strategy contract
    /// @dev Only the authorized strategy factory can call this
    /// @param poolId The pool ID to reserve
    /// @param strategy The strategy contract that will be authorized to create this pool
    function reservePoolForStrategy(bytes32 poolId, address strategy) external {
        if (msg.sender != authorizedStrategyFactory) revert NotAuthorizedStrategyFactory();
        if (reservedPools[poolId] != address(0)) revert PoolAlreadyReserved();
        reservedPools[poolId] = strategy;
        emit PoolReserved(poolId, strategy);
    }

    /// @notice Compute the pool ID for a volatility dynamic pool
    /// @dev Used by strategy factories to compute the pool ID for reservation
    /// @param hookOwner The owner of the hook (determines hook address)
    /// @param currency0 The first currency
    /// @param currency1 The second currency
    /// @param tickSpacing The tick spacing
    /// @return poolId The computed pool ID
    function computePoolIdForVolatility(
        address hookOwner,
        Currency currency0,
        Currency currency1,
        int24 tickSpacing
    ) public view returns (bytes32 poolId) {
        // Get or compute the hook address for this hookOwner
        address hookAddr = creatorVolatilityDynamicHooks[hookOwner];
        if (hookAddr == address(0)) {
            // Hook doesn't exist yet, compute what it would be
            (, hookAddr) = computeSaltForVolatilityDynamic(
                hookOwner,
                address(limitOrderManager),
                address(this)
            );
        }

        // Compute the pool key and then the pool ID
        PoolKey memory key = PoolKey({
            currency0: currency0,
            currency1: currency1,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: tickSpacing,
            hooks: IHooks(hookAddr)
        });

        poolId = PoolId.unwrap(key.toId());
    }

    /// @notice Internal helper to deploy or get per-creator volatility hook
    /// @dev Per-creator hooks provide natural front-running protection via unique addresses
    /// @param params The pool creation parameters
    /// @return hookAddr The address of the hook to use
    /// @return wasReserved True if the pool was reserved (fee should be skipped)
    function _getOrCheckVolatilityHook(VolatilityDynamicPoolParams calldata params)
        internal
        returns (address hookAddr, bool wasReserved)
    {
        // Determine hook owner: use hookOwner if specified, otherwise msg.sender
        address owner = params.hookOwner != address(0) ? params.hookOwner : msg.sender;

        // Compute expected poolId and check reservation
        bytes32 poolId = computePoolIdForVolatility(owner, params.currency0, params.currency1, params.tickSpacing);
        address reserved = reservedPools[poolId];
        if (reserved != address(0) && reserved != msg.sender) {
            revert PoolReservedForOther();
        }

        // Clear reservation after use and mark as reserved for fee exemption
        if (reserved != address(0)) {
            delete reservedPools[poolId];
            emit PoolReservationCleared(poolId);
            wasReserved = true;
        }

        // Per-creator pattern - each creator gets unique hook
        hookAddr = creatorVolatilityDynamicHooks[owner];
        if (hookAddr == address(0)) {
            // Compute the proper salt using HookMiner to ensure valid hook flags
            (bytes32 minedSalt,) = computeSaltForVolatilityDynamic(
                owner,
                address(limitOrderManager),
                address(this)
            );
            hookAddr = _deployVolatilityDynamicFeeHook(minedSalt, owner);
            creatorVolatilityDynamicHooks[owner] = hookAddr;

            // Register newly deployed hook with the shared oracle
            VolatilityOracle(sharedVolatilityOracle).addAuthorizedHook(hookAddr);
        }
    }

    receive() external payable {}
}