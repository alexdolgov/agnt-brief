// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface ITokenMessenger {
    // CCTP V1
    function depositForBurn(
        uint256 amount,
        uint32 destinationDomain,
        bytes32 mintRecipient,
        address burnToken
    ) external returns (uint64 _nonce);

    // CCTP V2
    function depositForBurn(
        uint256 amount,
        uint32 destinationDomain,
        bytes32 mintRecipient, // The wallet address that will receive the minted USDC
        address burnToken,
        bytes32 destinationCaller, // The address on the target chain to call receiveMessage
        uint256 maxFee, // The maximum fee allowed for the transfer
        uint32 minFinalityThreshold // minFinalityThreshold (1000 or less for Fast Transfer)
    ) external;
}
