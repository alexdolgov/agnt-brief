// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../libraries/TradingTypes.sol";
import {IRoute} from "./IRoute.sol";
import {IMarket} from "./IMarket.sol";

interface IFrontFacet {
    function getOperationStatus(uint256 pairIndex) external view returns (IMarket.OperationStatus memory);

    function createIncreaseOrder(
        TradingTypes.IncreasePositionRequest memory request
    ) external payable returns (uint256 orderId);

    function createIncreaseOrderWithTpSl(
        TradingTypes.IncreasePositionWithTpSlRequest memory request
    ) external payable returns (uint256 orderId);

    function createDecreaseOrder(
        TradingTypes.DecreasePositionRequest memory request
    ) external payable returns (uint256);

    function createDecreaseOrders(
        TradingTypes.DecreasePositionRequest[] memory requests
    ) external payable returns (uint256[] memory orderIds);

    function cancelOrder(
        IRoute.CancelOrderRequest memory request
    ) external;

    function cancelOrders(
        IRoute.CancelOrderRequest[] memory requests
    ) external;

    function addOrderTpSl(
        IRoute.AddOrderTpSlRequest memory request
    ) external;

    function createTpSl(
        TradingTypes.CreateTpSlRequest memory request
    ) external payable returns (uint256 tpOrderId, uint256 slOrderId);

    function setPriceAndAdjustCollateral(
        uint256 pairIndex,
        bool isLong,
        int256 collateral,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable;

    function setPriceAndUpdateFundingRate(
        uint256 pairIndex,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable;
}
