// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title ITokenMessengerV2
 * @notice Interface for Circle's CCTP V2 Token Messenger
 * @dev Used to bridge USDC cross-chain via Circle's native burn/mint mechanism.
 *      Mainnet: 0x28b5a0e9C621a5BadaA536219b3a228C8168cf5d
 *      V2 differs from V1: adds destinationCaller, maxFee, minFinalityThreshold
 *      and is non-returning (no nonce).
 */
interface ITokenMessengerV2 {
    /**
     * @notice Deposit and burn USDC for cross-chain transfer (CCTP V2)
     * @param amount Amount of USDC to burn
     * @param destinationDomain CCTP destination domain
     * @param mintRecipient Recipient on the destination chain (bytes32)
     * @param burnToken The token to burn (USDC address on this chain)
     * @param destinationCaller Optional address restricted to call receiveMessage; bytes32(0) = anyone
     * @param maxFee Max fee in burnToken units the sender will pay (0 = standard transfer only)
     * @param minFinalityThreshold Minimum finality threshold; 1000 = fast, 2000 = standard
     */
    function depositForBurn(
        uint256 amount,
        uint32 destinationDomain,
        bytes32 mintRecipient,
        address burnToken,
        bytes32 destinationCaller,
        uint256 maxFee,
        uint32 minFinalityThreshold
    ) external;
}
