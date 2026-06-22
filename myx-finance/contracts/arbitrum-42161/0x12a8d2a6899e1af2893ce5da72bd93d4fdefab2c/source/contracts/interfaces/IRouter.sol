// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../libraries/TradingTypes.sol";
import {IRoute} from "./IRoute.sol";
import {IMarket} from "./IMarket.sol";

interface IRouter {
    struct OperationStatus {
        bool increasePositionDisabled;
        bool decreasePositionDisabled;
        bool orderDisabled;
        bool addLiquidityDisabled;
        bool removeLiquidityDisabled;
    }

    event UpdateTradingRouter(address oldAddress, address newAddress);

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

    function cancelOrders(
        IRoute.CancelOrderRequest[] memory requests
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
}
