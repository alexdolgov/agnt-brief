// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

import { IDomfiOracle } from "./interfaces/IDomfiOracle.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiVerifier } from "./interfaces/IDomfiVerifier.sol";
import { IDomfiTradingCallbacks } from "./interfaces/IDomfiTradingCallbacks.sol";
import { IDomfiForwarded } from "./interfaces/IDomfiForwarded.sol";
import { IDomfiPairsStorage } from "./interfaces/IDomfiPairsStorage.sol";
import { IDomfiPriceUpKeep } from "./interfaces/IDomfiPriceUpKeep.sol";

contract DomfiPrivatePriceUpKeep is IDomfiPriceUpKeep, IDomfiForwarded, Initializable {
    using SafeCast for uint256;

    IDomfiRegistry public registry;

    mapping(uint256 orderId => Order) public orders;
    mapping(address forwarder => bool) public isForwarder;

    constructor() {
        _disableInitializers();
    }

    function initialize(IDomfiRegistry registryAddress) external initializer {
        if (address(registryAddress) == address(0)) {
            revert WrongParams();
        }
        registry = registryAddress;
    }

    // Modifiers
    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() private view {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
    }

    modifier onlyRouter() {
        _onlyRouter();
        _;
    }

    function _onlyRouter() private view {
        if (msg.sender != registry.getContractAddress("priceRouter")) {
            revert NotRouter(msg.sender);
        }
    }

    function getPrice(uint256 orderId, uint16 pairIndex, OrderType orderType, uint256 publishId)
        external
        onlyRouter
    {
        bytes32 feed =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage")).pairFeed(pairIndex);

        // increment `publishId` to use the next oracle publish values
        ++publishId;

        _storeOrder(orderId, pairIndex, orderType, block.timestamp, publishId);

        emit PriceRequested(orderId, feed, block.timestamp, publishId);
    }

    function storeOrder(uint256 orderId, uint16 pairIndex, OrderType orderType, uint256 publishId)
        external
        onlyRouter
    {
        _storeOrder(orderId, pairIndex, orderType, block.timestamp, publishId);
    }

    function _storeOrder(
        uint256 orderId,
        uint16 pairIndex,
        OrderType orderType,
        uint256 timestamp,
        uint256 publishId
    ) internal {
        if (orders[orderId].initiated) {
            revert AlreadyInitiated(orderId);
        }

        orders[orderId] = Order(publishId, timestamp.toUint32(), pairIndex, orderType, true);
    }

    function getPriceNoStore(uint16 pairIndex) external onlyRouter {
        bytes32 feedId =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage")).pairFeed(pairIndex);

        emit PriceRequested(feedId);
    }

    function performUpkeep(bytes calldata performData) external {
        if (!isForwarder[msg.sender]) {
            revert NotForwarder(msg.sender);
        }

        (bytes memory report, uint256 orderId, uint256 publishId) =
            abi.decode(performData, (bytes, uint256, uint256));

        Order memory order = orders[orderId];

        if (!order.initiated) {
            revert NotInitiated(orderId);
        }

        // hickokr-domfi: Important this is set AT DEPLOYMENT TIME with registerContracts. The name
        // matters. Don't love this being statically set but it will do for now.
        IDomfiVerifier verifierProxy = IDomfiVerifier(registry.getContractAddress("domfiVerifier"));
        IDomfiVerifier.VerifierResponse memory v = verifierProxy.verify(report);

        bytes32 feedId = IDomfiPairsStorage(registry.getContractAddress("pairsStorage"))
            .pairFeed(order.pairIndex);

        // if the report and order details don't match; revert
        // slither-disable-start incorrect-equality
        if (
            // slither-disable-next-line timestamp
            order.publishId != publishId || feedId != v.reportFeedId
        ) {
            revert InvalidPrice(orderId);
        }
        // slither-disable-end incorrect-equality

        // store price data for execution
        PriceUpKeepAnswer memory a =
            PriceUpKeepAnswer({ orderId: orderId, validator: order.publishId, price: v.price });

        // excute callback
        fulfill(a);

        emit PriceReceived(orderId, order.pairIndex, a.price, 0);
    }

    function fulfill(PriceUpKeepAnswer memory a) internal {
        Order memory r = orders[a.orderId];

        IDomfiTradingCallbacks c = IDomfiTradingCallbacks(registry.getContractAddress("callbacks"));

        // Slither disables are valid since `orderType` is a subset of
        // `OrderType` and are not actually timestamps

        // slither-disable-start incorrect-equality
        if (
            // slither-disable-next-line timestamp
            r.orderType == OrderType.MARKET_OPEN
        ) {
            c.openTradeMarketCallback(a);
        } else if (
            // slither-disable-next-line timestamp
            r.orderType == OrderType.MARKET_CLOSE
        ) {
            c.closeTradeMarketCallback(a);
        } else if (
            // slither-disable-next-line timestamp
            r.orderType == OrderType.LIMIT_OPEN
        ) {
            c.executeAutomationOpenOrderCallback(a);
        } else if (
            // slither-disable-next-line timestamp
            r.orderType == OrderType.LIMIT_CLOSE
        ) {
            c.executeAutomationCloseOrderCallback(a);
        } else if (
            // slither-disable-next-line timestamp
            r.orderType == OrderType.RC
        ) {
            c.handleRemoveCollateral(a);
        }
        // slither-disable-end incorrect-equality

        // slither-disable-next-line reentrancy-no-eth
        delete orders[a.orderId];
    }

    function registerForwarder(address forwarderAddress) public onlyGov {
        if (isForwarder[forwarderAddress]) {
            revert AlreadyForwarder(forwarderAddress);
        }
        isForwarder[forwarderAddress] = true;
        emit ForwarderAdded(forwarderAddress);
    }

    function registerForwarders(address[] calldata forwarderAddresses) external onlyGov {
        for (uint256 i = 0; i < forwarderAddresses.length; i++) {
            registerForwarder(forwarderAddresses[i]);
        }
    }

    function unregisterForwarder(address forwarderAddress) public onlyGov {
        if (!isForwarder[forwarderAddress]) {
            revert NotForwarder(forwarderAddress);
        }
        // slither-disable-next-line costly-loop
        delete isForwarder[forwarderAddress];
        emit ForwarderRemoved(forwarderAddress);
    }

    function unregisterForwarders(address[] calldata forwarderAddresses) external onlyGov {
        for (uint256 i = 0; i < forwarderAddresses.length; i++) {
            unregisterForwarder(forwarderAddresses[i]);
        }
    }
}
