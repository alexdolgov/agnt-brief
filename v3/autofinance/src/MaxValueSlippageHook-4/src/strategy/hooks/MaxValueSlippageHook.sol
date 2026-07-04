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
import { ProcessRebalanceParams } from "src/vault/libs/AutopoolState.sol";

import { SubSaturateMath } from "src/strategy/libs/SubSaturateMath.sol";
import { BaseStrategyHook } from "src/strategy/hooks/BaseStrategyHook.sol";

/**
 * @title MaxValueSlippageHook Hook
 * @notice Hook that enforces maximum slippage limits on rebalance operations
 * @dev Different limits apply for normal operations vs trim operations
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
 *     - `destinationOut`: Vault sending `tokenOut`
 *     - `tokenOut`: The asset being withdrawn from `destinationOut`
 *     - `amountOut`: The quantity of `tokenOut` sent
 *     - `destinationIn`: Vault receiving `tokenIn`
 *     - `tokenIn`: The asset being deposited into `destinationIn`
 *     - `amountIn`: The quantity of `tokenIn` received
 *
 * @dev Trim operations occur when assets move back to the autopool (idle state),
 */
contract MaxValueSlippageHook is BaseStrategyHook {
    using SubSaturateMath for uint256;

    /// @notice Per-pool maximum slippage configuration
    struct PoolSlippageConfig {
        uint256 normalOperationSlippage;
        uint256 trimOperationSlippage;
    }

    struct RegistrationData {
        uint256 normalSlippage;
        uint256 trimSlippage;
    }

    error MaxSlippageExceeded(uint256 slippage, uint256 maxAllowed);
    error InvalidSlippage(string reason, uint256 value);

    event PoolSlippageConfigured(address pool, uint256 normalSlippage, uint256 trimSlippage);
    event SlippageTracking(
        uint256 inPrice,
        uint256 outPrice,
        uint256 inBaseValue,
        uint256 outBaseValue,
        uint256 swapCost,
        uint256 slippage,
        uint256 maxAllowed
    );

    /// @notice Maximum allowed slippage value (5%)
    uint256 public constant MAX_SLIPPAGE = 0.05e18;

    /// @notice Mapping of Autopool to its slippage configuration
    mapping(address => PoolSlippageConfig) public poolSlippageConfig;

    constructor(
        ISystemRegistry _systemRegistry
    ) BaseStrategyHook(_systemRegistry) { }

    /// @notice Configure max slippage values for specific autopools
    /// @param autopools Target autopools to configure
    /// @param normalSlippages Maximum slippage for normal operations per pool (100% = 1e18)
    /// @param trimSlippages Maximum slippage for trim operations per pool (100% = 1e18)
    function configurePools(
        address[] calldata autopools,
        uint256[] calldata normalSlippages,
        uint256[] calldata trimSlippages
    ) external hasRole(Roles.STRATEGY_HOOK_CONFIGURATION) {
        uint256 length = autopools.length;

        if (length != normalSlippages.length || length != trimSlippages.length) {
            revert Errors.InvalidParam("autopools+normalSlippages+trimSlippages");
        }

        for (uint256 i = 0; i < length; ++i) {
            address autopool = autopools[i];
            _configurePool(autopool, normalSlippages[i], trimSlippages[i]);
        }
    }

    /// @inheritdoc IStrategyHook
    function getFnFlags() public pure override returns (uint8) {
        return 4; // onRebalanceInAssetsReturned
    }

    /// @inheritdoc IStrategyHook
    function onRebalanceInAssetsReturned(ProcessRebalanceParams calldata args, address) external override {
        IStrategy.RebalanceParams memory params = args.rebalanceParams;

        (uint256 outBaseValue, uint256 outPrice) =
            _getBaseValueAndPrice(params.destinationOut, params.tokenOut, params.amountOut);
        (uint256 inBaseValue, uint256 inPrice) =
            _getBaseValueAndPrice(params.destinationIn, params.tokenIn, params.amountIn);

        // Prices and values are in baseAsset decimals
        // Slippage is expressed as a percentage with 1e18 precision (100% = 1e18)
        // Multiplication by 1e18 ensures correct fixed-point scaling before division,
        // independent of baseAsset decimals
        uint256 swapCost = outBaseValue.subSaturate(inBaseValue);
        uint256 slippage = outBaseValue == 0 ? 0 : swapCost * 1e18 / outBaseValue;

        // Get pool-specific config
        PoolSlippageConfig memory config = poolSlippageConfig[msg.sender];

        uint256 maxAllowed =
            params.destinationIn == msg.sender ? config.trimOperationSlippage : config.normalOperationSlippage;

        // slither-disable-next-line reentrancy-events
        emit SlippageTracking(inPrice, outPrice, inBaseValue, outBaseValue, swapCost, slippage, maxAllowed);

        if (slippage > maxAllowed) {
            revert MaxSlippageExceeded(slippage, maxAllowed);
        }
    }

    /// @inheritdoc BaseStrategyHook
    function _onRegistered(
        bytes memory data
    ) internal override {
        RegistrationData memory registrationData = abi.decode(data, (RegistrationData));
        _configurePool(msg.sender, registrationData.normalSlippage, registrationData.trimSlippage);
    }

    /// @inheritdoc BaseStrategyHook
    function _onUnregistered(
        bytes memory
    ) internal override {
        delete poolSlippageConfig[msg.sender];

        emit PoolSlippageConfigured(msg.sender, 0, 0);
    }

    /// @dev Get the value and price of a token in terms of the base asset
    /// @param destination The Destination Vault address
    /// @param token The address of Destination Vault's underlyer token
    /// @param amount The amount of tokens expressed in tokenDecimals
    /// @return value The value of the token amount in baseAsset decimals
    /// @return price The price of one token in baseAsset decimals
    function _getBaseValueAndPrice(
        address destination,
        address token,
        uint256 amount
    ) internal returns (uint256 value, uint256 price) {
        uint8 tokenDecimals = IERC20Metadata(token).decimals();

        // When the destination is the autoPool:
        // 1. The token is already denominated in baseAsset units
        // 2. The token's decimals match the baseAsset's decimals
        // 3. Therefore no price conversion is needed - amount already represents the base value
        if (destination == msg.sender) {
            return (amount, 10 ** tokenDecimals);
        }

        // Get the price of the token in baseAsset units
        price = IDestinationVault(destination).getValidatedSpotPrice();

        // Calculate value in baseAsset units from amount in tokenDecimals
        value = (price * amount) / 10 ** tokenDecimals;
        return (value, price);
    }

    function _configurePool(address autopool, uint256 normalSlippage, uint256 trimSlippage) internal {
        Errors.verifyNotZero(autopool, "autopool");
        Errors.verifyNotZero(normalSlippage, "normalSlippage");
        Errors.verifyNotZero(trimSlippage, "trimSlippage");

        if (normalSlippage > MAX_SLIPPAGE) revert InvalidSlippage("normalSlippage", normalSlippage);
        if (trimSlippage > MAX_SLIPPAGE) revert InvalidSlippage("trimSlippage", trimSlippage);

        poolSlippageConfig[autopool] =
            PoolSlippageConfig({ normalOperationSlippage: normalSlippage, trimOperationSlippage: trimSlippage });

        emit PoolSlippageConfigured(autopool, normalSlippage, trimSlippage);
    }
}
