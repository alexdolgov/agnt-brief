// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@pythnetwork/entropy-sdk-solidity/IEntropyConsumer.sol";
import "@pythnetwork/entropy-sdk-solidity/IEntropyV2.sol";

/// @title PythRandomnessProbe
/// @notice Minimal Pyth Entropy V2 consumer used to benchmark request→callback latency
/// and confirm the SDK integration end-to-end. Not for production use.
contract PythRandomnessProbe is IEntropyConsumer {
    IEntropyV2 public immutable entropy;

    struct Sample {
        address requester;
        uint64 sequenceNumber;
        uint256 requestedAt; // block.timestamp
        uint256 fulfilledAt; // 0 until callback fires
        uint256 requestBlock;
        uint256 fulfillBlock;
        bytes32 randomNumber;
        address provider;
    }

    /// @notice Sample id → sample. Sample id is the sequenceNumber itself.
    mapping(uint64 => Sample) public samples;

    /// @notice Ordered list of requested sequence numbers (for easy iteration)
    uint64[] public allSequences;

    event Requested(uint64 indexed sequenceNumber, address indexed requester, uint256 fee);
    event Fulfilled(uint64 indexed sequenceNumber, bytes32 randomNumber, uint256 latencyBlocks, uint256 latencySeconds);

    constructor(address _entropy) {
        entropy = IEntropyV2(_entropy);
    }

    /// @notice Request a new randomness sample. Caller attaches ETH equal to the current fee.
    function request() external payable returns (uint64 seq) {
        uint256 fee = entropy.getFeeV2();
        require(msg.value >= fee, "insufficient fee");
        seq = entropy.requestV2{ value: fee }();
        samples[seq] = Sample({
            requester: msg.sender,
            sequenceNumber: seq,
            requestedAt: block.timestamp,
            fulfilledAt: 0,
            requestBlock: block.number,
            fulfillBlock: 0,
            randomNumber: bytes32(0),
            provider: address(0)
        });
        allSequences.push(seq);
        emit Requested(seq, msg.sender, fee);
        // Refund excess, if any
        if (msg.value > fee) {
            (bool ok, ) = msg.sender.call{ value: msg.value - fee }("");
            require(ok, "refund failed");
        }
    }

    /// @notice Required override. Called by the entropy contract's external shim.
    function entropyCallback(
        uint64 sequenceNumber,
        address provider,
        bytes32 randomNumber
    ) internal override {
        Sample storage s = samples[sequenceNumber];
        s.fulfilledAt = block.timestamp;
        s.fulfillBlock = block.number;
        s.randomNumber = randomNumber;
        s.provider = provider;
        emit Fulfilled(
            sequenceNumber,
            randomNumber,
            block.number - s.requestBlock,
            block.timestamp - s.requestedAt
        );
    }

    /// @notice Required override from IEntropyConsumer
    function getEntropy() internal view override returns (address) {
        return address(entropy);
    }

    function sampleCount() external view returns (uint256) {
        return allSequences.length;
    }
}
