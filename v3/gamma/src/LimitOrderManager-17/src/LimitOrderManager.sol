// SPDX-License-Identifier: BSL
pragma solidity ^0.8.24;

import {ILimitOrderManager} from "./ILimitOrderManager.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {BalanceDelta, BalanceDeltaLibrary} from "v4-core/types/BalanceDelta.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency, CurrencyLibrary} from "v4-core/types/Currency.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IUnlockCallback} from "v4-core/interfaces/callback/IUnlockCallback.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import "./PositionManagement.sol";
import "./TickLibrary.sol";
import "./CallbackHandler.sol";
import {TickBitmap} from "v4-core/libraries/TickBitmap.sol";

/// @title LimitOrderManager
/// @notice Manages limit orders for Uniswap v4 pools
/// @dev Handles creation, execution, and cancellation of limit orders with fee collection and position tracking
contract LimitOrderManager is ILimitOrderManager, IUnlockCallback, Ownable, ReentrancyGuard, Pausable {
    using CurrencySettler for Currency;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using BalanceDeltaLibrary for BalanceDelta;
    using PoolIdLibrary for PoolKey;
    using TickLibrary for int24;
    using CallbackHandler for CallbackHandler.CallbackState;
    using SafeERC20 for IERC20;

    // Pool manager reference
    IPoolManager public immutable poolManager;
    
    // Hook address
    address public hook;

    // Constants
    uint256 public constant FEE_DENOMINATOR = 100000;
    BalanceDelta public constant ZERO_DELTA = BalanceDelta.wrap(0);


    CallbackHandler.CallbackState private callbackState;
    address public override treasury;
    uint256 public hook_fee_percentage = 100000;
    uint24 public maxOrderLimit = 100; 
    

    // Original state mappings
    mapping(PoolId => bool) public whitelistedPool;
    mapping(PoolId => mapping(bytes32 => EnumerableSet.AddressSet)) private positionContributors;
    mapping(PoolId => mapping(bytes32 => mapping(address => UserPosition))) public userPositions;
    mapping(PoolId => mapping(bytes32 => uint256)) public override currentNonce;

    mapping(PoolId => mapping(int16 => uint256)) public token0TickBitmap;
    mapping(PoolId => mapping(int16 => uint256)) public token1TickBitmap;
    mapping(PoolId => mapping(int24 => bytes32)) public token0PositionAtTick;
    mapping(PoolId => mapping(int24 => bytes32)) public token1PositionAtTick;

    mapping(PoolId => mapping(bytes32 => PositionState)) public positionState;
    mapping(address => mapping(PoolId => EnumerableSet.Bytes32Set)) private userPositionKeys;


    constructor(address _poolManagerAddr, address _treasury, address _owner) Ownable(_owner) {
        require(_treasury != address(0) && _poolManagerAddr != address(0));
            treasury = _treasury;
            poolManager = IPoolManager(_poolManagerAddr);

            // Initialize callback state
            callbackState.poolManager = poolManager;
            callbackState.treasury = _treasury;
            callbackState.feeDenominator = FEE_DENOMINATOR;
            callbackState.hookFeePercentage = hook_fee_percentage;
        }

// =========== Create Order Functions ===========
    /// @notice Creates a single limit order in a specified pool
    /// @param isToken0 True if order is for token0, false for token1
    /// @param targetTick The target tick price for the order
    /// @param amount The amount of tokens to use for the order
    /// @param key The pool key identifying the specific pool
    /// @return result Order creation result
    /// @dev Validates parameters and transfers tokens from user before creating order
    function createLimitOrder(
        bool isToken0,
        int24 targetTick,
        uint256 amount,
        PoolKey calldata key,
        address recipient
    ) external payable override returns (CreateOrderResult memory) {
        PoolId poolId = key.toId();
        (uint160 sqrtPriceX96, int24 currentTick, , ) = StateLibrary.getSlot0(poolManager, poolId);

        (int24 bottomTick, int24 topTick) = TickLibrary.getValidTickRange(
            currentTick,
            targetTick,
            key.tickSpacing,
            isToken0,
            sqrtPriceX96
        );

        ILimitOrderManager.OrderInfo[] memory orders = new ILimitOrderManager.OrderInfo[](1);
        orders[0] = ILimitOrderManager.OrderInfo({
            bottomTick: bottomTick,
            topTick: topTick,
            amount: 0,
            liquidity: 0
        });
        
        CreateOrderResult[] memory results = _createOrder(orders, isToken0, amount, 1, 0, key, recipient);
        return results[0]; 
    }


    /// @notice Creates multiple scaled limit orders across a price range
    /// @param isToken0 True if orders are for token0, false for token1
    /// @param bottomTick The lower tick bound of the order range
    /// @param topTick The upper tick bound of the order range
    /// @param totalAmount Total amount of tokens to distribute across orders
    /// @param totalOrders Number of orders to create
    /// @param sizeSkew Skew factor for order size distribution (1 for equal distribution)
    /// @param key The pool key identifying the specific pool
    /// @return results containing details of all created orders
    /// @dev Orders are distributed according to the sizeSkew parameter
    function createScaleOrders(
        bool isToken0,
        int24 bottomTick,
        int24 topTick,
        uint256 totalAmount,
        uint256 totalOrders,
        uint256 sizeSkew,
        PoolKey calldata key,
        address recipient
    ) external payable override returns (CreateOrderResult[] memory results) {
        (, int24 currentTick, , ) = StateLibrary.getSlot0(poolManager, key.toId());
        require(totalOrders <= maxOrderLimit);
        ILimitOrderManager.OrderInfo[] memory orders =
            TickLibrary.validateAndPrepareScaleOrders(
                bottomTick,
                topTick,
                currentTick,
                isToken0,
                totalOrders,
                sizeSkew,
                key.tickSpacing
            );

        results = _createOrder(orders, isToken0, totalAmount, totalOrders, sizeSkew, key, recipient);
    }

    /**
     * @notice Internal function to create one or more limit orders with specified parameters
     * @dev Handles the core logic of order creation
     * @param orders Array of OrderInfo structs containing initial order parameters
     * @param isToken0 True if orders are for token0, false for token1
     * @param totalAmount Total amount of tokens to be used across all orders
     * @param totalOrders Number of orders to create (used for scale calculations)
     * @param sizeSkew Distribution factor for order sizes (0 for equal distribution)
     * @param key Pool key identifying the specific Uniswap V4 pool
     * @return results Array of CreateOrderResult structs containing created order details
     */
    function _createOrder(
        ILimitOrderManager.OrderInfo[] memory orders,
        bool isToken0,
        uint256 totalAmount,
        uint256 totalOrders,
        uint256 sizeSkew,
        PoolKey calldata key,
        address recipient
    ) internal whenNotPaused returns (CreateOrderResult[] memory results) {
        require(address(key.hooks) == hook);
        require(totalAmount != 0);
        if (recipient == address(0)) revert AddressZero();
        PoolId poolId = key.toId();
        if (!whitelistedPool[poolId]) revert NotWhitelistedPool();

        orders = PositionManagement.calculateOrderSizes(orders, isToken0, totalAmount, totalOrders, sizeSkew);

        _handleTokenTransfer(isToken0, totalAmount, key);
        BalanceDelta[] memory feeDeltas = abi.decode(
            poolManager.unlock(abi.encode(
                UnlockCallbackData({
                    callbackType: CallbackType.CREATE_ORDERS,
                    data: abi.encode(CreateOrdersCallbackData({key: key, orders: orders, isToken0: isToken0, orderCreator: recipient}))
                })
            )),
            (BalanceDelta[])
        );

        results = new CreateOrderResult[](orders.length);

        bytes32 positionKey;
        unchecked {
            for (uint256 i; i < orders.length; i++) {
                (, positionKey) = PositionManagement.getPositionKeys(
                    currentNonce,
                    poolId,
                    orders[i].bottomTick,
                    orders[i].topTick,
                    isToken0
                );
                _retrackPositionFee(poolId, positionKey, feeDeltas[i]);

                if(!positionState[poolId][positionKey].isActive) {
                    positionState[poolId][positionKey].isActive = true;
                    bytes32 baseKey = bytes32(
                        uint256(uint24(orders[i].bottomTick)) << 232 |
                        uint256(uint24(orders[i].topTick)) << 208 |
                        uint256(isToken0 ? 1 : 0)
                    );
                    positionState[poolId][positionKey].currentNonce = currentNonce[poolId][baseKey];

                    int24 executableTick = isToken0 ? orders[i].topTick : orders[i].bottomTick;

                    PositionManagement.addPositionToTick(
                        isToken0 ? token0PositionAtTick : token1PositionAtTick,
                        isToken0 ? token0TickBitmap : token1TickBitmap,
                        key,
                        executableTick,
                        positionKey
                    );
                }

                _updateUserPosition(poolId, positionKey, orders[i].liquidity, recipient);

                results[i].usedAmount = orders[i].amount;
                results[i].isToken0 = isToken0;
                results[i].bottomTick = orders[i].bottomTick;
                results[i].topTick = orders[i].topTick;
                emit OrderCreated(recipient, poolId, positionKey);
            }
        }

        return results;
    }

// =========== Cancel Order Functions ===========
    /// @notice Cancels a single limit order position
    /// @param key The pool key identifying the specific Uniswap V4 pool
    /// @param positionKey The unique identifier of the position to cancel
    function cancelOrder(PoolKey calldata key, bytes32 positionKey) external override nonReentrant{
        _cancelOrder(key, positionKey, msg.sender);
    }

    /// @notice Cancels multiple limit order positions in a batch
    /// @dev Uses pagination to handle large numbers of orders
    /// @param key The pool key identifying the specific Uniswap V4 pool
    /// @param offset Starting position in the user's position array
    /// @param limit Maximum number of positions to process in this call
    function cancelBatchOrders(
        PoolKey calldata key,
        uint256 offset,             
        uint256 limit
    ) external override nonReentrant {
        PoolId poolId = key.toId();
        EnumerableSet.Bytes32Set storage userKeys = userPositionKeys[msg.sender][poolId];
        

        if (offset >= userKeys.length()) {
            return;
        }
        

        uint256 endIndex = (offset + limit > userKeys.length()) ? 
            userKeys.length() : 
            offset + limit;
        
        
        uint256 i = endIndex;
        while (i > offset) {
            i--; 
            
            if (i < userKeys.length()) { 
                bytes32 positionKey = userKeys.at(i);
                _cancelOrder(key, positionKey, msg.sender);
            }
        }
    }

    /// @notice Cancels multiple limit order positions using direct position keys
    /// @param key The pool key identifying the specific Uniswap V4 pool
    /// @param positionKeys Array of position keys to cancel
    function cancelPositionKeys(
        PoolKey calldata key,
        bytes32[] calldata positionKeys
    ) external nonReentrant {
        for (uint256 i = 0; i < positionKeys.length; i++) {
            _cancelOrder(key, positionKeys[i], msg.sender);
        }
    }

    /// @notice Internal function to handle the cancellation of a limit order
    /// @dev Handles both cancellation and claiming in a single transaction
    /// @param key The pool key identifying the specific Uniswap V4 pool
    /// @param positionKey The unique identifier of the position to cancel
    /// @param user The address of the position owner
    function _cancelOrder(
        PoolKey calldata key,
        bytes32 positionKey,
        address user
    ) internal {
        PoolId poolId = key.toId();
        
        // Check if user has liquidity in this position
        uint128 userLiquidity = userPositions[poolId][positionKey][user].liquidity;
        require(userLiquidity > 0);

        // Early return for claimable balance
        if(userPositions[poolId][positionKey][user].claimablePrincipal != ZERO_DELTA || !positionState[poolId][positionKey].isActive) {
            _claimOrder(key, positionKey, user);
            return;
        }

        // Get position info 
        (int24 bottomTick, int24 topTick, bool isToken0, ) = _decodePositionKey(positionKey);
        
        // Cancel order through pool manager
        (BalanceDelta callerDelta, BalanceDelta feeDelta) = abi.decode(
            poolManager.unlock(
                abi.encode(
                    UnlockCallbackData({
                        callbackType: CallbackType.CANCEL_ORDER,
                        data: abi.encode(
                            CancelOrderCallbackData({
                                key: key,
                                bottomTick: bottomTick,
                                topTick: topTick,
                                liquidity: userLiquidity,
                                user: user,
                                isToken0: isToken0
                            })
                        )
                    })
                )
            ),
            (BalanceDelta, BalanceDelta)
        );

        _retrackPositionFee(poolId, positionKey, feeDelta);
        userPositions[poolId][positionKey][user].claimablePrincipal = callerDelta - feeDelta;
        positionState[poolId][positionKey].totalLiquidity -= userLiquidity;

        int24 executableTick = isToken0 ? topTick : bottomTick;
        
        _handlePositionRemoval(poolId, positionKey, user, key, isToken0, executableTick);

        emit OrderCanceled(user, poolId, positionKey);
    }

    /// @notice Updated helper function
    function _handlePositionRemoval(
        PoolId poolId,
        bytes32 positionKey,
        address user,
        PoolKey calldata key,
        bool isToken0,
        int24 executableTick
    ) internal {
        _claimOrder(key, positionKey, user);
        
        positionContributors[poolId][positionKey].remove(user);
        
        if(positionContributors[poolId][positionKey].length() == 0) {
            positionState[poolId][positionKey].isActive = false;
            
            PositionManagement.removePositionFromTick(
                isToken0 ? token0PositionAtTick : token1PositionAtTick,
                isToken0 ? token0TickBitmap : token1TickBitmap,
                key,
                executableTick
            );
        }
    }

    // Decode position key to get all components including nonce
    function _decodePositionKey(bytes32 key) internal pure returns (
        int24 bottomTick,
        int24 topTick,
        bool isToken0,
        uint256 nonce
    ) {
        uint256 value = uint256(key);
        return (
            int24(uint24(value >> 232)),          
            int24(uint24(value >> 208)),          
            (value & 1) == 1,                     
            (value >> 8) & ((1 << 200) - 1)       
        );
    }

    /// @notice Allows claiming tokens from a canceled or executed limit order
    /// @param key The pool key identifying the specific Uniswap V4 pool
    /// @param positionKey The unique identifier of the position to claim
    function claimOrder(PoolKey calldata key, bytes32 positionKey) nonReentrant external {
        _claimOrder(key, positionKey, msg.sender);
    }

    /// @notice Batch claims multiple orders that were executed or canceled
    /// @dev Uses pagination to handle large numbers of orders
    /// @param key The pool key identifying the specific Uniswap V4 pool
    /// @param offset Starting position in the user's position array
    /// @param limit Maximum number of positions to process in this call
    function claimBatchOrders(
        PoolKey calldata key,
        uint256 offset,             
        uint256 limit
    ) external nonReentrant {
        PoolId poolId = key.toId();
        EnumerableSet.Bytes32Set storage userKeys = userPositionKeys[msg.sender][poolId];
        
        if (offset >= userKeys.length()) {
            return;
        }
        
        uint256 endIndex = (offset + limit > userKeys.length()) ? 
            userKeys.length() : 
            offset + limit;
         
        uint256 i = endIndex;
        while (i > offset) {
            i--; 
            
            if (i < userKeys.length()) { 
                bytes32 positionKey = userKeys.at(i);
                UserPosition storage position = userPositions[poolId][positionKey][msg.sender];
                
                if (position.liquidity > 0 && 
                   (position.claimablePrincipal != ZERO_DELTA || !positionState[poolId][positionKey].isActive)) {
                    _claimOrder(key, positionKey, msg.sender);
                }
            }
        }
    }

    /// @notice Claims multiple limit order positions using direct position keys
    /// @param key The pool key identifying the specific Uniswap V4 pool
    /// @param positionKeys Array of position keys to claim
    function claimPositionKeys(
        PoolKey calldata key,
        bytes32[] calldata positionKeys
    ) external nonReentrant {
        for (uint256 i = 0; i < positionKeys.length; i++) {
            _claimOrder(key, positionKeys[i], msg.sender);
        }
    }

    /// @notice Internal function to process claiming of tokens from a position
    /// @param key The pool key identifying the specific Uniswap V4 pool
    /// @param positionKey The unique identifier of the position to claim
    /// @param user The address that will receive the claimed tokens
    function _claimOrder(PoolKey calldata key, bytes32 positionKey, address user) internal {
        PoolId poolId = key.toId();
        
        require(userPositions[poolId][positionKey][user].liquidity > 0);
        require(userPositions[poolId][positionKey][user].claimablePrincipal != ZERO_DELTA ||!positionState[poolId][positionKey].isActive);
        
        UserPosition memory position = userPositions[poolId][positionKey][user];

        // Calculate claimable principal in memory
        BalanceDelta principal;
        if (!positionState[poolId][positionKey].isActive) {
            principal = PositionManagement.getBalanceDelta(positionKey, position.liquidity);
        } else {
            principal = position.claimablePrincipal;
        }

        // Calculate fees in memory
        BalanceDelta fees = position.fees;
        if (position.liquidity != 0) {
            BalanceDelta feeDiff = positionState[poolId][positionKey].feePerLiquidity - position.lastFeePerLiquidity;
            BalanceDelta pendingFees = PositionManagement.calculateScaledUserFee(feeDiff, position.liquidity);
            fees = fees + pendingFees;
        }

        delete userPositions[poolId][positionKey][user];

        userPositionKeys[user][poolId].remove(positionKey);
 
        poolManager.unlock(
            abi.encode(
                UnlockCallbackData({
                    callbackType: CallbackType.CLAIM_ORDER,
                    data: abi.encode(
                        ClaimOrderCallbackData({
                            principal: principal,
                            fees: fees,
                            key: key, 
                            user: user
                        })
                    )
                })
            )
        );

        emit OrderClaimed(
            user,
            poolId,
            positionKey,
            uint256(uint128(principal.amount0())),
            uint256(uint128(principal.amount1())),
            uint256(uint128(fees.amount0())),
            uint256(uint128(fees.amount1())),
            hook_fee_percentage
        );
    }

    /**
     * @notice Executes limit orders that have been triggered by price movements
     * @param key The pool key identifying the specific pool 
     * @param tickBeforeSwap The tick price before the swap started
     * @param tickAfterSwap The tick price after the swap completed
     * @param zeroForOne The direction of the swap (true for token0 to token1)
     */
    function executeOrder(
        PoolKey calldata key,
        int24 tickBeforeSwap,
        int24 tickAfterSwap,
        bool zeroForOne
    ) external override {
        require(msg.sender == hook);
        
        PoolId poolId = key.toId();
        
        int24[] memory executableTicks = _findOverlappingPositions(
            poolId, 
            tickBeforeSwap, 
            tickAfterSwap, 
            zeroForOne,
            key.tickSpacing
        );
        
        if(executableTicks.length == 0) return;
        
        uint256 executableCount = executableTicks.length;
        
        mapping(int24 => bytes32) storage positionMap = zeroForOne ? 
            token1PositionAtTick[poolId] : 
            token0PositionAtTick[poolId];
        
        unchecked {
            for(uint256 i = 0; i < executableCount; i++) {
                int24 tick = executableTicks[i];
                bytes32 posKey = positionMap[tick];
                
                if(posKey == bytes32(0)) continue;
                
                _executePosition(key, poolId, posKey, tick);
            }
        }
    }

    /**
     * @notice Execute a single limit order position
     * @dev Processes a single position identified by its position key
     * @param key The pool key
     * @param poolId The pool identifier
     * @param posKey The position key to execute
     * @param tick The tick with the executable position
     */
    function _executePosition(
        PoolKey memory key,
        PoolId poolId,
        bytes32 posKey,
        int24 tick
    ) internal returns (BalanceDelta callerDelta, BalanceDelta feeDelta) {
        // Decode position data
        (int24 bottomTick, int24 topTick, bool isToken0, ) = _decodePositionKey(posKey);
        
        PositionState storage posState = positionState[poolId][posKey];
        uint128 totalLiquidity = posState.totalLiquidity;

        // Burn position liquidity and collect fees
        (callerDelta, feeDelta) = callbackState._burnLimitOrder(
            key,
            bottomTick,
            topTick,
            totalLiquidity,
            isToken0
        );
        
        // Update position state
        _retrackPositionFee(poolId, posKey, feeDelta);
        posState.isActive = false;
            
        // Remove position from tick tracking
        PositionManagement.removePositionFromTick(
            isToken0 ? token0PositionAtTick : token1PositionAtTick,
            isToken0 ? token0TickBitmap : token1TickBitmap,
            key,
            tick
        );
        
        // Update nonce for this position type to prevent key reuse
        bytes32 baseKey = bytes32(
            uint256(uint24(bottomTick)) << 232 |
            uint256(uint24(topTick)) << 208 |
            uint256(isToken0 ? 1 : 0)
        );
        currentNonce[poolId][baseKey]++;
        
        // Emit event for executed order
        emit OrderExecuted(poolId, posKey);
    }

    /// @notice Finds ticks with executable limit orders based on price movement
    /// @param poolId The pool identifier
    /// @param tickBeforeSwap The tick before the swap started
    /// @param tickAfterSwap The tick after the swap completed
    /// @param zeroForOne Direction of the swap (true for 0→1, false for 1→0)
    /// @param tickSpacing The pool's tick spacing
    /// @return executableTicks Array of ticks with executable orders
    function _findOverlappingPositions(
        PoolId poolId,
        int24 tickBeforeSwap,
        int24 tickAfterSwap,
        bool zeroForOne,
        int24 tickSpacing
    ) internal view returns (int24[] memory) {

        uint256 absDiff = uint256(int256(abs(tickBeforeSwap - tickAfterSwap)));
        int24[] memory executableTicks = new int24[]((absDiff / uint256(int256(tickSpacing))) + 1);
        uint256 resultCount = 0;
        
        mapping(int16 => uint256) storage bitmap = zeroForOne ? 
            token1TickBitmap[poolId] : token0TickBitmap[poolId];
        
        mapping(int24 => bytes32) storage positionMap = zeroForOne ?
            token1PositionAtTick[poolId] : token0PositionAtTick[poolId];
        
        int24 tick = tickBeforeSwap;
        
        while (true) {
            if (zeroForOne ? tick <= tickAfterSwap : tick >= tickAfterSwap) {
                break;
            }
            
            (int24 nextInitializedTick, bool initialized) = TickBitmap.nextInitializedTickWithinOneWord(
                bitmap,
                tick,
                tickSpacing,
                zeroForOne
            );
            
            bool beyondBoundary = zeroForOne ? 
                nextInitializedTick <= tickAfterSwap : 
                nextInitializedTick > tickAfterSwap;
                
            if (beyondBoundary) {
                nextInitializedTick = tickAfterSwap;
                initialized = false; 
            }
            
            if (initialized) {
                if (positionMap[nextInitializedTick] != bytes32(0)) {
                    executableTicks[resultCount++] = nextInitializedTick;
                }

            }
            
            if (nextInitializedTick == tickAfterSwap) {
                break;
            }
            
            tick = zeroForOne ? 
                nextInitializedTick - 1 : 
                nextInitializedTick;
        }
        
        assembly {
            mstore(executableTicks, resultCount)
        }
        
        return executableTicks;
    }

    // Helper function to get absolute value
    function abs(int24 x) private pure returns (int24) {
        return x < 0 ? -x : x;
    }

// Position Management Functions

    /// @notice Updates or creates a user's position with new liquidity
    /// @param poolId The unique identifier for the Uniswap V4 pool
    /// @param positionKey The unique identifier for the position
    /// @param liquidity The amount of liquidity to add
    /// @param user The address of the position owner
    function _updateUserPosition(PoolId poolId, bytes32 positionKey, uint128 liquidity, address user) internal {
        PositionState storage posState = positionState[poolId][positionKey];
        UserPosition storage position = userPositions[poolId][positionKey][user];

        if(!positionContributors[poolId][positionKey].contains(user)) {
            position.claimablePrincipal = ZERO_DELTA;
            position.fees = ZERO_DELTA;
            positionContributors[poolId][positionKey].add(user);
            userPositionKeys[user][poolId].add(positionKey);
        } else {
            if (position.liquidity != 0) {
                BalanceDelta feeDelta = posState.feePerLiquidity - position.lastFeePerLiquidity;
                int128 liq = int128(position.liquidity);
                BalanceDelta pendingFees = PositionManagement.calculateScaledUserFee(feeDelta, uint128(liq));
                if (pendingFees != ZERO_DELTA)
                    position.fees = position.fees + pendingFees;
            }
            
        }
        position.lastFeePerLiquidity = posState.feePerLiquidity;
        position.liquidity += liquidity;
        posState.totalLiquidity += liquidity;
    }


    /// @notice Callback function for handling pool manager unlock operations
    /// @dev Called by the pool manager during operations that modify pool state
    /// @param data Encoded callback data containing operation type and parameters
    /// @return bytes Encoded response data based on the callback type
    function unlockCallback(bytes calldata data) external returns (bytes memory) {
        require(msg.sender == address(poolManager));
        UnlockCallbackData memory cbd = abi.decode(data, (UnlockCallbackData));
        CallbackType ct = cbd.callbackType;
        
        if(ct == CallbackType.CREATE_ORDERS) return callbackState.handleCreateOrdersCallback(abi.decode(cbd.data, (CreateOrdersCallbackData)));
        if(ct == CallbackType.CLAIM_ORDER) return callbackState.handleClaimOrderCallback(abi.decode(cbd.data, (ClaimOrderCallbackData)));
        if(ct == CallbackType.CANCEL_ORDER) return callbackState.handleCancelOrderCallback(abi.decode(cbd.data, (CancelOrderCallbackData)));
        revert UnknownCallbackType();
    }


    /// @notice Updates the accumulated fees per liquidity for a position
    /// @param poolId The unique identifier of the pool containing the position
    /// @param positionKey The unique identifier of the position being updated
    /// @param feeDelta The change in fees to be distributed, containing both token0 and token1 amounts
    function _retrackPositionFee(
        PoolId poolId,
        bytes32 positionKey,
        BalanceDelta feeDelta
    ) internal {
        PositionState storage posState = positionState[poolId][positionKey];
        if (posState.totalLiquidity == 0) return;

        if(feeDelta == ZERO_DELTA) return;
        
        posState.feePerLiquidity = posState.feePerLiquidity + 
            PositionManagement.calculateScaledFeePerLiquidity(feeDelta, posState.totalLiquidity);
    }

    function _handleTokenTransfer(
        bool isToken0,
        uint256 amount,
        PoolKey memory key
    ) internal nonReentrant {
        if (isToken0) {
            if (key.currency0.isAddressZero()) {
                require(msg.value >= amount);
                
                if (msg.value > amount) {
                    (bool success, ) = msg.sender.call{value: msg.value - amount}("");
                    require(success);
                }
            } else {
                require(msg.value == 0);
                IERC20(Currency.unwrap(key.currency0)).safeTransferFrom(msg.sender, address(this), amount);
            }
        } else {
            require(msg.value == 0);
            IERC20(Currency.unwrap(key.currency1)).safeTransferFrom(msg.sender, address(this), amount);
        }
    }

// =========== Getter Functions ===========


    /// @notice Get positions for a user in a specific pool with pagination
    /// @param user The address of the user
    /// @param poolId The pool identifier
    /// @param offset Starting position index (optional, default 0)
    /// @param limit Maximum number of positions to return (optional, use 0 for all positions)
    /// @return positions Array of position information
    function getUserPositions(
        address user,
        PoolId poolId,
        uint256 offset,
        uint256 limit
    ) external view returns (PositionInfo[] memory positions) {
        EnumerableSet.Bytes32Set storage userKeys = userPositionKeys[user][poolId];
        uint256 totalLength = userKeys.length();
        
        if (limit == 0) {
            limit = totalLength;
        }
        
        if (offset >= totalLength) {
            return new PositionInfo[](0);
        }
        
        uint256 resultCount = (offset + limit > totalLength) ? 
            (totalLength - offset) : limit;
        
        positions = new PositionInfo[](resultCount);
        
        for(uint256 i = 0; i < resultCount; i++) {
            uint256 keyIndex = offset + i;
            bytes32 key = userKeys.at(keyIndex);
            UserPosition memory userPosition = userPositions[poolId][key][user];
            
            positions[i] = PositionInfo({
                liquidity: userPosition.liquidity,
                fees: userPosition.fees,
                positionKey: key
            });
        }
    }

    function getUserPositionCount(
        address user,
        PoolId poolId
    ) external view returns (uint256) {
        return userPositionKeys[user][poolId].length();
    }


// =========== Admin Functions ===========

    function setHook(address _hook) external onlyOwner {
        hook = _hook;
    }

    function setWhitelistedPool(PoolId poolId, bool isWhitelisted) external onlyOwner {
        whitelistedPool[poolId] = isWhitelisted;
    }

    /// @notice Sets the hook fee percentage
    /// @param _percentage New fee percentage (scaled by FEE_DENOMINATOR)
    function setHookFeePercentage(uint256 _percentage) external onlyOwner {
        require(_percentage < FEE_DENOMINATOR);
        hook_fee_percentage = _percentage;
        callbackState.hookFeePercentage = _percentage;  
    }

    /// @notice Sets the maximum number of orders that can be created at once
    /// @param _limit The new maximum number of orders allowed per pool
    function setMaxOrderLimit(uint24 _limit) external onlyOwner {
        require(_limit > 1);
        maxOrderLimit = _limit;
    }

    /// @notice Sets the treasury address for fee collection
    /// @param _treasury The new treasury address
    function setTreasury(address _treasury) external onlyOwner {
        require(_treasury != address(0), "Treasury cannot be zero address");
        treasury = _treasury;
        callbackState.treasury = _treasury;  // Update callback state too
    }


    /// @notice Pauses contract functionality
    /// @dev Only callable by the contract owner
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpauses contract functionality
    /// @dev Only callable by the contract owner
    function unpause() external onlyOwner {
        _unpause();
    }
}
