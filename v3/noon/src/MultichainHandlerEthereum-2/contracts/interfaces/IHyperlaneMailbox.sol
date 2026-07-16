// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title IHyperlaneMailbox
 * @notice Mock interface for Hyperlane Mailbox contract
 * @dev Based on Hyperlane's Mailbox interface for cross-chain messaging
 */
interface IHyperlaneMailbox {
    /**
     * @notice Dispatches a message to the destination domain and recipient
     * @param _destinationDomain The domain ID of the destination chain
     * @param _recipient The address of the recipient on the destination chain
     * @param _messageBody The message body to send
     * @return messageId The unique identifier for the dispatched message
     */
    function dispatch(
        uint32 _destinationDomain,
        bytes32 _recipient,
        bytes calldata _messageBody
    ) external payable returns (bytes32 messageId);

    /**
     * @notice Returns the domain ID of this chain
     * @return The domain ID
     */
    function localDomain() external view returns (uint32);
    
    /**
     * @notice Quotes the cost of dispatching a message
     * @param _destinationDomain The domain ID of the destination chain
     * @param _recipient The address of the recipient on the destination chain
     * @param _messageBody The message body to send
     * @return The dispatch fee in wei
     */
    function quoteDispatch(
        uint32 _destinationDomain,
        bytes32 _recipient,
        bytes calldata _messageBody
    ) external view returns (uint256);
}

/**
 * @title IInterchainGasPaymaster
 * @notice Interface for Hyperlane InterchainGasPaymaster
 * @dev Used to pay for gas on the destination chain
 */
interface IInterchainGasPaymaster {
    /**
     * @notice Pays for gas to be used for message delivery on the destination chain
     * @param _messageId The ID of the message to pay for
     * @param _destinationDomain The domain ID of the destination chain
     * @param _gasAmount The amount of gas to pay for
     * @param _refundAddress The address to refund any unused gas to
     */
    function payForGas(
        bytes32 _messageId,
        uint32 _destinationDomain,
        uint256 _gasAmount,
        address _refundAddress
    ) external payable;

    /**
     * @notice Quotes the cost of paying for gas on the destination chain
     * @param _destinationDomain The domain ID of the destination chain
     * @param _gasAmount The amount of gas to pay for
     * @return The cost in wei
     */
    function quoteGasPayment(
        uint32 _destinationDomain,
        uint256 _gasAmount
    ) external view returns (uint256);
}

/**
 * @title IInterchainSecurityModule
 * @notice Interface for Hyperlane InterchainSecurityModule
 * @dev Used for additional security checks on cross-chain messages
 */
interface IInterchainSecurityModule {
    function verify(bytes calldata _metadata, bytes calldata _message) external returns (bool);
}


