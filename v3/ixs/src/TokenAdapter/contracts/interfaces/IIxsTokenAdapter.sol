// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ITokenAdapter} from "./ITokenAdapter.sol";

interface IIxsTokenAdapter is ITokenAdapter {
    /// @dev Triggered when the initiate transfer step of bridging process is completed.
    /// @param sender The address of the wallet sending the tokens.
    /// @param receiver The address of the wallet that will receive the tokens on the destination chain.
    /// @param amount The number of tokens being transferred.
    /// @param sourceToken The token address on the originating chain.
    /// @param targetToken The token address on the destination chain.
    /// @param targetChain The ID of the destination chain (using Wormhole's format).
    event LogInitiateCrossChainTransfer(
        address sender,
        address receiver,
        uint256 amount,
        address sourceToken,
        address targetToken,
        uint16 targetChain
    );

    /// @dev Triggered when the redeem step of bridging operation is successfully finalized.
    /// @param sender The address of the wallet that initiated the token transfer from the source chain.
    /// @param receiver The address of the wallet that received the tokens on the destination chain.
    /// @param amount The total amount of tokens transferred from the source chain.
    /// @param sourceToken The address of the token on the originating chain.
    /// @param targetToken The address of the token on the destination chain.
    /// @param sourceChain The ID of the originating chain (using Wormhole's format).
    event LogCompleteCrossChainTransfer(
        address sender,
        address receiver,
        uint256 amount,
        address sourceToken,
        address targetToken,
        uint16 sourceChain
    );

    /// @dev Error thrown when an invalid chain ID is provided.
    error IxsTokenAdapterInvalidChainId(uint16 chainId);

    /// @dev Error thrown when an invalid amount value is provided.
    error IxsTokenAdapterInvalidAmount(uint256 amount);

    /// @dev Error thrown when an invalid ID for the target chain is provided.
    error IxsTokenAdapterWrongTargetChain(uint16 chainId);

    /// @dev Error thrown when an invalid normalized value is resulted.
    error IxsTokenInvalidNormalizedAmount(uint256 amount);

    /// @dev Error thrown when an insufficient message fee is paid.
    error IxsTokenInvalidMessageFee();

    /// @dev Error thrown when a non-whitelisted token is provided for bridging.
    error IxsTokenAdapterWrongToken(uint16 targetChain, address token);

    /// @dev Error thrown when the 'to' address is not the adapter contract.
    error IxsTokenAdapterWrongRequestDestination(address to);

    /// @notice Begins the first phase of the token bridging operation.
    /// @dev This function enables users to start a cross-chain transaction by specifying
    /// the recipient's wallet address, the destination chain, and the quantity of tokens to transfer.
    /// An additional payload is also transmitted to provide extra metadata about the transfer.
    /// @param targetChain The ID of the destination chain (formatted according to Wormhole's standards)
    /// @param targetToken The address of the token contract on the destination chain.
    /// @param receiver The wallet address of the recipient on the destination chain.
    /// @param amount The number of tokens being transferred.
    /// @param payload The supplementary data in bytes.
    function initiateCrossChainTransfer(
        uint16 targetChain,
        address targetToken,
        address receiver,
        uint256 amount,
        bytes memory payload
    ) external payable;

    /// @notice Completes the final step of the token bridging process.
    /// @dev This function allows users to conclude the cross-chain transfer. It necessitates
    /// a signed VAA (Verifiable Action Approval) from the Wormhole Guardian Network to seamlessly
    /// finalize the bridging sequence.
    /// @param encodedVM The encoded signed message received from the Wormhole Network.
    function completeCrossChainTransfer(bytes memory encodedVM) external;
}
