// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "./ISwapStrategy.sol";

interface ISwapStrategyConfiguration {
    event UpdateSwapStrategy(address newSwapStrategy);

    function swapStrategy() external view returns (ISwapStrategy);

    function setSwapStrategy(address newSwapStrategy) external;
}
