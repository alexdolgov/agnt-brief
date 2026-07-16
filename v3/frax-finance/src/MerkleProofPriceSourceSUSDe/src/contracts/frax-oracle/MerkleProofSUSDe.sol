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
// ======================== MerkleProofSUSDe ==========================
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

/// @title MerkleProofPriceSource
/// @notice Proves price round data from an L1 price source and pushes the price data to an L2 Oracle
contract MerkleProofPriceSourceSUSDe is ERC165Storage, Timelock2Step {
    /// @notice The address of the StateRootOracle on Layer 2
    IStateRootOracle public immutable STATE_ROOT_ORACLE;
    address constant UNDERLYING_L1 = 0x4c9EDD5852cd905f086C759E8383e09bff1E68B3;
    /**
     * @notice Equivalent to:
     * bytes32 slot = keccak256(
     *      abi.encodePacked(
     *          uint256(uint160(0x9D39A5DE30e57443BfF2A8307A4256c8797A3497)),
     *          uint256(2)
     *      )
     * )
     */
    bytes32 constant BALANCE_SLOT = 0x396a2330c3e96731d20b554a4cd7844bd51ef95f0419f3cf9913a09b68863984;

    using FixedPointMathLib for uint256;

    struct OracleConfig {
        address layer1Oracle;
        uint96 lastBlockProofed;
    }

    struct SUSDeProof {
        bytes[] _accountProofSUSDe;
        bytes[] _storageProofTS;
        bytes[] _storageProofLastDist;
        bytes[] _storageProofVestingAmount;
        bytes[] _accountProofUSDe;
        bytes[] _storageProofUSDeBalance;
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

    function _fetchAndProofSUSDe(
        address _sUSDeAddress,
        uint96 _blockNumber,
        SUSDeProof calldata proof
    )
        internal
        view
        returns (
            uint256 totalSupply,
            uint256 totalAssetsBalance,
            uint256 lastDistributionTimestamp,
            uint256 vestingAmount
        )
    {
        IStateRootOracle.BlockInfo memory _blockInfo = STATE_ROOT_ORACLE.getBlockInfo(_blockNumber);
        Verifier.Account memory accountProofSUSDe = MerkleTreeProver.proveStorageRoot({
            stateRootHash: _blockInfo.stateRootHash,
            proofAddress: _sUSDeAddress,
            accountProof: proof._accountProofSUSDe
        });
        totalSupply = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: accountProofSUSDe.storageRoot,
                    slot: bytes32(uint256(6)),
                    storageProof: proof._storageProofTS
                })
                .value
        );
        lastDistributionTimestamp = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: accountProofSUSDe.storageRoot,
                    slot: bytes32(uint256(14)),
                    storageProof: proof._storageProofLastDist
                })
                .value
        );
        vestingAmount = uint256(
            MerkleTreeProver
                .proveStorageSlotValue({
                    storageRootHash: accountProofSUSDe.storageRoot,
                    slot: bytes32(uint256(13)),
                    storageProof: proof._storageProofVestingAmount
                })
                .value
        );
        {
            Verifier.Account memory accountProofUSDe = MerkleTreeProver.proveStorageRoot({
                stateRootHash: _blockInfo.stateRootHash,
                proofAddress: UNDERLYING_L1,
                accountProof: proof._accountProofUSDe
            });
            totalAssetsBalance = uint256(
                MerkleTreeProver
                    .proveStorageSlotValue({
                        storageRootHash: accountProofUSDe.storageRoot,
                        slot: BALANCE_SLOT,
                        storageProof: proof._storageProofUSDeBalance
                    })
                    .value
            );
        }
        if (totalAssetsBalance == 0) revert MustBeGtZero();
        if (lastDistributionTimestamp == 0) revert MustBeGtZero();
        if (totalSupply == 0) revert MustBeGtZero();
    }

    function addRoundDataSUSDe(
        IERC4626Receiver _sUSDeAddress,
        uint96 _blockNumber,
        SUSDeProof calldata proof
    ) external {
        uint96 lastBlockProofed = oracleLookup[address(_sUSDeAddress)].lastBlockProofed;
        if (lastBlockProofed != 0) {
            if (_blockNumber < lastBlockProofed) revert StalePush();
        }
        // Address of the L1 oracle
        address _proofAddress = oracleLookup[address(_sUSDeAddress)].layer1Oracle;
        if (_proofAddress == address(0)) revert WrongOracleAddress();
        (
            uint256 totalSupply,
            uint256 totalAssetsBalance,
            uint256 lastDistributionTimestamp,
            uint256 vestingAmount
        ) = _fetchAndProofSUSDe(_proofAddress, _blockNumber, proof);
        _sUSDeAddress.updateSUSDeVaultData(
            _blockNumber,
            totalSupply,
            totalAssetsBalance,
            vestingAmount,
            lastDistributionTimestamp
        );
        oracleLookup[address(_sUSDeAddress)].lastBlockProofed = _blockNumber;
    }

    // ====================================================================
    // Errors
    // ====================================================================

    error OraclePairAlreadySet(address fraxOracleLayer1, address fraxOracleLayer2);
    error WrongOracleAddress();
    error StalePush();
    error MustBeGtZero();
}
