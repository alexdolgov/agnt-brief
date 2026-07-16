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

    LimitOrderManager public limitOrderManager;
    LimitOrderLens public limitOrderLens;
    IPoolManager public poolManager;
    LimitOrderHook public limitOrderHook;
    IPositionManager public positionManager;
    // DynamicFeeHook public dynamicFeeHook;
    uint24 public maxLPFee;
    
    // Pool creation fee settings
    uint256 public poolCreationFee;
    uint256 public collectedFees;
    
    // One hook per creator
    mapping(address => address) public creatorHooks;

    // Track pool creators using pool ID as key
    mapping(bytes32 => address) public poolCreators;
    
    // Events for tracking pool creation
    event PoolCreated(bytes32 indexed poolId, address indexed creator, address indexed hook, uint24 fee);
    event PoolCreationFeeUpdated(uint256 newFee);
    event PoolCreationFeeCollected(address indexed creator, uint256 fee);
    event FeesWithdrawn(address indexed recipient, uint256 amount);

    constructor(address _limitOrderLens, address _positionManager) {
        limitOrderLens = LimitOrderLens(_limitOrderLens);
        poolManager = limitOrderLens.poolManager();
        limitOrderManager = limitOrderLens.limitOrderManager();
        positionManager = IPositionManager(_positionManager);
        
        // Grant roles to deployer
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(FEE_COLLECTOR_ROLE, msg.sender);
    }

    function createPoolForLimitOrderHook(
        Currency _currency0,
        Currency _currency1, 
        uint24 _fee, 
        int24 _tickSpacing, 
        uint160 _sqrtPriceX96,
        uint256 token0Amount,
        uint256 token1Amount
    ) external payable returns(PoolKey memory poolKey) {
        // Validate inputs first
        require(address(limitOrderHook) != address(0), "LimitOrderHookNotSet");
        require(Currency.unwrap(_currency0) < Currency.unwrap(_currency1), "TokenOrderingIncorrect");
        require(token0Amount > 0, "Token0AmountZero");
        require(token1Amount > 0, "Token1AmountZero");
        
        // Validate ETH amount upfront
        uint256 ethRequiredForLiquidity = _currency0.isAddressZero() ? token0Amount : 0;
        uint256 totalEthRequired = ethRequiredForLiquidity + poolCreationFee;
        require(msg.value >= totalEthRequired, "InsufficientETH");
        
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
        
        bytes32 poolId = PoolId.unwrap(poolKey.toId());
        emit PoolCreated(poolId, msg.sender, address(limitOrderHook), _fee);
        
        _mintFullRange(poolKey, token0Amount, token1Amount, _sqrtPriceX96);
        _setWhitelistPool(poolKey);
        
        // Collect fee only after successful pool creation
        if (poolCreationFee > 0) {
            collectedFees += poolCreationFee;
            emit PoolCreationFeeCollected(msg.sender, poolCreationFee);
        }
    }

    function createPoolForDynamicFeeHook(
        Currency _currency0, 
        Currency _currency1, 
        int24 _tickSpacing, 
        uint160 _sqrtPriceX96, 
        uint256 token0Amount, 
        uint256 token1Amount,
        bytes32 salt  // Salt parameter for hook deployment
    ) external payable returns (PoolKey memory poolKey) {
        // Validate inputs first
        require(Currency.unwrap(_currency0) < Currency.unwrap(_currency1), "TokenOrderingIncorrect");
        require(token0Amount > 0, "Token0AmountZero");
        require(token1Amount > 0, "Token1AmountZero");
        
        // Validate ETH amount upfront
        uint256 ethRequiredForLiquidity = _currency0.isAddressZero() ? token0Amount : 0;
        uint256 totalEthRequired = ethRequiredForLiquidity + poolCreationFee;
        require(msg.value >= totalEthRequired, "InsufficientETH");
        
        address hookAddr = creatorHooks[msg.sender];
        
        // If creator doesn't have a hook yet, deploy one
        if (hookAddr == address(0)) {
            hookAddr = _deployDynamicFeeHook(salt);
            creatorHooks[msg.sender] = hookAddr;
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
        emit PoolCreated(poolId, msg.sender, hookAddr, LPFeeLibrary.DYNAMIC_FEE_FLAG);
        
        _mintFullRange(poolKey, token0Amount, token1Amount, _sqrtPriceX96);
        _setWhitelistPool(poolKey);
        
        // Collect fee only after successful pool creation
        if (poolCreationFee > 0) {
            collectedFees += poolCreationFee;
            emit PoolCreationFeeCollected(msg.sender, poolCreationFee);
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
    }

    function _setWhitelistPool(PoolKey memory poolKey) internal {
        PoolId poolId = poolKey.toId();
        limitOrderManager.setWhitelistedPool(poolId, true);
        limitOrderManager.enableHook(address(poolKey.hooks));
    }

    // Removed updateLPFee - creators now update fees directly on their hook
    // Removed minAmounts functionality - no longer needed


    function setMaxLPFee(uint24 _maxLPFee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_maxLPFee < 1_000_000, "WrongMaxLPFee");
        maxLPFee = _maxLPFee;
    }

    function setLimitOrderHook(address _limitOrderHookAddr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_limitOrderHookAddr != address(0), "ZeroAddress");
        limitOrderHook = LimitOrderHook(_limitOrderHookAddr);
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

    // Receive function to handle any excess ETH returned
    receive() external payable {}
}