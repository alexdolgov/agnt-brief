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
// ========================= MerkleProofSdai ==========================
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
import "node_modules/forge-std/src/console2.sol";

/// @title MerkleProofPriceSource
/// @notice Proves price round data from an L1 Frax Oracle and pushes the price data to an L2 Frax Oracle
contract MerkleProofPriceSourceEzEth is ERC165Storage, Timelock2Step {
    /// @notice The address of the StateRootOracle on Layer 2
    IStateRootOracle public immutable STATE_ROOT_ORACLE;

    /// @notice The storage slot on the L1 Contract containing the token rate
    bytes32 public constant TOKEN_RATE_CACHE_SLOT = 0xbbc70db1b6c7afd11e79c0fb0051300458f1a3acb8ee9789d9b6b26c61ad9bc7;

    using FixedPointMathLib for uint256;

    struct OracleConfig {
        address layer1Oracle;
        uint96 lastBlockProofed;
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

    function _fetchAndProofEzEthRate(
        address _balancerPoolAddress,
        uint96 _blockNumber,
        bytes[] memory _accountProofPool,
        bytes[] memory _storageProofRateCache
    ) internal view returns (uint256 rate) {
        IStateRootOracle.BlockInfo memory _blockInfo = STATE_ROOT_ORACLE.getBlockInfo(_blockNumber);
        Verifier.Account memory _accountProofPool = MerkleTreeProver.proveStorageRoot({
            stateRootHash: _blockInfo.stateRootHash,
            proofAddress: _balancerPoolAddress,
            accountProof: _accountProofPool
        });
        rate = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: _accountProofPool.storageRoot,
                    slot: TOKEN_RATE_CACHE_SLOT,
                    storageProof: _storageProofRateCache
                })
                .value
        );

        // Current rate is stored in cache w/ 0 offset and 96 bit length
        rate = uint96(rate);
        if (rate == 0) revert MustBeGtZero();
    }

    function addRoundDataEzEth(
        IERC4626Receiver _ezEthRateOracleAddress,
        uint96 _blockNumber,
        bytes[] memory _accountProofPool,
        bytes[] memory _storageProofPool
    ) external {
        uint96 lastBlockProofed = oracleLookup[address(_ezEthRateOracleAddress)].lastBlockProofed;
        if (lastBlockProofed != 0) {
            if (_blockNumber < lastBlockProofed) revert StalePush();
        }
        // Address of the L1 oracle
        address _proofAddress = oracleLookup[address(_ezEthRateOracleAddress)].layer1Oracle;
        if (_proofAddress == address(0)) revert WrongOracleAddress();
        uint256 ezEthRate = _fetchAndProofEzEthRate(_proofAddress, _blockNumber, _accountProofPool, _storageProofPool);
        uint256 l1Timestamp = STATE_ROOT_ORACLE.getBlockInfo(_blockNumber).timestamp;
        _ezEthRateOracleAddress.updateEzEthRateData(_blockNumber, l1Timestamp, ezEthRate);
        oracleLookup[address(_ezEthRateOracleAddress)].lastBlockProofed = _blockNumber;
    }

    // ====================================================================
    // Errors
    // ====================================================================

    error OraclePairAlreadySet(address fraxOracleLayer1, address fraxOracleLayer2);
    error WrongOracleAddress();
    error StalePush();
    error MustBeGtZero();
}
