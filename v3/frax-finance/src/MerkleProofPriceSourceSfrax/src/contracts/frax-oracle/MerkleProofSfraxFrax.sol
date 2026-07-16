// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ====================== MerkleProofSfrax ============================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================
import { ERC165Storage } from "src/contracts/utils/ERC165Storage.sol";
import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { MerkleTreeProver } from "./lib/MerkleTreeProver.sol";
import { StateProofVerifier as Verifier } from "./lib/StateProofVerifier.sol";
import { IERC4626Receiver } from "src/contracts/interfaces/IERC4626Receiver.sol";
import { IStateRootOracle } from "./interfaces/IStateRootOracle.sol";
import { FixedPointMathLib } from "@solmate/utils/FixedPointMathLib.sol";

import "node_modules/forge-std/src/console.sol";

/// @title MerkleProofPriceSource
/// @author Jon Walch (Frax Finance) https://github.com/jonwalch
/// @notice Proves price round data from an L1 Frax Oracle and pushes the price data to an L2 Frax Oracle
contract MerkleProofPriceSourceSfrax is ERC165Storage, Timelock2Step {
    /// @notice The address of the StateRootOracle on Layer 2
    IStateRootOracle public immutable STATE_ROOT_ORACLE;

    using FixedPointMathLib for uint256;

    struct OracleConfig {
        address layer1Oracle;
        uint96 lastBlockProofed;
    }

    struct PoofPackedsFrax {
        bytes[] _accountProofSfrax;
        bytes[] _storageProofTotalSupply;
        bytes[] _storageProofTotalAssets;
        bytes[] _storageProofLastDist;
        bytes[] _storageProofRewardsPacked;
        bytes[] _storageProofRewardsCycleAmount;
    }

    /// @notice Information about the current rewards cycle
    struct RewardsCycleData {
        uint40 cycleEnd; // Timestamp of the end of the current rewards cycle
        uint40 lastSync; // Timestamp of the last time the rewards cycle was synced
        uint216 rewardCycleAmount; // Amount of rewards to be distributed in the current cycle
    }

    /// @notice Configuration linking Frax Oracles for the same asset on L1 / L2
    mapping(address layer2FraxOracle => OracleConfig layer1Config) public oracleLookup;

    /// @notice The ```constructor``` function
    /// @param _stateRootOracle Address of the L2 StateRootOracle
    /// @param _timelockAddress Address of Timelock contract on L2
    constructor(address _stateRootOracle, address _timelockAddress) Timelock2Step() {
        _setTimelock({ _newTimelock: _timelockAddress });
        _registerInterface({ interfaceId: type(ITimelock2Step).interfaceId });

        STATE_ROOT_ORACLE = IStateRootOracle(_stateRootOracle);
    }

    // ====================================================================
    // Events
    // ====================================================================

    /// @notice The ```OraclePairAdded``` event is emitted when a new Frax Oracle pair is added
    /// @param fraxOracleLayer1 The address of the layer 1 Frax Oracle
    /// @param fraxOracleLayer2 The address of the layer 2 Frax Oracle
    event OraclePairAdded(address indexed fraxOracleLayer1, address indexed fraxOracleLayer2);

    // ====================================================================
    // Configuration Setters
    // ====================================================================

    /// @dev A pair of addresses that are the Frax Oracles for the same asset on layer 1 and layer 2
    struct OraclePair {
        address layer1FraxOracle;
        address layer2FraxOracle;
    }

    /// @notice The ```addOraclePairs``` function sets an L1/L2 pair if they haven't been set already
    /// @param _oraclePairs List of OraclePairs representing the same oracle on L1 and L2
    function addOraclePairs(OraclePair[] calldata _oraclePairs) external {
        _requireTimelock();

        for (uint256 i = 0; i < _oraclePairs.length; ++i) {
            OraclePair memory _oraclePair = _oraclePairs[i];
            if (oracleLookup[_oraclePair.layer2FraxOracle].layer1Oracle != address(0)) {
                revert OraclePairAlreadySet({
                    fraxOracleLayer1: oracleLookup[_oraclePair.layer2FraxOracle].layer1Oracle,
                    fraxOracleLayer2: _oraclePair.layer2FraxOracle
                });
            }
            oracleLookup[_oraclePair.layer2FraxOracle].layer1Oracle = _oraclePair.layer1FraxOracle;
            emit OraclePairAdded({
                fraxOracleLayer1: _oraclePair.layer1FraxOracle,
                fraxOracleLayer2: _oraclePair.layer2FraxOracle
            });
        }
    }

    // ====================================================================
    // Proof / Add Price Function
    // ====================================================================
    function _fetchAndProofMaxRewards(
        address _sFraxAddress,
        uint96 _blockNumber,
        bytes[] memory _accountProofSfrax,
        bytes[] memory _storageProofMaxDistPerSecond
    ) public view returns (uint256 maxDistributionPerSecond) {
        IStateRootOracle.BlockInfo memory _blockInfo = STATE_ROOT_ORACLE.getBlockInfo(_blockNumber);
        Verifier.Account memory accountProofSfrax = MerkleTreeProver.proveStorageRoot({
            stateRootHash: _blockInfo.stateRootHash,
            proofAddress: _sFraxAddress,
            accountProof: _accountProofSfrax
        });
        maxDistributionPerSecond = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: accountProofSfrax.storageRoot,
                    slot: bytes32(uint256(12)),
                    storageProof: _storageProofMaxDistPerSecond
                })
                .value
        );
        if (maxDistributionPerSecond == 0) revert MustBeGtZero();
    }

    function _fetchAndProofSfrax(
        address _sfraxEthAddress,
        uint96 _blockNumber,
        PoofPackedsFrax memory proofPacked
    )
        internal
        view
        returns (
            uint256 totalSupply,
            uint256 totalAssets,
            uint256 lastRewardsDistribution,
            IERC4626Receiver.RewardsCycleData memory data
        )
    {
        data = IERC4626Receiver.RewardsCycleData(0, 0, 0);
        IStateRootOracle.BlockInfo memory _blockInfo = STATE_ROOT_ORACLE.getBlockInfo(_blockNumber);
        Verifier.Account memory _accountProofSfrax = MerkleTreeProver.proveStorageRoot({
            stateRootHash: _blockInfo.stateRootHash,
            proofAddress: _sfraxEthAddress,
            accountProof: proofPacked._accountProofSfrax
        });
        totalSupply = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: _accountProofSfrax.storageRoot,
                    slot: bytes32(uint256(2)),
                    storageProof: proofPacked._storageProofTotalSupply
                })
                .value
        );
        totalAssets = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: _accountProofSfrax.storageRoot,
                    slot: bytes32(uint256(9)),
                    storageProof: proofPacked._storageProofTotalAssets
                })
                .value
        );
        lastRewardsDistribution = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: _accountProofSfrax.storageRoot,
                    slot: bytes32(uint256(8)),
                    storageProof: proofPacked._storageProofLastDist
                })
                .value
        );
        {
            uint256 rewardsPacked = uint256(
                MerkleTreeProver
                    .proveStorageSlotValue({
                        storageRootHash: _accountProofSfrax.storageRoot,
                        slot: bytes32(uint256(6)),
                        storageProof: proofPacked._storageProofRewardsPacked
                    })
                    .value
            );
            uint256 rewardCycleAmount = uint256(
                MerkleTreeProver
                    .proveStorageSlotValue({
                        storageRootHash: _accountProofSfrax.storageRoot,
                        slot: bytes32(uint256(7)),
                        storageProof: proofPacked._storageProofRewardsCycleAmount
                    })
                    .value
            );
            data.lastSync = uint40(bytes5(bytes32(rewardsPacked) << 176));
            data.cycleEnd = uint40(bytes5(bytes32(rewardsPacked) << 216));
            data.rewardCycleAmount = uint216(bytes27(bytes32(rewardCycleAmount) << 40));
        }
        if (totalSupply == 0) revert MustBeGtZero();
        if (data.lastSync == 0) revert MustBeGtZero();
        if (totalAssets == 0) revert MustBeGtZero();
    }

    function addMaxDistributionPerSecond(
        IERC4626Receiver _sFraxOracle,
        uint96 _blockNumber,
        bytes[] memory _accountProofSfrax,
        bytes[] memory _storageProofMaxDistPerSecond
    ) external {
        uint96 lastBlockProofed = oracleLookup[address(_sFraxOracle)].lastBlockProofed;
        if (lastBlockProofed != 0) {
            if (_blockNumber < lastBlockProofed) revert StalePush();
        }
        // Address of the L1 oracle
        address _proofAddress = oracleLookup[address(_sFraxOracle)].layer1Oracle;
        if (_proofAddress == address(0)) revert WrongOracleAddress();
        uint256 maxPerSecond = _fetchAndProofMaxRewards(
            _proofAddress,
            _blockNumber,
            _accountProofSfrax,
            _storageProofMaxDistPerSecond
        );
        _sFraxOracle.updateMaxDistributionPerSecond(_blockNumber, maxPerSecond);
    }

    function addRoundDataSfrax(
        IERC4626Receiver _sFraxOracle,
        uint96 _blockNumber,
        PoofPackedsFrax memory proof
    ) external {
        uint96 lastBlockProofed = oracleLookup[address(_sFraxOracle)].lastBlockProofed;
        address _proofAddress;
        {
            if (lastBlockProofed != 0) {
                if (_blockNumber < lastBlockProofed) revert StalePush();
            }
            // Address of the L1 oracle
            _proofAddress = oracleLookup[address(_sFraxOracle)].layer1Oracle;
            if (_proofAddress == address(0)) revert WrongOracleAddress();
        }
        (
            uint256 totalSupply,
            uint256 totalStoredAssets,
            uint256 lastRewardsDistribution,
            IERC4626Receiver.RewardsCycleData memory data
        ) = _fetchAndProofSfrax(_proofAddress, _blockNumber, proof);
        _sFraxOracle.updatesFRAXData(_blockNumber, totalSupply, totalStoredAssets, lastRewardsDistribution, data);
        oracleLookup[address(_sFraxOracle)].lastBlockProofed = _blockNumber;
    }

    // ====================================================================
    // Errors
    // ====================================================================

    error OraclePairAlreadySet(address fraxOracleLayer1, address fraxOracleLayer2);
    error WrongOracleAddress();
    error StalePush();
    error MustBeGtZero();
}
