// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../util/core/TieredOwnership.sol";
import "../interfaces/ITransactionBatcher.sol";

/**
 * @title Batcher
 * @author Amir Shirif, Telcoin, LLC.
 * @notice groups multiple transactions together
 */
contract TransactionBatcher is ITransactionBatcher, TieredOwnership {
    event Transaction(uint256 indexed index, address indexed wallet);

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
    ) external payable override onlyOwner {
        require(
            wallets.length == payloads.length &&
                payloads.length == values.length,
            "TransactionBatcher: arrays must be of equal length"
        );

        uint256 size = wallets.length;

        for (uint256 i = 0; i < size; i++) {
            (bool success, ) = wallets[i].call{value: values[i]}(payloads[i]);
            require(success, "Transaction failed");
            emit Transaction(i, wallets[i]);
        }

        require(
            address(this).balance == 0,
            "TransactionBatcher: must have zero balance after execution"
        );
    }
}
