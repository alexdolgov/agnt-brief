// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.24;

import {ICLHooks, HOOKS_AFTER_INITIALIZE_OFFSET} from "../interfaces/ICLHooks.sol";
import {ICLPoolManager} from "../interfaces/ICLPoolManager.sol";
import {PoolKey} from "../../types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "../../types/PoolId.sol";
import {BeforeSwapDelta, BeforeSwapDeltaLibrary} from "../../types/BeforeSwapDelta.sol";
import {BalanceDelta, BalanceDeltaLibrary} from "../../types/BalanceDelta.sol";
import {LPFeeLibrary} from "../../libraries/LPFeeLibrary.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @notice Fee Manager Hook for CL Pools - Allows protocol owner to manually update LP fees
/// @dev Only works with dynamic fee pools
contract CLFeeManagerHook is ICLHooks, Ownable {
    using PoolIdLibrary for PoolKey;

    ICLPoolManager public immutable poolManager;

    /// @notice Mapping from poolId to LP fee
    mapping(PoolId => uint24) public poolFees;

    /// @notice Event emitted when fee is updated for a pool
    event FeeUpdated(PoolId indexed poolId, uint24 newFee);

    error InvalidFee();
    error PoolNotInitialized();

    constructor(ICLPoolManager _poolManager, address _owner) Ownable(_owner) {
        poolManager = _poolManager;
    }

    /// @notice Get hooks registration bitmap
    /// @dev Registers afterInitialize hook only
    function getHooksRegistrationBitmap() external view override returns (uint16) {
        return uint16(1 << HOOKS_AFTER_INITIALIZE_OFFSET);
    }

    /// @notice Set LP fee for a specific pool (only owner)
    /// @param key The pool key
    /// @param newFee The new LP fee (max 100% for CL pools)
    function setFee(PoolKey calldata key, uint24 newFee) external onlyOwner {
        // Validate fee
        if (newFee > LPFeeLibrary.ONE_HUNDRED_PERCENT_FEE) revert InvalidFee();

        PoolId poolId = key.toId();

        // Check if pool is initialized (has a fee set)
        if (poolFees[poolId] == 0 && newFee == 0) revert PoolNotInitialized();

        // Update fee in storage
        poolFees[poolId] = newFee;

        // Update fee in pool manager
        poolManager.updateDynamicLPFee(key, newFee);

        emit FeeUpdated(poolId, newFee);
    }

    /// @notice Called after pool initialization
    /// @dev Sets initial fee to 0.05% (500 = 0.05%)
    function afterInitialize(address, PoolKey calldata key, uint160, int24) external override returns (bytes4) {
        PoolId poolId = key.toId();

        // Set default fee to 0.05%
        uint24 defaultFee = 500;
        poolFees[poolId] = defaultFee;

        // Update fee in pool manager
        poolManager.updateDynamicLPFee(key, defaultFee);

        emit FeeUpdated(poolId, defaultFee);

        return ICLHooks.afterInitialize.selector;
    }

    function beforeInitialize(address, PoolKey calldata, uint160) external override returns (bytes4) {
        return ICLHooks.beforeInitialize.selector;
    }

    function beforeAddLiquidity(
        address,
        PoolKey calldata,
        ICLPoolManager.ModifyLiquidityParams calldata,
        bytes calldata
    ) external override returns (bytes4) {
        return ICLHooks.beforeAddLiquidity.selector;
    }

    function afterAddLiquidity(
        address,
        PoolKey calldata,
        ICLPoolManager.ModifyLiquidityParams calldata,
        BalanceDelta,
        BalanceDelta,
        bytes calldata
    ) external override returns (bytes4, BalanceDelta) {
        return (ICLHooks.afterAddLiquidity.selector, BalanceDeltaLibrary.ZERO_DELTA);
    }

    function beforeRemoveLiquidity(
        address,
        PoolKey calldata,
        ICLPoolManager.ModifyLiquidityParams calldata,
        bytes calldata
    ) external override returns (bytes4) {
        return ICLHooks.beforeRemoveLiquidity.selector;
    }

    function afterRemoveLiquidity(
        address,
        PoolKey calldata,
        ICLPoolManager.ModifyLiquidityParams calldata,
        BalanceDelta,
        BalanceDelta,
        bytes calldata
    ) external override returns (bytes4, BalanceDelta) {
        return (ICLHooks.afterRemoveLiquidity.selector, BalanceDeltaLibrary.ZERO_DELTA);
    }

    function beforeSwap(
        address,
        PoolKey calldata,
        ICLPoolManager.SwapParams calldata,
        bytes calldata
    ) external override returns (bytes4, BeforeSwapDelta, uint24) {
        return (ICLHooks.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, 0);
    }

    function afterSwap(
        address,
        PoolKey calldata,
        ICLPoolManager.SwapParams calldata,
        BalanceDelta,
        bytes calldata
    ) external override returns (bytes4, int128) {
        return (ICLHooks.afterSwap.selector, 0);
    }

    function beforeDonate(
        address,
        PoolKey calldata,
        uint256,
        uint256,
        bytes calldata
    ) external override returns (bytes4) {
        return ICLHooks.beforeDonate.selector;
    }

    function afterDonate(
        address,
        PoolKey calldata,
        uint256,
        uint256,
        bytes calldata
    ) external override returns (bytes4) {
        return ICLHooks.afterDonate.selector;
    }
}
