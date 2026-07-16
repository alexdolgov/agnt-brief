// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

import {IStrategy} from "@tokenized-strategy/interfaces/IStrategy.sol";

interface IStrategyInterface is IStrategy {
    // DAIToUSDC specific functions
    function maxAcceptableFeeOutPSM() external view returns (uint256);
    function swapSlippageBPS() external view returns (uint256);
    function VAULT() external view returns (address);
    function DEPOSITOR() external view returns (address);
    function setMaxAcceptableFeeOutPSM(
        uint256 _maxAcceptableFeeOutPSM
    ) external;
    function setSwapSlippageBPS(uint256 _swapSlippageBPS) external;
    function emergencyWithdrawDirect(
        uint256 _sharesVault,
        bool _usePSM,
        uint256 _swapAmount
    ) external;
}
