// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

/// @notice Data to be published in a batch
struct PublishRequest {
    /// @notice The ID of the target batch
    uint256 id;
    /// @notice The value to be included in the batch
    uint256 value;
    /// @notice The timestamp of the request
    uint256 timestamp;
    /// @notice The address of the signer that published the request
    address signer;
    /// @notice The nonce of the signer
    uint256 nonce;
}

/// @notice Data published by an executor
struct PublishedData {
    /// @notice The ID of the batch
    uint256 id;
    /// @notice The median value of the published data
    uint256 medianValue;
    /// @notice The timestamp of the data
    uint256 timestamp;
    /// @notice The address of the executor that published the data
    address executor;
}

/// @notice Interface for the DVN publisher
/// @dev Abstracts DVN consensus and enforces threshold for execution
///      Whitelisted executors trigger a publish once the threshold is reached
interface IDVNPublisher {
    /// @notice Emitted when data is published
    /// @param id The ID of the batch
    /// @param value The value of the published data
    /// @param timestamp The timestamp of the data
    /// @param signer The address of the signer that published the data
    event Published(uint256 indexed id, uint256 value, uint256 timestamp, address indexed signer);

    /// @notice Emitted when data is executed
    /// @param id The ID of the batch
    /// @param medianValue The median value of the published data
    /// @param timestamp The timestamp of the data
    /// @param executor The address of the executor that executed the data
    event Executed(uint256 indexed id, uint256 medianValue, uint256 timestamp, address indexed executor);

    /// @notice Emitted when a rate update is rejected by the strategy
    /// @param id The ID of the batch
    /// @param medianValue The median value that was rejected
    /// @param measuredAt The measurement timestamp that was rejected
    event RateRejected(uint256 indexed id, uint256 medianValue, uint256 measuredAt);

    /// @notice Emitted when the threshold is set
    /// @param oldThreshold The old threshold
    /// @param newThreshold The new threshold
    event ThresholdSet(uint256 oldThreshold, uint256 newThreshold);

    /// @notice Emitted when a signer is set
    /// @param signer The address of the signer
    /// @param approved Whether the signer is approved
    event SignerSet(address indexed signer, bool approved);

    /// @notice Emitted when an executor is set
    /// @param executor The address of the executor
    /// @param approved Whether the executor is approved
    event ExecutorSet(address indexed executor, bool approved);

    /// @notice Emitted when a batch is cancelled
    /// @param batchId The ID of the cancelled batch
    event BatchCancelled(uint256 indexed batchId);

    /// @notice Emitted when max staleness is set
    /// @param oldMaxStaleness The old max staleness
    /// @param newMaxStaleness The new max staleness
    event MaxStalenessSet(uint256 oldMaxStaleness, uint256 newMaxStaleness);

    /// @notice Emitted when max deviation is set
    /// @param oldMaxDeviation The old max deviation
    /// @param newMaxDeviation The new max deviation
    event MaxDeviationSet(uint256 oldMaxDeviation, uint256 newMaxDeviation);

    /// @notice Execute the last published batch
    function execute() external;

    /// @notice Publish a new batch
    /// @param request The request to be published
    /// @param signature The signature of the request
    function publish(PublishRequest calldata request, bytes calldata signature) external;

    /// @notice Set the threshold for the publisher
    /// @param threshold The threshold to set
    function setThreshold(uint256 threshold) external;

    /// @notice Set a signer approved to publish data
    /// @param signer The address of the signer
    /// @param approved Whether the signer is approved
    function setSigner(address signer, bool approved) external;

    /// @notice Set an executor approved to trigger a publish
    /// @param executor The address of the executor
    /// @param approved Whether the executor is approved
    function setExecutor(address executor, bool approved) external;

    /// @notice Cancel the current batch and clear pending requests
    function cancelBatch() external;

    /// @notice Set the max staleness for publish requests
    /// @param maxStaleness The max staleness in seconds
    function setMaxStaleness(uint256 maxStaleness) external;

    /// @notice Set the max deviation from previous value
    /// @param maxDeviation The max deviation in basis points (1e6 = 100%)
    function setMaxDeviation(uint256 maxDeviation) external;

    /// @notice Get the strategy address
    function strategy() external view returns (address);

    /// @notice Get the threshold for execution
    function threshold() external view returns (uint256);

    /// @notice Get the current batch ID that signers should submit to
    function currentBatchId() external view returns (uint256);

    /// @notice Check if an address is a signer
    function signers(address signer) external view returns (bool);

    /// @notice Check if an address is an executor
    function executors(address executor) external view returns (bool);

    /// @notice Get the max staleness for publish requests
    function maxStaleness() external view returns (uint256);

    /// @notice Get the max deviation from previous value
    function maxDeviation() external view returns (uint256);

    /// @notice Get the pending requests
    /// @return requests The pending requests
    function pendingRequests() external view returns (PublishRequest[] memory);

    /// @notice Get the last published data
    function lastPublishedData() external view returns (PublishedData memory);

    /// @notice Get published data by batch ID
    /// @param id The batch ID
    function publishedDataByBatchId(uint256 id) external view returns (PublishedData memory);
}
