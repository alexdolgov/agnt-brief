// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../process/AccountProcess.sol";
import "../process/RebalanceProcess.sol";
import "../process/OracleProcess.sol";
import "../storage/Withdraw.sol";

interface IOneInchSwap {
    struct SwapParams {
        address token;
        uint256 tokenAmount;
        address router;
        bytes data;
    }

    function swap(SwapParams calldata params) external payable returns (uint256 returnAmount);
}
