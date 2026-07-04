// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.24;

import {IBinHooks, HOOKS_AFTER_INITIALIZE_OFFSET} from "../interfaces/IBinHooks.sol";
import {IBinPoolManager} from "../interfaces/IBinPoolManager.sol";
import {PoolKey} from "../../types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "../../types/PoolId.sol";
import {BeforeSwapDelta, BeforeSwapDeltaLibrary} from "../../types/BeforeSwapDelta.sol";
import {BalanceDelta, BalanceDeltaLibrary} from "../../types/BalanceDelta.sol";
import {LPFeeLibrary} from "../../libraries/LPFeeLibrary.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @notice Fee Manager Hook for Bin Pools - Allows protocol owner to manually update LP fees
/// @dev Only works with dynamic fee pools
contract BinFeeManagerHook is IBinHooks, Ownable {
    using PoolIdLibrary for PoolKey;

    IBinPoolManager public immutable poolManager;

    /// @notice Mapping from poolId to LP fee
    mapping(PoolId => uint24) public poolFees;

    /// @notice Event emitted when fee is updated for a pool
    event FeeUpdated(PoolId indexed poolId, uint24 newFee);

    error InvalidFee();
    error PoolNotInitialized();

    constructor(IBinPoolManager _poolManager, address _owner) Ownable(_owner) {
        poolManager = _poolManager;
    }

    /// @notice Get hooks registration bitmap
    /// @dev Registers afterInitialize hook only
    function getHooksRegistrationBitmap() external view override returns (uint16) {
        return uint16(1 << HOOKS_AFTER_INITIALIZE_OFFSET);
    }

    /// @notice Set LP fee for a specific pool (only owner)
    /// @param key The pool key
    /// @param newFee The new LP fee (max 10% for Bin pools)
    function setFee(PoolKey calldata key, uint24 newFee) external onlyOwner {
        // Validate fee
        if (newFee > LPFeeLibrary.TEN_PERCENT_FEE) revert InvalidFee();

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
    function afterInitialize(address, PoolKey calldata key, uint24) external override returns (bytes4) {
        PoolId poolId = key.toId();

        // Set default fee to 0.05%
        uint24 defaultFee = 500;
        poolFees[poolId] = defaultFee;

        // Update fee in pool manager
        poolManager.updateDynamicLPFee(key, defaultFee);

        emit FeeUpdated(poolId, defaultFee);

        return IBinHooks.afterInitialize.selector;
    }

    function beforeInitialize(address, PoolKey calldata, uint24) external override returns (bytes4) {
        return IBinHooks.beforeInitialize.selector;
    }

    function beforeMint(
        address,
        PoolKey calldata,
        IBinPoolManager.MintParams calldata,
        bytes calldata
    ) external override returns (bytes4, uint24) {
        return (IBinHooks.beforeMint.selector, 0);
    }

    function afterMint(
        address,
        PoolKey calldata,
        IBinPoolManager.MintParams calldata,
        BalanceDelta,
        bytes calldata
    ) external override returns (bytes4, BalanceDelta) {
        return (IBinHooks.afterMint.selector, BalanceDeltaLibrary.ZERO_DELTA);
    }

    function beforeBurn(
        address,
        PoolKey calldata,
        IBinPoolManager.BurnParams calldata,
        bytes calldata
    ) external override returns (bytes4) {
        return IBinHooks.beforeBurn.selector;
    }

    function afterBurn(
        address,
        PoolKey calldata,
        IBinPoolManager.BurnParams calldata,
        BalanceDelta,
        bytes calldata
    ) external override returns (bytes4, BalanceDelta) {
        return (IBinHooks.afterBurn.selector, BalanceDeltaLibrary.ZERO_DELTA);
    }

    function beforeSwap(
        address,
        PoolKey calldata,
        bool,
        int128,
        bytes calldata
    ) external override returns (bytes4, BeforeSwapDelta, uint24) {
        return (IBinHooks.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, 0);
    }

    function afterSwap(
        address,
        PoolKey calldata,
        bool,
        int128,
        BalanceDelta,
        bytes calldata
    ) external override returns (bytes4, int128) {
        return (IBinHooks.afterSwap.selector, 0);
    }

    function beforeDonate(
        address,
        PoolKey calldata,
        uint256,
        uint256,
        bytes calldata
    ) external override returns (bytes4) {
        return IBinHooks.beforeDonate.selector;
    }

    function afterDonate(
        address,
        PoolKey calldata,
        uint256,
        uint256,
        bytes calldata
    ) external override returns (bytes4) {
        return IBinHooks.afterDonate.selector;
    }
}
