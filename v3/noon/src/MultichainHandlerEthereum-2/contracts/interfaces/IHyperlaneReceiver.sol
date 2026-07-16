// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title IHyperlaneReceiver
 * @notice Interface for contracts that receive messages from Hyperlane
 */
interface IHyperlaneReceiver {
    /**
     * @notice Handles a message received from Hyperlane
     * @param _origin The domain ID of the origin chain
     * @param _sender The address of the sender on the origin chain
     * @param _messageBody The message body
     */
    function handle(
        uint32 _origin,
        bytes32 _sender,
        bytes calldata _messageBody
    ) external;
}



