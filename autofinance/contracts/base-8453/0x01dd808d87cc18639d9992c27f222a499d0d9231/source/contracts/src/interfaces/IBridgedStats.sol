// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import {Steel} from "risc0/steel/Steel.sol";

interface IBridgedStats {
    event BookmarkedBlock(bytes32 l1hash, uint64 l1number, bytes32 l2hash, uint64 l2number);
    event SeedDataAdded(address indexed calculator, address indexed lst, LSTStat details);
    event StatUpdated(address indexed calculator, LSTStat details);

    struct BridgedStatsUpdate {
        Steel.Commitment srcCommitment;
        Steel.Commitment destCommitment;
        BridgedLSTData lstData;
    }

    struct BridgedLSTData {
        uint256 nonce;
        LSTStat[] lstStats;
    }

    struct Seed {
        address lst;
        LSTStat seedStat;
    }

    struct LSTStat {
        address calculator;
        uint40 lastUpdateTimestamp;
        uint40 baseAprUpdateTimestamp;
        uint256 ethPerToken;
        uint256 baseAprEthPerToken;
        uint256 baseApr;
    }

    function getL1Block() external view returns (uint64);

    function getLatest(address[] calldata calculators) external view returns (BridgedLSTData memory);

    function bookmark() external returns (bytes32, bytes32);

    function updateStats(bytes calldata journalData, bytes calldata seal) external;

    function seedCalculators(Seed[] calldata seedData) external;

    function setImageId(bytes32 _imageId) external;
}
