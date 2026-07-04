// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

///@dev This only includes what is needed by the CCTPv1WithExecutor contract.
interface ICircleV1TransferMitter {
    function receiveMessage(bytes calldata message, bytes calldata attestation) external returns (bool success);
}
