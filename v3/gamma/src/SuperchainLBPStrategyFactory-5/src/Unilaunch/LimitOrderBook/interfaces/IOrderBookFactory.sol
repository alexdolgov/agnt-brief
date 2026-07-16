// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";

interface IOrderBookFactory {
    function regularHookFeePercentage() external view returns (uint256);
    function dynamicHookFeePercentage() external view returns (uint256);
    function antiSnipeHookFeePercentage() external view returns (uint256);
    function antiSnipeDynamicHookFeePercentage() external view returns (uint256);

    /// @notice Returns the address of the strategy that reserved a pool, or address(0) if not reserved
    /// @param poolId The pool ID to check
    /// @return The address of the reserving strategy, or address(0)
    function reservedPools(bytes32 poolId) external view returns (address);

    /// @notice Compute the CREATE2 address for a dynamic limit order hook without deploying
    /// @dev Pure CREATE2 math - cheap view function.
    /// @param hookOwner The owner of the hook
    /// @param salt The pre-computed salt from HookMiner
    /// @return hookAddr The predicted hook address
    function computeDynamicLimitOrderHookAddress(
        address hookOwner,
        bytes32 salt
    ) external view returns (address hookAddr);
    /// @notice Compute the CREATE2 address for a volatility limit order hook without deploying
    /// @dev Pure CREATE2 math - cheap view function. Use for poolId computation before lazy deployment.
    /// @param hookOwner The owner of the hook
    /// @param salt The pre-computed salt from HookMiner
    /// @return hookAddr The predicted hook address
    function computeVolatilityLimitOrderHookAddress(
        address hookOwner,
        bytes32 salt
    ) external view returns (address hookAddr);

    /// @notice Compute the CREATE2 address for a dynamic fee-only hook without deploying
    /// @dev Pure CREATE2 math - cheap view function.
    /// @param hookOwner The owner of the hook
    /// @param salt The pre-computed salt from HookMiner
    /// @return hookAddr The predicted hook address
    function computeDynamicFeeHookAddress(
        address hookOwner,
        bytes32 salt
    ) external view returns (address hookAddr);
    /// @notice Compute the CREATE2 address for a volatility fee-only hook without deploying
    /// @dev Pure CREATE2 math - cheap view function. Use for poolId computation before lazy deployment.
    /// @param hookOwner The owner of the hook
    /// @param salt The pre-computed salt from HookMiner
    /// @return hookAddr The predicted hook address
    function computeVolatilityFeeHookAddress(
        address hookOwner,
        bytes32 salt
    ) external view returns (address hookAddr);

    function getDynamicLimitOrderHook(address hookOwner, bytes32 salt)
        external
        view
        returns (address hookAddr, bool isDeployed);
    function getVolatilityLimitOrderHook(address hookOwner, bytes32 salt)
        external
        view
        returns (address hookAddr, bool isDeployed);
    function getDynamicFeeHook(address hookOwner, bytes32 salt)
        external
        view
        returns (address hookAddr, bool isDeployed);
    function getVolatilityFeeHook(address hookOwner, bytes32 salt)
        external
        view
        returns (address hookAddr, bool isDeployed);

    /// @notice Compute the pool ID for a volatility dynamic limit order pool
    /// @dev Uses cheap CREATE2 address computation instead of expensive HookMiner.find().
    ///      Hook will be deployed lazily during pool creation.
    /// @param hookOwner The owner of the hook (determines hook address)
    /// @param salt The pre-computed salt for the hook
    /// @param currency0 The first currency
    /// @param currency1 The second currency
    /// @param tickSpacing The tick spacing
    /// @return poolId The computed pool ID
    function computePoolIdForVolatilityLimitOrder(
        address hookOwner,
        bytes32 salt,
        Currency currency0,
        Currency currency1,
        int24 tickSpacing
    ) external view returns (bytes32 poolId);
}
