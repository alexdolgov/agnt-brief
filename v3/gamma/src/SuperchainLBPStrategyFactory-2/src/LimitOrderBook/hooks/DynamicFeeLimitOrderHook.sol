// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";
import {BaseHook} from "v4-periphery/src/utils/BaseHook.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {BeforeSwapDelta} from "v4-core/types/BeforeSwapDelta.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {SwapParams} from "v4-core/types/PoolOperation.sol";
import {TransientSlot} from "openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/TransientSlot.sol";
import {ILimitOrderManager} from "../interfaces/ILimitOrderManager.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {BeforeSwapDeltaLibrary} from "v4-core/types/BeforeSwapDelta.sol";

contract DynamicFeeLimitOrderHook is BaseHook, Ownable {
    using PoolIdLibrary for PoolKey;

    uint24 public constant MAX_LP_FEE = 20_000; // 2% max fee

    ILimitOrderManager public immutable limitOrderManager;
    address public immutable creator;
    address public orderBookFactory;

    // Track which pools this hook manages
    mapping(PoolId => bool) public managedPools;

    // Track if creator already created a pool with specific parameters
    mapping(bytes32 => bool) public poolParametersUsed;

    // Track trading enabled block per pool (1-block delay)
    mapping(PoolId => uint256) public tradingEnabledBlock;

    // Errors
    error TradingNotYetEnabled(uint256 enabledBlock, uint256 currentBlock);

    // Events
    event DynamicLPFeeUpdated(PoolId indexed poolId, uint24 newFee);

    /// @notice Get pool-specific transient storage slot for previous tick
    /// @dev Each pool gets unique slot to avoid collisions in multi-pool transactions
    function _getPreviousTickSlot(PoolId poolId) private pure returns (bytes32) {
        return keccak256(abi.encodePacked("xyz.hooks.dynamicfee.previous-tick", poolId));
    }

    constructor(IPoolManager _poolManager, address _limitOrderManager, address _creator, address _orderBookFactory) BaseHook(_poolManager) Ownable(_creator) {
        require(_limitOrderManager != address(0), "ZeroAddress");
        require(_creator != address(0), "ZeroAddress");
        require(_orderBookFactory != address(0), "ZeroAddress");
        limitOrderManager = ILimitOrderManager(_limitOrderManager);
        creator = _creator;
        orderBookFactory = _orderBookFactory;
    }

    function getHookPermissions() public pure override returns (Hooks.Permissions memory) {
        return Hooks.Permissions({
            beforeInitialize: false,
            afterInitialize: false,
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

    function updateDynamicLPFee(PoolKey calldata key, uint24 newFee) external {
        require(msg.sender == orderBookFactory || msg.sender == owner(), "NotAuthorized");
        require(managedPools[key.toId()], "NotManagedPool");
        require(newFee <= MAX_LP_FEE, "FeeExceedsMaximum");
        poolManager.updateDynamicLPFee(key, newFee);
        emit DynamicLPFeeUpdated(key.toId(), newFee);
    }

    function registerPool(PoolKey calldata key) external {
        require(msg.sender == orderBookFactory, "OnlyOrderBookFactory");
        PoolId poolId = key.toId();

        // Create a unique identifier for the pool parameters
        bytes32 parametersHash = keccak256(abi.encodePacked(
            Currency.unwrap(key.currency0),
            Currency.unwrap(key.currency1),
            key.tickSpacing
        ));

        require(!poolParametersUsed[parametersHash], "PoolParametersAlreadyUsed");

        managedPools[poolId] = true;
        poolParametersUsed[parametersHash] = true;

        // Set trading enabled block (1-block delay)
        tradingEnabledBlock[poolId] = block.number + 1;
    }

    function getDynamicLPFee(PoolKey calldata key) external view returns (uint24) {
        (, , , uint24 lpFee) = StateLibrary.getSlot0(poolManager, key.toId());
        return lpFee;
    }
}