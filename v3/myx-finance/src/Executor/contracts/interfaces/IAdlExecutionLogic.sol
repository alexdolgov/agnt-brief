// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import {IExecution} from "./IExecution.sol";
import {TradingTypes} from "../libraries/TradingTypes.sol";

interface IAdlExecutionLogic is IExecution {

    event MatchADLExecuted(
        address keeper,
        uint256 pairIndex,
        uint256 triggerOrderId,
        TradingTypes.TradeType tradeType,
        uint256[] adlOrderIds,
        bytes32[] adlPositionKeys,
        uint256 executeSize,
        uint256 executePrice
    );

    function updateExecutor(address _executor) external;

    function matchAdlExecute(
        address keeper,
        uint256 pairIndex,
        ExecutePosition[] memory adlPositions,
        ExecuteOrder memory orderParam
    ) external returns (bool needADL);
}
