// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

/**
 * @title ITokenMessengerV2
 * @notice Interface for Circle's TokenMessengerV2 contract used in CCTP.
 */
interface ITokenMessengerV2 {
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event DepositForBurn(
        address indexed burnToken,
        uint256 amount,
        address indexed depositor,
        bytes32 mintRecipient,
        uint32 destinationDomain,
        bytes32 destinationTokenMessenger,
        bytes32 destinationCaller,
        uint256 maxFee,
        uint32 indexed minFinalityThreshold,
        bytes hookData
    );

    /**
     * @notice Burn tokens on source chain to mint on destination via CCTP.
     * @param amount                   Amount to burn.
     * @param destinationDomain        CCTP domain ID of destination chain.
     * @param mintRecipient            Recipient on destination (bytes32-encoded address).
     * @param burnToken                Token to burn (e.g., USDC).
     * @param destinationCaller        Optional destination caller restriction (bytes32(0) = any).
     * @param maxFee                   Max fee to pay for message.
     * @param minFinalityThreshold     Finality threshold (e.g., 1000 fast / 2000 final).
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
