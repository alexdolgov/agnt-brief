// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import "../constants/Errors.sol";

import {IGlobalRegistry} from "../interfaces/IGlobalRegistry.sol";
import {IAccountableStrategy} from "../interfaces/IAccountableStrategy.sol";
import {IDVNPublisher, PublishedData, PublishRequest} from "../interfaces/IDVNPublisher.sol";

import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {EIP712Upgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

/// @title DVNPublisher
/// @notice Publisher for the DVN
/// @dev Implements the DVN publisher interface
/// @custom:security-contact security@accountable.capital
contract DVNPublisher is
    IDVNPublisher,
    UUPSUpgradeable,
    EIP712Upgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using ECDSA for bytes32;

    /// @notice Basis points denominator - 100%
    uint256 public constant BASIS_POINTS = 1e6;

    /// @notice The maximum allowed threshold
    uint256 public constant MAX_THRESHOLD = 10;

    /// @notice The maximum number of pending requests per batch
    uint256 public constant MAX_PENDING_REQUESTS = 20;

    /// @notice The default threshold
    uint256 public constant DEFAULT_THRESHOLD = 2;

    /// @notice The default max deviation - 10%
    uint256 public constant DEFAULT_DEVIATION = 1e5;

    /// @notice The default report staleness
    uint256 public constant DEFAULT_STALENESS = 1 days;

    /// @notice The typehash for the publish request
    bytes32 public constant PUBLISH_TYPEHASH =
        keccak256("PublishRequest(uint256 id,uint256 value,uint256 timestamp,address signer,uint256 nonce)");

    /// @notice Mapping from ID to executed published data
    mapping(uint256 id => PublishedData data) private _publishedData;
    /// @notice Array of pending requests
    PublishRequest[] private _pendingRequests;

    /// @notice The threshold for execution
    uint256 public threshold;

    /// @notice The strategy address
    address public strategy;

    /// @notice The current batch ID that signers should submit to
    uint256 public currentBatchId;

    /// @notice The maximum staleness for a publish request
    uint256 public maxStaleness;

    /// @notice The maximum deviation from previous value (in basis points)
    uint256 public maxDeviation;

    /// @notice Nonces per signer
    mapping(address => uint256) public nonces;

    /// @notice The signers approved to publish data
    mapping(address signer => bool approved) public signers;

    /// @notice The executors approved to trigger a publish
    mapping(address executor => bool approved) public executors;

    /// @notice Modifier to check if the caller is the strategy's manager
    modifier onlyManager() {
        if (msg.sender != IAccountableStrategy(strategy).investmentManager()) revert Unauthorized();
        _;
    }

    /// @notice Modifier to check if the caller is the protocol's operations admin
    modifier onlyOperationsAdmin() {
        address globals = IAccountableStrategy(strategy).globals();
        if (msg.sender != IGlobalRegistry(globals).operationsAdmin()) revert Unauthorized();
        _;
    }

    /// @notice Modifier to check if the caller is an executor (manager is executor by default)
    modifier onlyExecutor() {
        if (!executors[msg.sender]) {
            if (msg.sender != IAccountableStrategy(strategy).investmentManager()) revert Unauthorized();
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address strategy_, uint256 threshold_) external initializer {
        __Pausable_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
        __EIP712_init("DVNPublisher", "1");

        if (strategy_ == address(0)) revert ZeroAddress();
        if (threshold_ > MAX_THRESHOLD) revert InvalidThreshold();

        strategy = strategy_;

        if (threshold_ == 0) threshold = DEFAULT_THRESHOLD;
        else threshold = threshold_;

        maxStaleness = DEFAULT_STALENESS;
        maxDeviation = DEFAULT_DEVIATION;
    }

    /// @inheritdoc IDVNPublisher
    function setThreshold(uint256 threshold_) external onlyManager {
        if (threshold_ > MAX_THRESHOLD || threshold_ == 0) revert InvalidThreshold();
        emit ThresholdSet(threshold, threshold_);
        threshold = threshold_;
    }

    /// @inheritdoc IDVNPublisher
    function setSigner(address signer_, bool approved_) external onlyManager {
        if (signer_ == address(0)) revert ZeroAddress();

        signers[signer_] = approved_;

        emit SignerSet(signer_, approved_);
    }

    /// @inheritdoc IDVNPublisher
    function setExecutor(address executor_, bool approved_) external onlyManager {
        if (executor_ == address(0)) revert ZeroAddress();

        executors[executor_] = approved_;

        emit ExecutorSet(executor_, approved_);
    }

    /// @inheritdoc IDVNPublisher
    function setMaxStaleness(uint256 maxStaleness_) external onlyManager {
        if (maxStaleness_ == 0) revert ZeroValue();
        emit MaxStalenessSet(maxStaleness, maxStaleness_);
        maxStaleness = maxStaleness_;
    }

    /// @inheritdoc IDVNPublisher
    function setMaxDeviation(uint256 maxDeviation_) external onlyManager {
        emit MaxDeviationSet(maxDeviation, maxDeviation_);
        maxDeviation = maxDeviation_;
    }

    /// @dev Pause the contract
    function pause() external onlyManager {
        _pause();
    }

    /// @dev Unpause the contract
    function unpause() external onlyManager {
        _unpause();
    }

    /// @inheritdoc IDVNPublisher
    function cancelBatch() external onlyManager {
        delete _pendingRequests;

        emit BatchCancelled(currentBatchId);
    }

    /// @inheritdoc IDVNPublisher
    function execute() external nonReentrant onlyExecutor whenNotPaused {
        PublishRequest[] memory requests = _pendingRequests;
        uint256 len = requests.length;

        if (len == 0) revert ThresholdNotReached();

        uint256 uniqueSigners = 0;
        uint256[] memory values = new uint256[](len);
        uint256[] memory timestamps = new uint256[](len);
        address[] memory seenSigners = new address[](len);

        uint256 staleness = maxStaleness;

        for (uint256 i = 0; i < len; ++i) {
            // Skip stale requests
            if (block.timestamp > requests[i].timestamp + staleness) continue;
            // Skip removed signers
            if (!signers[requests[i].signer]) continue;

            bool isDuplicate = false;
            for (uint256 j = 0; j < uniqueSigners; ++j) {
                if (requests[i].signer == seenSigners[j]) {
                    // Only update if this request has a fresher timestamp
                    if (requests[i].timestamp > timestamps[j]) {
                        timestamps[j] = requests[i].timestamp;
                        values[j] = requests[i].value;
                    }
                    isDuplicate = true;
                    break;
                }
            }

            if (!isDuplicate) {
                timestamps[uniqueSigners] = requests[i].timestamp;
                seenSigners[uniqueSigners] = requests[i].signer;
                values[uniqueSigners] = requests[i].value;
                uniqueSigners++;
            }
        }

        if (uniqueSigners < threshold) revert ThresholdNotReached();

        (uint256 medianValue, uint256 medianTimestamp) = _medianValueWithTimestamp(values, timestamps, uniqueSigners);
        uint256 batchId = currentBatchId;

        if (batchId > 0) {
            uint256 deviation = _calculateDeviation(medianValue, _publishedData[batchId - 1].medianValue);
            if (deviation > maxDeviation) revert DeviationTooHigh();
        }

        // Store published data and clear batch before external call
        PublishedData memory data =
            PublishedData({id: batchId, medianValue: medianValue, timestamp: block.timestamp, executor: msg.sender});

        _publishedData[batchId] = data;
        delete _pendingRequests;
        currentBatchId++;

        // Try to publish - strategy may reject if measurement is stale relative to state changes
        try IAccountableStrategy(strategy).publishRate(medianValue, medianTimestamp) {
            emit Executed(batchId, medianValue, block.timestamp, msg.sender);
        } catch {
            emit RateRejected(batchId, medianValue, medianTimestamp);
        }
    }

    /// @inheritdoc IDVNPublisher
    function publish(PublishRequest calldata request, bytes calldata signature) external whenNotPaused {
        if (request.timestamp + maxStaleness < block.timestamp) revert RequestExpired();
        if (_pendingRequests.length >= MAX_PENDING_REQUESTS) revert TooManyRequests();
        if (request.timestamp > block.timestamp) revert InvalidTimestamp();

        bytes32 structHash = _getMessageHash(request);
        address signer = ECDSA.recover(structHash, signature);

        if (signer != request.signer || !signers[signer]) revert InvalidSigner();
        if (request.nonce != nonces[signer]) revert InvalidNonce();
        if (request.id != currentBatchId) revert InvalidBatchId();

        nonces[signer]++;
        _pendingRequests.push(request);

        emit Published(request.id, request.value, request.timestamp, request.signer);
    }

    /// @inheritdoc IDVNPublisher
    function pendingRequests() external view returns (PublishRequest[] memory) {
        return _pendingRequests;
    }

    /// @inheritdoc IDVNPublisher
    function lastPublishedData() external view returns (PublishedData memory) {
        if (currentBatchId == 0) revert NoBatchPublished();
        return _publishedData[currentBatchId - 1];
    }

    /// @inheritdoc IDVNPublisher
    function publishedDataByBatchId(uint256 id) external view returns (PublishedData memory) {
        if (id >= currentBatchId) revert InvalidBatchId();
        return _publishedData[id];
    }

    /// @dev Calculate the deviation between two values in basis points
    function _calculateDeviation(uint256 newValue, uint256 oldValue) internal pure returns (uint256) {
        if (oldValue == 0) return 0;
        uint256 diff = newValue > oldValue ? newValue - oldValue : oldValue - newValue;
        return (diff * BASIS_POINTS) / oldValue;
    }

    /// @dev Compute the message hash for the publish request
    function _getMessageHash(PublishRequest calldata request) internal view returns (bytes32) {
        return _hashTypedDataV4(
            keccak256(
                abi.encode(
                    PUBLISH_TYPEHASH, request.id, request.value, request.timestamp, request.signer, request.nonce
                )
            )
        );
    }

    /// @dev Compute median value and its corresponding timestamp
    /// @dev Sorts arrays in place, then returns median.
    function _medianValueWithTimestamp(uint256[] memory values, uint256[] memory timestamps, uint256 length)
        internal
        pure
        returns (uint256 medianValue, uint256 medianTimestamp)
    {
        _sortValuesWithTimestamps(values, timestamps, length);

        uint256 mid = length / 2;
        if (length % 2 == 0) {
            medianValue = (values[mid - 1] + values[mid]) / 2;
            medianTimestamp = timestamps[mid - 1] < timestamps[mid] ? timestamps[mid - 1] : timestamps[mid];
        } else {
            medianValue = values[mid];
            medianTimestamp = timestamps[mid];
        }
    }

    /// @dev Sort values in ascending order, keeping timestamps in sync
    function _sortValuesWithTimestamps(uint256[] memory values, uint256[] memory timestamps, uint256 length)
        internal
        pure
    {
        unchecked {
            for (uint256 i = 1; i < length; ++i) {
                uint256 j = i;
                uint256 keyValue = values[i];
                uint256 keyTimestamp = timestamps[i];
                while (j != 0 && values[j - 1] > keyValue) {
                    values[j] = values[j - 1];
                    timestamps[j] = timestamps[j - 1];
                    --j;
                }
                values[j] = keyValue;
                timestamps[j] = keyTimestamp;
            }
        }
    }

    /// @notice Authorize an upgrade to a new implementation
    /// @dev Only operations admin can authorize implementation upgrades
    /// @param newImplementation Address of the new implementation contract
    function _authorizeUpgrade(address newImplementation) internal override onlyOperationsAdmin {}
}
