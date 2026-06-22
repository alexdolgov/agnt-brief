// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IAny2EVMMessageReceiver} from "@chainlink/contracts-ccip/contracts/interfaces/IAny2EVMMessageReceiver.sol";
import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";

import {ICCIPBase} from "./ICCIPBase.sol";

interface ICCIPDefensiveReceiverUpgradeable is ICCIPBase, IAny2EVMMessageReceiver {
    error CCIPDefensiveReceiverOnlyCCIPRouter();
    error CCIPDefensiveReceiverOnlySelf();
    error CCIPDefensiveReceiverMessageNotFound(bytes32 messageId);
    error CCIPDefensiveReceiverMismatchedMessage(bytes32 messageId, bytes32 hash, bytes32 expectedHash);
    error CCIPDefensiveReceiverUnauthorizedSender(bytes sender, bytes expectedSender);
    error CCIPDefensiveReceiverUnsupportedChain(uint64 destChainSelector);
    error CCIPDefensiveReceiverZeroAddress();
    error CCIPDefensiveReceiverInsufficientGas(uint256 minGasRequired);
    error CCIPDefensiveReceiverMaxTokensExceeded(uint256 length, uint256 maxLength);
    error CCIPDefensiveReceiverMaxDataLengthExceeded(uint256 length, uint256 maxLength);

    event SenderSet(uint64 indexed destChainSelector, bytes sender);
    event MessageSucceeded(bytes32 indexed messageId);
    event MessageFailed(bytes32 indexed messageId, Client.Any2EVMMessage message, bytes err);
    event MessageRecovered(bytes32 indexed messageId);
    event TokensRecovered(bytes32 indexed messageId);

    function MAX_NUMBER_OF_TOKENS() external view returns (uint256);
    function MAX_DATA_LENGTH() external view returns (uint256);
    function getMinCCIPReceiveGas(uint256 tokenCount, uint256 dataLength) external view returns (uint256);
    function getFailedMessageHash(bytes32 messageId) external view returns (bytes32);
    function getSender(uint64 destChainSelector) external view returns (bytes memory);
    function processMessage(Client.Any2EVMMessage memory message) external;
    function recoverTokens(Client.Any2EVMMessage memory message, address to) external;
    function retryFailedMessage(Client.Any2EVMMessage memory message) external payable;
    function setSender(uint64 destChainSelector, bytes memory sender) external;
}
