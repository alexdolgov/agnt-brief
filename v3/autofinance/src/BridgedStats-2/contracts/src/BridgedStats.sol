// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import {IBridgedStats} from "src/interfaces/IBridgedStats.sol";
import {IL1Block} from "src/interfaces/IL1Block.sol";
import {EnumerableSet} from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import {IRiscZeroVerifier} from "risc0/IRiscZeroVerifier.sol";
import {Ownable2Step} from "openzeppelin-contracts/access/Ownable2Step.sol";
import {Ownable} from "openzeppelin-contracts/access/Ownable.sol";
import {Errors} from "src/Errors.sol";
import {IReceivingRouterGen} from "src/interfaces/IReceivingRouterGen.sol";
import {CoreStats} from "src/libraries/CoreStats.sol";
import {SafeCast} from "openzeppelin-contracts/utils/math/SafeCast.sol";

contract BridgedStats is IBridgedStats, Ownable2Step {
    using EnumerableSet for EnumerableSet.AddressSet;

    struct Data {
        address token;
        uint40 lastUpdateTimestamp;
        uint40 baseAprUpdateTimestamp;
        uint256 lastEthPerToken;
        uint256 lastBaseAprEthPerToken;
        uint256 baseApr;
    }

    IL1Block public immutable L1_BLOCK;
    IRiscZeroVerifier public immutable VERIFIER;

    IReceivingRouterGen public receivingRouter;

    uint64 public sourceChainSelector;

    address public updater;

    bytes32 public imageId;
    uint256 public nonce;

    // L1 => L2 block hash mapping
    mapping(bytes32 => bytes32) public blocks;

    // calculator address => lst data
    mapping(address => Data) public data;
    EnumerableSet.AddressSet private allCalculators;

    modifier onlyOwnerOrUpdater() {
        if (msg.sender != updater && msg.sender != owner()) {
            revert Errors.AccessDenied();
        }
        _;
    }

    constructor(address initialOwner, address verifier, address l1Block, address _updater) Ownable(initialOwner) {
        Errors.verifyNotZero(verifier, "verifier");
        Errors.verifyNotZero(l1Block, "l1Block");
        Errors.verifyNotZero(_updater, "updater");

        VERIFIER = IRiscZeroVerifier(verifier);
        L1_BLOCK = IL1Block(l1Block);
        updater = _updater;
    }

    function getL1Block() external view returns (uint64) {
        return L1_BLOCK.number();
    }

    function bookmark() external returns (bytes32, bytes32) {
        bytes32 l1BlockHash = L1_BLOCK.hash();
        bytes32 l2BlockHash = blockhash(block.number - 1);
        blocks[l1BlockHash] = l2BlockHash;

        emit BookmarkedBlock(l1BlockHash, L1_BLOCK.number(), l2BlockHash, uint64(block.number - 1));

        return (l1BlockHash, l2BlockHash);
    }

    function setImageId(bytes32 _imageId) external onlyOwner {
        if (_imageId == bytes32(0)) {
            revert Errors.InvalidParam("_imageId");
        }
        imageId = _imageId;
    }

    function setReceivingRouter(address newRouter, uint256 newSourceChainSelector) external onlyOwner {
        receivingRouter = IReceivingRouterGen(newRouter);
        sourceChainSelector = SafeCast.toUint64(newSourceChainSelector);
    }

    function seedCalculators(Seed[] calldata seedData) external onlyOwner {
        uint256 numSeeds = seedData.length;
        for (uint256 i = 0; i < numSeeds;) {
            Seed memory seed = seedData[i];
            LSTStat memory seedStat = seed.seedStat;

            Errors.verifyNotZero(seed.lst, "lst");
            Errors.verifyNotZero(seedStat.calculator, "calculator");

            // Note: baseApr can be zero so no validation for that

            if (!allCalculators.add(seedStat.calculator)) {
                revert Errors.AlreadySeeded(seedStat.calculator);
            }

            Data storage stat = data[seedStat.calculator];
            stat.token = seed.lst;

            updateData(seedStat, stat);

            emit SeedDataAdded(seedStat.calculator, seed.lst, seedStat);

            unchecked {
                ++i;
            }
        }
    }

    function updateStats(bytes calldata journalData, bytes calldata seal) external onlyOwnerOrUpdater {
        if (imageId == bytes32(0)) {
            revert Errors.ImageIdNotSet();
        }

        VERIFIER.verify(seal, imageId, sha256(journalData));

        BridgedStatsUpdate memory payload = abi.decode(journalData, (BridgedStatsUpdate));

        if (payload.srcCommitment.digest == bytes32(0)) {
            revert Errors.InvalidParam("srcCommitmentDigest");
        }

        if (payload.destCommitment.digest == bytes32(0)) {
            revert Errors.InvalidParam("destCommitmentDigest");
        }

        bytes32 l2BlockHash = blocks[payload.srcCommitment.digest];

        // if l2BlockHash looks up as zero, then it means we're unaware of the l1Hash
        if (l2BlockHash == bytes32(0)) {
            revert Errors.InvalidL1Digest(payload.srcCommitment.digest);
        }

        // if the looked up hash does not match the provided hash then the
        // proof was not built on the correct l2 hash
        if (l2BlockHash != payload.destCommitment.digest) {
            revert Errors.InvalidL2Digest(payload.destCommitment.digest);
        }

        // check that the nonce hasn't changed since we read the data
        // in the zk coprocessor. If it has, then an update has already occurred
        if (nonce != payload.lstData.nonce) {
            revert Errors.InvalidNonce(payload.lstData.nonce, nonce);
        }

        unchecked {
            ++nonce;
        }

        uint256 numUpdates = payload.lstData.lstStats.length;

        IReceivingRouterGen router = receivingRouter;
        uint64 chainSelector = sourceChainSelector;

        for (uint256 i = 0; i < numUpdates;) {
            LSTStat memory updatedStat = payload.lstData.lstStats[i];

            if (!allCalculators.contains(updatedStat.calculator)) {
                revert Errors.InvalidCalculator(updatedStat.calculator);
            }

            Data storage stat = data[updatedStat.calculator];

            // slither-disable-next-line reentrancy-events
            updateData(updatedStat, stat);

            if (address(router) != address(0)) {
                CoreStats.LstBackingMessage memory backingMsg = CoreStats.LstBackingMessage({
                    token: stat.token,
                    ethPerToken: SafeCast.toUint208(updatedStat.ethPerToken),
                    timestamp: updatedStat.lastUpdateTimestamp
                });

                CoreStats.Message memory backingMsgWrapper = CoreStats.Message({
                    messageOrigin: updatedStat.calculator,
                    version: CoreStats.VERSION,
                    messageNonce: updatedStat.lastUpdateTimestamp + i,
                    messageType: CoreStats.LST_BACKING_MESSAGE_TYPE,
                    message: abi.encode(backingMsg)
                });

                router.receiveMessage(chainSelector, backingMsgWrapper);

                CoreStats.LSTDestinationInfo memory aprMsg = CoreStats.LSTDestinationInfo({
                    snapshotTimestamp: updatedStat.baseAprUpdateTimestamp,
                    newBaseApr: updatedStat.baseApr,
                    currentEthPerToken: updatedStat.baseAprEthPerToken
                });

                CoreStats.Message memory aprMsgWrapper = CoreStats.Message({
                    messageOrigin: updatedStat.calculator,
                    version: CoreStats.VERSION,
                    messageNonce: updatedStat.baseAprUpdateTimestamp,
                    messageType: CoreStats.LST_SNAPSHOT_MESSAGE_TYPE,
                    message: abi.encode(aprMsg)
                });

                router.receiveMessage(chainSelector, aprMsgWrapper);
            }

            unchecked {
                ++i;
            }
        }
    }

    function getLatest(address[] calldata calculators) external view returns (BridgedLSTData memory result) {
        uint256 numCalcs = calculators.length;

        result.nonce = nonce;
        result.lstStats = new LSTStat[](numCalcs);

        for (uint256 i = 0; i < numCalcs;) {
            address calculator = calculators[i];
            Data memory stat = data[calculator];
            result.lstStats[i] = LSTStat({
                calculator: stat.token == address(0) ? address(0) : calculator, // hack
                lastUpdateTimestamp: stat.lastUpdateTimestamp,
                baseAprUpdateTimestamp: stat.baseAprUpdateTimestamp,
                ethPerToken: stat.lastEthPerToken,
                baseAprEthPerToken: stat.lastBaseAprEthPerToken,
                baseApr: stat.baseApr
            });

            unchecked {
                ++i;
            }
        }
    }

    function updateData(LSTStat memory updatedStat, Data storage stat) private {
        Errors.verifyNotZero(updatedStat.baseAprUpdateTimestamp, "baseAprUpdateTimestamp");
        Errors.verifyNotZero(updatedStat.lastUpdateTimestamp, "lastUpdateTimestamp");
        Errors.verifyNotZero(updatedStat.ethPerToken, "ethPerToken");
        Errors.verifyNotZero(updatedStat.baseAprEthPerToken, "baseAprEthPerToken");

        stat.baseAprUpdateTimestamp = updatedStat.baseAprUpdateTimestamp;
        stat.lastUpdateTimestamp = updatedStat.lastUpdateTimestamp;
        stat.lastEthPerToken = updatedStat.ethPerToken;
        stat.lastBaseAprEthPerToken = updatedStat.baseAprEthPerToken;
        stat.baseApr = updatedStat.baseApr;

        emit StatUpdated(updatedStat.calculator, updatedStat);
    }
}
