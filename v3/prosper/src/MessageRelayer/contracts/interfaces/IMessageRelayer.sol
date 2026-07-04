// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { MessagingFee } from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

/// @title IMessageRelayer
/// @notice interface for the MessageRelayer contract
interface IMessageRelayer {
    //////////////////////////////////
    ///////////// EVENTS /////////////
    //////////////////////////////////

    /// @notice emitted when the MessageRelayer is retired
    event MessageRelayerRetired();

    /// @notice emitted when a message is sent to the destination chain
    /// @param dstEid the destination chain's endpoint ID
    /// @param message the message sent
    /// @param nativeFee the native fee paid for message delivery
    /// @param refundAddress the address to refund any excess native fee to
    event MessageSent(
        uint32 dstEid,
        bytes message,
        uint256 nativeFee,
        address refundAddress
    );

    //////////////////////////////////
    ///////////// ERRORS /////////////
    //////////////////////////////////

    /// @notice error thrown when the LZ delegate is set as the zero address during construction
    error Constructor__InvalidLzDelegate();

    /// @notice error thrown when the LZ endpoint is set as the zero address during construction
    error Constructor__InvalidLzEndpoint();

    /// @notice error thrown when the TokenRelayer address is set as the zero address during construction
    error Constructor__InvalidTokenRelayer();

    /// @notice error thrown when calling a function and the sender is not the TokenRelayer
    error MessageRelayer__OnlyTokenRelayer();

    /// @notice error thrown attemptign to call a function when the MessageRelayer is retired
    error MessageRelayer__Retired();

    //////////////////////////////////
    /////////// FUNCTIONS ////////////
    //////////////////////////////////

    /// @notice retires the MessageRelayer
    /// @notice retiring a MessageRelayer is permanent
    /// @notice CAUTION: retiring a MessageRelayer may lead to hanging messages
    /// thus should be done only after the TokenRelayer on both the
    /// source and destination chains has been paused
    function retire() external;

    /// @notice sends a message from the src TokenRelayer to the dst TokenRelayer
    /// @param dstEid the dst chain's endpoint ID
    /// @param message the message to send
    /// @param fee the fee to pay for the message delivery
    /// @param refundAddress the address to refund any excess native fee to
    function sendMessage(
        uint32 dstEid,
        bytes memory message,
        bytes memory options,
        MessagingFee memory fee,
        address refundAddress
    ) external payable;

    /// @notice sets the peer MessageRelayer contract on the destination chain
    /// @param dstEid the dst EID
    /// @param dstPath the dst path
    function setPeer(uint32 dstEid, bytes32 dstPath) external;

    /// @notice transfers ownership of the MessageRelayer
    /// @param newOwner the new owner
    function transferOwnership(address newOwner) external;

    /// @notice estimates the fee required for a given message
    /// @param dstEid the dst EID
    /// @param message the message to quote
    /// @param options the options for the message
    /// @param payInLzToken whether to pay the fee in LZ tokens or native tokens
    /// @return fee the fee for the message
    function getQuote(
        uint32 dstEid,
        bytes memory message,
        bytes memory options,
        bool payInLzToken
    ) external view returns (MessagingFee memory fee);
}
