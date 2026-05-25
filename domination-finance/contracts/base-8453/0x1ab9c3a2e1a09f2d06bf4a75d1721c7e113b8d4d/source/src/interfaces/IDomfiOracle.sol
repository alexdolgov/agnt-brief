// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @author Domination Finance
 * @title Dominance Oracle Interface
 */
interface IDomfiOracle {
    /**
     * @notice Update the oracle price for `productId`.
     * @dev Emits additional metadata in the event
     * @param productId Product to update
     * @param value New price for product
     * @param timestamp Timestamp at which this price was generated. Must increase
     * @param signedMetadata Update metadata signed by the publisher's private key
     */
    function setValue(
        bytes32 productId,
        int192 value,
        uint64 timestamp,
        bytes calldata signedMetadata
    ) external;

    /**
     * @notice Retrieve newest value (and timestamp) for a particular product
     * @param productId Product to retrieve
     */
    function getValue(bytes32 productId)
        external
        view
        returns (int192 value, uint64 timestamp, uint256 publishId);

    /**
     * @notice Get the latest publish ID for `productId`
     * @return publishId Latest publish ID
     */
    function getPublishId(bytes32 productId) external view returns (uint256 publishId);
}
