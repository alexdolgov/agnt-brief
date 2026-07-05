// SPDX-License-Identifier: MIT
// Forked and modified from https://github.com/OpenZeppelin/uniswap-hooks/blob/master/test/general/LimitOrderHook.t.sol
pragma solidity ^0.8.24;

import {FullMath} from "infinity-core/src/pool-cl/libraries/FullMath.sol";
import {TickMath} from "infinity-core/src/pool-cl/libraries/TickMath.sol";
import {PoolKey} from "infinity-core/src/types/PoolKey.sol";
import {Currency} from "infinity-core/src/types/Currency.sol";
import {PoolId} from "infinity-core/src/types/PoolId.sol";
import {BalanceDelta} from "infinity-core/src/types/BalanceDelta.sol";
import {ICLPoolManager} from "infinity-core/src/pool-cl/interfaces/ICLPoolManager.sol";
import {CLPoolParametersHelper} from "infinity-core/src/pool-cl/libraries/CLPoolParametersHelper.sol";
import {CLBaseHook} from "infinity-hooks/src/pool-cl/CLBaseHook.sol";
import {LPFeeLibrary} from "infinity-core/src/libraries/LPFeeLibrary.sol";
import {BeforeSwapDelta, BeforeSwapDeltaLibrary} from "infinity-core/src/types/BeforeSwapDelta.sol";
import {ReentrancyGuardTransient} from "openzeppelin/utils/ReentrancyGuardTransient.sol";
import {SafeCast} from "openzeppelin/utils/math/SafeCast.sol";
import {Ownable2Step, Ownable} from "openzeppelin/access/Ownable2Step.sol";
import {SafeTransferLib} from "solmate/src/utils/SafeTransferLib.sol";
import {CurrencySettler} from "../utils/CurrencySettler.sol";

/// @title OrderIdLibrary
/// @notice Helpers for working with typed order identifiers.
library OrderIdLibrary {
    /// @dev The order id type.
    type OrderId is uint232;

    /// @dev Compare two order ids for equality. Takes two `OrderId` values `a` and `b` and
    /// @return true if their underlying values are equal, false otherwise
    function equals(OrderId a, OrderId b) internal pure returns (bool) {
        return OrderId.unwrap(a) == OrderId.unwrap(b);
    }

    /// @dev Increment the order id `a`. Might overflow.
    function unsafeIncrement(OrderId a) internal pure returns (OrderId) {
        unchecked {
            return OrderId.wrap(OrderId.unwrap(a) + 1);
        }
    }
}

/// @title CLLimitOrderHook
/// @notice Hook for adding limit orders on PancakeSwap Infinity CL pools.
/// @dev
/// - Allows users to place single-sided out-of-range liquidity at a chosen tick.
/// - Orders execute automatically when price crosses that tick.
/// - Supports cancelling unfilled orders, and withdrawing filled ones.
/// - Operators can batch cancel/withdraw expired or pending orders on behalf of users.
contract CLLimitOrderHook is CLBaseHook, ReentrancyGuardTransient, Ownable2Step {
    using OrderIdLibrary for OrderIdLibrary.OrderId;
    using CurrencySettler for Currency;
    using CLPoolParametersHelper for bytes32;
    using LPFeeLibrary for uint24;
    using SafeCast for uint256;
    using SafeTransferLib for address;

    /// @dev The status of an order.
    /// - Open: order is active and not yet executed.
    /// - Pending: order is executed, but pending liquidity removal, and ready to withdraw.
    /// - Filled: order is executed and liquidity removed, ready to withdraw.
    enum OrderStatus {
        Open,
        Pending,
        Filled
    }

    /// @dev The info for each order id.
    struct OrderInfo {
        OrderStatus status;
        uint128 liquidityTotal;
        int24 tickLower;
        bool zeroForOne;
        uint256 accCurrency0PerLiquidity; // accumulated currency0 per liquidity
        uint256 accCurrency1PerLiquidity; // accumulated currency1 per liquidity
        PoolId poolId;
        mapping(address owner => UserInfo userInfo) userInfos;
    }

    struct UserInfo {
        uint128 liquidity; // total liquidity added by the user
        uint128 rewardDebtOfCurrency0; // reward debt for currency0
        uint128 rewardDebtOfCurrency1; // reward debt for currency1
        uint128 feeOfCurrency0; // fee of currency0 accrued by the user
        uint128 feeOfCurrency1; // fee of currency1 accrued by the user
        uint48 expiry; // expiry time of the order
        uint72 gasFeeForOperator; // prepaid gas fee for operator to cancel/withdraw the order
    }

    /// @dev Types of callbacks performed by the vault in `{lockAcquired}`
    enum CallbackType {
        Place,
        Cancel,
        Withdraw,
        FillPendingOrder
    }

    /// @dev Struct of callback data passed by the vault in `{lockAcquired}`.
    struct CallbackData {
        CallbackType callbackType;
        bytes data;
    }

    /// @dev Struct of callback data for the place callback.
    struct PlaceCallbackData {
        PoolKey key;
        address owner;
        OrderIdLibrary.OrderId orderId;
        bool zeroForOne;
        int24 tickLower;
        uint128 liquidity;
    }

    /// @dev Struct of callback data for the cancel callback.
    struct CancelCallbackData {
        OrderIdLibrary.OrderId orderId;
        bool isUserInitiatedTxn; // if true, the order is cancelled by the user, otherwise by the operator
        address owner;
        address to;
    }

    /// @dev Struct of callback data for the withdraw callback
    struct WithdrawCallbackData {
        PoolId poolId;
        uint256 currency0Amount;
        uint256 currency1Amount;
        address to;
        bool isUserInitiatedTxn; // if true, the order is withdrawn by the user, otherwise by the operator
    }

    /// @dev Struct of callback data for the fill pending order callback
    struct FillPendingOrderCallbackData {
        OrderIdLibrary.OrderId orderId;
    }

    struct BatchParam {
        OrderIdLibrary.OrderId orderId;
        address user;
    }

    uint256 public constant PRECISION = 1e18;

    // Minimum expiry time allowed
    uint256 public constant MIN_EXPIRY_TIME = 1 hours;

    // Maximum expiry time allowed
    uint256 public constant MAX_EXPIRY_TIME = 365 days;

    // Maximum gas fee allowed
    uint256 public constant MAX_GAS_FEE = 1 ether;

    // The expiry time for the order, default is set to 7 days
    uint256 public EXPIRY_TIME = 7 days;

    // Gas fee for the operator to cancel or withdraw an order
    uint256 public GAS_FEE = 0.000075 ether;

    // The maximum number of pending orders that can be filled in a single swap. For a 10 tickSpacing pool, 50
    // MAX_PENDING_ORDER will allow a swap to move ~5% at most if there's limit order at all 50 tickSpacing
    uint256 public MAX_PENDING_ORDER = 50;

    // Gas limit for taking ERC20 tokens from the vault when operator withdraws or cancels an order
    uint256 public TAKE_GAS_LIMIT_ERC20 = 18000;

    // Gas limit for taking native tokens from the vault when operator withdraws or cancels an order
    uint256 public TAKE_GAS_LIMIT_NATIVE = 14000;

    /// @dev if true, need permission to create a pool.
    bool public requirePermissionForPoolCreation;

    /// @dev The zero bytes.
    bytes internal constant ZERO_BYTES = bytes("");

    /// @dev The default order id, used to indicate that an order is not yet initialized.
    OrderIdLibrary.OrderId private constant ORDER_ID_DEFAULT = OrderIdLibrary.OrderId.wrap(0);

    /// @dev The next order id to be used.
    OrderIdLibrary.OrderId private orderIdNext = OrderIdLibrary.OrderId.wrap(1);

    /// @dev The last tick lower for each pool.
    mapping(PoolId poolId => int24 tickLowerLast) private tickLowerLasts;

    /// @dev Tracks each order id for a given identifier, defined by keccak256 of the key, tick lower, and zero for one.
    mapping(bytes32 orderKey => OrderIdLibrary.OrderId orderId) private orders;

    /// @dev Tracks the order info for each order id.
    mapping(OrderIdLibrary.OrderId orderId => OrderInfo orderInfo) public orderInfos;

    /// @dev Tracks the pending fill orders for each pool.
    mapping(PoolId => OrderIdLibrary.OrderId[]) private pendingFillOrderList;

    /// @dev Tracks the remaining length of pending fill orders for each pool.
    mapping(PoolId => uint256) public pendingFillOrderLength;

    /// @dev Only pool creators can initialize pools when `requirePermissionForPoolCreation` is true.
    mapping(address => bool) public isPoolCreator;

    /// @dev Only specific fee and tick spacing combinations are allowed.
    mapping(uint24 fee => int24 tickSpacing) public allowedFeeToTickSpacing;

    /// @dev Operator addresses that can perform certain actions.
    mapping(address => bool) public isOperator;

    /// @dev Zero liquidity was attempted to be added or removed.
    error ZeroLiquidity();

    /// @dev Limit order was placed in range.
    error InRange();

    /// @dev Limit order placed on the wrong side of the range.
    error CrossedRange();

    /// @dev Limit order was already filled.
    error Filled();

    /// @dev Limit order is not filled.
    error NotFilled();

    /// @dev Invalid callback type.
    error InvalidCallbackType();

    /// @dev Do not have permission to create a pool.
    error NoPoolCreationPermission();

    /// @dev The fee is invalid.
    error InvalidFee();

    /// @dev The tick spacing is invalid.
    error InvalidTickSpacing();

    /// @dev The tick spacing of the fee is invalid.
    error InvalidTickSpacingOfFee();

    /// @dev Address can not be zero address.
    error ZeroAddress();

    /// @dev Not an operator.
    error NotOperator();

    /// @dev The expiry time is invalid.
    error InvalidExpiryTime();

    /// @dev The order is not expired.
    error OrderNotExpired();

    /// @dev The gas fee is invalid.
    error InvalidGasFeeAmount();

    /// @dev The native amount sent is invalid.
    error InvalidNativeAmount();

    /// @dev Exceed the maximum number of pending orders.
    error ExceedMaxPendingOrder();

    /// @dev Invalid length.
    error InvalidLength();

    /// @dev Emitted when an `owner` places a limit order
    event Place(
        address indexed owner,
        OrderIdLibrary.OrderId indexed orderId,
        int24 tickLower,
        bool zeroForOne,
        uint48 expiry,
        uint128 liquidity,
        PoolId poolId,
        uint128 amount0,
        uint128 amount1
    );

    /// @dev Emitted when a limit order with the given `orderId` is pending fill in the pool
    event Pending(OrderIdLibrary.OrderId indexed orderId);

    /// @dev Emitted when a limit order with the given `orderId` is filled in the pool
    event Fill(OrderIdLibrary.OrderId indexed orderId);

    /// @dev Emitted when an `owner` cancels a limit order, Caller may be the operator or owner
    event Cancel(
        address indexed caller,
        address indexed owner,
        OrderIdLibrary.OrderId indexed orderId,
        uint128 liquidity,
        uint128 amount0,
        uint128 amount1
    );

    /// @dev Emitted when an `owner` withdraws their `liquidity` from a limit order. Caller may be the operator or owner
    event Withdraw(
        address indexed caller,
        address indexed owner,
        OrderIdLibrary.OrderId indexed orderId,
        uint128 liquidity,
        uint128 amount0,
        uint128 amount1
    );

    event PoolCreationPermissionUpdated(bool requirePermission);

    event PoolCreatorUpdated(address indexed poolCreator, bool isCreator);

    event TickSpacingOfFeeUpdated(uint24 indexed fee, int24 indexed tickSpacing);

    event OperatorUpdated(address indexed operator, bool isOperatorOrNot);

    event ExpiryTimeUpdated(uint256 expiryTime);

    event GasFeeUpdated(uint256 gasFeeAmount);

    event MaxPendingOrderUpdated(uint256 maxPendingOrder);

    event TakeGasLimitERC20Updated(uint256 gasLimit);

    event TakeGasLimitNativeUpdated(uint256 gasLimit);

    event GasFeeCollected(address indexed to, uint256 totalGasFee);

    modifier onlyOperator() {
        if (!isOperator[msg.sender]) revert NotOperator();
        _;
    }

    constructor(ICLPoolManager _poolManager) CLBaseHook(_poolManager) Ownable(msg.sender) {
        // need permission for pool creation by default
        requirePermissionForPoolCreation = true;
    }

    /// @dev Reverts unless fee ↔ tickSpacing is allowed, and caller has permission (if required).
    function _beforeInitialize(address, PoolKey calldata key, uint160) internal view override returns (bytes4) {
        // check if the pool creator has permission to create pools
        if (requirePermissionForPoolCreation && !isPoolCreator[tx.origin]) {
            revert NoPoolCreationPermission();
        }

        if (allowedFeeToTickSpacing[key.fee] != key.parameters.getTickSpacing()) {
            revert InvalidTickSpacingOfFee();
        }
        return this.beforeInitialize.selector;
    }

    /// @dev Hooks into the `afterInitialize` hook to set the last tick lower for the pool.
    function _afterInitialize(address, PoolKey calldata key, uint160, int24 tick) internal override returns (bytes4) {
        // set the last tick lower for the pool
        tickLowerLasts[key.toId()] = getTickLower(tick, key.parameters.getTickSpacing());

        return this.afterInitialize.selector;
    }

    /// @dev Processes any pending limit orders from previous swaps.
    function _beforeSwap(address, PoolKey calldata key, ICLPoolManager.SwapParams calldata, bytes calldata)
        internal
        override
        returns (bytes4, BeforeSwapDelta, uint24)
    {
        PoolId poolId = key.toId();
        OrderIdLibrary.OrderId[] storage pendingFillOrderIds = pendingFillOrderList[poolId];
        uint256 orderLength = pendingFillOrderIds.length;

        if (orderLength > 0) {
            uint256 remainingPendingFillOrderLength = pendingFillOrderLength[poolId];
            if (remainingPendingFillOrderLength > 0) {
                for (uint256 i = 0; i < orderLength; i++) {
                    OrderIdLibrary.OrderId orderId = pendingFillOrderIds[i];
                    OrderInfo storage orderInfo = orderInfos[orderId];
                    if (orderInfo.status == OrderStatus.Pending) {
                        _fillOrder(orderId, orderInfo, key);
                        remainingPendingFillOrderLength -= 1;
                    }
                    if (remainingPendingFillOrderLength == 0) {
                        break;
                    }
                }
            }
            // need to clear pendingFillOrder storage if it is not empty
            delete pendingFillOrderList[poolId];
            delete pendingFillOrderLength[poolId];
        }
        return (this.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, 0);
    }

    /// @dev Hooks into the `afterSwap` hook to get the ticks crossed by the swap and fill the orders that are crossed, filling them.
    function _afterSwap(
        address,
        PoolKey calldata key,
        ICLPoolManager.SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata
    ) internal virtual override nonReentrant returns (bytes4, int128) {
        int24 tickSpacing = key.parameters.getTickSpacing();
        PoolId poolId = key.toId();
        (int24 tickLower, int24 lower, int24 upper) = _getCrossedTicks(poolId, tickSpacing);

        if (lower > upper) return (this.afterSwap.selector, 0);

        // set the last tick lower for the pool
        tickLowerLasts[poolId] = tickLower;

        /// @dev check if the reservesOfApp which belong to clPoolManager is enough to fill all the limit order. Example (new infinity setup):
        /// 1. USDT-BNB pool is at 770 usdt now
        /// 2. Alice have a limit order "BUY 1 BNB at 760 USDT".
        /// 3. (1->0 swap) Charlie tries to swap 1.1 BNB for USDT to bring the price down to 710 usdt
        /// Charlie's swap might fail if we fill limit order first as vault do not have the token (1 BNB) to give Alice yet
        bool willFillAllOrders;
        if (params.zeroForOne) {
            // inverse check of the 1->0 check below
            willFillAllOrders = vault.reservesOfApp(address(poolManager), key.currency0) >= uint128(-delta.amount0());
        } else {
            // 1->0: compare vault token1 balance which belong to clPoolManager vs swapAmountIn
            // eg. if Charlie tries to swap 2.1 BNB to bring price to 710 usdt, and vault has more than 2.1 BNB
            // vault can fill all the limit order first
            willFillAllOrders = vault.reservesOfApp(address(poolManager), key.currency1) >= uint128(-delta.amount1());
        }

        // note that a zeroForOne swap means that the pool is actually gaining token0, so limit
        // order fills are the opposite of swap fills, hence the inversion below
        bool zeroForOneOfLimitOrder = !params.zeroForOne;
        OrderIdLibrary.OrderId orderId;
        if (willFillAllOrders) {
            for (; lower <= upper; lower += tickSpacing) {
                orderId = getOrderId(key, lower, zeroForOneOfLimitOrder);
                if (!orderId.equals(ORDER_ID_DEFAULT)) {
                    /// @dev set the order as default (inactive) here which will not affect the case when user try to place another order at the same tick
                    // This orderId lifecycle is end, will use a new orderId if user place another order at the same tick
                    setOrderId(key, lower, zeroForOneOfLimitOrder, ORDER_ID_DEFAULT);
                    OrderInfo storage orderInfo = orderInfos[orderId];
                    _fillOrder(orderId, orderInfo, key);
                }
            }
        } else {
            /// @dev If reservesOfApp is less than the swap amountIn, perhaps there are some pending orders that can be filled.
            ///      But in order to simplify the logic, we will set all order status to pending and fill them in the next swap.
            OrderIdLibrary.OrderId[] storage pendingFillOrderIds = pendingFillOrderList[poolId];

            uint256 pendingFillOrderCounter;
            for (; lower <= upper; lower += tickSpacing) {
                orderId = getOrderId(key, lower, zeroForOneOfLimitOrder);
                if (!orderId.equals(ORDER_ID_DEFAULT)) {
                    pendingFillOrderCounter++;
                    if (pendingFillOrderCounter > MAX_PENDING_ORDER) revert ExceedMaxPendingOrder();
                    pendingFillOrderIds.push(orderId);
                    /// @dev set the order as default (inactive) here which will not affect the case when user try to place another order at the same tick
                    // This orderId lifecycle is end, will use a new orderId if user place another order at the same tick
                    setOrderId(key, lower, zeroForOneOfLimitOrder, ORDER_ID_DEFAULT);
                    OrderInfo storage orderInfo = orderInfos[orderId];
                    orderInfo.status = OrderStatus.Pending;

                    emit Pending(orderId);
                }
            }
            pendingFillOrderLength[poolId] = pendingFillOrderCounter;
        }

        return (this.afterSwap.selector, 0);
    }

    /// @notice Place a new limit order at a specific tick.
    /// @dev The order will be filled when the pool price crosses the specified `tick`.
    /// @param key to place limit order
    /// @param tick the tick at which to place the limit order
    /// @param zeroForOne direction of the order
    /// @param liquidity amount of liquidity to place
    /// @return amount0 amount of currency0 the user pays for this order
    /// @return amount1 amount of currency1 the user pays for this order
    function placeOrder(PoolKey calldata key, int24 tick, bool zeroForOne, uint128 liquidity)
        external
        payable
        nonReentrant
        onlyValidPools(key.hooks)
        returns (uint256 amount0, uint256 amount1)
    {
        if (liquidity == 0) revert ZeroLiquidity();

        OrderInfo storage orderInfo;

        // get the order for the limit order
        OrderIdLibrary.OrderId orderId = getOrderId(key, tick, zeroForOne);

        // if the order is not initialized, initialize it
        if (orderId.equals(ORDER_ID_DEFAULT)) {
            // initialize the order to the next order
            unchecked {
                setOrderId(key, tick, zeroForOne, orderId = orderIdNext);

                // increment the order id
                orderIdNext = orderIdNext.unsafeIncrement();
            }

            // get the order info
            orderInfo = orderInfos[orderId];

            orderInfo.poolId = key.toId();
            orderInfo.tickLower = tick;
            orderInfo.zeroForOne = zeroForOne;
        } else {
            // get the order info
            orderInfo = orderInfos[orderId];
        }

        // check if the order is already filled
        if (orderInfo.status != OrderStatus.Open) revert Filled();

        UserInfo storage userInfo = orderInfo.userInfos[msg.sender];

        // amount0 / amount1 is what the user have to pay for placing this limit order
        uint128 amount0Fee;
        uint128 amount1Fee;
        (amount0, amount1, amount0Fee, amount1Fee) = abi.decode(
            vault.lock(
                abi.encode(
                    CallbackData(
                        CallbackType.Place,
                        abi.encode(PlaceCallbackData(key, msg.sender, orderId, zeroForOne, tick, liquidity))
                    )
                )
            ),
            (uint128, uint128, uint128, uint128)
        );

        uint256 nativeAmount;
        if (key.currency0.isNative()) {
            nativeAmount = amount0;
        }

        if (msg.value < nativeAmount) revert InvalidNativeAmount();

        // do nothing if msg.value == nativeAmount
        if (msg.value > nativeAmount) {
            uint256 refundAmount = msg.value - nativeAmount;
            // if user already paid gas fee, refund the excess amount
            // if refundAmount is greater than GAS_FEE, it means the user want to pay gas fee for operator
            if (userInfo.gasFeeForOperator == 0 && refundAmount >= GAS_FEE) {
                userInfo.gasFeeForOperator = GAS_FEE.toUint72();
                refundAmount -= GAS_FEE;
            }
            // refund the excess amount to the user
            if (refundAmount > 0) {
                msg.sender.safeTransferETH(refundAmount);
            }
        }

        // The collected fees are only allocated to the currently existing liquidity
        uint128 currentLiquidityTotal = orderInfo.liquidityTotal;
        if (amount0Fee > 0 && currentLiquidityTotal > 0) {
            orderInfo.accCurrency0PerLiquidity += FullMath.mulDiv(amount0Fee, PRECISION, currentLiquidityTotal);
        }
        if (amount1Fee > 0 && currentLiquidityTotal > 0) {
            orderInfo.accCurrency1PerLiquidity += FullMath.mulDiv(amount1Fee, PRECISION, currentLiquidityTotal);
        }

        // add the liquidity to the order
        orderInfo.liquidityTotal += liquidity;

        // if the user has already placed liquidity, update accumulated rewards
        if (userInfo.liquidity > 0) {
            userInfo.feeOfCurrency0 += FullMath.mulDiv(
                orderInfo.accCurrency0PerLiquidity, userInfo.liquidity, PRECISION
            ).toUint128() - userInfo.rewardDebtOfCurrency0;

            userInfo.feeOfCurrency1 += FullMath.mulDiv(
                orderInfo.accCurrency1PerLiquidity, userInfo.liquidity, PRECISION
            ).toUint128() - userInfo.rewardDebtOfCurrency1;
        }

        // update user liquidity and reward debts
        userInfo.liquidity += liquidity;

        userInfo.rewardDebtOfCurrency0 =
            FullMath.mulDiv(orderInfo.accCurrency0PerLiquidity, userInfo.liquidity, PRECISION).toUint128();
        userInfo.rewardDebtOfCurrency1 =
            FullMath.mulDiv(orderInfo.accCurrency1PerLiquidity, userInfo.liquidity, PRECISION).toUint128();

        // refresh the expiry time whenever user updates their order
        uint48 expiry = (block.timestamp + EXPIRY_TIME).toUint48();
        userInfo.expiry = expiry;

        emit Place(
            msg.sender,
            orderId,
            tick,
            zeroForOne,
            expiry,
            liquidity,
            key.toId(),
            amount0.toUint128(),
            amount1.toUint128()
        );
    }

    /// @notice Cancels a limit order by removing liquidity from the pool.
    /// Note that partial cancellation is not supported - the entire liquidity added by the msg.sender will be removed.
    /// Note also that cancelling an order will cancel the order placed by the msg.sender, not orders placed by other users in the same tick range.
    /// @return amount0 The amount of currency0 returned to the user 'to' (principal + fees).
    /// @return amount1 The amount of currency1 returned to the user 'to' (principal + fees).
    function cancelOrder(OrderIdLibrary.OrderId orderId, address to) external nonReentrant returns (uint256, uint256) {
        return _cancelOrder(msg.sender, orderId, to);
    }

    /// @notice Operator can help user cancel their limit order when order is expired
    function batchCancelOrderByOperator(BatchParam[] calldata params)
        external
        nonReentrant
        onlyOperator
        returns (uint256[] memory amount0List, uint256[] memory amount1List)
    {
        uint256 length = params.length;
        if (length == 0) revert InvalidLength();

        amount0List = new uint256[](length);
        amount1List = new uint256[](length);

        for (uint256 i = 0; i < length; i++) {
            BatchParam calldata param = params[i];
            // revert if the user is the zero address
            if (param.user == address(0)) revert ZeroAddress();

            (amount0List[i], amount1List[i]) = _cancelOrder(param.user, param.orderId, param.user);
        }
    }

    function _cancelOrder(address user, OrderIdLibrary.OrderId orderId, address to)
        internal
        returns (uint256 amount0, uint256 amount1)
    {
        if (to == address(0)) revert ZeroAddress();
        // lock the callback to the Vault, the callback will trigger `lockAcquired`
        // and remove the liquidity from the pool. Note that this function will return the fees accrued
        // by the position, since the limit order is a liquidity addition.
        uint128 liquidity;
        (liquidity, amount0, amount1) = abi.decode(
            vault.lock(
                abi.encode(
                    CallbackData(
                        CallbackType.Cancel, abi.encode(CancelCallbackData(orderId, user == msg.sender, user, to))
                    )
                )
            ),
            (uint128, uint128, uint128)
        );

        // only emit Cancel event if liquidity is greater than 0
        if (liquidity > 0) {
            emit Cancel(msg.sender, user, orderId, liquidity, amount0.toUint128(), amount1.toUint128());
        }
    }

    /// @notice Withdraws liquidity from a filled order, sending it to address `to`.
    /// @dev This function can only be called after the order is filled - use `cancelOrder` to remove liquidity from unfilled orders.
    /// @return amount0 total amount user received in currency0
    /// @return amount1 total amount user received in currency1
    function withdraw(OrderIdLibrary.OrderId orderId, address to)
        external
        nonReentrant
        returns (uint256 amount0, uint256 amount1)
    {
        (amount0, amount1) = _withdraw(msg.sender, orderId, to);
    }

    /// @notice Operator can help user to withdraw liquidity from their limit order when order is filled
    function batchWithdrawByOperator(BatchParam[] calldata params)
        external
        nonReentrant
        onlyOperator
        returns (uint256[] memory amount0List, uint256[] memory amount1List)
    {
        uint256 length = params.length;
        if (length == 0) revert InvalidLength();

        amount0List = new uint256[](length);
        amount1List = new uint256[](length);

        for (uint256 i = 0; i < length; i++) {
            BatchParam calldata param = params[i];
            // revert if the user is the zero address
            if (param.user == address(0)) revert ZeroAddress();

            (amount0List[i], amount1List[i]) = _withdraw(param.user, param.orderId, param.user);
        }
    }

    function _withdraw(address user, OrderIdLibrary.OrderId orderId, address to)
        internal
        returns (uint256 amount0, uint256 amount1)
    {
        if (to == address(0)) revert ZeroAddress();
        // get the order info
        OrderInfo storage orderInfo = orderInfos[orderId];

        if (orderInfo.status == OrderStatus.Pending) {
            pendingFillOrderLength[orderInfo.poolId] -= 1;
            vault.lock(
                abi.encode(
                    CallbackData(CallbackType.FillPendingOrder, abi.encode(FillPendingOrderCallbackData(orderId)))
                )
            );
            if (pendingFillOrderLength[orderInfo.poolId] == 0) {
                // if there are no more pending orders, delete the pending fill order list
                delete pendingFillOrderList[orderInfo.poolId];
            }
        }

        bool isUserInitiatedTxn = user == msg.sender;

        // revert if the order is not filled
        if (orderInfo.status != OrderStatus.Filled) revert NotFilled();

        UserInfo storage userInfo = orderInfo.userInfos[user];
        uint128 liquidity = userInfo.liquidity;

        // revert if the liquidity is 0
        if (liquidity == 0) {
            // will skip this if caller is operator
            if (!isUserInitiatedTxn) {
                return (0, 0);
            }
            revert ZeroLiquidity();
        }

        orderInfo.liquidityTotal -= liquidity;

        amount0 =
            FullMath.mulDiv(orderInfo.accCurrency0PerLiquidity, liquidity, PRECISION) - userInfo.rewardDebtOfCurrency0;

        amount1 =
            FullMath.mulDiv(orderInfo.accCurrency1PerLiquidity, liquidity, PRECISION) - userInfo.rewardDebtOfCurrency1;

        // add the fees accrued
        amount0 += userInfo.feeOfCurrency0;
        amount1 += userInfo.feeOfCurrency1;

        delete orderInfo.userInfos[user];

        // lock the callback to the Vault, the callback will trigger `lockAcquired`
        // and return the liquidity to the `to` address.
        vault.lock(
            abi.encode(
                CallbackData(
                    CallbackType.Withdraw,
                    abi.encode(WithdrawCallbackData(orderInfo.poolId, amount0, amount1, to, isUserInitiatedTxn))
                )
            )
        );

        emit Withdraw(msg.sender, user, orderId, liquidity, amount0.toUint128(), amount1.toUint128());
    }

    /// @dev Handles callbacks from the `Vault` for order operations. Takes encoded `rawData` containing the callback type
    /// and operation-specific data. Returns encoded data containing fees accrued for cancel operations, or empty bytes
    /// otherwise. Only callable by the Vault.
    function lockAcquired(bytes calldata rawData)
        external
        virtual
        override
        vaultOnly
        returns (bytes memory returnData)
    {
        CallbackData memory callbackData = abi.decode(rawData, (CallbackData));

        if (callbackData.callbackType == CallbackType.Place) {
            PlaceCallbackData memory placeData = abi.decode(callbackData.data, (PlaceCallbackData));
            (uint128 amount0, uint128 amount1, uint128 amount0Fee, uint128 amount1Fee) = _handlePlaceCallback(placeData);
            return abi.encode(amount0, amount1, amount0Fee, amount1Fee);
        }

        if (callbackData.callbackType == CallbackType.Cancel) {
            CancelCallbackData memory cancelData = abi.decode(callbackData.data, (CancelCallbackData));
            (uint128 liquidity, uint128 amount0, uint128 amount1) = _handleCancelCallback(cancelData);
            return abi.encode(liquidity, amount0, amount1);
        }

        if (callbackData.callbackType == CallbackType.Withdraw) {
            WithdrawCallbackData memory withdrawData = abi.decode(callbackData.data, (WithdrawCallbackData));
            _handleWithdrawCallback(withdrawData);
            return ZERO_BYTES;
        }

        if (callbackData.callbackType == CallbackType.FillPendingOrder) {
            FillPendingOrderCallbackData memory fillData = abi.decode(callbackData.data, (FillPendingOrderCallbackData));
            _handleFillPendingOrderCallback(fillData);
            return ZERO_BYTES;
        }

        revert InvalidCallbackType();
    }

    /// @dev Internal handler for place order callbacks. Takes `placeData` containing the order details and adds the
    ///   specified liquidity to the pool out of range. Reverts if the order would be placed in range or on the wrong
    ///   side of the range.
    function _handlePlaceCallback(PlaceCallbackData memory placeData)
        internal
        returns (uint128 amount0, uint128 amount1, uint128 amount0Fee, uint128 amount1Fee)
    {
        PoolKey memory key = placeData.key;

        // add the out of range liquidity to the pool
        (BalanceDelta delta, BalanceDelta feesAccrued) = poolManager.modifyLiquidity(
            key,
            ICLPoolManager.ModifyLiquidityParams({
                tickLower: placeData.tickLower,
                tickUpper: placeData.tickLower + key.parameters.getTickSpacing(),
                liquidityDelta: int256(uint256(placeData.liquidity)),
                salt: bytes32(uint256(OrderIdLibrary.OrderId.unwrap(placeData.orderId)))
            }),
            /// @dev Use orderId as salt , so each orderId only corresponds to one position in the infinity pool
            ///      so that new limit order placed will not take the fee of existing pending limit orders
            ZERO_BYTES
        );

        if (feesAccrued.amount0() > 0) {
            // mint and store the currency0 in the vault
            amount0Fee = uint128(feesAccrued.amount0());
            vault.mint(address(this), key.currency0, amount0Fee);
        }
        if (feesAccrued.amount1() > 0) {
            // mint and store the currency1 in the vault
            amount1Fee = uint128(feesAccrued.amount1());
            vault.mint(address(this), key.currency1, amount1Fee);
        }

        // fees do not belong to this user, so need to subtract them from the delta
        BalanceDelta principalDelta = delta - feesAccrued;

        // if the amount of currency0 is negative, the limit order is to sell `currency0` for `currency1`
        if (principalDelta.amount0() < 0) {
            // if the amount of currency1 is not 0, the limit order is in range
            if (principalDelta.amount1() != 0) revert InRange();
            // if `zeroForOne` is false, the limit order is wrong side of the range
            if (!placeData.zeroForOne) revert CrossedRange();

            // settle the currency0 to the owner
            key.currency0.settle(vault, placeData.owner, amount0 = uint128(-principalDelta.amount0()), false);
        } else {
            // if the amount of currency0 is not 0, the limit order is in range
            if (principalDelta.amount0() != 0) revert InRange();
            // if `zeroForOne` is true, the limit order is wrong side of the range
            if (placeData.zeroForOne) revert CrossedRange();

            // settle the currency1 to the owner
            key.currency1.settle(vault, placeData.owner, amount1 = uint128(-principalDelta.amount1()), false);
        }
    }

    /// @dev Internal handler for cancel order callbacks. Takes `cancelData` containing the cancellation details and
    ///   removes liquidity from the pool. Returns accrued fees `(amount0Fee, amount1Fee)` which are allocated to remaining
    ///   limit order placers, or to the cancelling user if they're removing all liquidity.
    function _handleCancelCallback(CancelCallbackData memory cancelData)
        internal
        returns (uint128 liquidity, uint128 amount0, uint128 amount1)
    {
        OrderIdLibrary.OrderId orderId = cancelData.orderId;
        OrderInfo storage orderInfo = orderInfos[orderId];

        bool isUserInitiatedTxn = cancelData.isUserInitiatedTxn;

        // revert if the order is already filled
        if (orderInfo.status != OrderStatus.Open) {
            if (!isUserInitiatedTxn) {
                return (0, 0, 0);
            }
            revert Filled();
        }

        PoolKey memory key;
        (key.currency0, key.currency1, key.hooks, key.poolManager, key.fee, key.parameters) =
            poolManager.poolIdToPoolKey(orderInfo.poolId);

        address orderOwner = cancelData.owner;
        UserInfo storage userInfo = orderInfo.userInfos[orderOwner];
        if (!isUserInitiatedTxn) {
            // if the order is cancelled by the operator, need to check expiry timestamp
            if (userInfo.expiry > block.timestamp) revert OrderNotExpired();
        }
        liquidity = userInfo.liquidity;
        // revert if the liquidity is 0
        if (liquidity == 0) {
            if (!isUserInitiatedTxn) {
                return (0, 0, 0);
            }
            revert ZeroLiquidity();
        }
        int24 tickLower = orderInfo.tickLower;

        bool removingAllLiquidity = liquidity == orderInfo.liquidityTotal;

        // remove the liquidity from the pool. The fees accrued by the position are included in the `delta`
        (BalanceDelta delta, BalanceDelta feesAccrued) = poolManager.modifyLiquidity(
            key,
            ICLPoolManager.ModifyLiquidityParams({
                tickLower: tickLower,
                tickUpper: tickLower + key.parameters.getTickSpacing(),
                liquidityDelta: -int256(uint256(liquidity)),
                salt: bytes32(uint256(OrderIdLibrary.OrderId.unwrap(orderId)))
            }),
            ZERO_BYTES
        );

        if (delta.amount0() > 0) {
            // mint and store the currency0 in the vault
            vault.mint(address(this), key.currency0, uint128(delta.amount0()));
        }

        if (delta.amount1() > 0) {
            // mint and store the currency1 in the vault
            vault.mint(address(this), key.currency1, uint128(delta.amount1()));
        }

        BalanceDelta principalDelta;
        if (removingAllLiquidity) {
            // if removing all liquidity, all fees accrued are belonging to the user
            principalDelta = delta;
            // if removing all liquidity, set the order id to the default value
            setOrderId(key, tickLower, orderInfo.zeroForOne, ORDER_ID_DEFAULT);
        } else {
            principalDelta = delta - feesAccrued;

            // if the amount of fees in currency0 is positive, update accumulated currency0 per liquidity
            if (feesAccrued.amount0() > 0) {
                orderInfo.accCurrency0PerLiquidity +=
                    FullMath.mulDiv(uint128(feesAccrued.amount0()), PRECISION, orderInfo.liquidityTotal);
            }

            // if the amount of fees in currency1 is positive, update accumulated currency1 per liquidity
            if (feesAccrued.amount1() > 0) {
                orderInfo.accCurrency1PerLiquidity +=
                    FullMath.mulDiv(uint128(feesAccrued.amount1()), PRECISION, orderInfo.liquidityTotal);
            }
        }

        orderInfo.liquidityTotal -= liquidity;

        uint128 pendingCurrency0 = FullMath.mulDiv(orderInfo.accCurrency0PerLiquidity, liquidity, PRECISION).toUint128()
            - userInfo.rewardDebtOfCurrency0;
        uint128 pendingCurrency1 = FullMath.mulDiv(orderInfo.accCurrency1PerLiquidity, liquidity, PRECISION).toUint128()
            - userInfo.rewardDebtOfCurrency1;

        // add the accumulated fees to the withdraw amounts
        amount0 = userInfo.feeOfCurrency0 + pendingCurrency0;
        amount1 = userInfo.feeOfCurrency1 + pendingCurrency1;

        // remove the user info from the order
        delete orderInfo.userInfos[orderOwner];

        if (principalDelta.amount0() > 0) {
            amount0 += uint128(principalDelta.amount0());
        }

        if (principalDelta.amount1() > 0) {
            amount1 += uint128(principalDelta.amount1());
        }

        if (amount0 > 0) {
            _transferOut(key.currency0, cancelData.to, amount0, isUserInitiatedTxn, true);
        }

        if (amount1 > 0) {
            _transferOut(key.currency1, cancelData.to, amount1, isUserInitiatedTxn, false);
        }
    }

    /// @dev Internal handler for withdraw callbacks. Takes `withdrawData` containing withdrawal amounts and recipient,
    ///   burns the specified currency amounts from the hook, and transfers them to the recipient address.
    function _handleWithdrawCallback(WithdrawCallbackData memory withdrawData) internal {
        (Currency currency0, Currency currency1,,,,) = poolManager.poolIdToPoolKey(withdrawData.poolId);
        // if the amount of currency0 is positive, burn the currency0 from the hook
        uint256 amount0 = withdrawData.currency0Amount;
        uint256 amount1 = withdrawData.currency1Amount;
        if (amount0 > 0) {
            _transferOut(currency0, withdrawData.to, amount0, withdrawData.isUserInitiatedTxn, true);
        }

        // if the amount of currency1 is positive, burn the currency1 from the hook
        if (amount1 > 0) {
            _transferOut(currency1, withdrawData.to, amount1, withdrawData.isUserInitiatedTxn, false);
        }
    }

    function _handleFillPendingOrderCallback(FillPendingOrderCallbackData memory fillData) internal {
        OrderIdLibrary.OrderId orderId = fillData.orderId;
        OrderInfo storage orderInfo = orderInfos[orderId];
        PoolKey memory key;
        (key.currency0, key.currency1, key.hooks, key.poolManager, key.fee, key.parameters) =
            poolManager.poolIdToPoolKey(orderInfo.poolId);

        _fillOrder(orderId, orderInfo, key);
    }

    /// @dev Internal handler for filling limit orders when price crosses a tick.
    ///   Takes an `OrderId` `orderId`, `OrderInfo` storage reference, and `PoolKey` `key` for the pool.
    function _fillOrder(OrderIdLibrary.OrderId orderId, OrderInfo storage orderInfo, PoolKey memory key) internal {
        if (!orderId.equals(ORDER_ID_DEFAULT)) {
            // skip if the order is already filled
            if (orderInfo.status == OrderStatus.Filled) return;

            int24 tickLower = orderInfo.tickLower;

            orderInfo.status = OrderStatus.Filled;

            uint128 totalLiquidity = orderInfo.liquidityTotal;
            // modify the liquidity to remove the order liquidity from the pool
            (BalanceDelta delta,) = poolManager.modifyLiquidity(
                key,
                ICLPoolManager.ModifyLiquidityParams({
                    tickLower: tickLower,
                    tickUpper: tickLower + key.parameters.getTickSpacing(),
                    liquidityDelta: -int256(uint256(totalLiquidity)),
                    salt: bytes32(uint256(OrderIdLibrary.OrderId.unwrap(orderId)))
                }),
                ZERO_BYTES
            );

            // if the amount of currency0 is positive, mint the currency0 to the hook
            if (delta.amount0() > 0) {
                uint128 amount0 = uint128(delta.amount0());
                vault.mint(address(this), key.currency0, amount0);
                orderInfo.accCurrency0PerLiquidity += FullMath.mulDiv(amount0, PRECISION, totalLiquidity);
            }

            // if the amount of currency1 is positive, mint the currency1 to the hook
            if (delta.amount1() > 0) {
                uint128 amount1 = uint128(delta.amount1());
                vault.mint(address(this), key.currency1, amount1);
                orderInfo.accCurrency1PerLiquidity += FullMath.mulDiv(amount1, PRECISION, totalLiquidity);
            }

            // emit the fill event
            emit Fill(orderId);
        }
    }

    /// @dev Internal helper that calculates the range of ticks crossed during a price change. Takes a `PoolId`
    ///   and `tickSpacing`, returns the current `tickLower` and the range of ticks crossed (`lower`, `upper`)
    ///   that need to be checked for limit orders.
    function _getCrossedTicks(PoolId poolId, int24 tickSpacing)
        internal
        view
        returns (int24 tickLower, int24 lower, int24 upper)
    {
        /// @dev An infinity position is considered in range when: tickLower ≤ currentTick < tickUpper
        ///      (tickLower is inclusive, tickUpper is exclusive).
        ///      The limit order will be filled if currentTick < tickLower or currentTick ≥ tickUpper.
        ///      Example (tickSpacing = 60, current tick = 0):
        ///        - Limit order infinity position with range [-60, 0]: If tick moves from 0 to -60, order is not filled (still in range).
        ///        - Limit order infinity position with range [-60, 0]: If tick moves from 0 to -61 (or lower tick), order is filled (out of range).
        ///        - Limit order infinity position with range [0, 60]: If tick moves from 0 to 60 (or higher tick), order is filled (out of range).
        tickLower = getTickLower(getTick(poolId), tickSpacing);
        int24 tickLowerLast = getTickLowerLast(poolId);

        if (tickLower < tickLowerLast) {
            lower = tickLower + tickSpacing;
            upper = tickLowerLast;
        } else {
            lower = tickLowerLast;
            upper = tickLower - tickSpacing;
        }
    }

    /// @dev Returns the last recorded lower tick for a given pool. Takes a `PoolId` `poolId` and returns the
    ///   stored `tickLowerLast` value.
    function getTickLowerLast(PoolId poolId) public view returns (int24) {
        return tickLowerLasts[poolId];
    }

    /// @dev Retrieves the order id for a given pool position. Takes a `PoolKey` `key`, target `tickLower`, and direction
    /// `zeroForOne` indicating whether it's buying currency0 or currency1. Returns the {OrderId} associated with this
    /// position, or the default order id if no order exists.
    function getOrderId(PoolKey memory key, int24 tickLower, bool zeroForOne)
        public
        view
        returns (OrderIdLibrary.OrderId)
    {
        return orders[keccak256(abi.encode(key, tickLower, zeroForOne))];
    }

    /// @dev Internal helper that updates the order ID mapping. Takes a `PoolKey` `key`, target `tickLower`, direction
    ///   `zeroForOne`, and `orderId` to store. Associates the given order id with the pool position's hash.
    function setOrderId(PoolKey memory key, int24 tickLower, bool zeroForOne, OrderIdLibrary.OrderId orderId) private {
        orders[keccak256(abi.encode(key, tickLower, zeroForOne))] = orderId;
    }

    /// @dev Get the tick lower. Takes a `tick` and `tickSpacing` and returns the nearest valid tick boundary
    ///.  at or below the input tick, accounting for negative tick handling.
    function getTickLower(int24 tick, int24 tickSpacing) private pure returns (int24) {
        // slither-disable-next-line divide-before-multiply
        int24 compressed = tick / tickSpacing;
        if (tick < 0 && tick % tickSpacing != 0) compressed--; // round towards negative infinity
        return compressed * tickSpacing;
    }

    function getOrderUserInfo(OrderIdLibrary.OrderId orderId, address owner) external view returns (UserInfo memory) {
        return orderInfos[orderId].userInfos[owner];
    }

    function getPendingFillOrderList(PoolId poolId) external view returns (OrderIdLibrary.OrderId[] memory) {
        return pendingFillOrderList[poolId];
    }

    /// @dev Get the current tick for a given pool. Takes a `PoolId` `poolId` and returns the tick calculated
    ///   from the pool's current sqrt price.
    function getTick(PoolId poolId) private view returns (int24 tick) {
        (, tick,,) = poolManager.getSlot0(poolId);
    }

    /// @dev Get the hook permissions for this contract. Returns a uint16 configured to enable
    /// `afterInitialize` and `afterSwap` hooks while disabling all other hooks.
    function getHooksRegistrationBitmap() external pure override returns (uint16) {
        return _hooksRegistrationBitmapFrom(
            Permissions({
                beforeInitialize: true,
                afterInitialize: true,
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
            })
        );
    }

    /// @dev Updates the permission for pool creation. If `requirePermissionForPoolCreation` is true, only addresses
    /// registered as pool creators can create new pools. If false, anyone can create pools.
    function setPoolCreationPermission(bool requirePermission) external onlyOwner {
        requirePermissionForPoolCreation = requirePermission;
        emit PoolCreationPermissionUpdated(requirePermission);
    }

    /// @dev Updates the pool creator status for a given address. If `isCreator` is true, the address can create pools
    /// when `requirePermissionForPoolCreation` is true. If false, the address cannot create pools.
    function setPoolCreator(address poolCreator, bool isCreator) external onlyOwner {
        if (poolCreator == address(0)) revert ZeroAddress();
        isPoolCreator[poolCreator] = isCreator;
        emit PoolCreatorUpdated(poolCreator, isCreator);
    }

    /// @dev Updates the operator status for a given address. If `isOperator` is true, the address can perform certain
    /// actions defined in the contract. If false, the address cannot perform those actions.
    function setOperator(address operator, bool isOperatorOrNot) external onlyOwner {
        if (operator == address(0)) revert ZeroAddress();
        isOperator[operator] = isOperatorOrNot;
        emit OperatorUpdated(operator, isOperatorOrNot);
    }

    /// @dev Updates the tick spacing for a given fee. Takes a `fee` and `tickSpacing`, and updates the mapping
    /// of fee to tick spacing. If `tickSpacing` is 0, it disables the fee.
    function setTickSpacingOfFee(uint24 fee, int24 tickSpacing) external onlyOwner {
        // Limit order hook do not support dynamic fee pool.
        if (fee.isDynamicLPFee() || fee > LPFeeLibrary.ONE_HUNDRED_PERCENT_FEE) {
            revert InvalidFee();
        }
        // tickSpacing can be 0 when admin want to disable the fee
        if (tickSpacing < 0 || tickSpacing > TickMath.MAX_TICK_SPACING) revert InvalidTickSpacing();

        allowedFeeToTickSpacing[fee] = tickSpacing;
        emit TickSpacingOfFeeUpdated(fee, tickSpacing);
    }

    /// @dev Updates the expiry time for limit orders. Takes an `expiryTime` in seconds, which must be between
    /// `MIN_EXPIRY_TIME` and `MAX_EXPIRY_TIME`. This defines how long an order remains valid before it can be cancelled by operator.
    function setExpiryTime(uint256 expiryTime) external onlyOwner {
        if (expiryTime < MIN_EXPIRY_TIME || expiryTime > MAX_EXPIRY_TIME) revert InvalidExpiryTime();
        EXPIRY_TIME = expiryTime;
        emit ExpiryTimeUpdated(expiryTime);
    }

    /// @dev Updates the gas fee amount for order operations. Takes a `gasFee` value, which must be less than or
    ///   equal to `MAX_GAS_FEE`. This defines the amount of gas that users must pay to withdraw/cancel orders.
    function setGasFee(uint256 gasFee) external onlyOwner {
        if (gasFee > MAX_GAS_FEE) revert InvalidGasFeeAmount();
        GAS_FEE = gasFee;
        emit GasFeeUpdated(gasFee);
    }

    /// @dev Updates the maximum number of pending orders allowed per pool. Takes a `maxPendingOrder` value,
    ///   which defines the limit on how many pending orders can exist for a single pool at any given time.
    function setMaxPendingOrder(uint256 maxPendingOrder) external onlyOwner {
        MAX_PENDING_ORDER = maxPendingOrder;
        emit MaxPendingOrderUpdated(maxPendingOrder);
    }

    /// @dev Updates the gas limit for ERC20 transfers when operator is cancelling/withdrawing orders for users.
    ///   Takes a `gasLimit` value which sets the gas limit for these operations.
    function setTakeGasLimitERC20(uint256 gasLimit) external onlyOwner {
        TAKE_GAS_LIMIT_ERC20 = gasLimit;
        emit TakeGasLimitERC20Updated(gasLimit);
    }

    /// @dev Updates the gas limit for native currency transfers when operator is cancelling/withdrawing orders for users.
    ///   Takes a `gasLimit` value which sets the gas limit for these operations.
    function setTakeGasLimitNative(uint256 gasLimit) external onlyOwner {
        TAKE_GAS_LIMIT_NATIVE = gasLimit;
        emit TakeGasLimitNativeUpdated(gasLimit);
    }

    /// @dev Collects the gas fees accumulated in the contract. Takes an address `to` to transfer the collected fees.
    ///   The total gas fee is transferred to the specified address.
    function collectGasFee(address to) external onlyOwner {
        uint256 totalGasFee = address(this).balance;
        if (totalGasFee == 0) revert InvalidNativeAmount();
        // transfer the gas fee to the specified address
        to.safeTransferETH(totalGasFee);
        emit GasFeeCollected(to, totalGasFee);
    }

    /// @dev Internal helper to transfer out currency from the hook to a specified address.
    ///   Takes `currency`, recipient `to`, `amount`, and flags `isUserInitiated` and `isCurrency0` to determine gas limits.
    ///   Burns the specified amount from the hook and takes from the vault to transfer it out.
    ///   Will set gas limit for ERC20/native transfer when operator is withdrawing/cancelling the order for user.
    function _transferOut(Currency currency, address to, uint256 amount, bool isUserInitiated, bool isCurrency0)
        internal
    {
        vault.burn(address(this), currency, amount);
        uint256 gasLimit = gasleft();
        // will set gas limit for ERC20/native transfer when operator is withdrawing/cancelling the order for user
        if (!isUserInitiated) {
            gasLimit = TAKE_GAS_LIMIT_ERC20;
            /// @dev check isCurrency0 for gas saving reason
            if (isCurrency0 && currency.isNative()) {
                gasLimit = TAKE_GAS_LIMIT_NATIVE;
            }
        }
        vault.take{gas: gasLimit}(currency, to, amount);
    }
}
