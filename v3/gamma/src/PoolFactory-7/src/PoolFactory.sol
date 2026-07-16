// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {LPFeeLibrary} from "v4-core/libraries/LPFeeLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId} from "v4-core/types/PoolId.sol";
import {Currency, CurrencyLibrary} from "v4-core/types/Currency.sol";
import {LiquidityAmounts} from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {LimitOrderManager} from "./LimitOrderManager.sol";
import {LimitOrderLens} from "./LimitOrderLens.sol";
import {LimitOrderHook} from "./LimitOrderHook.sol";
import {DynamicFeeHook} from "./DynamicFeeHook.sol";
import {CurrencySettler} from "./CurrencySettler.sol";
import {TransientStateLibrary} from "v4-core/libraries/TransientStateLibrary.sol";
import {console} from "forge-std/console.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";
import {HookMiner} from "@uniswap/v4-periphery/src/utils/HookMiner.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {ActionConstants} from "@uniswap/v4-periphery/src/libraries/ActionConstants.sol";
/**
 * @title PoolFactory
 * @notice Factory contract for creating Uniswap V4 pools with initial liquidity
 * @dev This contract creates pools and mints initial liquidity using PositionManager's command interface.
 * Users must approve their tokens directly to the PositionManager before calling pool creation functions.
 */
contract PoolFactory is AccessControl {
    using CurrencySettler for Currency;
    using CurrencyLibrary for Currency;
    using TransientStateLibrary for IPoolManager;

    bytes32 public constant FEE_COLLECTOR_ROLE = keccak256("FEE_COLLECTOR_ROLE");

    // Struct to store pool information
    struct PoolInfo {
        bytes32 poolId;
        PoolKey poolKey;
        bool isDynamic;
    }

    LimitOrderManager public limitOrderManager;
    LimitOrderLens public limitOrderLens;
    IPoolManager public poolManager;
    LimitOrderHook public limitOrderHook;
    IPositionManager public positionManager;
    // DynamicFeeHook public dynamicFeeHook;
    
    // Pool creation fee settings
    uint256 public poolCreationFee;
    uint256 public collectedFees;
    
    // One dynamic fee hook per creator
    mapping(address => address) public creatorDynamicHooks;

    // Track pool creators using pool ID as key
    mapping(bytes32 => address) public poolCreators;
    
    // Track pool info by user address (creator)
    mapping(address => PoolInfo[]) public userToPoolInfo;
    
    // Events for tracking pool creation
    event PoolCreated(bytes32 indexed poolId, address indexed creator, address indexed hook, uint24 fee);
    event PoolInfoStored(address indexed user, bytes32 indexed poolId, bool isDynamic);
    event PoolCreationFeeUpdated(uint256 newFee);
    event PoolCreationFeeCollected(address indexed creator, uint256 fee);
    event FeesWithdrawn(address indexed recipient, uint256 amount);

    constructor(address _limitOrderLens, address _positionManager, address _limitOrderHook) {
        require(_limitOrderHook != address(0), "LimitOrderHookZeroAddress");
        
        limitOrderLens = LimitOrderLens(_limitOrderLens);
        poolManager = limitOrderLens.poolManager();
        limitOrderManager = limitOrderLens.limitOrderManager();
        positionManager = IPositionManager(_positionManager);
        limitOrderHook = LimitOrderHook(_limitOrderHook);
        
        // Grant roles to deployer
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(FEE_COLLECTOR_ROLE, msg.sender);
    }

    function createPoolForLimitOrderHook(
        Currency _currency0,
        Currency _currency1, 
        uint24 _fee, 
        int24 _tickSpacing, 
        uint160 _sqrtPriceX96
    ) external payable returns(PoolKey memory poolKey) {
        // Validate inputs first
        require(Currency.unwrap(_currency0) < Currency.unwrap(_currency1), "TokenOrderingIncorrect");
        
        // Validate ETH amount upfront - only pool creation fee needed
        require(msg.value >= poolCreationFee, "InsufficientETH");

        poolKey = PoolKey({
            currency0: _currency0,
            currency1: _currency1,
            fee: _fee,
            tickSpacing: _tickSpacing,
            hooks: limitOrderHook
        });
        
        // No need to check if it is already inialized, because Pool library check inside itself
        poolManager.initialize(poolKey, _sqrtPriceX96);
        limitOrderLens.addPoolId(poolKey.toId(), poolKey);
        
        // Store pool creator information
        bytes32 poolId = PoolId.unwrap(poolKey.toId());
        poolCreators[poolId] = msg.sender;
        
        // Store pool info for the user
        userToPoolInfo[msg.sender].push(PoolInfo({
            poolId: poolId,
            poolKey: poolKey,
            isDynamic: false
        }));
        
        emit PoolCreated(poolId, msg.sender, address(limitOrderHook), _fee);
        emit PoolInfoStored(msg.sender, poolId, false);
        
        _setWhitelistPool(poolKey);
        
        // Collect fee only after successful pool creation
        if (poolCreationFee > 0) {
            collectedFees += poolCreationFee;
            emit PoolCreationFeeCollected(msg.sender, poolCreationFee);
        }

        // Return excess ETH if any
        if (msg.value > poolCreationFee) {
            (bool success, ) = msg.sender.call{value: msg.value - poolCreationFee}("");
            require(success, "ETHRefundFailed");
        }
    }

    function createPoolForDynamicFeeHook(
        Currency _currency0, 
        Currency _currency1, 
        int24 _tickSpacing, 
        uint160 _sqrtPriceX96,
        bytes32 salt  // Salt parameter for hook deployment
    ) external payable returns (PoolKey memory poolKey) {
        // Validate inputs first
        require(Currency.unwrap(_currency0) < Currency.unwrap(_currency1), "TokenOrderingIncorrect");
        
        // Validate ETH amount upfront - only pool creation fee needed
        require(msg.value >= poolCreationFee, "InsufficientETH");
        
        address hookAddr = creatorDynamicHooks[msg.sender];
        
        // If creator doesn't have a hook yet, deploy one
        if (hookAddr == address(0)) {
            hookAddr = _deployDynamicFeeHook(salt);
            creatorDynamicHooks[msg.sender] = hookAddr;
        }

        poolKey = PoolKey({
            currency0: _currency0,
            currency1: _currency1,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: _tickSpacing,
            hooks: DynamicFeeHook(hookAddr)
        });
        // Register the pool with the hook (this will check for duplicates)
        DynamicFeeHook(hookAddr).registerPool(poolKey);
        
        // No need to check if it is already inialized, because Pool library check inside itself
        poolManager.initialize(poolKey, _sqrtPriceX96);
        limitOrderLens.addPoolId(poolKey.toId(), poolKey);
        
        // Store pool creator information
        bytes32 poolId = PoolId.unwrap(poolKey.toId());
        poolCreators[poolId] = msg.sender;
        
        // Store pool info for the user
        userToPoolInfo[msg.sender].push(PoolInfo({
            poolId: poolId,
            poolKey: poolKey,
            isDynamic: true
        }));
        
        emit PoolCreated(poolId, msg.sender, hookAddr, LPFeeLibrary.DYNAMIC_FEE_FLAG);
        emit PoolInfoStored(msg.sender, poolId, true);
        
        _setWhitelistPool(poolKey);
        
        // Collect fee only after successful pool creation
        if (poolCreationFee > 0) {
            collectedFees += poolCreationFee;
            emit PoolCreationFeeCollected(msg.sender, poolCreationFee);
        }

        // Return excess ETH if any
        if (msg.value > poolCreationFee) {
            (bool success, ) = msg.sender.call{value: msg.value - poolCreationFee}("");
            require(success, "ETHRefundFailed");
        }
    }

    // View function to compute salt off-chain
    function computeSaltForCreator(address creator) external view returns (bytes32 salt, address hookAddress) {
        uint160 requiredFlags = Hooks.BEFORE_SWAP_FLAG | Hooks.AFTER_SWAP_FLAG;
        
        (hookAddress, salt) = HookMiner.find(
            address(this),
            requiredFlags,
            type(DynamicFeeHook).creationCode,
            abi.encode(poolManager, address(limitOrderManager), creator, address(this))
        );
        
        return (salt, hookAddress);
    }
    
    function _deployDynamicFeeHook(bytes32 salt) internal returns (address) {
        // Deploys a new DynamicFeeHook contract using CREATE2 with the provided salt
        // Deploy the hook using the provided salt
        address dynamicFeeHookAddr;
        bytes memory bytecode = abi.encodePacked(
            type(DynamicFeeHook).creationCode,
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

    /* @deprecated This function is no longer used as liquidity should be added separately
    function _mintFullRange(PoolKey memory poolKey, uint256 token0Amount, uint256 token1Amount, uint160 sqrtPriceX96) internal {
        // Users must have already approved tokens to PositionManager
        // The PositionManager will pull tokens directly from msg.sender
        
        // Build the actions for minting through PositionManager
        // Check if we need SWEEP action for ETH (only currency0 can be address zero)
        bool needsSweep = poolKey.currency0.isAddressZero();
        
        bytes memory actions;
        if (needsSweep) {
            actions = abi.encodePacked(
                uint8(Actions.MINT_POSITION),
                uint8(Actions.SETTLE_PAIR),
                uint8(Actions.SWEEP)
            );
        } else {
            actions = abi.encodePacked(
                uint8(Actions.MINT_POSITION),
                uint8(Actions.SETTLE_PAIR)
            );
        }
        
        int24 tickSpacing = poolKey.tickSpacing;
        int24 tickLower = (TickMath.MIN_TICK / tickSpacing) * tickSpacing;
        int24 tickUpper = (TickMath.MAX_TICK / tickSpacing) * tickSpacing;
        
        // Calculate liquidity based on token amounts
        uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(tickLower),
            TickMath.getSqrtPriceAtTick(tickUpper),
            token0Amount,
            token1Amount
        );
        require(liquidity > 0, "ZeroLiquidity");
        
        bytes[] memory params = needsSweep ? new bytes[](3) : new bytes[](2);
        
        params[0] = abi.encode(
            poolKey,
            tickLower,
            tickUpper,
            liquidity,
            uint128(token0Amount), // amount0Max
            uint128(token1Amount), // amount1Max
            msg.sender, // recipient of the position NFT
            bytes("") // hookData
        );
        
        params[1] = abi.encode(poolKey.currency0, poolKey.currency1);
        
        // SWEEP action for ETH positions to return any unused ETH to the pool creator
        if (needsSweep) {
            // Sweep the native currency (ADDRESS_ZERO) - always currency0
            params[2] = abi.encode(poolKey.currency0, msg.sender);
        }
        
        // Calculate ETH value to pass
        // For ETH liquidity: pass only the ETH amount needed for liquidity
        // Pool creation fee stays in this contract
        uint256 ethForLiquidity = poolKey.currency0.isAddressZero() ? token0Amount : 0;
        
        // Forward the call to PositionManager with the ETH for liquidity only
        // The user must have already approved tokens to PositionManager
        (bool success, bytes memory returnData) = address(positionManager).call{value: ethForLiquidity}(
            abi.encodeWithSelector(
                IPositionManager.modifyLiquidities.selector,
                abi.encode(actions, params),
                block.timestamp + 60
            )
        );
        
        if (!success) {
            // If there's return data, it might contain a revert reason
            if (returnData.length > 0) {
                // Bubble up the revert reason
                assembly {
                    let returndata_size := mload(returnData)
                    revert(add(32, returnData), returndata_size)
                }
            } else {
                revert("PositionManager call failed");
            }
        }
        
        // Pool creation fee remains in this contract
    } */

    function _setWhitelistPool(PoolKey memory poolKey) internal {
        PoolId poolId = poolKey.toId();
        limitOrderManager.setWhitelistedPool(poolId, true);
        limitOrderManager.enableHook(address(poolKey.hooks));
    }

    function setPoolCreationFee(uint256 _poolCreationFee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        poolCreationFee = _poolCreationFee;
        emit PoolCreationFeeUpdated(_poolCreationFee);
    }

    function withdrawFees(address recipient) external onlyRole(FEE_COLLECTOR_ROLE) {
        require(recipient != address(0), "ZeroAddress");
        uint256 amount = collectedFees;
        require(amount > 0, "NoFeesToWithdraw");
        
        collectedFees = 0;
        
        (bool success, ) = recipient.call{value: amount}("");
        require(success, "ETHTransferFailed");
        
        emit FeesWithdrawn(recipient, amount);
    }

    /**
     * @notice Calculate the required amount of the other token for full range liquidity
     * @dev For full range positions, the ratio is determined by the price: token1/token0 = price
     * @param sqrtPriceX96 The sqrt price to initialize the pool at (encoded as Q64.96)
     * @param tokenAmount The amount of token being provided
     * @param isToken0 True if tokenAmount is for token0, false if for token1
     * @return otherTokenAmount The required amount of the other token
     */
    function calculateTokenAmountForFullRange(
        uint160 sqrtPriceX96,
        uint256 tokenAmount,
        bool isToken0
    ) public pure returns (uint256 otherTokenAmount) {
        require(sqrtPriceX96 > 0, "Invalid sqrtPriceX96");
        require(tokenAmount > 0, "Invalid tokenAmount");
                
        if (isToken0) {
            // Given token0, calculate token1: token1 = token0 * P
            // P = (sqrtPriceX96)^2 / 2^192
            // Break it down: token1 = (token0 * sqrtPriceX96 / 2^96) * sqrtPriceX96 / 2^96
            otherTokenAmount = FullMath.mulDiv(
                FullMath.mulDiv(tokenAmount, sqrtPriceX96, uint256(1) << 96),
                sqrtPriceX96,
                uint256(1) << 96
            );
        } else {
            // Given token1, calculate token0: token0 = token1 / P
            // token0 = token1 * 2^192 / (sqrtPriceX96)^2
            // Break it down: token0 = (token1 * 2^96 / sqrtPriceX96) * 2^96 / sqrtPriceX96
            otherTokenAmount = FullMath.mulDiv(
                FullMath.mulDiv(tokenAmount, uint256(1) << 96, sqrtPriceX96),
                uint256(1) << 96,
                sqrtPriceX96
            );
        }
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
    
    /// @notice Get the number of pools created by a specific creator
    /// @param creator The address of the creator
    /// @return The number of pools created
    function getPoolCountByCreator(address creator) external view returns (uint256) {
        return userToPoolInfo[creator].length;
    }
    
    /// @notice Get all pool information for a specific creator
    /// @param creator The address of the creator
    /// @return Array of PoolInfo structs containing pool details
    function getPoolInfoByCreator(address creator) external view returns (PoolInfo[] memory) {
        return userToPoolInfo[creator];
    }
    
    // Receive function to handle any excess ETH returned
    // Batch execution structure
    struct BatchAction {
        address target;
        uint256 value;
        bytes data;
    }
    
    // Event for batch execution
    event BatchExecuted(address indexed sender, uint256 actionsCount);
    
    /**
     * @notice Execute multiple actions in a single transaction
     * @dev Supports both internal calls (to this contract) and external calls
     * Internal calls use delegatecall to preserve msg.sender for authentication
     * External calls use regular call for interacting with other contracts
     * @param actions Array of actions to execute
     * @return results Array of return data from each action
     */
    function batch(BatchAction[] calldata actions) external payable returns (bytes[] memory results) {
        uint256 length = actions.length;
        results = new bytes[](length);
        
        for (uint256 i = 0; i < length; i++) {
            BatchAction calldata action = actions[i];
            
            if (action.target == address(this)) {
                // Internal calls - use delegatecall to preserve msg.sender
                // This allows pool creation functions to work correctly
                (bool success, bytes memory result) = address(this).delegatecall(action.data);
                if (!success) {
                    // Bubble up the revert reason
                    if (result.length > 0) {
                        assembly {
                            let returndata_size := mload(result)
                            revert(add(32, result), returndata_size)
                        }
                    } else {
                        revert("Batch: Internal call failed");
                    }
                }
                results[i] = result;
            } else {
                // External calls - regular call for PositionManager, tokens, etc.
                (bool success, bytes memory result) = action.target.call{value: action.value}(action.data);
                if (!success) {
                    // Bubble up the revert reason
                    if (result.length > 0) {
                        assembly {
                            let returndata_size := mload(result)
                            revert(add(32, result), returndata_size)
                        }
                    } else {
                        revert("Batch: External call failed");
                    }
                }
                results[i] = result;
            }
        }
        
        emit BatchExecuted(msg.sender, length);
        
        // Return excess ETH if any
        if (address(this).balance > 0) {
            (bool success, ) = msg.sender.call{value: address(this).balance}("");
            require(success, "Batch: ETH refund failed");
        }
    }
    
    receive() external payable {}
}