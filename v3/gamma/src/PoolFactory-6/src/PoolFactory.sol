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
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
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
    using StateLibrary for IPoolManager;

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
    IAllowanceTransfer public permit2;
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

    constructor(address _limitOrderLens, address _positionManager, address _limitOrderHook, address _permit2) {
        require(_limitOrderHook != address(0), "LimitOrderHookZeroAddress");
        require(_permit2 != address(0), "Permit2ZeroAddress");
        
        limitOrderLens = LimitOrderLens(_limitOrderLens);
        poolManager = limitOrderLens.poolManager();
        limitOrderManager = limitOrderLens.limitOrderManager();
        positionManager = IPositionManager(_positionManager);
        limitOrderHook = LimitOrderHook(_limitOrderHook);
        permit2 = IAllowanceTransfer(_permit2);
        
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
    
    // Batch operation structures
    struct BatchCall {
        address target;
        bytes callData;
    }

    /**
     * @notice Execute multiple operations in a single transaction
     * @dev Uses delegatecall to preserve msg.sender for internal calls
     * @param calls Array of calls to execute
     */
    function batch(bytes[] calldata calls) external payable {
        for (uint256 i = 0; i < calls.length; i++) {
            (bool success, bytes memory result) = address(this).delegatecall(calls[i]);
            if (!success) {
                // If there's return data, it might contain a revert reason
                if (result.length > 0) {
                    assembly {
                        let returndata_size := mload(result)
                        revert(add(32, result), returndata_size)
                    }
                } else {
                    revert("Batch operation failed");
                }
            }
        }
    }


    /**
     * @notice Internal function to approve tokens to PositionManager through Permit2
     * @param token The token to approve
     * @param amount The amount to approve
     */
    function _approveToPositionManager(address token, uint256 amount) internal {
        if (token == address(0) || amount == 0) return;
        
        // First, approve Permit2 to spend our tokens
        IERC20(token).approve(address(permit2), amount);
        
        // Then approve PositionManager through Permit2
        permit2.approve(token, address(positionManager), uint160(amount), uint48(block.timestamp + 86400));
    }

    /**
     * @notice Mint a liquidity position through PositionManager
     * @dev User must first approve PoolFactory to spend their ERC20 tokens
     * PoolFactory will pull tokens, then route through Permit2 to PositionManager
     * @param poolKey The pool key for the position
     * @param tickLower The lower tick of the position range
     * @param tickUpper The upper tick of the position range
     * @param liquidity The amount of liquidity to mint
     * @param amount0Max Maximum amount of token0 to spend (or ETH if currency0 is native)
     * @param amount1Max Maximum amount of token1 to spend
     * @param recipient The recipient of the position NFT and any refunds
     */
    function mintPosition(
        PoolKey memory poolKey,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        uint128 amount0Max,
        uint128 amount1Max,
        address recipient
    ) external payable {
        require(recipient != address(0), "InvalidRecipient");
        require(liquidity > 0, "ZeroLiquidity");
        require(tickLower < tickUpper, "InvalidTickRange");
        
        // Handle token transfers and approvals
        (uint256 token0BalanceBefore, uint256 token1BalanceBefore) = _handleTokenTransfers(
            poolKey,
            amount0Max,
            amount1Max
        );
        
        // Execute mint on PositionManager
        _executeMint(
            poolKey,
            tickLower,
            tickUpper,
            liquidity,
            amount0Max,
            amount1Max,
            recipient
        );
        
        // Handle refunds
        _handleRefunds(
            poolKey,
            recipient,
            token0BalanceBefore,
            token1BalanceBefore
        );
    }
    
    function _handleTokenTransfers(
        PoolKey memory poolKey,
        uint128 amount0Max,
        uint128 amount1Max
    ) internal returns (uint256 token0BalanceBefore, uint256 token1BalanceBefore) {
        // Track initial balance for token1 (always ERC20)
        token1BalanceBefore = IERC20(Currency.unwrap(poolKey.currency1)).balanceOf(address(this));
        
        // Handle token0
        if (!poolKey.currency0.isAddressZero()) {
            // Currency0 is ERC20 - pull from user
            token0BalanceBefore = IERC20(Currency.unwrap(poolKey.currency0)).balanceOf(address(this));
            IERC20(Currency.unwrap(poolKey.currency0)).transferFrom(msg.sender, address(this), amount0Max);
            // Approve token0 to PositionManager via Permit2
            _approveToPositionManager(Currency.unwrap(poolKey.currency0), amount0Max);
        } else {
            // Currency0 is ETH - verify msg.value
            require(msg.value >= amount0Max, "InsufficientETH");
        }
        
        // Currency1 is always an ERC20 token (never address(0))
        IERC20(Currency.unwrap(poolKey.currency1)).transferFrom(msg.sender, address(this), amount1Max);
        // Approve token1 to PositionManager via Permit2
        _approveToPositionManager(Currency.unwrap(poolKey.currency1), amount1Max);
    }
    
    function _executeMint(
        PoolKey memory poolKey,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        uint128 amount0Max,
        uint128 amount1Max,
        address recipient
    ) internal {
        bool needsSweep = poolKey.currency0.isAddressZero();
        
        bytes memory actions = needsSweep ? 
            abi.encodePacked(
                uint8(Actions.MINT_POSITION),
                uint8(Actions.SETTLE_PAIR),
                uint8(Actions.SWEEP)
            ) : 
            abi.encodePacked(
                uint8(Actions.MINT_POSITION),
                uint8(Actions.SETTLE_PAIR)
            );
        
        bytes[] memory params = needsSweep ? new bytes[](3) : new bytes[](2);
        
        params[0] = abi.encode(
            poolKey,
            tickLower,
            tickUpper,
            liquidity,
            amount0Max,
            amount1Max,
            recipient,  // NFT goes to the recipient
            bytes("") // hookData
        );
        
        params[1] = abi.encode(poolKey.currency0, poolKey.currency1);
        
        if (needsSweep) {
            // Sweep excess ETH to recipient
            params[2] = abi.encode(poolKey.currency0, recipient);
        }
        
        // Call PositionManager (it will pull tokens from PoolFactory via Permit2)
        // For ETH positions, forward the ETH via msg.value
        uint256 ethToSend = poolKey.currency0.isAddressZero() ? msg.value : 0;
        
        (bool success, bytes memory result) = address(positionManager).call{value: ethToSend}(
            abi.encodeWithSelector(
                IPositionManager.modifyLiquidities.selector,
                abi.encode(actions, params),
                block.timestamp + 60
            )
        );
        
        if (!success) {
            if (result.length > 0) {
                assembly {
                    let returndata_size := mload(result)
                    revert(add(32, result), returndata_size)
                }
            } else {
                revert("MintPositionFailed");
            }
        }
    }
    
    function _handleRefunds(
        PoolKey memory poolKey,
        address recipient,
        uint256 token0BalanceBefore,
        uint256 token1BalanceBefore
    ) internal {
        // Handle token0 refunds (if ERC20)
        if (!poolKey.currency0.isAddressZero()) {
            uint256 token0BalanceAfter = IERC20(Currency.unwrap(poolKey.currency0)).balanceOf(address(this));
            // If we have more than we started with, refund the excess to recipient
            if (token0BalanceAfter > token0BalanceBefore) {
                uint256 refundAmount = token0BalanceAfter - token0BalanceBefore;
                IERC20(Currency.unwrap(poolKey.currency0)).transfer(recipient, refundAmount);
            }
        }
        
        // Currency1 is always ERC20, check for refunds
        uint256 token1BalanceAfter = IERC20(Currency.unwrap(poolKey.currency1)).balanceOf(address(this));
        if (token1BalanceAfter > token1BalanceBefore) {
            uint256 refundAmount = token1BalanceAfter - token1BalanceBefore;
            IERC20(Currency.unwrap(poolKey.currency1)).transfer(recipient, refundAmount);
        }
        // ETH refunds are handled by the SWEEP action in PositionManager
    }

    /**
     * @notice Calculate the required amount of the other token and total liquidity for a position
     * @param tickLower The lower tick of the position range
     * @param tickUpper The upper tick of the position range
     * @param sqrtPriceX96 The current sqrt price of the pool
     * @param amount The amount of token being provided
     * @param isToken0 True if amount is for token0, false if for token1
     * @return liquidity The liquidity amount that would be minted
     * @return otherTokenAmount The required amount of the other token
     */
    function calculatePositionAmounts(
        int24 tickLower,
        int24 tickUpper,
        uint160 sqrtPriceX96,
        uint256 amount,
        bool isToken0
    ) public pure returns (uint128 liquidity, uint256 otherTokenAmount) {
        require(tickLower < tickUpper, "InvalidTickRange");
        require(sqrtPriceX96 > 0, "InvalidSqrtPrice");
        require(amount > 0, "InvalidAmount");
        
        uint160 sqrtRatioA = TickMath.getSqrtPriceAtTick(tickLower);
        uint160 sqrtRatioB = TickMath.getSqrtPriceAtTick(tickUpper);
        
        if (isToken0) {
            // User specified token0, calculate liquidity from token0
            // Note: We need to determine which range we're in
            if (sqrtPriceX96 <= sqrtRatioA) {
                // Current price is below the range, only token0 is needed
                liquidity = LiquidityAmounts.getLiquidityForAmount0(
                    sqrtRatioA,
                    sqrtRatioB,
                    amount
                );
                otherTokenAmount = 0; // No token1 needed
            } else if (sqrtPriceX96 >= sqrtRatioB) {
                // Current price is above the range, position is worthless for token0
                revert("InvalidRange: Price above range for token0");
            } else {
                // Current price is within the range
                liquidity = LiquidityAmounts.getLiquidityForAmount0(
                    sqrtPriceX96,
                    sqrtRatioB,
                    amount
                );
                // Calculate required token1
                otherTokenAmount = LiquidityAmounts.getAmount1ForLiquidity(
                    sqrtRatioA,
                    sqrtPriceX96,
                    liquidity
                );
            }
        } else {
            // User specified token1, calculate liquidity from token1
            if (sqrtPriceX96 >= sqrtRatioB) {
                // Current price is above the range, only token1 is needed
                liquidity = LiquidityAmounts.getLiquidityForAmount1(
                    sqrtRatioA,
                    sqrtRatioB,
                    amount
                );
                otherTokenAmount = 0; // No token0 needed
            } else if (sqrtPriceX96 <= sqrtRatioA) {
                // Current price is below the range, position is worthless for token1
                revert("InvalidRange: Price below range for token1");
            } else {
                // Current price is within the range
                liquidity = LiquidityAmounts.getLiquidityForAmount1(
                    sqrtRatioA,
                    sqrtPriceX96,
                    amount
                );
                // Calculate required token0
                otherTokenAmount = LiquidityAmounts.getAmount0ForLiquidity(
                    sqrtPriceX96,
                    sqrtRatioB,
                    liquidity
                );
            }
        }
    }

    /**
     * @notice Calculate amounts for a full range position
     * @dev Automatically uses MIN_TICK and MAX_TICK adjusted for tick spacing
     * @param tickSpacing The tick spacing of the pool
     * @param sqrtPriceX96 The current sqrt price of the pool
     * @param amount The amount of token being provided
     * @param isToken0 True if amount is for token0, false if for token1
     * @return liquidity The liquidity amount that would be minted
     * @return otherTokenAmount The required amount of the other token
     */
    function calculateFullRangePositionAmounts(
        int24 tickSpacing,
        uint160 sqrtPriceX96,
        uint256 amount,
        bool isToken0
    ) external pure returns (uint128 liquidity, uint256 otherTokenAmount) {
        // Calculate full range ticks based on tick spacing
        int24 tickLower = (TickMath.MIN_TICK / tickSpacing) * tickSpacing;
        int24 tickUpper = (TickMath.MAX_TICK / tickSpacing) * tickSpacing;
        
        // Call the main calculation function
        return calculatePositionAmounts(
            tickLower,
            tickUpper,
            sqrtPriceX96,
            amount,
            isToken0
        );
    }

    receive() external payable {}
}