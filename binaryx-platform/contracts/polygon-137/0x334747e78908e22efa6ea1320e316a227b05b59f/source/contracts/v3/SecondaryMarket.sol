// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "./interfaces/IAddressesProvider.sol";
import "./interfaces/IAccessManager.sol";
import "./interfaces/IKycStore.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

enum OrderType {
    Undefined,
    Sell,
    Buy
}

enum OrderStatus {
    Undefined,
    Pending,
    Completed,
    Canceled
}

struct OrderPool {
    //    immutable
    uint256 id;
    uint256 priceD6;
    address asset;
    OrderType orderType;
    // state
    uint256 index;
    uint256 availableAmount;
}

enum StatusChangeReason {
    Undefined,
    TxRejectedByAllowance,
    TxRejectedByBalance
}

struct OrderPoolView {
    uint256 id;
    uint256 priceD6;
    address asset;
    OrderType orderType;
    uint256 availableAmount;
}

struct Order {
    //    immutable
    uint256 id;
    address user;
    address asset;
    uint256 basePriceD6; // asset price
    uint256 transferPriceD6; // what end user will see excluding commissions
    uint256 initialAmount;
    OrderType orderType;
    // state
    StatusChangeReason statusChangeReason;
    uint256 availableAmount;
    uint256 fulfilledAmount;
    OrderStatus status;
}

struct Commission {
    address commissionWallet;
    // SELL orders
    uint256 sellDiscountPercentageD2;
    uint256 sellCommissionPercentageD2;
    // BUY orders
    uint256 buyDiscountPercentageD2;
    uint256 buyCommissionPercentageD2;
}

contract SecondaryMarket is Initializable {
    using Counters for Counters.Counter;
    Counters.Counter private _poolIds;
    Counters.Counter private _orderIds;

    using SafeERC20 for IERC20;
    IERC20 public rewardToken;
    IAddressesProvider public addressesProvider;

    // EVENTS
    event OrderCreated(Order order);
    event OrderCancelled(Order order);
    event OrderFulfilled(Order order, uint fulfilledAmount, uint transfer, uint toSeller, uint toPartner, uint toBnrx, address buyer);
    event OrderCompleted(Order order);
    event ChangeAssetCommission(address asset, Commission commission);

    // ASSETS
    mapping(address => Commission) public assetCommission;

    // ORDERS
    // id => Order
    mapping(uint256 => Order) public orders;
    // user => orderId[]
    mapping(address => uint256[]) public ordersByUserMap;
    // poolId => orderId[]
    mapping(uint256 => uint256[]) public ordersByPoolIdMap;
    // asset => orderId[]
    mapping(address => uint256[]) public ordersByAssetMap;
    // orderId =>
    mapping(uint256 => Commission) public orderPartnerCommission;
    mapping(uint256 => Commission) public orderBnrxCommission;

    // POOLS
    // id => OrderPool
    mapping(uint256 => OrderPool) public pools;
    // id[]
    uint256[] public activePools;
    // asset => priceD6 => [sell,buy] => poolId
    mapping(address => mapping(uint256 => mapping(OrderType => uint256))) public poolMainMap;

    // SYSTEM
    bool public isLocked;

    function initialize(IAddressesProvider _addressesProvider, IERC20 _rewardToken) public initializer {
        require(address(_addressesProvider) != address(0), "SecondaryMarket: _addressesProvider is required");
        require(address(_rewardToken) != address(0), "SecondaryMarket: _rewardToken is required");
        addressesProvider = _addressesProvider;
        rewardToken = _rewardToken;
    }

    function getVersion() external pure returns (uint256) {
        return 15;
    }

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.can(msg.sender, IAccessManager.Action.ManageSecondaryMarket), "SecondaryMarket: access denied");
        _;
    }

    modifier onlyUnlocked() {
        require(isLocked == false, "SecondaryMarket: locked");
        _;
    }

    function setIsLocked(bool _isLocked) external onlySuperOracle {
        isLocked = _isLocked;
    }

    function setAssetCommission(address asset, Commission calldata commission) external onlySuperOracle {
        assetCommission[asset] = commission;
        emit ChangeAssetCommission(asset, commission);
    }

    function createOrder(
        address asset,
        uint256 priceD6,
        uint256 amount,
        OrderType orderType,
        Commission calldata commission
    ) external onlyUnlocked {
        require(priceD6 > 0, "SecondaryMarket: price is required");
        require(orderType == OrderType.Sell || orderType == OrderType.Buy, "SecondaryMarket: type is invalid");
        // check allowance
        _throwIfNotEnoughAllowanceOrNoKyc(msg.sender, asset, amount);
        // calc pool price
        uint256 transfer;
        (transfer, , , ) = calculateSellTransfers(1, priceD6, commission, assetCommission[asset]);

        // create
        _orderIds.increment();
        Order memory order = Order({
            id: _orderIds.current(),
            statusChangeReason: StatusChangeReason.Undefined,
            user: msg.sender,
            asset: asset,
            basePriceD6: priceD6,
            transferPriceD6: transfer,
            initialAmount: amount,
            orderType: orderType,
            availableAmount: amount,
            fulfilledAmount: 0,
            status: OrderStatus.Pending
        });
        // push indices
        orders[order.id] = order;
        orderPartnerCommission[order.id] = commission;
        orderBnrxCommission[order.id] = assetCommission[asset];
        ordersByUserMap[msg.sender].push(order.id);
        ordersByAssetMap[order.asset].push(order.id);
        // update pool
        _updatePoolOnNewOrder(order);
        emit OrderCreated(order);
    }

    function cancelOrder(uint256 orderId) external onlyUnlocked {
        Order storage order = __getOrderById(orderId);
        require(order.user == msg.sender, "SM:E3:");
        _cancelOrderById(orderId);
    }

    // the same as cancelOrder but by super oracle
    function cancelOrderBySuperOracle(uint256 orderId) external onlySuperOracle {
        _cancelOrderById(orderId);
    }

    function _cancelOrderById(uint256 orderId) private {
        Order storage order = __getOrderById(orderId);
        require(orderId != 0, "SM:E1:");
        require(order.id != 0, "SM:E2:");
        order.status = OrderStatus.Canceled;

        _updatePoolOnCancelOrder(orderId);
        emit OrderCancelled(order);
    }

    function cancelOrdersForUser(address user) external onlySuperOracle {
      uint256[] memory ids = ordersByUserMap[user];
      for (uint i = 0; i < ids.length; i++) {
          Order memory order = __getOrderById(ids[i]);
          if (order.status == OrderStatus.Canceled) {
            continue;
          }
          _cancelOrderById(ids[i]);
      }
    }

    function ordersLength() external view returns (uint256) {
        return _orderIds.current();
    }

    function _updatePoolOnNewOrder(Order memory order) internal {
        uint poolId;

        if (poolMainMap[order.asset][order.transferPriceD6][order.orderType] == 0) {
            _poolIds.increment();
            poolId = _poolIds.current();
            OrderPool memory pool = OrderPool({
                id: poolId,
                index: 0, // TODO rm
                availableAmount: order.initialAmount,
                priceD6: order.transferPriceD6,
                orderType: order.orderType,
                asset: order.asset
            });
            pools[pool.id] = pool;
            activePools.push(pool.id);
            poolMainMap[order.asset][order.transferPriceD6][order.orderType] = pool.id;
        } else {
            poolId = poolMainMap[order.asset][order.transferPriceD6][order.orderType];
            __getPoolById(poolId).availableAmount += order.initialAmount;
        }
        ordersByPoolIdMap[poolId].push(order.id);
    }

    function _updatePoolOnCancelOrder(uint256 orderId) internal {
        Order storage order = __getOrderById(orderId);
        OrderPool storage pool = __getPoolByOrder(order);
        pool.availableAmount -= order.availableAmount;
        _removeFromArray(ordersByPoolIdMap[pool.id], order.id);
        if (pool.availableAmount == 0) {
            _deletePoolByIndex(pool);
        }
    }

    function _throwIfNotEnoughAllowanceOrNoKyc(address user, address asset, uint newOrderAmount) internal {
        IKycStore kycStore = getKycStore();
        require(kycStore.isOperable(user), "S:E4:");

        Order[] memory orders = getOrdersByUser(user);
        uint existingOrdersAmount = 0;
        for (uint i = 0; i < orders.length; i++) {
            if (orders[i].asset == asset && orders[i].status == OrderStatus.Pending) {
                existingOrdersAmount += orders[i].availableAmount;
            }
        }
        require((existingOrdersAmount + newOrderAmount) * 1e18 <= ERC20(asset).allowance(user, address(this)), "Token: not enough allowance");
    }

    function _deletePoolByIndex(OrderPool storage poolToDelete) internal {
        poolMainMap[poolToDelete.asset][poolToDelete.priceD6][poolToDelete.orderType] = 0;
        _removeFromArray(activePools, poolToDelete.id);
    }

    function _updatePoolAfterBuying(uint256 poolId) internal {
        uint newAvailableAmount = 0;

        uint256[] storage orderIds = ordersByPoolIdMap[poolId];
        for (uint i = 0; i < orderIds.length; i++) {
            Order storage order = __getOrderById(orderIds[i]);
            if (order.status != OrderStatus.Pending) {
                _removeFromArray(orderIds, order.id);
            }
        }
        for (uint i = 0; i < orderIds.length; i++) {
            Order storage order = __getOrderById(orderIds[i]);
            newAvailableAmount += order.availableAmount;
        }
        OrderPool storage pool = __getPoolById(poolId);
        if (newAvailableAmount == 0) {
            _deletePoolByIndex(pool);
        } else {
            pool.availableAmount = newAvailableAmount;
        }
    }

    function __getPoolByOrder(Order memory order) internal returns (OrderPool storage) {
        uint256 poolId = poolMainMap[order.asset][order.transferPriceD6][order.orderType];
        return pools[poolId];
    }

    function __getPoolById(uint256 poolId) internal returns (OrderPool storage pool) {
        return pools[poolId];
    }

    function __getPoolByMainFilters(address asset, uint256 priceD6, OrderType orderType) internal returns (OrderPool storage pool) {
        uint256 poolId = poolMainMap[asset][priceD6][orderType];
        return pools[poolId];
    }

    function __getOrderById(uint256 orderId) internal returns (Order storage order) {
        return orders[orderId];
    }

    function _getOrdersByPoolId(uint256 poolId) internal view returns (Order[] memory orders) {
        return _getOrdersByIds(ordersByPoolIdMap[poolId]);
    }

    function buyFromOrder(uint256 orderId, uint256 amount) external onlyUnlocked returns (uint256 fulfillFromThisOrder) {
        uint result = _buyFromOrder(orderId, amount);
        OrderPool memory pool = __getPoolByOrder(__getOrderById(orderId));
        _updatePoolAfterBuying(pool.id);
        return result;
    }

    function _buyFromOrder(uint256 orderId, uint256 amount) internal returns (uint256 fulfillFromThisOrder) {
        Order storage order = __getOrderById(orderId);
        require(order.status == OrderStatus.Pending, "SM: status invalid");
        require(order.orderType == OrderType.Sell, "SM: orderType invalid");
        ERC20 assetSc = ERC20(order.asset);
        uint fulfillFromThisOrder = order.availableAmount >= amount ? amount : order.availableAmount;
        order.availableAmount -= fulfillFromThisOrder;
        order.fulfilledAmount += fulfillFromThisOrder;
        if (order.availableAmount == 0) {
            order.status = OrderStatus.Completed;
            _onOrderCompleted(order);
            emit OrderCompleted(order);
        }

        uint transfer;
        uint toSeller;
        uint toBnrx;
        uint toPartner;
        (transfer, toSeller, toPartner, toBnrx) = calculateSellTransfers(
            fulfillFromThisOrder,
            order.basePriceD6,
            orderPartnerCommission[order.id],
            orderBnrxCommission[order.id]
        );
        rewardToken.safeTransferFrom(msg.sender, order.user, toSeller);
        assetSc.transferFrom(order.user, msg.sender, fulfillFromThisOrder * (10 ** 18));

        if (orderBnrxCommission[order.id].commissionWallet != address(0)) {
            rewardToken.safeTransferFrom(msg.sender, orderBnrxCommission[order.id].commissionWallet, toBnrx);
        }
        if (orderPartnerCommission[order.id].commissionWallet != address(0)) {
            rewardToken.safeTransferFrom(msg.sender, orderPartnerCommission[order.id].commissionWallet, toPartner);
        }
        emit OrderFulfilled(order, fulfillFromThisOrder, transfer, toSeller, toPartner, toBnrx, msg.sender);
        return fulfillFromThisOrder;
    }

    function _onOrderCompleted(Order memory order) internal {
        OrderPool storage pool = __getPoolByOrder(order);
        _removeFromArray(ordersByPoolIdMap[pool.id], order.id);
    }

    function buyFromPool(address asset, uint256 priceD6, uint256 amount) external onlyUnlocked {
        OrderPool storage pool = __getPoolByMainFilters(asset, priceD6, OrderType.Sell);
        require(amount <= pool.availableAmount, "Amount is not enough");
        uint256[] memory orderIds = ordersByPoolIdMap[pool.id];
        uint256 leftToFulfill = amount;
        for (uint256 i = 0; i < orderIds.length; i++) {
            uint orderId = orderIds[i];
            if (ERC20(orders[orderId].asset).allowance(orders[orderId].user, address(this)) < orders[orderId].availableAmount * 10 ** 18) {
              orders[orderId].status = OrderStatus.Canceled;
              orders[orderId].statusChangeReason = StatusChangeReason.TxRejectedByAllowance;
              continue;
            }
            if (ERC20(orders[orderId].asset).balanceOf(orders[orderId].user) < orders[orderId].availableAmount * 10 ** 18) {
              orders[orderId].status = OrderStatus.Canceled;
              orders[orderId].statusChangeReason = StatusChangeReason.TxRejectedByBalance;
              continue;
            }

            leftToFulfill -= _buyFromOrder(orderIds[i], leftToFulfill);
            if (leftToFulfill == 0) {
                break;
            }
        }
        _updatePoolAfterBuying(pool.id);
    }

    // DEBUG
    function getOrdersByPool(address asset, uint256 priceD6, OrderType orderType) external view returns (Order[] memory orders) {
        uint256 poolId = poolMainMap[asset][priceD6][orderType];
        return _getOrdersByPoolId(poolId);
    }

    // DEBUG
    function getOrdersIdsByPool(address asset, uint256 priceD6, OrderType orderType) external view returns (uint[] memory orders) {
        uint256 poolId = poolMainMap[asset][priceD6][orderType];
        return ordersByPoolIdMap[poolId];
    }

    function calculateSellTransfers(
        uint256 fulfillFromThisOrder,
        uint256 basePriceD6,
        Commission memory orderCommission,
        Commission memory assetCommission
    ) public pure returns (uint256 transferAmount, uint256 toSeller, uint256 toPartner, uint256 toBnrx) {
        uint256 amountD6 = fulfillFromThisOrder * basePriceD6;
        return (
            (amountD6 / 1e4) * (1e4 - orderCommission.sellDiscountPercentageD2 - assetCommission.sellDiscountPercentageD2),
            (amountD6 / 1e4) *
                (1e4 -
                    orderCommission.sellDiscountPercentageD2 -
                    assetCommission.sellDiscountPercentageD2 -
                    orderCommission.sellCommissionPercentageD2 -
                    assetCommission.sellCommissionPercentageD2),
            (amountD6 / 1e4) * (orderCommission.sellCommissionPercentageD2),
            (amountD6 / 1e4) * (assetCommission.sellCommissionPercentageD2)
        );
    }

    function getOrdersByUser(address user) public view returns (Order[] memory) {
        return _getOrdersByIds(ordersByUserMap[user]);
    }

    function getOrdersByAsset(address asset) public view returns (Order[] memory) {
        return _getOrdersByIds(ordersByAssetMap[asset]);
    }

    function _getOrdersByIds(uint[] memory orderIds) internal view returns (Order[] memory) {
        Order[] memory result = new Order[](orderIds.length);
        for (uint i = 0; i < orderIds.length; i++) {
            result[i] = orders[orderIds[i]];
        }
        return result;
    }

    function activePoolsIds() public view returns (uint[] memory) {
      return activePools;
    }
    function getActivePools() public view returns (OrderPoolView[] memory) {
        OrderPoolView[] memory poolViews = new OrderPoolView[](activePools.length);
        for (uint i = 0; i < activePools.length; i++) {
            uint poolId = activePools[i];
            Order[] memory orders = _getOrdersByPoolId(poolId);
            uint availableAmountAcc = 0;
            for (uint j = 0; j < orders.length; j++) {
                require(orders[j].status == OrderStatus.Pending, string.concat(
                    "GAP: wrong order in a pool", ";o=", Strings.toString(orders[j].id), ";p=", Strings.toString(poolId)
                  ));

                if (ERC20(orders[j].asset).allowance(orders[j].user, address(this)) < orders[j].availableAmount * 10 ** 18) {
                    continue;
                }
                if (ERC20(orders[j].asset).balanceOf(orders[j].user) < orders[j].availableAmount * 10 ** 18) {
                    continue;
                }
                availableAmountAcc += orders[j].availableAmount;
            }

            poolViews[i] = OrderPoolView({
                id: pools[poolId].id,
                asset: pools[poolId].asset,
                availableAmount: availableAmountAcc,
                priceD6: pools[poolId].priceD6,
                orderType: pools[poolId].orderType
            });
        }
        return poolViews;
    }

  function getKycStore() private view returns (IKycStore kycStore) {
    return IKycStore(addressesProvider.getKycStore());
  }

// changes order
//    function _removeFromArray(uint256[] storage arr, uint256 value) internal {
//        for (uint256 i = 0; i < arr.length; i++) {
//            if (arr[i] == value) {
//                arr[i] = arr[arr.length - 1];
//                arr.pop();
//            }
//        }
//    }

    // saves order
    function _removeFromArray(uint256[] storage arr, uint256 value) internal {
        bool isFound;
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i] == value) {
                isFound = true;
            }
            if (isFound && i+1 < arr.length) {
                arr[i] = arr[i+1];
            }
        }
        require(isFound, string.concat("Array item not found:", Strings.toString(value), ";in:", Strings.toString(arr.length)));
        arr.pop();
    }
}
