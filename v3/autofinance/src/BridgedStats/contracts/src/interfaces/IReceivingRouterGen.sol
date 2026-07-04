// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import {CoreStats} from "src/libraries/CoreStats.sol";

interface IReceivingRouterGen {
    /// @notice Receive message from senders
    /// @param sourceChainSelector Chainlink CCIP chainId selector that messages or data originated from (does not match
    /// chainId, 1, 8453, etc)
    /// @param extMessage Data from the external source
    function receiveMessage(uint64 sourceChainSelector, CoreStats.Message memory extMessage) external;

    /// @notice Sets message receivers for an origin, type, source selector combination
    /// @param messageOrigin Original sender of message on source chain.
    /// @param messageType Bytes32 message type
    /// @param sourceChainSelector Selector of the source chain
    /// @param messageReceiversToSet Array of receiver addresses to set
    function setMessageReceivers(
        address messageOrigin,
        bytes32 messageType,
        uint64 sourceChainSelector,
        address[] memory messageReceiversToSet
    ) external;

    /// @notice Sets valid sender for source chain
    /// @dev This will be the message proxy contract on the source chain
    /// @dev Used to add and remove source chain senders
    /// @param sourceChainSelector Selector for source chain
    /// @param sourceChainSender Sender from the source chain, MessageProxy contract
    /// @param idx Index of chain sender to set
    function setSourceChainSenders(uint64 sourceChainSelector, address sourceChainSender, uint256 idx) external;
}
