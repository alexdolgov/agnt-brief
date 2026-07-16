// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

interface ITokenMessengerV2 {
    // V2's depositForBurn function (no return value—nonce assigned off-chain)
    function depositForBurn(
        uint256 amount,
        uint32 destinationDomain,
        bytes32 mintRecipient,
        address burnToken,
        bytes32 destinationCaller,
        uint256 maxFee,
        uint32 minFinalityThreshold
    ) external;

    // Optionally, there may be a version with “WithHook” in V2
    function depositForBurnWithHook(
        uint256 amount,
        uint32 destinationDomain,
        bytes32 mintRecipient,
        address burnToken,
        bytes32 destinationCaller,
        uint256 maxFee,
        uint32 minFinalityThreshold,
        bytes calldata hookData
    ) external;

    // Receive handlers (called by MessageTransmitterV2 on finality)
    function handleReceiveFinalizedMessage(
        uint32 sourceDomain,
        bytes32 sender,
        bytes calldata messageBody
    ) external;

    function handleReceiveUnfinalizedMessage(
        uint32 sourceDomain,
        bytes32 sender,
        bytes calldata messageBody
    ) external;
}
