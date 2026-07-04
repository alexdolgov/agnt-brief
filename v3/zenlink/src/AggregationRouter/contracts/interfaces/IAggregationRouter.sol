// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IAggregationExecutor} from "./IAggregationExecutor.sol";
import {Currency} from "../libraries/CurrencyLibrary.sol";

interface IAggregationRouter {
    struct SwapDescription {
        Currency srcToken;
        Currency dstToken;
        address dstReceiver;
        uint256 amount;
        uint256 minReturnAmount;
    }

    function swap(
        IAggregationExecutor executor,
        SwapDescription memory desc,
        bytes memory route
    ) external payable returns (uint256 returnAmount, uint256 spentAmount);
}
