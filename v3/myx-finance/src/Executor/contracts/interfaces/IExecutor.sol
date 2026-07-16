// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../oracleV3/interfaces/IOracleManager.sol";
import "./IExecutionLogic.sol";
import '../libraries/TradingTypes.sol';

interface IExecutor is IExecution {

    event UpdatePositionManager(address sender, address oldAddress, address newAddress);

    function setPricesAndExecuteOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory orders
    ) external payable;

    function setPricesAndExecuteIncreaseMarketOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory increaseOrders
    ) external payable;

    function setPricesAndExecuteDecreaseMarketOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory decreaseOrders
    ) external payable;

    function setPricesAndExecuteIncreaseLimitOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory increaseOrders
    ) external payable;

    function setPricesAndExecuteDecreaseLimitOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        IExecutionLogic.ExecuteOrder[] memory decreaseOrders
    ) external payable;

    function setPricesAndExecuteADLOrders(
        address[] memory tokens,
        uint256[] memory prices,
        bytes[] memory updateData,
        uint64[] memory publishTimes,
        uint256 pairIndex,
        IExecution.ExecutePosition[] memory executePositions,
        IExecutionLogic.ExecuteOrder[] memory executeOrders
    ) external payable;

    function setPricesAndLiquidatePositions(
        address[] memory _tokens,
        uint256[] memory _prices,
        LiquidatePosition[] memory liquidatePositions
    ) external payable;

    function needADL(
        uint256 pairIndex,
        bool isLong,
        uint256 executionSize,
        uint256 executionPrice
    ) external view returns (bool need, uint256 needADLAmount);

    function cleanInvalidPositionOrders(
        bytes32[] calldata positionKeys
    ) external;

    function setPricesAndExecuteOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory orders
    ) external payable;

    function setPricesAndExecuteIncreaseMarketOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory increaseOrders
    ) external payable;

    function setPricesAndExecuteDecreaseMarketOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory decreaseOrders
    ) external payable;

    function setPricesAndExecuteIncreaseLimitOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory increaseOrders
    ) external payable;

    function setPricesAndExecuteDecreaseLimitOrdersV2(
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecutionLogic.ExecuteOrder[] memory decreaseOrders
    ) external payable;

    function setPricesAndExecuteADLOrdersV2(
        uint256 pairIndex,
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecution.ExecutePosition[] memory executePositions,
        IExecutionLogic.ExecuteOrder[] memory executeOrders
    ) external payable;

    function setPricesAndLiquidatePositionsV2(
        OracleTypes.OracleType _oracleType,
        address[] memory _tokens,
        uint256[] memory _prices,
        LiquidatePosition[] memory liquidatePositions
    ) external payable;

    function setPricesAndExecuteADLOrdersV3(
        uint256 pairIndex,
        OracleTypes.PriceFeedParams memory priceFeedParams,
        IExecution.ExecutePosition[] memory adlPositionParams,
        IExecutionLogic.ExecuteOrder memory orderParams
    ) external payable;

    function setPricesAndLiquidatePositionsV3(
        OracleTypes.OracleType _oracleType,
        address[] memory _tokens,
        uint256[] memory _prices,
        LiquidatePosition memory liquidatePosition,
        ExecutePosition[] memory adlPositions
    ) external payable;
}
