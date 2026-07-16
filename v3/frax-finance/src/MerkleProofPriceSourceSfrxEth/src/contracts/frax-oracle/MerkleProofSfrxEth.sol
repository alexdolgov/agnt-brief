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
// ====================== MerkleProofChainlink ========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================
import { ERC165Storage } from "@openzeppelin/contracts/utils/introspection/ERC165Storage.sol";
import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { MerkleTreeProver } from "./lib/MerkleTreeProver.sol";
import { StateProofVerifier as Verifier } from "./lib/StateProofVerifier.sol";
import { IERC4626Receiver } from "src/contracts/interfaces/IERC4626Receiver.sol";
import { IStateRootOracle } from "./interfaces/IStateRootOracle.sol";
import { FixedPointMathLib } from "@solmate/utils/FixedPointMathLib.sol";

/// @title MerkleProofPriceSource
/// @author Jon Walch (Frax Finance) https://github.com/jonwalch
/// @notice Proves price round data from an L1 Frax Oracle and pushes the price data to an L2 Frax Oracle
contract MerkleProofPriceSourceSfrxEth is ERC165Storage, Timelock2Step {
    /// @notice The address of the StateRootOracle on Layer 2
    IStateRootOracle public immutable STATE_ROOT_ORACLE;

    using FixedPointMathLib for uint256;

    /// @notice Configuration linking Frax Oracles for the same asset on L1 / L2
    mapping(address layer2FraxOracle => address layer1FraxOracle) public oracleLookup;
    mapping(address layer2FraxOracle => uint256 lastBlockProofed) public oracleToLastBlockProofed;

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
            if (oracleLookup[_oraclePair.layer2FraxOracle] != address(0)) {
                revert OraclePairAlreadySet({
                    fraxOracleLayer1: oracleLookup[_oraclePair.layer2FraxOracle],
                    fraxOracleLayer2: _oraclePair.layer2FraxOracle
                });
            }
            oracleLookup[_oraclePair.layer2FraxOracle] = _oraclePair.layer1FraxOracle;
            emit OraclePairAdded({
                fraxOracleLayer1: _oraclePair.layer1FraxOracle,
                fraxOracleLayer2: _oraclePair.layer2FraxOracle
            });
        }
    }

    // ====================================================================
    // Proof / Add Price Function
    // ====================================================================

    function _fetchAndProofSfrxEth(
        address _sfrxEthAddress,
        uint256 _blockNumber,
        bytes[] memory _accountProofSfrxEth,
        bytes[] memory _storageProofTotalSupply,
        bytes[] memory _storageProofTotalAssets,
        bytes[] memory _storageProofRewards
    )
        internal
        view
        returns (uint256 totalSupply, uint256 totalAssets, uint192 lastRewards, uint32 rewardsCycleEnd, uint32 lastSync)
    {
        IStateRootOracle.BlockInfo memory _blockInfo = STATE_ROOT_ORACLE.getBlockInfo(_blockNumber);
        Verifier.Account memory _accountProofSfrxEth = MerkleTreeProver.proveStorageRoot({
            stateRootHash: _blockInfo.stateRootHash,
            proofAddress: _sfrxEthAddress,
            accountProof: _accountProofSfrxEth
        });
        totalSupply = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: _accountProofSfrxEth.storageRoot,
                    slot: bytes32(uint256(2)),
                    storageProof: _storageProofTotalSupply
                })
                .value
        );

        totalAssets = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: _accountProofSfrxEth.storageRoot,
                    slot: bytes32(uint256(7)),
                    storageProof: _storageProofTotalAssets
                })
                .value
        );
        uint256 rewardsPacked = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: _accountProofSfrxEth.storageRoot,
                    slot: bytes32(uint256(6)),
                    storageProof: _storageProofRewards
                })
                .value
        );

        // Get the first 24 bytes on the slot
        lastRewards = uint192(bytes24(bytes32(rewardsPacked)));
        // get the last 8 bytes on the slot only take first 4
        rewardsCycleEnd = uint32(bytes4(bytes32(rewardsPacked) << 192));
        // get the last 4 bytes on the slot
        lastSync = uint32(bytes4(bytes32(rewardsPacked) << 224));
    }

    function addRoundDataSfrxEth(
        IERC4626Receiver _sfrxEthAddress,
        uint256 _blockNumber,
        bytes[] memory _accountProofSfrxEth,
        bytes[] memory _storageProofTotalSupply,
        bytes[] memory _storageProofTotalAssets,
        bytes[] memory _storageProofRewards
    ) external {
        uint256 lastBlockProofed = oracleToLastBlockProofed[address(_sfrxEthAddress)];
        if (lastBlockProofed != 0) {
            if (_blockNumber < lastBlockProofed) revert StalePush();
        }
        // Address of the L1 oracle
        address _proofAddress = oracleLookup[address(_sfrxEthAddress)];
        if (_proofAddress == address(0)) revert WrongOracleAddress();
        (
            uint256 totalSupply,
            uint256 totalStoredAssets,
            uint192 lastRewards,
            uint32 rewardsCycleEnd,
            uint32 lastSync
        ) = _fetchAndProofSfrxEth(
                _proofAddress,
                _blockNumber,
                _accountProofSfrxEth,
                _storageProofTotalSupply,
                _storageProofTotalAssets,
                _storageProofRewards
            );
        _sfrxEthAddress.updateErc4262VaultData(totalSupply, totalStoredAssets, lastRewards, rewardsCycleEnd, lastSync);
        oracleToLastBlockProofed[address(_sfrxEthAddress)] = _blockNumber;
    }

    // ====================================================================
    // Errors
    // ====================================================================

    error OraclePairAlreadySet(address fraxOracleLayer1, address fraxOracleLayer2);
    error WrongOracleAddress();
    error StalePush();
}
