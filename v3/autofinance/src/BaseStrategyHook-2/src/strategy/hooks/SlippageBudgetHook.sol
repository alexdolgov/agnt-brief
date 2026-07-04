// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IStrategy } from "src/interfaces/strategy/IStrategy.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";
import { IStrategyHook } from "src/interfaces/strategy/IStrategyHook.sol";
import { Errors } from "src/utils/Errors.sol";
import { Roles } from "src/libs/Roles.sol";
import { BaseStrategyHook } from "src/strategy/hooks/BaseStrategyHook.sol";
import { IAutopool } from "src/interfaces/vault/IAutopool.sol";
import { ProcessRebalanceParams } from "src/vault/libs/AutopoolState.sol";
import { SubSaturateMath } from "src/strategy/libs/SubSaturateMath.sol";

/**
 * @title SlippageBudgetHook
 * @notice Hook that enforces a cumulative slippage budget over a configured time period
 * @dev Budget is reset at the start of each period and reduced by swap costs
 * @dev Reminder on the rebalance flow:
 *
 *          ┌───────────────────────┐
 *          │    destinationOut     │
 *          └──────────┬────────────┘
 *                     │ tokenOut
 *                     │ amountOut
 *                     ▼
 *                  [ Swap ]
 *                     |
 *                     │ tokenIn
 *                     │ amountIn
 *                     ▼
 *          ┌───────────────────────┐
 *          │    destinationIn      │
 *          └───────────────────────┘
 *
 * @dev Slippage budget only applies to:
 *      - dest-to-dest operations
 *      - idle-to-dest operations
 * @dev Trim operations (dest-to-idle) are NOT gated by the budget
 */
contract SlippageBudgetHook is BaseStrategyHook {
    using SubSaturateMath for uint256;

    /// @dev We use uint64 to save 3 storage reads
    struct PoolBudgetConfig {
        /// @param budgetBps Budget in basis points (1% = 100)
        uint64 budgetBps;
        /// @param periodInSeconds Budget period duration
        uint64 periodInSeconds;
        /// @param periodStart Start timestamp of current period
        uint64 periodStart;
        /// @param usedBudgetBps Used budget in current period
        uint64 usedBudgetBps;
    }

    struct RegistrationData {
        uint256 budgetBps;
        uint256 periodInSeconds;
    }

    error BudgetPeriodTooShort(uint256 period);
    error BudgetExceeded(uint256 slippageBps, uint256 budgetBps, uint256 usedBudgetBps);
    error BudgetTooHigh(uint256 budget);

    event BudgetConfigured(address indexed pool, uint256 budgetBps, uint256 periodInSeconds);
    event BudgetPeriodReset(address indexed pool, uint256 timestamp);
    event SlippageConsumed(
        address indexed pool,
        uint256 valueOut,
        uint256 valueIn,
        uint256 aum,
        uint256 slippageBps,
        uint256 remainingBudget
    );

    /// @notice Minimum allowed period duration in seconds (1 day)
    uint256 private constant MIN_PERIOD = 1 days;

    /// @notice Maximum allowed budget in basis points (10%)
    uint256 private constant MAX_BUDGET_BPS = 1000;

    /// @notice Basis points denominator (100% = 10_000)
    uint256 private constant BPS_DENOMINATOR = 10_000;

    /// @notice Mapping of pool address to its budget configuration
    mapping(address => PoolBudgetConfig) private _poolBudgetConfig;

    /// @notice Get the full budget configuration for a pool
    /// @param pool The pool address to get config for
    /// @return The pool's budget configuration
    function getPoolConfig(
        address pool
    ) external view returns (PoolBudgetConfig memory) {
        return _poolBudgetConfig[pool];
    }

    constructor(
        ISystemRegistry _systemRegistry
    ) BaseStrategyHook(_systemRegistry) { }

    /// @notice Configure budget settings for specific pools
    /// @param pools Target pools to configure
    /// @param budgetsBps Budget in basis points per pool (1% = 100)
    /// @param periodsInSeconds Period duration in seconds per pool
    function configurePools(
        address[] calldata pools,
        uint256[] calldata budgetsBps,
        uint256[] calldata periodsInSeconds
    ) external hasRole(Roles.STRATEGY_HOOK_CONFIGURATION) {
        uint256 length = pools.length;
        if (length != budgetsBps.length || length != periodsInSeconds.length) {
            revert Errors.InvalidParam("pools+budgetsBps+periodsInSeconds");
        }

        for (uint256 i = 0; i < length; ++i) {
            _configurePool(pools[i], budgetsBps[i], periodsInSeconds[i]);
        }
    }

    /// @inheritdoc IStrategyHook
    function getFnFlags() public pure override returns (uint8) {
        return 1; // onRebalanceStart
    }

    /// @inheritdoc IStrategyHook
    // slither-disable-start timestamp,reentrancy-events,reentrancy-no-eth
    function onRebalanceStart(ProcessRebalanceParams calldata args, address) external override {
        // Skip budget check for trim operations (dest-to-idle)
        if (isRebalanceToIdle(args.rebalanceParams)) {
            return;
        }

        IStrategy.RebalanceParams memory params = args.rebalanceParams;
        PoolBudgetConfig memory config = _poolBudgetConfig[msg.sender];

        // Reset period if needed
        bool shouldReset = block.timestamp > config.periodStart + config.periodInSeconds;
        if (shouldReset) {
            // Snap periodStart to the nearest period boundary.
            // This keeps periodStart at fixed multiples of periodInSeconds
            // intentionally divide before multiply to truncate decimal places
            // slither-disable-next-line divide-before-multiply
            config.periodStart = uint64(
                config.periodStart
                    + ((block.timestamp - config.periodStart) / config.periodInSeconds) * config.periodInSeconds
            );
            config.usedBudgetBps = 0;

            emit BudgetPeriodReset(msg.sender, block.timestamp);
        }

        // Calculate slippage in basis points
        (uint256 valueOut,) = _getBaseValue(params.destinationOut, params.tokenOut, params.amountOut);
        (uint256 valueIn,) = _getBaseValue(params.destinationIn, params.tokenIn, params.amountIn);
        uint256 aum = IAutopool(msg.sender).totalAssets(IAutopool.TotalAssetPurpose.Withdraw);

        // If slippage is negative, don't count it against the budget
        uint256 slippage = valueOut.subSaturate(valueIn);

        // SlippageBps = (valueOut - valueIn) * 10000 / totalAssets
        uint256 slippageBps = (slippage * BPS_DENOMINATOR) / aum;

        // Check if we have enough budget
        uint256 newUsedBudget = config.usedBudgetBps + slippageBps;
        if (newUsedBudget > config.budgetBps) {
            revert BudgetExceeded(slippageBps, config.budgetBps, config.usedBudgetBps);
        }

        // Update used budget in memory
        config.usedBudgetBps = uint64(newUsedBudget);

        // Single storage write for the entire struct
        _poolBudgetConfig[msg.sender] = config;

        emit SlippageConsumed(msg.sender, valueOut, valueIn, aum, slippageBps, config.budgetBps - newUsedBudget);
    }
    // slither-disable-end timestamp,reentrancy-events,reentrancy-no-eth

    /// @inheritdoc BaseStrategyHook
    function _onRegistered(
        bytes memory data
    ) internal override {
        RegistrationData memory registrationData = abi.decode(data, (RegistrationData));
        _configurePool(msg.sender, registrationData.budgetBps, registrationData.periodInSeconds);
    }

    /// @inheritdoc BaseStrategyHook
    function _onUnregistered(
        bytes memory
    ) internal override {
        delete _poolBudgetConfig[msg.sender];
        emit BudgetConfigured(msg.sender, 0, 0);
    }

    /// @dev Configure budget settings for a specific pool
    function _configurePool(address pool, uint256 budgetBps, uint256 periodInSeconds) internal {
        Errors.verifyNotZero(pool, "pool");
        Errors.verifyNotZero(budgetBps, "budgetBps");

        if (budgetBps > MAX_BUDGET_BPS) revert BudgetTooHigh(budgetBps);
        if (periodInSeconds < MIN_PERIOD) revert BudgetPeriodTooShort(periodInSeconds);

        _poolBudgetConfig[pool] = PoolBudgetConfig({
            budgetBps: uint64(budgetBps),
            periodInSeconds: uint64(periodInSeconds),
            periodStart: uint64(block.timestamp),
            usedBudgetBps: 0
        });

        emit BudgetConfigured(pool, budgetBps, periodInSeconds);
    }

    /// @dev Get the value of a token amount in base asset terms
    function _getBaseValue(
        address destination,
        address token,
        uint256 amount
    ) internal returns (uint256 value, uint256 price) {
        uint8 tokenDecimals = IERC20Metadata(token).decimals();

        // When the destination is the autoPool:
        // Token is already in base asset units
        if (destination == msg.sender) {
            return (amount, 10 ** tokenDecimals);
        }

        // Get price in base asset units
        price = IDestinationVault(destination).getValidatedSpotPrice();
        value = (price * amount) / 10 ** tokenDecimals;
        return (value, price);
    }
}
