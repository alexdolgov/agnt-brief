// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {
    ItemType,
    OrderType,
    OfferItem,
    ConsiderationItem,
    OrderParameters,
    OrderComponents,
    Order
} from "../../Interfaces.sol";

interface IChimpSeaportOrderBuilder {
    struct FeeRecipient {
        uint256 amount;
        address recipient;
    }

    struct OrderRequest {
        address offerer;
        address collection;
        uint256 tokenId;
        uint256 price;
        uint256 proceeds;
        uint256 salt;
        uint48 startTime;
        uint48 endTime;
        bytes32 conduitKey;
        FeeRecipient[] feeRecipients;
    }

    function getOrders(OrderRequest calldata request, uint256 counter)
        external
        view
        returns (Order[] memory orders, bytes32[] memory orderHashes);

    function getOrderComponents(OrderRequest calldata request, uint256 counter)
        external
        view
        returns (OrderComponents[] memory orders, bytes32[] memory orderHashes);

    function getOrdersBatch(OrderRequest[] calldata requests, uint256 counter)
        external
        view
        returns (Order[] memory orders, bytes32[] memory orderHashes, uint8[] memory orderCounts);
}

/// @title ChimpSeaportOrderBuilder
/// @notice Default swappable order builder for ChimpStrategy Seaport listings.
contract ChimpSeaportOrderBuilder is IChimpSeaportOrderBuilder {
    bytes32 private constant _OFFER_ITEM_TYPEHASH = keccak256(
        "OfferItem(uint8 itemType,address token,uint256 identifierOrCriteria,uint256 startAmount,uint256 endAmount)"
    );
    bytes32 private constant _CONSIDERATION_ITEM_TYPEHASH = keccak256(
        "ConsiderationItem(uint8 itemType,address token,uint256 identifierOrCriteria,uint256 startAmount,uint256 endAmount,address recipient)"
    );
    bytes32 private constant _ORDER_TYPEHASH = keccak256(
        "OrderComponents(address offerer,address zone,OfferItem[] offer,ConsiderationItem[] consideration,uint8 orderType,uint256 startTime,uint256 endTime,bytes32 zoneHash,uint256 salt,bytes32 conduitKey,uint256 counter)ConsiderationItem(uint8 itemType,address token,uint256 identifierOrCriteria,uint256 startAmount,uint256 endAmount,address recipient)OfferItem(uint8 itemType,address token,uint256 identifierOrCriteria,uint256 startAmount,uint256 endAmount)"
    );

    address public immutable zone;
    OrderType public immutable orderType;

    error InvalidOrderRequest();

    constructor(address _zone, OrderType _orderType) {
        if (_zone == address(0)) revert InvalidOrderRequest();

        zone = _zone;
        orderType = _orderType;
    }

    function getOrders(OrderRequest calldata request, uint256 counter)
        external
        view
        returns (Order[] memory orders, bytes32[] memory orderHashes)
    {
        _validateRequest(request);

        orders = new Order[](1);
        orderHashes = new bytes32[](1);

        OrderParameters memory parameters = _orderParameters(request);
        orders[0] = Order({parameters: parameters, signature: ""});
        orderHashes[0] = _deriveOrderHash(parameters, counter);
    }

    function getOrderComponents(OrderRequest calldata request, uint256 counter)
        external
        view
        returns (OrderComponents[] memory orders, bytes32[] memory orderHashes)
    {
        _validateRequest(request);

        orders = new OrderComponents[](1);
        orderHashes = new bytes32[](1);

        OrderParameters memory parameters = _orderParameters(request);
        orders[0] = _orderComponents(parameters, counter);
        orderHashes[0] = _deriveOrderHash(parameters, counter);
    }

    function getOrdersBatch(OrderRequest[] calldata requests, uint256 counter)
        external
        view
        returns (Order[] memory orders, bytes32[] memory orderHashes, uint8[] memory orderCounts)
    {
        uint256 requestCount = requests.length;
        orders = new Order[](requestCount);
        orderHashes = new bytes32[](requestCount);
        orderCounts = new uint8[](requestCount);

        for (uint256 i; i < requestCount; i++) {
            OrderRequest calldata request = requests[i];
            _validateRequest(request);
            orderCounts[i] = 1;

            OrderParameters memory parameters = _orderParameters(request);
            orders[i] = Order({parameters: parameters, signature: ""});
            orderHashes[i] = _deriveOrderHash(parameters, counter);
        }
    }

    function _validateRequest(OrderRequest calldata request) internal pure {
        if (
            request.offerer == address(0) || request.collection == address(0) || request.price == 0
                || request.proceeds == 0 || request.endTime <= request.startTime
        ) {
            revert InvalidOrderRequest();
        }

        uint256 total = request.proceeds;
        for (uint256 i; i < request.feeRecipients.length; i++) {
            if (request.feeRecipients[i].recipient == address(0)) revert InvalidOrderRequest();
            total += request.feeRecipients[i].amount;
        }
        if (total != request.price) revert InvalidOrderRequest();
    }

    function _offer(OrderRequest calldata request) internal pure returns (OfferItem[] memory offer) {
        offer = new OfferItem[](1);
        offer[0] = OfferItem({
            itemType: ItemType.ERC721,
            token: request.collection,
            identifierOrCriteria: request.tokenId,
            startAmount: 1,
            endAmount: 1
        });
    }

    function _consideration(OrderRequest calldata request)
        internal
        pure
        returns (ConsiderationItem[] memory consideration)
    {
        uint256 feeLength = request.feeRecipients.length;
        consideration = new ConsiderationItem[](1 + feeLength);
        consideration[0] = ConsiderationItem({
            itemType: ItemType.NATIVE,
            token: address(0),
            identifierOrCriteria: 0,
            startAmount: request.proceeds,
            endAmount: request.proceeds,
            recipient: payable(request.offerer)
        });

        for (uint256 i; i < feeLength; i++) {
            consideration[1 + i] = ConsiderationItem({
                itemType: ItemType.NATIVE,
                token: address(0),
                identifierOrCriteria: 0,
                startAmount: request.feeRecipients[i].amount,
                endAmount: request.feeRecipients[i].amount,
                recipient: payable(request.feeRecipients[i].recipient)
            });
        }
    }

    function _orderParameters(OrderRequest calldata request) internal view returns (OrderParameters memory) {
        return OrderParameters({
            offerer: request.offerer,
            zone: zone,
            offer: _offer(request),
            consideration: _consideration(request),
            orderType: orderType,
            startTime: request.startTime,
            endTime: request.endTime,
            zoneHash: bytes32(0),
            salt: request.salt,
            conduitKey: request.conduitKey,
            totalOriginalConsiderationItems: 1 + request.feeRecipients.length
        });
    }

    function _orderComponents(OrderParameters memory parameters, uint256 counter)
        internal
        pure
        returns (OrderComponents memory)
    {
        return OrderComponents({
            offerer: parameters.offerer,
            zone: parameters.zone,
            offer: parameters.offer,
            consideration: parameters.consideration,
            orderType: parameters.orderType,
            startTime: parameters.startTime,
            endTime: parameters.endTime,
            zoneHash: parameters.zoneHash,
            salt: parameters.salt,
            conduitKey: parameters.conduitKey,
            counter: counter
        });
    }

    function _deriveOrderHash(OrderParameters memory parameters, uint256 counter) internal pure returns (bytes32) {
        bytes32[] memory offerHashes = new bytes32[](parameters.offer.length);
        bytes32[] memory considerationHashes = new bytes32[](parameters.totalOriginalConsiderationItems);

        for (uint256 i; i < parameters.offer.length; i++) {
            offerHashes[i] = _hashOfferItem(parameters.offer[i]);
        }

        for (uint256 i; i < parameters.totalOriginalConsiderationItems; i++) {
            considerationHashes[i] = _hashConsiderationItem(parameters.consideration[i]);
        }

        return keccak256(
            abi.encode(
                _ORDER_TYPEHASH,
                parameters.offerer,
                parameters.zone,
                keccak256(abi.encodePacked(offerHashes)),
                keccak256(abi.encodePacked(considerationHashes)),
                parameters.orderType,
                parameters.startTime,
                parameters.endTime,
                parameters.zoneHash,
                parameters.salt,
                parameters.conduitKey,
                counter
            )
        );
    }

    function _hashOfferItem(OfferItem memory offerItem) internal pure returns (bytes32) {
        return keccak256(
            abi.encode(
                _OFFER_ITEM_TYPEHASH,
                offerItem.itemType,
                offerItem.token,
                offerItem.identifierOrCriteria,
                offerItem.startAmount,
                offerItem.endAmount
            )
        );
    }

    function _hashConsiderationItem(ConsiderationItem memory considerationItem) internal pure returns (bytes32) {
        return keccak256(
            abi.encode(
                _CONSIDERATION_ITEM_TYPEHASH,
                considerationItem.itemType,
                considerationItem.token,
                considerationItem.identifierOrCriteria,
                considerationItem.startAmount,
                considerationItem.endAmount,
                considerationItem.recipient
            )
        );
    }
}
