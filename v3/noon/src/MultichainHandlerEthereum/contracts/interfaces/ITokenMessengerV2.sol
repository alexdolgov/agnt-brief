// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title ITokenMessengerV2
 * @notice Interface for Circle's CCTP Token Messenger V2
 * @dev Used to bridge USDC cross-chain via Circle's native burn/mint mechanism.
 *      Mainnet: 0x28b5a0e9C621a5BadaA536219b3a228C8168cf5d
 */
interface ITokenMessengerV2 {
    /**
     * @notice Deposit and burn USDC for cross-chain transfer
     * @param amount Amount of USDC to burn
     * @param destinationDomain CCTP destination domain
     * @param mintRecipient Recipient on the destination chain (bytes32)
     * @param burnToken The token to burn (USDC address on this chain)
     * @return nonce The nonce of the CCTP message
     */
    function depositForBurn(
        uint256 amount,
        uint32 destinationDomain,
        bytes32 mintRecipient,
        address burnToken
    ) external returns (uint64 nonce);
}
