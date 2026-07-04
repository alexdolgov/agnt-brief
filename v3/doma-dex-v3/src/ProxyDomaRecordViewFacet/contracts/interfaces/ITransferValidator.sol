// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface ITransferValidator {
    /**
     * @notice Validates a token transfer with token ID
     * @param caller The address initiating the transfer
     * @param from The address sending the token
     * @param to The address receiving the token
     * @param tokenId The ID of the token being transferred
     */
    function validateTransfer(
        address caller,
        address from,
        address to,
        uint256 tokenId
    ) external view;
}
