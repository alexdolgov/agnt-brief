// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {LimitOrderManager} from "../LimitOrderManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {BalanceDelta, toBalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {Currency, CurrencyLibrary} from "v4-core/types/Currency.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {LiquidityAmounts} from "v4-periphery/lib/v4-core/test/utils/LiquidityAmounts.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {OwnableUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import {AccessControlUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import {Initializable} from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {ILimitOrderManager} from "../interfaces/ILimitOrderManager.sol";
import {TickLibrary} from "../libraries/TickLibrary.sol";
import {PositionManagement} from "../libraries/PositionManagement.sol";

interface ERC20MinimalInterface {
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}


/// @title LimitOrderLens
/// @notice Helper contract to provide view functions for accessing data from LimitOrderManager
/// @dev This contract is designed to aid frontend development by providing easy access to user information
contract LimitOrderLens is Initializable, OwnableUpgradeable, AccessControlUpgradeable, UUPSUpgradeable {
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using PoolIdLibrary for PoolKey;
    using CurrencyLibrary for Currency;
    
    error InvalidScaleParameters();
    error OrderLimitExceeded(uint256 totalOrders, uint256 maxOrderLimit);
    error InsufficientOrders(uint256 totalOrders, uint256 minOrders);
    error TickRangeTooSmall();

    bytes32 public constant FACTORY_ROLE = keccak256("FACTORY_ROLE");
    
    // Reference to the LimitOrderManager contract
    LimitOrderManager public limitOrderManager;
    
    // Direct reference to the pool manager
    IPoolManager public poolManager;

    // Mapping from PoolId to PoolKey
    mapping(PoolId => PoolKey) public poolIdToKey;
    
    // Set of pool IDs for iteration (stored as bytes32)
    EnumerableSet.Bytes32Set private poolIdBytes;

    // Constants
    BalanceDelta public constant ZERO_DELTA = BalanceDelta.wrap(0);
    uint256 public constant MIN_ORDERS = 2;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[47] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _limitOrderManagerAddr) public initializer {
        __Ownable_init(msg.sender);
        __AccessControl_init();
        __UUPSUpgradeable_init();
        
        require(_limitOrderManagerAddr != address(0));
        limitOrderManager = LimitOrderManager(_limitOrderManagerAddr);
        
        // Get poolManager directly from LimitOrderManager
        poolManager = IPoolManager(limitOrderManager.poolManager());
        // Grant _owner the role which can grant FACTORY_ROLE role to another
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        // Grant _owner the role which can add or remove PoolId
        _grantRole(FACTORY_ROLE, msg.sender);
    }

    /// @notice Add a PoolId and its corresponding PoolKey to the mapping
    /// @param poolId The pool identifier
    /// @param key The corresponding PoolKey
    function addPoolId(PoolId poolId, PoolKey calldata key) external onlyRole(FACTORY_ROLE) {
        // Compare the unwrapped bytes32 values
        require(PoolId.unwrap(key.toId()) == PoolId.unwrap(poolId));
        poolIdToKey[poolId] = key;
        poolIdBytes.add(PoolId.unwrap(poolId));
    }

    /// @dev Required by UUPSUpgradeable to authorize upgrades
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /// @notice Remove a PoolId from the mapping
    /// @param poolId The pool identifier to remove
    function removePoolId(PoolId poolId) external onlyOwner {
        delete poolIdToKey[poolId];
        poolIdBytes.remove(PoolId.unwrap(poolId));
    }

    /// @notice Decode a position key to extract its components
    /// @param positionKey The position key to decode
    /// @return bottomTick The bottom tick of the position
    /// @return topTick The top tick of the position
    /// @return isToken0 Whether the position is for token0
    /// @return nonce The nonce value used in the position
    function decodePositionKey(bytes32 positionKey) public pure returns (
        int24 bottomTick,
        int24 topTick,
        bool isToken0,
        uint256 nonce
    ) {
        uint256 value = uint256(positionKey);
        return (
            int24(uint24(value >> 232)),          // bottomTick
            int24(uint24(value >> 208)),          // topTick
            (value & 1) == 1,                     // isToken0
            (value >> 8) & ((1 << 200) - 1)       // nonce (200 bits)
        );
    }

    /// @notice Get positions for a specific user in a specific pool
    /// @param user The address of the user
    /// @param poolId The pool identifier
    /// @return positions Array of position information
    function getAllUserPositionsForPool(
        address user,
        PoolId poolId
    ) public view returns (LimitOrderManager.PositionInfo[] memory positions) {
        // Use getUserPositions from LimitOrderManager, not getUserPositionBalances
        // For detailed balance info, use the getPositionBalances function in this contract
        return limitOrderManager.getUserPositions(user, poolId, 0, 0);
    }


    /// @notice Get the PoolId for a given PoolKey
    /// @param key The pool key
    /// @return poolId The corresponding PoolId
    function getPoolId(PoolKey calldata key) external pure returns (PoolId) {
        return key.toId();
    }



    // Helper function to get claimable balances for a user in a pool
    function _getClaimableBalances(
        address user,
        PoolKey memory key
    ) internal view returns (
        LimitOrderManager.ClaimableTokens memory token0Balance,
        LimitOrderManager.ClaimableTokens memory token1Balance
    ) {
        PoolId poolId = key.toId();
        
        // Initialize the balance structures
        token0Balance.token = key.currency0;
        token1Balance.token = key.currency1;
        
        // Get all positions for the user in this pool
        LimitOrderManager.PositionInfo[] memory positions = limitOrderManager.getUserPositions(user, poolId, 0, 0);
        
        // Iterate through each position and accumulate balances
        for (uint i = 0; i < positions.length;) {
            // Get position-specific balances
            LimitOrderManager.PositionBalances memory posBalances = 
                getPositionBalances(user, poolId, positions[i].positionKey);
            
            // Accumulate principals and fees
            unchecked {
                token0Balance.principal += posBalances.principal0;
                token1Balance.principal += posBalances.principal1;
                token0Balance.fees += posBalances.fees0;
                token1Balance.fees += posBalances.fees1;
                i++;
            }
        }
        
        return (token0Balance, token1Balance);
    }

    /// @notice Tick information including liquidity and token amounts
    struct TickInfo {
        int24 tick;
        uint160 sqrtPrice;
        uint256 token0Amount;
        uint256 token1Amount;
        uint256 totalTokenAmountsinToken1;
    }

    /// @notice Populated tick data from the pool
    struct PopulatedTick {
        int24 tick;
        int128 liquidityNet;
        uint128 liquidityGross;
    }

    /// @notice Get tick information for a range around the current tick with orderbook-style liquidity
    /// @param poolId The pool identifier
    /// @param numTicks Number of ticks to include on each side of the current tick
    /// @return currentTick The current tick from slot0
    /// @return sqrtPriceX96 The sqrt price from slot0
    /// @return tickInfos Array of tick information with orderbook liquidity
    function getTickInfosAroundCurrent(
        PoolId poolId,
        uint24 numTicks
    ) external view returns (int24 currentTick, uint160 sqrtPriceX96, TickInfo[] memory tickInfos) {
        PoolKey memory poolKey = poolIdToKey[poolId];
        
        (sqrtPriceX96, currentTick, , ) = StateLibrary.getSlot0(poolManager, poolId);   
        
        // Calculate tick range
        (int24 startTick, int24 endTick) = _calculateTickRange(
            currentTick, poolKey.tickSpacing, numTicks
        );

        // Get populated ticks in a broader range to capture AMM liquidity boundaries
        // that might be outside our display range but affect liquidity calculation
        int24 broadStartTick = TickMath.minUsableTick(poolKey.tickSpacing);
        
        // Get all populated ticks from min tick to our end tick to properly calculate liquidity
        PopulatedTick[] memory populatedTicks = _getPopulatedTicksInRange(
            poolId, poolKey.tickSpacing, broadStartTick, endTick
        );

        // Calculate orderbook-style liquidity for each tick in range
        tickInfos = _calculateOrderbookLiquidity(
            populatedTicks,
            startTick,
            endTick,
            poolKey.tickSpacing,
            currentTick,
            sqrtPriceX96
        );
        
        return (currentTick, sqrtPriceX96, tickInfos);
    }

    /// @notice Calculate the tick range around the current tick
    /// @param currentTick The current tick
    /// @param tickSpacing The tick spacing
    /// @param numTicks Number of ticks on each side
    /// @return startTick The start of the range
    /// @return endTick The end of the range
    function _calculateTickRange(
        int24 currentTick, 
        int24 tickSpacing, 
        uint24 numTicks
    ) internal pure returns (int24 startTick, int24 endTick) {
        int24 alignedTick = (currentTick / tickSpacing) * tickSpacing;
        startTick = alignedTick - int24(numTicks);
        endTick = alignedTick + int24(numTicks);
        
        int24 minTick = TickMath.minUsableTick(tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(tickSpacing);
        if (startTick < minTick) startTick = minTick;
        if (endTick > maxTick) endTick = maxTick;
        
        return (startTick, endTick);
    }

    /// @notice Get all populated ticks within a range
    /// @param poolId The pool identifier
    /// @param tickSpacing The tick spacing
    /// @param startTick The start of the range
    /// @param endTick The end of the range
    /// @return populatedTicks Array of populated tick data
    function _getPopulatedTicksInRange(
        PoolId poolId,
        int24 tickSpacing,
        int24 startTick,
        int24 endTick
    ) internal view returns (PopulatedTick[] memory populatedTicks) {
        // Count total populated ticks in range
        uint256 totalPopulatedTicks = 0;
        for (int16 wordPos = int16((startTick / tickSpacing) >> 8); wordPos <= int16((endTick / tickSpacing) >> 8);) {
            uint256 bitmap = StateLibrary.getTickBitmap(poolManager, poolId, wordPos);
            if (bitmap != 0) {
                // Inline count bits logic directly here
                for (uint256 i = 0; i < 256;) {
                    if (bitmap & (1 << i) == 0) {
                        unchecked { i++; }
                        continue;
                    }
                    
                    int24 tick = ((int24(wordPos) << 8) + int24(uint24(i))) * tickSpacing;
                    if (tick >= startTick && tick <= endTick) {
                        unchecked { totalPopulatedTicks++; }
                    }
                    unchecked { i++; }
                }
            }
            unchecked { wordPos++; }
        }
        
        if (totalPopulatedTicks == 0) {
            return new PopulatedTick[](0);
        }
        
        // Collect the actual populated tick data
        populatedTicks = new PopulatedTick[](totalPopulatedTicks);
        uint256 index = 0;
        
        for (int16 wordPos = int16((startTick / tickSpacing) >> 8); wordPos <= int16((endTick / tickSpacing) >> 8);) {
            uint256 bitmap = StateLibrary.getTickBitmap(poolManager, poolId, wordPos);
            if (bitmap != 0) {
                // Inline the _fillPopulatedTicksFromWord logic
                for (uint256 i = 0; i < 256;) {
                    if (bitmap & (1 << i) != 0) {
                        int24 tick = ((int24(wordPos) << 8) + int24(uint24(i))) * tickSpacing;
                        if (tick >= startTick && tick <= endTick) {
                            (uint128 liquidityGross, int128 liquidityNet) = 
                                StateLibrary.getTickLiquidity(poolManager, poolId, tick);
                            
                            populatedTicks[index++] = PopulatedTick({
                                tick: tick,
                                liquidityNet: liquidityNet,
                                liquidityGross: liquidityGross
                            });
                        }
                    }
                    unchecked { i++; }
                }
            }
            unchecked { wordPos++; }
        }
        
        return populatedTicks;
    }

    /// @notice Calculate orderbook-style liquidity for each tick in the range
    /// @param populatedTicks Array of populated tick data
    /// @param startTick The start of the range
    /// @param endTick The end of the range
    /// @param tickSpacing The tick spacing
    /// @param currentTick The current tick
    /// @param sqrtPriceX96 The current sqrt price
    /// @return tickInfos Array of tick information with calculated liquidity
    function _calculateOrderbookLiquidity(
        PopulatedTick[] memory populatedTicks,
        int24 startTick,
        int24 endTick,
        int24 tickSpacing,
        int24 currentTick,
        uint160 sqrtPriceX96
    ) internal pure returns (TickInfo[] memory tickInfos) {
        // Calculate number of ticks in range
        uint256 totalTicks = uint256(int256((endTick - startTick) / tickSpacing)) + 1;
        tickInfos = new TickInfo[](totalTicks);
        
        // Fill tick info for each tick in range
        for (uint256 i = 0; i < totalTicks;) {
            int24 tick = startTick + int24(int256(i) * int256(tickSpacing));
            
            // Calculate active liquidity at this tick
            uint128 liquidityAtTick = _calculateLiquidityAtTickFromPopulated(
                populatedTicks, tick
            );
            
            // Set tick info with conditional logic based on currentTick
            if (currentTick >= tick) {
                tickInfos[i].tick = tick;
                tickInfos[i].sqrtPrice = TickMath.getSqrtPriceAtTick(tick);
            } else {
                tickInfos[i].tick = tick + tickSpacing;
                tickInfos[i].sqrtPrice = TickMath.getSqrtPriceAtTick(tick + tickSpacing);
            }
            
            // Calculate token amounts based on liquidity and price position
            if (liquidityAtTick > 0) {
                _calculateTokenAmountsFromLiquidity(
                    tickInfos[i],
                    liquidityAtTick,
                    tick,
                    tickSpacing,
                    currentTick,
                    sqrtPriceX96
                );
            }
            unchecked { i++; }
        }
        
        return tickInfos;
    }

    /// @notice Calculate active liquidity at a specific tick from populated tick data
    /// @param populatedTicks Array of populated tick data
    /// @param targetTick The tick to calculate liquidity for
    /// @return activeLiquidity The active liquidity at the target tick
    function _calculateLiquidityAtTickFromPopulated(
        PopulatedTick[] memory populatedTicks,
        int24 targetTick
    ) internal pure returns (uint128 activeLiquidity) {
        // Walk through all populated ticks and accumulate liquidityNet
        // for ticks <= targetTick
        for (uint256 i = 0; i < populatedTicks.length;) {
            if (populatedTicks[i].tick <= targetTick) {
                // Inline _addDelta logic
                int128 liquidityNet = populatedTicks[i].liquidityNet;
                unchecked {
                    if (liquidityNet < 0) {
                        activeLiquidity = activeLiquidity - uint128(-liquidityNet);
                    } else {
                        activeLiquidity = activeLiquidity + uint128(liquidityNet);
                    }
                }
            }
            unchecked { i++; }
        }
        
        return activeLiquidity;
    }

    /// @notice Calculate token amounts for a tick based on its liquidity
    /// @param tickInfo The tick info struct to populate
    /// @param liquidity The liquidity amount
    /// @param tick The tick value
    /// @param tickSpacing The tick spacing
    /// @param currentTick The current tick
    /// @param sqrtPriceX96 The current sqrt price
    function _calculateTokenAmountsFromLiquidity(
        TickInfo memory tickInfo,
        uint128 liquidity,
        int24 tick,
        int24 tickSpacing,
        int24 currentTick,
        uint160 sqrtPriceX96
    ) internal pure {
        uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(tick);
        uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(tick + tickSpacing);
        
        // Determine which token amounts to calculate based on current price
        if (currentTick < tick) {
            // Price is below this tick range - all token0
            tickInfo.token0Amount = LiquidityAmounts.getAmount0ForLiquidity(
                sqrtPriceLowerX96,
                sqrtPriceUpperX96,
                liquidity
            );
        } else if (currentTick >= tick + tickSpacing) {
            // Price is above this tick range - all token1
            tickInfo.token1Amount = LiquidityAmounts.getAmount1ForLiquidity(
                sqrtPriceLowerX96,
                sqrtPriceUpperX96,
                liquidity
            );
        } else {
            // Price is within this tick range - both tokens
            (tickInfo.token0Amount, tickInfo.token1Amount) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                sqrtPriceLowerX96,
                sqrtPriceUpperX96,
                liquidity
            );
        }
        
        // Calculate total value in token1 terms
        if (tickInfo.token0Amount > 0) {
            tickInfo.totalTokenAmountsinToken1 = FullMath.mulDiv(
                tickInfo.token0Amount,
                FullMath.mulDiv(sqrtPriceX96, sqrtPriceX96, 1 << 96),
                1 << 96
            ) + tickInfo.token1Amount;
        } else {
            tickInfo.totalTokenAmountsinToken1 = tickInfo.token1Amount;
        }
    }

    /// @notice Get positions for a user across all tracked pools with pagination
    /// @param user The address of the user
    /// @param offset Starting position index in the global list
    /// @param limit Maximum number of positions to return (optional, use 0 for all positions)
    /// @return positions Array of detailed user position information
    /// @return totalCount Total number of positions across all pools
    function getUserPositionsPaginated(
        address user, 
        uint256 offset, 
        uint256 limit
    ) external view returns (
        DetailedUserPosition[] memory positions,
        uint256 totalCount
    ) {
        totalCount = _countTotalUserPositions(user);
        
        if (limit == 0) {
            limit = totalCount;  // normalize to mean "all positions"
        }
        
        if (offset >= totalCount) {
            return (new DetailedUserPosition[](0), totalCount);
        }
        
        uint256 count = (offset + limit > totalCount) ? 
            (totalCount - offset) : limit;
        
        positions = new DetailedUserPosition[](count);
        
        _processPositionsWithPagination(user, offset, count, positions);
        
        return (positions, totalCount);
    }

    struct PaginationParams {
        uint256 positionsSoFar;
        uint256 positionsToSkip;
        uint256 resultIndex;
        uint256 count;
        uint256 poolPositionCount;
    }

    function _processPositionsWithPagination(
        address user,
        uint256 offset,
        uint256 count,
        DetailedUserPosition[] memory positions
    ) internal view {
        uint256 poolCount = poolIdBytes.length();
        
        PaginationParams memory params = PaginationParams({
            positionsSoFar: 0,
            positionsToSkip: offset,
            resultIndex: 0,
            count: count,
            poolPositionCount: 0
        });
        
        for (uint256 i = 0; i < poolCount && params.resultIndex < params.count;) {
            PoolId poolId = PoolId.wrap(poolIdBytes.at(i));
            
            params.poolPositionCount = limitOrderManager.getUserPositionCount(user, poolId);
            
            if (params.poolPositionCount == 0) {
                unchecked { i++; }
                continue;
            }
            
            PoolKey memory poolKey = poolIdToKey[poolId];
            if (poolKey.fee == 0) {
                unchecked { i++; }
                continue;
            }
            
            if (params.positionsSoFar + params.poolPositionCount <= params.positionsToSkip) {
                params.positionsSoFar += params.poolPositionCount;
                unchecked { i++; }
                continue;
            }
            
            (params.resultIndex, params.positionsSoFar) = _processPoolPositionsForPagination(
                user,
                poolId,
                poolKey,
                params,
                positions
            );
            unchecked { i++; }
        }
    }

    function _processPoolPositionsForPagination(
        address user,
        PoolId poolId,
        PoolKey memory poolKey,
        PaginationParams memory params,
        DetailedUserPosition[] memory positions
    ) internal view returns (uint256, uint256) {
        uint256 poolOffset = 0;
        uint256 poolLimit = params.poolPositionCount;
        
        if (params.positionsSoFar < params.positionsToSkip) {
            poolOffset = params.positionsToSkip - params.positionsSoFar;
            poolLimit = params.poolPositionCount - poolOffset;
        }
        
        if (params.resultIndex + poolLimit > params.count) {
            poolLimit = params.count - params.resultIndex;
        }
        
        PoolStateData memory poolData = _getPoolStateData(poolId, poolKey, user);
        
        LimitOrderManager.PositionInfo[] memory poolPositions = 
            limitOrderManager.getUserPositions(user, poolId, poolOffset, poolLimit);
        
        for (uint256 j = 0; j < poolPositions.length && params.resultIndex < params.count; j++) {
            _processPosition(
                user,
                poolId,
                poolKey,
                poolPositions[j].positionKey,
                poolData,
                positions,
                params.resultIndex
            );
            
            params.resultIndex++;
            params.positionsSoFar++;
        }
        
        params.positionsSoFar += (params.poolPositionCount - poolOffset - poolPositions.length);
        
        return (params.resultIndex, params.positionsSoFar);
    }

    /// @notice Count total positions for a user across all pools
    /// @param user The user address
    /// @return totalPositions The total number of positions
    function _countTotalUserPositions(address user) internal view returns (uint256 totalPositions) {
        uint256 poolCount = poolIdBytes.length();
        
        for (uint256 i = 0; i < poolCount;) {
            PoolId poolId = PoolId.wrap(poolIdBytes.at(i));
            unchecked {
                totalPositions += limitOrderManager.getUserPositionCount(user, poolId);
                i++;
            }
        }
        
        return totalPositions;
    }

    /// @notice Get pool state data for a specific pool
    /// @param poolId The pool ID
    /// @param poolKey The pool key
    /// @param user The user address
    /// @return data The pool state data
    function _getPoolStateData(
        PoolId poolId,
        PoolKey memory poolKey,
        address user
    ) internal view returns (PoolStateData memory data) {
        data = _getPoolBasicStateData(poolId, poolKey);
        
        _getPoolUserBalances(user, poolKey, data);
        
        return data;
    }

    /// @notice Get basic pool state data
    /// @param poolId The pool ID
    /// @param poolKey The pool key
    /// @return data The basic pool state data
    function _getPoolBasicStateData(
        PoolId poolId,
        PoolKey memory poolKey
    ) internal view returns (PoolStateData memory data) {
        (data.sqrtPriceX96, data.currentTick, , ) = StateLibrary.getSlot0(poolManager, poolId);
        
        (data.token0Symbol, data.token0Decimals) = _getTokenInfo(poolKey.currency0);
        (data.token1Symbol, data.token1Decimals) = _getTokenInfo(poolKey.currency1);
        
        return data;
    }
    
    /// @notice Get user balance data for a pool
    /// @param user The user address
    /// @param poolKey The pool key
    /// @param data The pool state data to update with balance information
    function _getPoolUserBalances(
        address user,
        PoolKey memory poolKey,
        PoolStateData memory data
    ) internal view {
        (
            LimitOrderManager.ClaimableTokens memory token0Balance, 
            LimitOrderManager.ClaimableTokens memory token1Balance
        ) = _getClaimableBalances(user, poolKey);
        
        data.token0Principal = token0Balance.principal;
        data.token0Fees = token0Balance.fees;
        data.token1Principal = token1Balance.principal;
        data.token1Fees = token1Balance.fees;
    }

    /// @notice Process a single position and add to result array
    /// @param user The user address
    /// @param poolId The pool ID
    /// @param poolKey The pool key
    /// @param positionKey The position key
    /// @param poolData The pool state data
    /// @param allPositions The result array to populate
    /// @param index The index in the result array
    function _processPosition(
        address user,
        PoolId poolId,
        PoolKey memory poolKey,
        bytes32 positionKey,
        PoolStateData memory poolData,
        DetailedUserPosition[] memory allPositions,
        uint256 index
    ) internal view {
        uint256 keyValue = uint256(positionKey);
        int24 bottomTick = int24(uint24(keyValue >> 232));
        int24 topTick = int24(uint24(keyValue >> 208));
        bool isToken0 = (keyValue & 1) == 1;
        
        _createBasicPositionInfo(allPositions, index, poolId, poolKey, poolData, bottomTick, topTick, isToken0);
        _addTickPriceInfo(allPositions, index, bottomTick, topTick, poolData.sqrtPriceX96);
        _addBalanceInfo(allPositions, index, poolId, positionKey, user, poolData, bottomTick, topTick, isToken0);
    }

    /// @notice Add basic position information to a DetailedUserPosition
    function _createBasicPositionInfo(
        DetailedUserPosition[] memory positions,
        uint256 index,
        PoolId poolId, 
        PoolKey memory poolKey,
        PoolStateData memory poolData,
        int24 bottomTick,
        int24 topTick,
        bool isToken0
    ) internal pure {
        positions[index].poolId = poolId;
        positions[index].currency0 = poolKey.currency0;
        positions[index].currency1 = poolKey.currency1;
        positions[index].token0Symbol = poolData.token0Symbol;
        positions[index].token1Symbol = poolData.token1Symbol;
        positions[index].token0Decimals = poolData.token0Decimals;
        positions[index].token1Decimals = poolData.token1Decimals;
        positions[index].isToken0 = isToken0;
        positions[index].bottomTick = bottomTick;
        positions[index].topTick = topTick;
        positions[index].currentTick = poolData.currentTick;
        positions[index].tickSpacing = poolKey.tickSpacing;
    }

    /// @notice Add tick price information to a DetailedUserPosition
    function _addTickPriceInfo(
        DetailedUserPosition[] memory positions,
        uint256 index,
        int24 bottomTick,
        int24 topTick,
        uint160 sqrtPriceX96
    ) internal pure {
        // Calculate sqrt prices at ticks
        uint160 sqrtPriceBottomTickX96 = TickMath.getSqrtPriceAtTick(bottomTick);
        uint160 sqrtPriceTopTickX96 = TickMath.getSqrtPriceAtTick(topTick);
        
        positions[index].sqrtPrice = sqrtPriceX96;
        positions[index].sqrtPriceBottomTick = sqrtPriceBottomTickX96;
        positions[index].sqrtPriceTopTick = sqrtPriceTopTickX96;
    }

    /// @notice Add balance information to a DetailedUserPosition
    function _addBalanceInfo(
        DetailedUserPosition[] memory positions,
        uint256 index,
        PoolId poolId,
        bytes32 positionKey,
        address user,
        PoolStateData memory poolData,
        int24 bottomTick,
        int24 topTick,
        bool isToken0
    ) internal view {
        (uint128 liquidity, , , ) = limitOrderManager.userPositions(poolId, positionKey, user);
        
        (,,bool isActive,) = limitOrderManager.positionState(poolId, positionKey);
        
        positions[index].liquidity = liquidity;
        
        positions[index].positionKey = positionKey;
        positions[index].totalCurrentToken0Principal = poolData.token0Principal;
        positions[index].totalCurrentToken1Principal = poolData.token1Principal;
        positions[index].feeRevenue0 = poolData.token0Fees;
        positions[index].feeRevenue1 = poolData.token1Fees;
        
        LimitOrderManager.PositionBalances memory posBalances = 
            getPositionBalances(user, poolId, positionKey);
        
        positions[index].positionToken0Principal = posBalances.principal0;
        positions[index].positionToken1Principal = posBalances.principal1;
        positions[index].positionFeeRevenue0 = posBalances.fees0;
        positions[index].positionFeeRevenue1 = posBalances.fees1;
        
        _addExecutionAmounts(positions, index, bottomTick, topTick, liquidity, isToken0);
        
        positions[index].claimable = !isActive;
        
        uint160 sqrtPriceBottomTickX96 = positions[index].sqrtPriceBottomTick;
        uint160 sqrtPriceTopTickX96 = positions[index].sqrtPriceTopTick;
        
        if (isToken0) {
            positions[index].orderSize = LiquidityAmounts.getAmount0ForLiquidity(
                sqrtPriceBottomTickX96,
                sqrtPriceTopTickX96,
                liquidity
            );
        } else {
            positions[index].orderSize = LiquidityAmounts.getAmount1ForLiquidity(
                sqrtPriceBottomTickX96,
                sqrtPriceTopTickX96,
                liquidity
            );
        }
    }

    /// @notice Add execution amount information to a DetailedUserPosition
    function _addExecutionAmounts(
        DetailedUserPosition[] memory positions,
        uint256 index,
        int24 bottomTick,
        int24 topTick,
        uint128 liquidity,
        bool isToken0
    ) internal pure {
        // Get sqrt prices only once
        uint160 sqrtPriceBottomTickX96 = TickMath.getSqrtPriceAtTick(bottomTick);
        uint160 sqrtPriceTopTickX96 = TickMath.getSqrtPriceAtTick(topTick);
        
        if (isToken0) {
            positions[index].totalToken0AtExecution = 0;
            positions[index].totalToken1AtExecution = LiquidityAmounts.getAmount1ForLiquidity(
                sqrtPriceBottomTickX96,
                sqrtPriceTopTickX96,
                liquidity
            );
        } else {
            positions[index].totalToken0AtExecution = LiquidityAmounts.getAmount0ForLiquidity(
                sqrtPriceBottomTickX96,
                sqrtPriceTopTickX96,
                liquidity
            );
            positions[index].totalToken1AtExecution = 0;
        }
    }

    /// @notice Get token symbol and decimals information
    /// @param currency The currency to get information for
    /// @return symbol The token symbol
    /// @return decimals The token decimals
    function _getTokenInfo(Currency currency) internal view returns (string memory symbol, uint8 decimals) {
        if (currency.isAddressZero()) {
            return ("NATIVE", 18);
        } else {
            ERC20MinimalInterface token = ERC20MinimalInterface(Currency.unwrap(currency));
            
            symbol = token.symbol();
            decimals = token.decimals();
        }
    }

    /// @notice Get the minimum and maximum valid ticks for a limit order in a pool
    /// @param poolId The pool identifier
    /// @param isToken0 True if order is for token0, false for token1
    /// @return minTick The minimum valid tick for the order
    /// @return maxTick The maximum valid tick for the order
    function getMinAndMaxTickForLimitOrders(PoolId poolId, bool isToken0) external view returns (int24 minTick, int24 maxTick) {
        PoolKey memory poolKey = poolIdToKey[poolId];
        
        (, int24 currentTick, ,) = StateLibrary.getSlot0(poolManager, poolId);
        
        int24 tickSpacing = poolKey.tickSpacing;
        
        int24 absoluteMinTick = TickMath.minUsableTick(tickSpacing);
        int24 absoluteMaxTick = TickMath.maxUsableTick(tickSpacing);
        
        int24 roundedCurrentTick;
        
        if (isToken0) {
            roundedCurrentTick = currentTick >= 0 ? 
                (currentTick / tickSpacing) * tickSpacing + tickSpacing :
                ((currentTick % tickSpacing == 0) ? currentTick + tickSpacing : (currentTick / tickSpacing) * tickSpacing);
                
            minTick = roundedCurrentTick + tickSpacing;
            maxTick = absoluteMaxTick;
        } else {
            roundedCurrentTick = currentTick >= 0 ?
                (currentTick / tickSpacing) * tickSpacing :
                ((currentTick % tickSpacing == 0) ? currentTick : (currentTick / tickSpacing) * tickSpacing - tickSpacing);
                
            minTick = absoluteMinTick;
            maxTick = roundedCurrentTick - tickSpacing;
        }
        
        return (minTick, maxTick);
    }

    /// @notice Get the minimum and maximum valid ticks for scale orders in a pool
    /// @param poolId The pool identifier
    /// @param isToken0 True if order is for token0, false for token1
    /// @return minTick The minimum valid tick for the order
    /// @return maxTick The maximum valid tick for the order
    function getMinAndMaxTickForScaleOrders(PoolId poolId, bool isToken0) external view returns (int24 minTick, int24 maxTick) {
        PoolKey memory poolKey = poolIdToKey[poolId];
        
        (, int24 currentTick, ,) = StateLibrary.getSlot0(poolManager, poolId);
        
        int24 tickSpacing = poolKey.tickSpacing;
        
        int24 absoluteMinTick = TickMath.minUsableTick(tickSpacing);
        int24 absoluteMaxTick = TickMath.maxUsableTick(tickSpacing);
        
        if (isToken0) {
            minTick = currentTick + 1;  
            
            minTick = minTick % tickSpacing == 0 ? minTick :
                      minTick > 0 ? (minTick / tickSpacing + 1) * tickSpacing :
                      (minTick / tickSpacing) * tickSpacing;
                      
            maxTick = absoluteMaxTick;
        } else {
            minTick = absoluteMinTick;
            
            maxTick = currentTick;
            
            maxTick = maxTick % tickSpacing == 0 ? maxTick :
                      maxTick > 0 ? (maxTick / tickSpacing) * tickSpacing :
                      (maxTick / tickSpacing - 1) * tickSpacing;
        }
        
        return (minTick, maxTick);
    }

    /// @notice Calculate the minimum and maximum number of scale orders that can fit between two ticks
    /// @param poolId The pool identifier
    /// @param bottomTick The bottom tick of the range
    /// @param topTick The top tick of the range
    /// @return minOrders The minimum number of scale orders (always 2)
    /// @return maxOrders The maximum number of scale orders possible
    function minAndMaxScaleOrders(
        PoolId poolId,
        int24 bottomTick,
        int24 topTick
    ) public view returns (uint256 minOrders, uint256 maxOrders) {
        PoolKey memory poolKey = poolIdToKey[poolId];
        
        int24 tickSpacing = poolKey.tickSpacing;
        
        int24 minTickRange = 2 * tickSpacing;
        if (topTick - bottomTick < minTickRange) {
            revert TickRangeTooSmall();
        }
        
        maxOrders = uint256(uint24((topTick - bottomTick) / tickSpacing));
        minOrders = 2;
        
        return (minOrders, maxOrders);
    }

    /// @notice Calculate the scaled user fee based on the fee difference and liquidity
    /// @dev Used by the LimitOrderManager to calculate user fees
    /// @param feeDiff The fee difference to scale
    /// @param liquidity The user's liquidity amount
    /// @return The scaled fee as a BalanceDelta
    function calculateScaledUserFee(
        BalanceDelta feeDiff, 
        uint128 liquidity
    ) internal pure returns (BalanceDelta) {
        if(feeDiff == BalanceDelta.wrap(0) || liquidity == 0) return BalanceDelta.wrap(0);
        
        return toBalanceDelta(
            feeDiff.amount0() >= 0 
                ? int128(int256(FullMath.mulDiv(uint256(uint128(feeDiff.amount0())), uint256(liquidity), 1e18)))
                : -int128(int256(FullMath.mulDiv(uint256(uint128(-feeDiff.amount0())), uint256(liquidity), 1e18))),
            feeDiff.amount1() >= 0 
                ? int128(int256(FullMath.mulDiv(uint256(uint128(feeDiff.amount1())), uint256(liquidity), 1e18)))
                : -int128(int256(FullMath.mulDiv(uint256(uint128(-feeDiff.amount1())), uint256(liquidity), 1e18)))
        );
    }

    // Add these helper functions before getPositionBalances
    function calculatePositionFee(
        PoolId poolId,
        int24 bottomTick,
        int24 topTick,
        bool isToken0
    ) internal view returns (uint256 fee0, uint256 fee1) {
        (uint128 liquidityBefore, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128) = 
            StateLibrary.getPositionInfo(
                poolManager,
                poolId,
                address(limitOrderManager),
                bottomTick,
                topTick,
                bytes32(uint256(isToken0 ? 0 : 1)) // salt
            );

        (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) = StateLibrary.getFeeGrowthInside(
            poolManager,
            poolId,
            bottomTick,
            topTick
        );

        uint256 feeGrowthDelta0 = 0;
        uint256 feeGrowthDelta1 = 0;

        unchecked {
            if (feeGrowthInside0X128 != feeGrowthInside0LastX128) {
                feeGrowthDelta0 = feeGrowthInside0X128 - feeGrowthInside0LastX128;
            }
            if (feeGrowthInside1X128 != feeGrowthInside1LastX128) {
                feeGrowthDelta1 = feeGrowthInside1X128 - feeGrowthInside1LastX128;
            }
            fee0 = FullMath.mulDiv(feeGrowthDelta0, liquidityBefore, 1 << 128);
            fee1 = FullMath.mulDiv(feeGrowthDelta1, liquidityBefore, 1 << 128); 
        }

        return (fee0, fee1);
    }

    // Add this function before getPositionBalances
    function _constructPositionParams(
        bytes32 positionKey,
        address user,
        PoolId poolId
    ) internal view returns (PositionManagement.PositionParams memory) {
        (int24 bottomTick, int24 topTick, bool isToken0, ) = decodePositionKey(positionKey);
        
        return PositionManagement.PositionParams({
            position: userPositions(poolId, positionKey, user),
            posState: positionState(poolId, positionKey),
            poolManager: poolManager,
            poolId: poolId,
            bottomTick: bottomTick,
            topTick: topTick,
            isToken0: isToken0,
            feeDenom: limitOrderManager.FEE_DENOMINATOR(),
            hookFeePercentage: limitOrderManager.hook_fee_percentage()
        });
    }
    
    // Helper function to get user position data
    function userPositions(
        PoolId poolId,
        bytes32 positionKey,
        address user
    ) internal view returns (ILimitOrderManager.UserPosition memory position) {
        (uint128 liquidity, BalanceDelta lastFeePerLiquidity, BalanceDelta claimablePrincipal, BalanceDelta fees) = 
            limitOrderManager.userPositions(poolId, positionKey, user);
            
        position.liquidity = liquidity;
        position.lastFeePerLiquidity = lastFeePerLiquidity;
        position.claimablePrincipal = claimablePrincipal;
        position.fees = fees;
    }
    
    // Helper function to get position state data
    function positionState(
        PoolId poolId,
        bytes32 positionKey
    ) internal view returns (ILimitOrderManager.PositionState memory posState) {
        (BalanceDelta feePerLiquidity, uint128 totalLiquidity, bool isActive, uint256 currentNonce) = 
            limitOrderManager.positionState(poolId, positionKey);
            
        posState.feePerLiquidity = feePerLiquidity;
        posState.totalLiquidity = totalLiquidity;
        posState.isActive = isActive;
        // posState.isWaitingKeeper = isWaitingKeeper;
        posState.currentNonce = currentNonce;
    }

    // Replace the existing getPositionBalances function with this updated version
    function getPositionBalances(
        address user,
        PoolId poolId,
        bytes32 positionKey
    ) public view returns (LimitOrderManager.PositionBalances memory balances) {
        PositionManagement.PositionParams memory params = _constructPositionParams(positionKey, user, poolId);
        balances = PositionManagement.getPositionBalances(params, address(limitOrderManager));
        
    }

    // Add a new struct and function
    struct PoolPositionCount {
        PoolId poolId;
        uint256 count;
    }

    /// @notice Get position counts for a user across all tracked pools
    /// @param user The address of the user
    /// @return counts Array of poolId and position count pairs
    function getUserPositionCountsAcrossPools(address user) external view returns (
        PoolPositionCount[] memory counts
    ) {
        uint256 poolCount = poolIdBytes.length();
        counts = new PoolPositionCount[](poolCount);
        
        for (uint256 i = 0; i < poolCount;) {
            PoolId poolId = PoolId.wrap(poolIdBytes.at(i));
            uint256 positionCount = limitOrderManager.getUserPositionCount(user, poolId);
            
            counts[i] = PoolPositionCount({
                poolId: poolId,
                count: positionCount
            });
            unchecked { i++; }
        }
        
        return counts;
    }


    /// @notice Get position keys that can be claimed by a user
    /// @dev Returns position keys for positions that are inactive or have claimable principal
    /// @dev Limited by offset/limit to avoid gas issues with large position counts
    /// @param user The address of the user
    /// @param poolId The pool identifier
    /// @param offset Starting position to fetch from
    /// @param limit Maximum number of positions to return
    /// @return positionKeys Array of claimable position keys
    function getClaimablePositions(
        address user,
        PoolId poolId,
        uint256 offset,
        uint256 limit
    ) external view returns (bytes32[] memory positionKeys, uint256 count) {
        LimitOrderManager.PositionInfo[] memory positions = 
            limitOrderManager.getUserPositions(user, poolId, offset, limit);
        
        bytes32[] memory temp = new bytes32[](positions.length);
        count = 0;
        
        for (uint256 i = 0; i < positions.length;) {
            bytes32 positionKey = positions[i].positionKey;
            uint128 liquidity = positions[i].liquidity;
            
            (,, BalanceDelta claimablePrincipal,) = 
                limitOrderManager.userPositions(poolId, positionKey, user);
            (,,bool isActive,) = limitOrderManager.positionState(poolId, positionKey);
            
            if (liquidity > 0 && (!isActive || claimablePrincipal != ZERO_DELTA)) {
                temp[count++] = positionKey;
            }
            unchecked { i++; }
        }
        
        positionKeys = new bytes32[](count);
        for (uint256 i = 0; i < count;) {
            positionKeys[i] = temp[i];
            unchecked { i++; }
        }
        
        return (positionKeys, count);
    }

    /// @notice Get position keys that can be cancelled by a user
    /// @dev Returns position keys for active positions with liquidity
    /// @dev Limited by offset/limit to avoid gas issues with large position counts
    /// @param user The address of the user
    /// @param poolId The pool identifier
    /// @param offset Starting position to fetch from
    /// @param limit Maximum number of positions to return
    /// @return positionKeys Array of cancellable position keys
    function getCancellablePositions(
        address user,
        PoolId poolId,
        uint256 offset,
        uint256 limit
    ) external view returns (bytes32[] memory positionKeys, uint256 count) {
        LimitOrderManager.PositionInfo[] memory positions = 
            limitOrderManager.getUserPositions(user, poolId, offset, limit);
        
        bytes32[] memory temp = new bytes32[](positions.length);
        count = 0;
        
        for (uint256 i = 0; i < positions.length;) {
            bytes32 positionKey = positions[i].positionKey;
            uint128 liquidity = positions[i].liquidity;
            
            (,,bool isActive,) = limitOrderManager.positionState(poolId, positionKey);
            
            if (liquidity > 0 && isActive) {
                temp[count++] = positionKey;
            }
            unchecked { i++; }
        }
        
        positionKeys = new bytes32[](count);
        for (uint256 i = 0; i < count;) {
            positionKeys[i] = temp[i];
            unchecked { i++; }
        }
        
        return (positionKeys, count);
    }


    /// @notice Helper function to assign tick ranges to orders
    function _assignTickRanges(
        OrderStruct[] memory orders,
        PoolId poolId,
        int24 bottomTick,
        int24 topTick,
        bool isToken0,
        uint256 totalOrders,
        uint256 sizeSkew,
        int24 tickSpacing
    ) internal view {
        (, int24 currentTick, , ) = StateLibrary.getSlot0(poolManager, poolId);
        
        ILimitOrderManager.OrderInfo[] memory ticks = TickLibrary.validateAndPrepareScaleOrders(
            bottomTick, topTick, currentTick, isToken0, totalOrders, sizeSkew, tickSpacing
        );
        
        for (uint256 i = 0; i < totalOrders;) {
            orders[i].lowerTick = ticks[i].bottomTick;
            orders[i].upperTick = ticks[i].topTick;
            unchecked { i++; }
        }
    }

    function verifyOrderSizes(
        PoolId poolId,
        bool isToken0,
        int24 bottomTick,
        int24 topTick,
        uint256 totalAmount,
        uint256 totalOrders,
        uint256 sizeSkew
    ) public view returns (OrderStruct[] memory) {
        if (totalOrders < MIN_ORDERS) {
            revert InsufficientOrders(totalOrders, MIN_ORDERS);
        }
        
        if (totalOrders > limitOrderManager.maxOrderLimit()) {
            revert OrderLimitExceeded(totalOrders, limitOrderManager.maxOrderLimit());
        }
        
        require(sizeSkew != 0);
        
        OrderStruct[] memory orders = new OrderStruct[](totalOrders);
        
        // Block 1: Calculate order amounts
        {
            uint256 totalAmountUsed;
            
            for (uint256 i = 0; i < totalOrders;) {
                orders[i].amount = (i == totalOrders - 1) ? 
                    totalAmount - totalAmountUsed : 
                    PositionManagement._calculateOrderSize(totalAmount, totalOrders, sizeSkew, i + 1);
                
                totalAmountUsed += orders[i].amount;
                
                unchecked { i++; }
            }
        }
        
        // Block 2: Assign tick ranges
        {
            (, int24 currentTick, , ) = StateLibrary.getSlot0(poolManager, poolId);
            int24 tickSpacing = poolIdToKey[poolId].tickSpacing;
            
            ILimitOrderManager.OrderInfo[] memory ticks = TickLibrary.validateAndPrepareScaleOrders(
                bottomTick, topTick, currentTick, isToken0, totalOrders, sizeSkew, tickSpacing
            );
            
            for (uint256 i = 0; i < totalOrders;) {
                orders[i].lowerTick = ticks[i].bottomTick;
                orders[i].upperTick = ticks[i].topTick;
                unchecked { i++; }
            }
        }

        return orders;
    }
    
    /// @notice Calculate order sizes for a distribution without validation checks
    /// @param totalAmount Total amount of tokens to distribute
    /// @param totalOrders Number of orders to create
    /// @param sizeSkew Skew factor (scaled by 1e18, where 1e18 = no skew)
    /// @return An array of order sizes
    function calculateOrderSizes(
        uint256 totalAmount,
        uint256 totalOrders,
        uint256 sizeSkew
    ) public pure returns (uint256[] memory) {
        uint256[] memory orderSizes = new uint256[](totalOrders);
        uint256 totalAmountUsed;
        
        for (uint256 i = 0; i < totalOrders;) {
            if (i == totalOrders - 1) {
                orderSizes[i] = totalAmount - totalAmountUsed;
            } else {
                orderSizes[i] = PositionManagement._calculateOrderSize(
                    totalAmount,
                    totalOrders,
                    sizeSkew,
                    i + 1
                );
                totalAmountUsed += orderSizes[i];
            }
            unchecked { i++; }
        }

        return orderSizes;
    }
    

    /// @notice Retrieve information for all tracked pools
    /// @dev Leverages the private set of pool IDs that the contract owner has added via addPoolId().
    ///      This is a read-only helper for front-ends to quickly discover the available pools.
    /// @return pools Array of PoolStruct containing pool id, key and token symbols for each pool
    function getAllPools() external view returns (PoolStruct[] memory pools) {
        uint256 poolCount = poolIdBytes.length();
        pools = new PoolStruct[](poolCount);

        for (uint256 i = 0; i < poolCount;) {
            PoolId poolId = PoolId.wrap(poolIdBytes.at(i));
            PoolKey memory poolKey = poolIdToKey[poolId];

            // Fetch token symbols via the shared helper
            (string memory token0Symbol,) = _getTokenInfo(poolKey.currency0);
            (string memory token1Symbol,) = _getTokenInfo(poolKey.currency1);

            pools[i] = PoolStruct({
                poolId: PoolId.unwrap(poolId),
                poolKey: poolKey,
                token0Symbol: token0Symbol,
                token1Symbol: token1Symbol
            });
            unchecked { i++; }
        }
    }

}


/// @notice Helper struct to hold pool state data to reduce stack variables
struct PoolStateData {
    uint160 sqrtPriceX96;
    int24 currentTick;
    string token0Symbol;
    string token1Symbol;
    uint8 token0Decimals;
    uint8 token1Decimals;
    uint256 token0Principal;
    uint256 token0Fees;
    uint256 token1Principal;
    uint256 token1Fees;
}

/// @notice Detailed position information including pool and token details
/// @dev Used by getAllUserPositions to return comprehensive position data
struct DetailedUserPosition {
    PoolId poolId;
    bytes32 positionKey;
    Currency currency0;
    Currency currency1;
    string token0Symbol;
    string token1Symbol;
    uint8 token0Decimals;
    uint8 token1Decimals;
    bool isToken0;
    int24 bottomTick;
    int24 topTick;
    int24 currentTick;
    int24 tickSpacing;
    uint160 sqrtPrice;
    uint160 sqrtPriceBottomTick;
    uint160 sqrtPriceTopTick;
    uint128 liquidity;
    uint256 positionToken0Principal;  // This position's specific token0 principal
    uint256 positionToken1Principal;  // This position's specific token1 principal
    uint256 positionFeeRevenue0;      // This position's specific token0 fees
    uint256 positionFeeRevenue1;      // This position's specific token1 fees
    uint256 totalCurrentToken0Principal; // Total for all user positions in this pool
    uint256 totalCurrentToken1Principal; // Total for all user positions in this pool
    uint256 feeRevenue0;              // Total fees for all user positions in this pool
    uint256 feeRevenue1;              // Total fees for all user positions in this pool
    uint256 totalToken0AtExecution;
    uint256 totalToken1AtExecution;
    uint256 orderSize;
    bool claimable;
}

/// @notice Basic pool information structure
struct PoolStruct {
    bytes32 poolId;
    PoolKey poolKey;
    string token0Symbol;
    string token1Symbol;
}

/// @notice Order information structure combining tick range and amount
struct OrderStruct {
    int24 lowerTick;
    int24 upperTick;
    uint256 amount;
}