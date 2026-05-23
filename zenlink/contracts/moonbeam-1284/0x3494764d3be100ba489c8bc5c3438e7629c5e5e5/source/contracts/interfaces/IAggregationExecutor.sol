// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IAggregationRouter} from '../interfaces/IAggregationRouter.sol';

interface IAggregationExecutor {
    function excute(
        address msgSender,
        IAggregationRouter.SwapDescription memory desc,
        bytes memory route
    ) external payable;
}
