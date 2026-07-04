// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITransactionBatcher {
    /**
     * @notice sends a grouping of transactions
     * @param wallets an array of destinations
     * @param payloads the data to be distributed
     * @param values the values to be distributed
     */
    function batch(
        address[] memory wallets,
        bytes[] memory payloads,
        uint256[] memory values
    ) external payable;
}
