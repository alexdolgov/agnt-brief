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
 * Users must approve their tokens directly to the PoolFactory before calling pool creation functions.
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
    
    // Struct to help with stack too deep issues in liquidity minting
    struct MintParams {
        PoolKey poolKey;
        int24 tickLowerFull;
        int24 tickUpperFull;
        uint128 fullRangeLiquidity;
        uint128 fullRangeAmount0Max;
        uint128 fullRangeAmount1Max;
        int24 concentratedTickLower;
        int24 concentratedTickUpper;
        uint128 concentratedLiquidity;
        uint128 concentratedAmount0Max;
        uint128 concentratedAmount1Max;
        address recipient;
        bool hasConcentratedPosition;
    }

    LimitOrderManager public limitOrderManager;
    LimitOrderLens public limitOrderLens;
    IPoolManager public poolManager;
    LimitOrderHook public limitOrderHook;
    IPositionManager public positionManager;
    IAllowanceTransfer public permit2;
    
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

    /**
     * @notice Create a regular pool with limit order hook and mint initial liquidity
     * @dev Creates pool and mints up to 2 positions (full range + optional concentrated)
     */
    function createRegularPoolAndMintLiquidity(
        Currency currency0,
        Currency currency1,
        uint24 fee,
        int24 tickSpacing,
        uint160 sqrtPriceX96,
        uint128 fullRangeAmount0Max,
        uint128 fullRangeAmount1Max,
        int24 concentratedTickLower,
        int24 concentratedTickUpper,
        uint128 concentratedAmount0Max,
        uint128 concentratedAmount1Max,
        address recipient
    ) external payable returns (PoolKey memory poolKey) {
        // Validate inputs
        require(Currency.unwrap(currency0) < Currency.unwrap(currency1), "TokenOrderingIncorrect");
        require(recipient != address(0), "InvalidRecipient");
        require(fullRangeAmount0Max > 0 && fullRangeAmount1Max > 0, "NoLiquidityProvided");
        require(fee != LPFeeLibrary.DYNAMIC_FEE_FLAG, "DynamicFeeNotAllowed");
        
        // Create the pool
        poolKey = PoolKey({
            currency0: currency0,
            currency1: currency1,
            fee: fee,
            tickSpacing: tickSpacing,
            hooks: limitOrderHook
        });
        
        // Initialize pool and store info
        _initializePool(poolKey, sqrtPriceX96, false);
        
        // Prepare mint parameters
        MintParams memory params = _prepareMintParams(
            poolKey,
            tickSpacing,
            sqrtPriceX96,
            fullRangeAmount0Max,
            fullRangeAmount1Max,
            concentratedTickLower,
            concentratedTickUpper,
            concentratedAmount0Max,
            concentratedAmount1Max,
            recipient
        );
        
        // Handle ETH validation and fee collection
        _validateETHAndCollectFee(params);
        
        // Transfer tokens and mint positions
        _transferTokensAndMint(params);
        
        // Refund excess ETH
        _refundExcessETH(params);
    }

    /**
     * @notice Create a dynamic fee pool and mint initial liquidity
     * @dev Creates pool with dynamic fee hook and mints up to 2 positions
     */
    function createDynamicPoolAndMintLiquidity(
        Currency currency0,
        Currency currency1,
        int24 tickSpacing,
        uint160 sqrtPriceX96,
        bytes32 salt,
        uint128 fullRangeAmount0Max,
        uint128 fullRangeAmount1Max,
        int24 concentratedTickLower,
        int24 concentratedTickUpper,
        uint128 concentratedAmount0Max,
        uint128 concentratedAmount1Max,
        address recipient
    ) external payable returns (PoolKey memory poolKey) {
        // Validate inputs
        require(Currency.unwrap(currency0) < Currency.unwrap(currency1), "TokenOrderingIncorrect");
        require(recipient != address(0), "InvalidRecipient");
        require(fullRangeAmount0Max > 0 && fullRangeAmount1Max > 0, "NoFullRangeLiquidityProvided");
        
        // Deploy or get dynamic fee hook
        address hookAddr = creatorDynamicHooks[msg.sender];
        if (hookAddr == address(0)) {
            hookAddr = _deployDynamicFeeHook(salt);
            creatorDynamicHooks[msg.sender] = hookAddr;
        }
        
        // Create the pool
        poolKey = PoolKey({
            currency0: currency0,
            currency1: currency1,
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: tickSpacing,
            hooks: DynamicFeeHook(hookAddr)
        });
        
        // Register and initialize
        DynamicFeeHook(hookAddr).registerPool(poolKey);
        _initializePool(poolKey, sqrtPriceX96, true);
        
        // Prepare mint parameters
        MintParams memory params = _prepareMintParams(
            poolKey,
            tickSpacing,
            sqrtPriceX96,
            fullRangeAmount0Max,
            fullRangeAmount1Max,
            concentratedTickLower,
            concentratedTickUpper,
            concentratedAmount0Max,
            concentratedAmount1Max,
            recipient
        );
        
        // Handle ETH validation and fee collection
        _validateETHAndCollectFee(params);
        
        // Transfer tokens and mint positions
        _transferTokensAndMint(params);
        
        // Refund excess ETH
        _refundExcessETH(params);
    }

    function _initializePool(PoolKey memory poolKey, uint160 sqrtPriceX96, bool isDynamic) internal {
        poolManager.initialize(poolKey, sqrtPriceX96);
        limitOrderLens.addPoolId(poolKey.toId(), poolKey);
        
        // Store pool creator information
        bytes32 poolId = PoolId.unwrap(poolKey.toId());
        poolCreators[poolId] = msg.sender;
        
        userToPoolInfo[msg.sender].push(PoolInfo({
            poolId: poolId,
            poolKey: poolKey,
            isDynamic: isDynamic
        }));
        
        emit PoolCreated(poolId, msg.sender, address(poolKey.hooks), isDynamic ? LPFeeLibrary.DYNAMIC_FEE_FLAG : poolKey.fee);
        emit PoolInfoStored(msg.sender, poolId, isDynamic);
        
        _setWhitelistPool(poolKey);
    }

    function _prepareMintParams(
        PoolKey memory poolKey,
        int24 tickSpacing,
        uint160 sqrtPriceX96,
        uint128 fullRangeAmount0Max,
        uint128 fullRangeAmount1Max,
        int24 concentratedTickLower,
        int24 concentratedTickUpper,
        uint128 concentratedAmount0Max,
        uint128 concentratedAmount1Max,
        address recipient
    ) internal pure returns (MintParams memory params) {
        // Check if concentrated position is requested
        bool hasConcentratedPosition = (concentratedAmount0Max > 0 || concentratedAmount1Max > 0);
        if (hasConcentratedPosition) {
            require(concentratedTickLower < concentratedTickUpper, "InvalidTickRange");
        }
        
        // Calculate full range ticks
        int24 tickLowerFull = (TickMath.MIN_TICK / tickSpacing) * tickSpacing;
        int24 tickUpperFull = (TickMath.MAX_TICK / tickSpacing) * tickSpacing;
        
        // Build params directly
        params.poolKey = poolKey;
        params.tickLowerFull = tickLowerFull;
        params.tickUpperFull = tickUpperFull;
        params.fullRangeAmount0Max = fullRangeAmount0Max;
        params.fullRangeAmount1Max = fullRangeAmount1Max;
        params.concentratedTickLower = concentratedTickLower;
        params.concentratedTickUpper = concentratedTickUpper;
        params.concentratedAmount0Max = concentratedAmount0Max;
        params.concentratedAmount1Max = concentratedAmount1Max;
        params.recipient = recipient;
        params.hasConcentratedPosition = hasConcentratedPosition;
        
        // Calculate liquidity amounts - simplified to avoid stack too deep
        if (fullRangeAmount0Max > 0) {
            (params.fullRangeLiquidity, ) = calculatePositionAmounts(
                tickLowerFull, tickUpperFull, sqrtPriceX96, fullRangeAmount0Max, true
            );
        } else {
            (params.fullRangeLiquidity, ) = calculatePositionAmounts(
                tickLowerFull, tickUpperFull, sqrtPriceX96, fullRangeAmount1Max, false
            );
        }
        
        if (hasConcentratedPosition) {
            if (concentratedAmount0Max > 0) {
                (params.concentratedLiquidity, ) = calculatePositionAmounts(
                    concentratedTickLower, concentratedTickUpper, sqrtPriceX96, concentratedAmount0Max, true
                );
            } else {
                (params.concentratedLiquidity, ) = calculatePositionAmounts(
                    concentratedTickLower, concentratedTickUpper, sqrtPriceX96, concentratedAmount1Max, false
                );
            }
        }
    }

    function _validateETHAndCollectFee(MintParams memory params) internal {
        // Calculate total ETH needed
        uint256 ethNeeded = poolCreationFee;
        if (params.poolKey.currency0.isAddressZero()) {
            ethNeeded += params.fullRangeAmount0Max;
            if (params.hasConcentratedPosition) {
                ethNeeded += params.concentratedAmount0Max;
            }
        }
        require(msg.value >= ethNeeded, "InsufficientETH");
        
        // Collect pool creation fee
        if (poolCreationFee > 0) {
            collectedFees += poolCreationFee;
            emit PoolCreationFeeCollected(msg.sender, poolCreationFee);
        }
    }

    function _transferTokensAndMint(MintParams memory params) internal {
        // Handle token transfers for minting
        _transferTokensForMinting(params);
        
        // Execute minting
        _executeMinting(params);
    }

    function _transferTokensForMinting(MintParams memory params) internal {
        // Transfer token0 if not ETH
        if (!params.poolKey.currency0.isAddressZero()) {
            uint256 token0Total = params.fullRangeAmount0Max;
            if (params.hasConcentratedPosition) {
                token0Total += params.concentratedAmount0Max;
            }
            IERC20(Currency.unwrap(params.poolKey.currency0)).transferFrom(msg.sender, address(this), token0Total);
            _approveToPositionManager(Currency.unwrap(params.poolKey.currency0), token0Total);
        }
        
        // Transfer token1 (always ERC20)
        uint256 token1Total = params.fullRangeAmount1Max;
        if (params.hasConcentratedPosition) {
            token1Total += params.concentratedAmount1Max;
        }
        IERC20(Currency.unwrap(params.poolKey.currency1)).transferFrom(msg.sender, address(this), token1Total);
        _approveToPositionManager(Currency.unwrap(params.poolKey.currency1), token1Total);
    }

    function _executeMinting(MintParams memory params) internal {
        bool needsSweep = params.poolKey.currency0.isAddressZero();
        
        // Build actions array
        bytes memory actions = _buildActions(params.hasConcentratedPosition, needsSweep);
        
        // Build params array
        bytes[] memory mintParamsArray = _buildMintParams(params, needsSweep);
        
        // Calculate ETH to send to PositionManager
        uint256 ethForMint = 0;
        if (params.poolKey.currency0.isAddressZero()) {
            ethForMint = params.fullRangeAmount0Max;
            if (params.hasConcentratedPosition) {
                ethForMint += params.concentratedAmount0Max;
            }
        }
        
        // Execute minting
        IPositionManager(positionManager).modifyLiquidities{value: ethForMint}(
            abi.encode(actions, mintParamsArray),
            block.timestamp + 60
        );
    }

    function _buildActions(bool hasConcentratedPosition, bool needsSweep) internal pure returns (bytes memory) {
        if (hasConcentratedPosition) {
            if (needsSweep) {
                return abi.encodePacked(
                    uint8(Actions.MINT_POSITION),
                    uint8(Actions.MINT_POSITION),
                    uint8(Actions.SETTLE_PAIR),
                    uint8(Actions.SWEEP)
                );
            } else {
                return abi.encodePacked(
                    uint8(Actions.MINT_POSITION),
                    uint8(Actions.MINT_POSITION),
                    uint8(Actions.SETTLE_PAIR)
                );
            }
        } else {
            if (needsSweep) {
                return abi.encodePacked(
                    uint8(Actions.MINT_POSITION),
                    uint8(Actions.SETTLE_PAIR),
                    uint8(Actions.SWEEP)
                );
            } else {
                return abi.encodePacked(
                    uint8(Actions.MINT_POSITION),
                    uint8(Actions.SETTLE_PAIR)
                );
            }
        }
    }

    function _buildMintParams(MintParams memory params, bool needsSweep) internal pure returns (bytes[] memory) {
        uint256 numParams = params.hasConcentratedPosition ? 
            (needsSweep ? 4 : 3) : 
            (needsSweep ? 3 : 2);
        
        bytes[] memory mintParamsArray = new bytes[](numParams);
        uint256 idx = 0;
        
        // Full range mint
        mintParamsArray[idx++] = abi.encode(
            params.poolKey,
            params.tickLowerFull,
            params.tickUpperFull,
            params.fullRangeLiquidity,
            params.fullRangeAmount0Max,
            params.fullRangeAmount1Max,
            params.recipient,
            bytes("")
        );
        
        // Concentrated mint if applicable
        if (params.hasConcentratedPosition) {
            mintParamsArray[idx++] = abi.encode(
                params.poolKey,
                params.concentratedTickLower,
                params.concentratedTickUpper,
                params.concentratedLiquidity,
                params.concentratedAmount0Max,
                params.concentratedAmount1Max,
                params.recipient,
                bytes("")
            );
        }
        
        // Settle pair
        mintParamsArray[idx++] = abi.encode(params.poolKey.currency0, params.poolKey.currency1);
        
        // Sweep if needed
        if (needsSweep) {
            mintParamsArray[idx] = abi.encode(params.poolKey.currency0, params.recipient);
        }
        
        return mintParamsArray;
    }

    function _refundExcessETH(MintParams memory params) internal {
        uint256 ethUsed = poolCreationFee;
        if (params.poolKey.currency0.isAddressZero()) {
            ethUsed += params.fullRangeAmount0Max;
            if (params.hasConcentratedPosition) {
                ethUsed += params.concentratedAmount0Max;
            }
        }
        
        uint256 ethRemaining = msg.value - ethUsed;
        if (ethRemaining > 0) {
            (bool success, ) = msg.sender.call{value: ethRemaining}("");
            require(success, "ETHRefundFailed");
        }
    }

    // View function to compute salt off-chain
    function computeSaltForCreator(address creator) external view returns (bytes32 salt, address hookAddress) {
        uint160 requiredFlags = uint160(Hooks.BEFORE_SWAP_FLAG | Hooks.AFTER_SWAP_FLAG);
        
        (hookAddress, salt) = HookMiner.find(
            address(this),
            requiredFlags,
            type(DynamicFeeHook).creationCode,
            abi.encode(poolManager, address(limitOrderManager), creator, address(this))
        );
        
        return (salt, hookAddress);
    }
    
    function _deployDynamicFeeHook(bytes32 salt) internal returns (address) {
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
            if (sqrtPriceX96 <= sqrtRatioA) {
                // Current price is below the range, only token0 is needed
                liquidity = LiquidityAmounts.getLiquidityForAmount0(
                    sqrtRatioA,
                    sqrtRatioB,
                    amount
                );
                otherTokenAmount = 0;
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
                otherTokenAmount = 0;
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