// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { StrategyManagerParams } from "../common/Types.sol";

interface IStrategyManager {
    function initialize(StrategyManagerParams calldata _params) external;
}
