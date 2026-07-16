// SPDX-License-Identifier: BSL
pragma solidity ^0.8.24;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";
import {BaseHook} from "@uniswap/v4-periphery/src/utils/BaseHook.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {BeforeSwapDelta} from "v4-core/types/BeforeSwapDelta.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {TransientSlot} from "../lib/openzeppelin-contracts/contracts/utils/TransientSlot.sol";
import {ILimitOrderManager} from "./ILimitOrderManager.sol";
import {SwapParams} from "v4-core/types/PoolOperation.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DynamicFeeHook is BaseHook, Ownable {
    using PoolIdLibrary for PoolKey;
    using TransientSlot for *;

    bytes32 private constant PREVIOUS_TICK_SLOT = keccak256("xyz.hooks.limitorder.previous-tick");
    bytes32 public constant FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");
    uint24 public constant MAX_LP_FEE = 20_000; // 2% max fee
    
    ILimitOrderManager public immutable limitOrderManager;
    address public immutable creator;
    address public poolFactory;
    
    // Track which pools this hook manages
    mapping(PoolId => bool) public managedPools;
    
    // Track if creator already created a pool with specific parameters
    mapping(bytes32 => bool) public poolParametersUsed;

    // Events
    event DynamicLPFeeUpdated(PoolId indexed poolId, uint24 newFee);

    constructor(IPoolManager _poolManager, address _limitOrderManager, address _creator, address _poolFactory) BaseHook(_poolManager) Ownable(_creator) {
        require(_limitOrderManager != address(0), "ZeroAddress");
        require(_creator != address(0), "ZeroAddress");
        require(_poolFactory != address(0), "ZeroAddress");
        limitOrderManager = ILimitOrderManager(_limitOrderManager);
        creator = _creator;
        poolFactory = _poolFactory;
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
        SwapParams calldata,
        bytes calldata
    ) internal override returns (bytes4, BeforeSwapDelta, uint24) {
        PoolId poolId = key.toId();
        (,int24 tickBeforeSwap,,) = StateLibrary.getSlot0(poolManager, poolId);
        
        TransientSlot.Int256Slot slot = TransientSlot.asInt256(PREVIOUS_TICK_SLOT);
        TransientSlot.tstore(slot, int256(tickBeforeSwap));
        
        return (BaseHook.beforeSwap.selector, BeforeSwapDelta.wrap(0), 0);
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
        
        TransientSlot.Int256Slot slot = TransientSlot.asInt256(PREVIOUS_TICK_SLOT);
        int24 tickBeforeSwap = int24(int256(TransientSlot.tload(slot)));
        
        limitOrderManager.executeOrder(key, tickBeforeSwap, tickAfterSwap, params.zeroForOne);
        return (BaseHook.afterSwap.selector, 0);
    }

    function updateDynamicLPFee(PoolKey calldata key, uint24 newFee) external onlyOwner {
        require(managedPools[key.toId()], "NotManagedPool");
        require(newFee <= MAX_LP_FEE, "FeeExceedsMaximum");
        poolManager.updateDynamicLPFee(key, newFee);
        emit DynamicLPFeeUpdated(key.toId(), newFee);
    }
    
    function registerPool(PoolKey calldata key) external {
        require(msg.sender == poolFactory, "OnlyPoolFactory");
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
    }


    function getDynamicLPFee(PoolKey calldata key) external view returns (uint24) {
        (, , , uint24 lpFee) = StateLibrary.getSlot0(poolManager, key.toId());
        return lpFee;
    }
}