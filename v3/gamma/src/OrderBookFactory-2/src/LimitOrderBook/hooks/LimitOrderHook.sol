// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";
import {BaseHook} from "v4-periphery/src/utils/BaseHook.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {BeforeSwapDelta} from "v4-core/types/BeforeSwapDelta.sol";
import {SwapParams} from "v4-core/types/PoolOperation.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {TransientSlot} from "openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/TransientSlot.sol";
import {ILimitOrderManager} from "../interfaces/ILimitOrderManager.sol";
import {BeforeSwapDeltaLibrary} from "v4-core/types/BeforeSwapDelta.sol";

contract LimitOrderHook is BaseHook {
    using PoolIdLibrary for PoolKey;

    ILimitOrderManager public immutable limitOrderManager;
    address public orderBookFactory;

    // Track trading enabled block per pool (1-block delay)
    mapping(PoolId => uint256) public tradingEnabledBlock;

    // Errors
    error TradingNotYetEnabled(uint256 enabledBlock, uint256 currentBlock);
    error OnlyOrderBookFactory();
    error OrderBookFactoryAlreadySet();

    /// @notice Get pool-specific transient storage slot for previous tick
    /// @dev Each pool gets unique slot to avoid collisions in multi-pool transactions
    function _getPreviousTickSlot(PoolId poolId) private pure returns (bytes32) {
        return keccak256(abi.encodePacked("xyz.hooks.limitorder.previous-tick", poolId));
    }

    constructor(
        IPoolManager _poolManager,
        address _limitOrderManager,
        address _orderBookFactory
    ) BaseHook(_poolManager) {
        require(_limitOrderManager != address(0), "ZeroAddress");
        // OrderBookFactory can be set to address(0) initially and configured later via setOrderBookFactory
        limitOrderManager = ILimitOrderManager(_limitOrderManager);
        orderBookFactory = _orderBookFactory;
    }

    /// @notice One-time setter to configure the OrderBookFactory address
    /// @dev Can only be called once when orderBookFactory is address(0)
    /// @param _orderBookFactory The OrderBookFactory contract address
    function setOrderBookFactory(address _orderBookFactory) external {
        if (orderBookFactory != address(0)) revert OrderBookFactoryAlreadySet();
        require(_orderBookFactory != address(0), "ZeroAddress");
        orderBookFactory = _orderBookFactory;
    }

    function getHookPermissions() public pure override returns (Hooks.Permissions memory) {
        return Hooks.Permissions({
            beforeInitialize: true,
            afterInitialize: true,   // Enable to set trading delay on pool initialization
            beforeAddLiquidity: false,
            afterAddLiquidity: false,
            beforeRemoveLiquidity: false,
            afterRemoveLiquidity: false,
            beforeSwap: true,
            afterSwap: true,
            beforeDonate: false,
            afterDonate: false,
            beforeSwapReturnDelta: false,
            afterSwapReturnDelta: false,
            afterAddLiquidityReturnDelta: false,
            afterRemoveLiquidityReturnDelta: false
        });
    }

    /// @notice Only allows OrderBookFactory to initialize pools with this hook
    /// @dev Prevents front-running attacks where attacker initializes pool directly via PoolManager
    function _beforeInitialize(address sender, PoolKey calldata, uint160)
        internal
        view
        override
        returns (bytes4)
    {
        if (sender != orderBookFactory) revert OnlyOrderBookFactory();
        return this.beforeInitialize.selector;
    }

    function _afterInitialize(
        address,
        PoolKey calldata key,
        uint160,
        int24
    ) internal override returns (bytes4) {
        // Set trading enabled block (1-block delay)
        tradingEnabledBlock[key.toId()] = block.number + 1;
        return BaseHook.afterInitialize.selector;
    }

    function _beforeSwap(
        address,
        PoolKey calldata key,
        SwapParams calldata params,
        bytes calldata
    ) internal override returns (bytes4, BeforeSwapDelta, uint24) {
        PoolId poolId = key.toId();

        // Enforce 1-block delay before trading is enabled
        uint256 enabledBlock = tradingEnabledBlock[poolId];
        if (enabledBlock > 0) {
            if (block.number < enabledBlock) {
                revert TradingNotYetEnabled(enabledBlock, block.number);
            }
            // Delete storage slot after first successful trade to save gas on future swaps
            delete tradingEnabledBlock[poolId];
        }

        (,int24 tickBeforeSwap,,) = StateLibrary.getSlot0(poolManager, poolId);

        bytes32 slot = _getPreviousTickSlot(poolId);
        assembly ("memory-safe") {
            tstore(slot, tickBeforeSwap)
        }

        return (BaseHook.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, 0);
    }

    function _afterSwap(
        address,
        PoolKey calldata key,
        SwapParams calldata params,
        BalanceDelta,
        bytes calldata
    ) internal override returns (bytes4, int128) {
        PoolId poolId = key.toId();
        (,int24 tickAfterSwap,,) = StateLibrary.getSlot0(poolManager, poolId);

        int24 tickBeforeSwap;
        bytes32 slot = _getPreviousTickSlot(poolId);
        assembly ("memory-safe") {
            tickBeforeSwap := tload(slot)
        }
        
        limitOrderManager.executeOrder(key, tickBeforeSwap, tickAfterSwap, params.zeroForOne);
        return (BaseHook.afterSwap.selector, 0);
    }
}