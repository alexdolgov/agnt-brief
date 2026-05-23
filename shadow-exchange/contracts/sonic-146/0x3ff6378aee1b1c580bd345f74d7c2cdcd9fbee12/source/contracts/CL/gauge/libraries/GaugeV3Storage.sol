// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {IShadowV3Pool} from "contracts/CL/core/interfaces/IShadowV3Pool.sol";

library GaugeV3Storage {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @dev keccak256(abi.encode(uint256(keccak256("gaugeV3.storage")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 public constant GAUGEV3_STORAGE_LOCATION =
        0xddab91076ea92d6a766cefd001b0cf5f73830986b100aa9c6fa6286e6b0a7300;

    /// @custom꞉storage‑location erc7201꞉gaugeV3.storage
    struct GaugeV3State {
        bool _unlocked;
        uint256 firstPeriod;
        IShadowV3Pool pool;
        /// @inheritdoc IGaugeV3
        address nfpManager;
        EnumerableSet.AddressSet nfpManagers;
        /// @inheritdoc IGaugeV3
        mapping(uint256 period => mapping(address token => uint256)) tokenTotalSupplyByPeriod;
        mapping(uint256 period => mapping(bytes32 positionHash => uint256)) periodAmountsWrittenVersion;
        mapping(uint256 period => mapping(bytes32 positionHash => uint256)) periodNfpSecondsX96;
        /// @inheritdoc IGaugeV3
        mapping(uint256 period => mapping(bytes32 positionHash => mapping(address rewardToken => uint256)))
            periodClaimedAmount;
        /// @inheritdoc IGaugeV3
        mapping(address token => mapping(bytes32 positionHash => uint256 period)) lastClaimByToken;
        mapping(uint256 period => uint160) periodEndSecondsPerLiquidityCumulativeX128;
        mapping(uint256 period => bool) usePoolData;
        mapping(uint256 period => uint256) periodEndVersion;
        EnumerableSet.AddressSet rewards;
        uint256 lastCardinality;
        uint256 cachedPoolLastPeriod;
    }

    /// @dev Return state storage struct for reading and writing
    function getStorage() internal pure returns (GaugeV3State storage $) {
        assembly {
            $.slot := GAUGEV3_STORAGE_LOCATION
        }
    }
}
