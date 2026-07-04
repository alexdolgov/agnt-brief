// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Ownable2Step, Ownable } from "@openzeppelin/contracts/access/Ownable2Step.sol";

import { IDomfiOracle } from "./interfaces/IDomfiOracle.sol";

struct PriceFeed {
    uint64 timestamp;
    int192 value;
    uint256 publishId;
}

/**
 * @author Domination Finance
 * @title Mainnet Dominance Oracle Feed
 * @notice Simple, IDomfiOracle-compliant oracle
 */
contract DomfiOracle is Ownable2Step, IDomfiOracle {
    mapping(address oracle => bool) public isOracle;
    mapping(bytes32 productId => PriceFeed) internal feeds;

    /**
     * @notice Thrown when the oracle price for a product is updated
     */
    error OracleValueUnset();

    /**
     * @notice Thrown when a price feed update timestamp is invalid
     * @dev Present in both `setValue` and `setValues`
     * @param timestampIndex Index of the submitted timestamp
     */
    error InvalidTimestamp(uint256 timestampIndex);

    /**
     * @notice Thrown when the function caller is not a registered oracle
     */
    error OracleOnly();

    /**
     * @notice Thrown when setting the oracle status for a zero address
     */
    error InvalidOracle();

    /**
     * @notice Thrown when setting an identical oracle status for an address
     */
    error InvalidOracleStatus();

    /**
     * @notice Emitted when an oracle status has been set for an address
     * @param oracle Address of the EOA whose status was set
     * @param oldStatus Previous status of the oracle
     * @param newStatus New status of the oracle
     */
    event OracleSet(address indexed oracle, bool oldStatus, bool newStatus);

    /**
     * @notice Emitted when a product feed's price has been updated in response to a price request
     * @param productId Product identifier for the price feed
     * @param value Latest price for the product
     * @param timestamp Timestamp at which this update was made
     * @param signedMetadata Update metadata signed by the publisher's private key
     */
    event PriceFeedUpdated(
        bytes32 indexed productId,
        int192 value,
        uint64 timestamp,
        uint256 publishId,
        bytes signedMetadata
    );

    /**
     * @notice Functions marked with this modifier can only be called by a registered oracle address
     * @dev Reverts if the caller is not a registered oracle
     */
    modifier onlyOracle() {
        if (!isOracle[msg.sender]) {
            revert OracleOnly();
        }
        _;
    }

    // solhint-disable-next-line no-empty-blocks
    constructor() Ownable(msg.sender) { }

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
    ) external onlyOracle {
        if (timestamp < feeds[productId].timestamp) {
            revert InvalidTimestamp(0);
        }

        PriceFeed storage feed = feeds[productId];

        feed.timestamp = timestamp;
        feed.value = value;

        uint256 publishId = feed.publishId + 1;
        feed.publishId = publishId;

        emit PriceFeedUpdated(productId, value, timestamp, publishId, signedMetadata);
    }

    /**
     * @notice Set oracle price for multiple products. See setValue()
     * @dev Reverts if any timestamp is \< previous timestamp
     * @param productIds Products to update
     * @param values New prices for products
     * @param timestamps Timestamps at which the prices were generated. Must increase
     * @param signedMetadatas Update metadatas signed by the publisher's private key
     */
    function setValues(
        bytes32[] calldata productIds,
        int192[] calldata values,
        uint64[] calldata timestamps,
        bytes[] calldata signedMetadatas
    ) external onlyOracle {
        for (uint256 i = 0; i < productIds.length; i++) {
            uint64 timestamp = timestamps[i];
            bytes32 productId = productIds[i];

            if (timestamp < feeds[productId].timestamp) {
                revert InvalidTimestamp(i);
            }

            uint256 publishId = feeds[productId].publishId + 1;
            int192 value = values[i];

            feeds[productId] = PriceFeed(timestamp, value, publishId);

            bytes calldata signedMetadata = signedMetadatas[i];

            emit PriceFeedUpdated(productId, value, timestamp, publishId, signedMetadata);
        }
    }

    /**
     * @notice Get latest price for `productId`. Reverts if unavailable
     * @return value Latest price set by setValue/setValues
     * @return timestamp Timestamp of last update
     * @return publishId Latest publish ID
     */
    function getValue(bytes32 productId)
        external
        view
        returns (int192 value, uint64 timestamp, uint256 publishId)
    {
        value = feeds[productId].value;
        timestamp = feeds[productId].timestamp;
        publishId = feeds[productId].publishId;
        if (timestamp == 0) {
            revert OracleValueUnset();
        }
    }

    /**
     * @notice Get the latest publish ID for `productId`
     * @return publishId Latest publish ID
     */
    function getPublishId(bytes32 productId) external view returns (uint256 publishId) {
        return feeds[productId].publishId;
    }

    /**
     * @notice Allow an EOA to update prices
     * @param oracle Address whose permissions should be modified
     * @param newStatus Whether this address is allowed to update prices
     */
    function setOracle(address oracle, bool newStatus) external onlyOwner {
        if (oracle == address(0)) {
            revert InvalidOracle();
        }

        bool oldStatus = isOracle[oracle];

        if (oldStatus == newStatus) {
            revert InvalidOracleStatus();
        }

        isOracle[oracle] = newStatus;

        emit OracleSet(oracle, oldStatus, newStatus);
    }
}
