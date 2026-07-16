// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/* OZ IMPORTS */
import {AccessManaged} from "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

/* UNISWAP V4 IMPORTS */
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {SwapParams} from "v4-core/src/types/PoolOperation.sol";

/* OZ UNISWAP HOOKS IMPORTS */
import {BaseOverrideFee} from "@openzeppelin/uniswap-hooks/src/fee/BaseOverrideFee.sol";
import {BaseHook} from "@openzeppelin/uniswap-hooks/src/base/BaseHook.sol";

/* LOCAL IMPORTS */
import {IAlphixPro} from "./interfaces/IAlphixPro.sol";

/**
 * @title AlphixPro
 * @notice Uniswap V4 asymmetric dynamic fee hook for partner token pools.
 * @dev Multi-pool capable. Auto-routed (no delta flags, no custom accounting).
 *
 *      Each pool has independent buy/sell fees set by an authorized oracle.
 *      `beforeSwap` checks swap direction and returns the appropriate fee
 *      via OVERRIDE_FEE_FLAG. Zero gas overhead beyond a single SLOAD + branch.
 *
 *      Inherits BaseOverrideFee which provides:
 *      - `afterInitialize` to validate dynamic fee flag
 *      - `beforeSwap` to return per-swap fee override
 *      - `getHookPermissions` with afterInitialize + beforeSwap enabled
 */
contract AlphixPro is BaseOverrideFee, AccessManaged, Pausable, IAlphixPro {
    using PoolIdLibrary for PoolKey;

    /// @dev Packed per-pool config: buyFee (24 bits) | sellFee (24 bits) | isToken0Quote (8 bits).
    /// Fits in a single storage slot (56 bits used of 256).
    struct PoolConfig {
        uint24 buyFee;
        uint24 sellFee;
        bool isToken0Quote;
    }

    /// @dev Per-pool fee configuration.
    mapping(PoolId => PoolConfig) private _configs;

    /// @param _poolManager The Uniswap V4 PoolManager address.
    /// @param _accessManager The OpenZeppelin AccessManager address.
    constructor(IPoolManager _poolManager, address _accessManager)
        BaseHook(_poolManager)
        AccessManaged(_accessManager)
    {}

    // ═══════════════════════════════════════════════════════════════════════
    //                       FEE OVERRIDE (BaseOverrideFee)
    // ═══════════════════════════════════════════════════════════════════════

    /// @inheritdoc BaseOverrideFee
    /// @dev Returns buyFee or sellFee based on swap direction. Single SLOAD.
    function _getFee(address, PoolKey calldata key, SwapParams calldata params, bytes calldata)
        internal
        view
        override
        returns (uint24)
    {
        PoolConfig storage c = _configs[key.toId()];
        // If isToken0Quote: zeroForOne means input=quote → buying project token → buyFee
        // If !isToken0Quote: zeroForOne means input=project → selling project token → sellFee
        return (c.isToken0Quote == params.zeroForOne) ? c.buyFee : c.sellFee;
    }

    // ═══════════════════════════════════════════════════════════════════════
    //                       ADMIN FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════

    /// @inheritdoc IAlphixPro
    function poke(PoolKey calldata key, uint24 buyFee, uint24 sellFee) external restricted whenNotPaused {
        PoolId id = key.toId();
        _configs[id].buyFee = buyFee;
        _configs[id].sellFee = sellFee;
        emit FeePoked(id, buyFee, sellFee);
    }

    /// @inheritdoc IAlphixPro
    function pokeBuyFee(PoolKey calldata key, uint24 buyFee) external restricted whenNotPaused {
        PoolId id = key.toId();
        _configs[id].buyFee = buyFee;
        emit BuyFeePoked(id, buyFee);
    }

    /// @inheritdoc IAlphixPro
    function pokeSellFee(PoolKey calldata key, uint24 sellFee) external restricted whenNotPaused {
        PoolId id = key.toId();
        _configs[id].sellFee = sellFee;
        emit SellFeePoked(id, sellFee);
    }

    /// @inheritdoc IAlphixPro
    function configurePool(PoolKey calldata key, bool isToken0Quote) external restricted whenNotPaused {
        _configs[key.toId()].isToken0Quote = isToken0Quote;
        emit PoolConfigured(key.toId(), isToken0Quote);
    }

    // ═══════════════════════════════════════════════════════════════════════
    //                       VIEW FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════

    /// @inheritdoc IAlphixPro
    function getPoolConfig(PoolId poolId) external view returns (uint24 buyFee, uint24 sellFee, bool isToken0Quote) {
        PoolConfig storage c = _configs[poolId];
        return (c.buyFee, c.sellFee, c.isToken0Quote);
    }

    // ═══════════════════════════════════════════════════════════════════════
    //                       PAUSABLE
    // ═══════════════════════════════════════════════════════════════════════

    /// @inheritdoc IAlphixPro
    function pause() external restricted {
        _pause();
    }

    /// @inheritdoc IAlphixPro
    function unpause() external restricted {
        _unpause();
    }
}
