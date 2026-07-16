// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";

interface IDefensiveSenderReceiver {
    error InvalidToken(address token);
    error UnauthorizedSender(address sender);
    error InvalidTokenAmounts();
    error ZeroTokenAmount();
    error ReturnCycleNotAllowed();
    error InsufficientGasLimit(uint256 gasLimit, uint256 minGasLimit);

    event TokensSent(
        uint64 indexed chainSelector,
        address indexed sender,
        address indexed receiver,
        Client.EVMTokenAmount[] tokenAmounts,
        bytes data,
        bytes32 messageId
    );
    event TokensReceived(
        uint64 indexed chainSelector,
        address indexed sender,
        address indexed receiver,
        Client.EVMTokenAmount[] tokenAmounts,
        bytes data,
        bytes32 messageId
    );
    event TokensReturned(
        uint64 indexed chainSelector,
        address indexed sender,
        address indexed receiver,
        address txSender,
        Client.EVMTokenAmount[] tokenAmounts,
        bytes data,
        bytes32 initialMessageId,
        bytes32 returnMessageId
    );

    function ALLOWED_TOKEN_ROLE() external view returns (bytes32);
    function initialize(address[] memory allowedTokens, address admin) external;
    function ccipSend(uint64 destinationChainSelector, Client.EVM2AnyMessage calldata message)
        external
        payable
        returns (bytes32 messageId);
    function returnTokens(
        Client.Any2EVMMessage calldata message,
        bool payInLink,
        uint256 maxFee,
        bytes calldata extraArgs
    ) external payable returns (bytes32 messageId);
}
