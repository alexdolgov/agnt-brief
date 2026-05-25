// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface ICoinBridge {
    function lockTokens(
        uint16 executionChainId_,
        string calldata recipient_,
        string calldata referrer_,
        uint256 gaslessReward_
    ) external payable;
}
