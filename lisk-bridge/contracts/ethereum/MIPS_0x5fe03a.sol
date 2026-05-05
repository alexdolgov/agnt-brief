// ============================================================
// FILE: lib/lib-keccak/contracts/lib/LibKeccak.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

/// @title LibKeccak
/// @notice An EVM implementation of the Keccak-f[1600] permutation.
/// @author clabby <https://github.com/clabby>
/// @custom:attribution geohot <https://github.com/geohot>
library LibKeccak {
    /// @notice The block size of the Keccak-f[1600] permutation, 1088 bits (136 bytes).
    uint256 internal constant BLOCK_SIZE_BYTES = 136;

    /// @notice The round constants for the keccak256 hash function. Packed in memory for efficient reading during the
    ///         permutation.
    bytes internal constant ROUND_CONSTANTS = abi.encode(
        0x00000000000000010000000000008082800000000000808a8000000080008000, // r1,r2,r3,r4
        0x000000000000808b000000008000000180000000800080818000000000008009, // r5,r6,r7,r8
        0x000000000000008a00000000000000880000000080008009000000008000000a, // r9,r10,r11,r12
        0x000000008000808b800000000000008b80000000000080898000000000008003, // r13,r14,r15,r16
        0x80000000000080028000000000000080000000000000800a800000008000000a, // r17,r18,r19,r20
        0x8000000080008081800000000000808000000000800000018000000080008008 // r21,r22,r23,r24
    );

    /// @notice A mask for 64-bit values.
    uint64 private constant U64_MASK = 0xFFFFFFFFFFFFFFFF;

    /// @notice The 5x5 state matrix for the keccak-f[1600] permutation.
    struct StateMatrix {
        uint64[25] state;
    }

    /// @notice Performs the Keccak-f[1600] permutation on the given 5x5 state matrix.
    function permutation(StateMatrix memory _stateMatrix) internal pure {
        // Pull the round constants into memory to avoid reallocation in the unrolled permutation loop.
        bytes memory roundConstants = ROUND_CONSTANTS;

        assembly {
            // Add 32 to the state matrix pointer to skip the data location field.
            let stateMatrixPtr := add(_stateMatrix, 0x20)
            let rcPtr := add(roundConstants, 0x20)

            // set a state element in the passed `StateMatrix` struct memory ptr.
            function setStateElem(ptr, idx, data) {
                mstore(add(ptr, shl(0x05, idx)), and(data, U64_MASK))
            }

            // fetch a state element from the passed `StateMatrix` struct memory ptr.
            function stateElem(ptr, idx) -> elem {
                elem := mload(add(ptr, shl(0x05, idx)))
            }

            // 64 bit logical shift
            function shl64(a, b) -> val {
                val := and(shl(a, b), U64_MASK)
            }

            // Performs an indivudual rho + pi computation, to be used in the full `thetaRhoPi` chain.
            function rhoPi(ptr, destIdx, srcIdx, fact, dt) {
                let xs1 := xor(stateElem(ptr, srcIdx), dt)
                let res := xor(shl(fact, xs1), shr(sub(64, fact), xs1))
                setStateElem(ptr, destIdx, res)
            }

            // xor a column in the state matrix
            function xorColumn(ptr, col) -> val {
                val :=
                    xor(
                        xor(xor(stateElem(ptr, col), stateElem(ptr, add(col, 5))), stateElem(ptr, add(col, 10))),
                        xor(stateElem(ptr, add(col, 15)), stateElem(ptr, add(col, 20)))
                    )
            }

            // Performs the `theta`, `rho`, and `pi` steps of the Keccak-f[1600] permutation on
            // the passed `StateMatrix` struct memory ptr.
            function thetaRhoPi(ptr) {
                // Theta
                let C0 := xorColumn(ptr, 0)
                let C1 := xorColumn(ptr, 1)
                let C2 := xorColumn(ptr, 2)
                let C3 := xorColumn(ptr, 3)
                let C4 := xorColumn(ptr, 4)
                let D0 := xor(xor(shl64(1, C1), shr(63, C1)), C4)
                let D1 := xor(xor(shl64(1, C2), shr(63, C2)), C0)
                let D2 := xor(xor(shl64(1, C3), shr(63, C3)), C1)
                let D3 := xor(xor(shl64(1, C4), shr(63, C4)), C2)
                let D4 := xor(xor(shl64(1, C0), shr(63, C0)), C3)

                let xs1 := xor(stateElem(ptr, 1), D1)
                let A1 := xor(shl(1, xs1), shr(63, xs1))

                setStateElem(ptr, 0, xor(stateElem(ptr, 0), D0))
                rhoPi(ptr, 1, 6, 44, D1)
                rhoPi(ptr, 6, 9, 20, D4)
                rhoPi(ptr, 9, 22, 61, D2)
                rhoPi(ptr, 22, 14, 39, D4)
                rhoPi(ptr, 14, 20, 18, D0)
                rhoPi(ptr, 20, 2, 62, D2)
                rhoPi(ptr, 2, 12, 43, D2)
                rhoPi(ptr, 12, 13, 25, D3)
                rhoPi(ptr, 13, 19, 8, D4)
                rhoPi(ptr, 19, 23, 56, D3)
                rhoPi(ptr, 23, 15, 41, D0)
                rhoPi(ptr, 15, 4, 27, D4)
                rhoPi(ptr, 4, 24, 14, D4)
                rhoPi(ptr, 24, 21, 2, D1)
                rhoPi(ptr, 21, 8, 55, D3)
                rhoPi(ptr, 8, 16, 45, D1)
                rhoPi(ptr, 16, 5, 36, D0)
                rhoPi(ptr, 5, 3, 28, D3)
                rhoPi(ptr, 3, 18, 21, D3)
                rhoPi(ptr, 18, 17, 15, D2)
                rhoPi(ptr, 17, 11, 10, D1)
                rhoPi(ptr, 11, 7, 6, D2)
                rhoPi(ptr, 7, 10, 3, D0)
                setStateElem(ptr, 10, A1)
            }

            // Inner `chi` function, unrolled in `chi` for performance.
            function innerChi(ptr, start) {
                let A0 := stateElem(ptr, start)
                let A1 := stateElem(ptr, add(start, 1))
                let A2 := stateElem(ptr, add(start, 2))
                let A3 := stateElem(ptr, add(start, 3))
                let A4 := stateElem(ptr, add(start, 4))

                setStateElem(ptr, start, xor(A0, and(not(A1), A2)))
                setStateElem(ptr, add(start, 1), xor(A1, and(not(A2), A3)))
                setStateElem(ptr, add(start, 2), xor(A2, and(not(A3), A4)))
                setStateElem(ptr, add(start, 3), xor(A3, and(not(A4), A0)))
                setStateElem(ptr, add(start, 4), xor(A4, and(not(A0), A1)))
            }

            // Performs the `chi` step of the Keccak-f[1600] permutation on the passed `StateMatrix` struct memory ptr
            function chi(ptr) {
                innerChi(ptr, 0)
                innerChi(ptr, 5)
                innerChi(ptr, 10)
                innerChi(ptr, 15)
                innerChi(ptr, 20)
            }

            // Perform the full Keccak-f[1600] permutation on a `StateMatrix` struct memory ptr for a given round.
            function permute(ptr, roundsPtr, round) {
                // Theta, Rho, Pi, Chi
                thetaRhoPi(ptr)
                chi(ptr)
                // Iota
                let roundConst := shr(192, mload(add(roundsPtr, shl(0x03, round))))
                setStateElem(ptr, 0, xor(stateElem(ptr, 0), roundConst))
            }

            // Unroll the permutation loop.
            permute(stateMatrixPtr, rcPtr, 0)
            permute(stateMatrixPtr, rcPtr, 1)
            permute(stateMatrixPtr, rcPtr, 2)
            permute(stateMatrixPtr, rcPtr, 3)
            permute(stateMatrixPtr, rcPtr, 4)
            permute(stateMatrixPtr, rcPtr, 5)
            permute(stateMatrixPtr, rcPtr, 6)
            permute(stateMatrixPtr, rcPtr, 7)
            permute(stateMatrixPtr, rcPtr, 8)
            permute(stateMatrixPtr, rcPtr, 9)
            permute(stateMatrixPtr, rcPtr, 10)
            permute(stateMatrixPtr, rcPtr, 11)
            permute(stateMatrixPtr, rcPtr, 12)
            permute(stateMatrixPtr, rcPtr, 13)
            permute(stateMatrixPtr, rcPtr, 14)
            permute(stateMatrixPtr, rcPtr, 15)
            permute(stateMatrixPtr, rcPtr, 16)
            permute(stateMatrixPtr, rcPtr, 17)
            permute(stateMatrixPtr, rcPtr, 18)
            permute(stateMatrixPtr, rcPtr, 19)
            permute(stateMatrixPtr, rcPtr, 20)
            permute(stateMatrixPtr, rcPtr, 21)
            permute(stateMatrixPtr, rcPtr, 22)
            permute(stateMatrixPtr, rcPtr, 23)
        }
    }

    /// @notice Absorb a fixed-sized block into the sponge.
    function absorb(StateMatrix memory _stateMatrix, bytes memory _input) internal pure {
        assembly {
            // The input must be 1088 bits long.
            if iszero(eq(mload(_input), 136)) { revert(0, 0) }

            let dataPtr := add(_input, 0x20)
            let statePtr := add(_stateMatrix, 0x20)

            // set a state element in the passed `StateMatrix` struct memory ptr.
            function setStateElem(ptr, idx, data) {
                mstore(add(ptr, shl(0x05, idx)), and(data, U64_MASK))
            }

            // fetch a state element from the passed `StateMatrix` struct memory ptr.
            function stateElem(ptr, idx) -> elem {
                elem := mload(add(ptr, shl(0x05, idx)))
            }

            // Inner sha3 absorb XOR function
            function absorbInner(stateMatrixPtr, inputPtr, idx) {
                let boWord := mload(add(inputPtr, shl(3, idx)))

                let res :=
                    or(
                        or(
                            or(shl(56, byte(7, boWord)), shl(48, byte(6, boWord))),
                            or(shl(40, byte(5, boWord)), shl(32, byte(4, boWord)))
                        ),
                        or(
                            or(shl(24, byte(3, boWord)), shl(16, byte(2, boWord))),
                            or(shl(8, byte(1, boWord)), byte(0, boWord))
                        )
                    )
                setStateElem(stateMatrixPtr, idx, xor(stateElem(stateMatrixPtr, idx), res))
            }

            // Unroll the input XOR loop.
            absorbInner(statePtr, dataPtr, 0)
            absorbInner(statePtr, dataPtr, 1)
            absorbInner(statePtr, dataPtr, 2)
            absorbInner(statePtr, dataPtr, 3)
            absorbInner(statePtr, dataPtr, 4)
            absorbInner(statePtr, dataPtr, 5)
            absorbInner(statePtr, dataPtr, 6)
            absorbInner(statePtr, dataPtr, 7)
            absorbInner(statePtr, dataPtr, 8)
            absorbInner(statePtr, dataPtr, 9)
            absorbInner(statePtr, dataPtr, 10)
            absorbInner(statePtr, dataPtr, 11)
            absorbInner(statePtr, dataPtr, 12)
            absorbInner(statePtr, dataPtr, 13)
            absorbInner(statePtr, dataPtr, 14)
            absorbInner(statePtr, dataPtr, 15)
            absorbInner(statePtr, dataPtr, 16)
        }
    }

    /// @notice Squeezes the final keccak256 digest from the passed `StateMatrix`.
    function squeeze(StateMatrix memory _stateMatrix) internal pure returns (bytes32 hash_) {
        assembly {
            // 64 bit logical shift
            function shl64(a, b) -> val {
                val := and(shl(a, b), U64_MASK)
            }

            // convert a big endian 64-bit value to a little endian 64-bit value.
            function toLE(beVal) -> leVal {
                beVal := or(and(shl64(8, beVal), 0xFF00FF00FF00FF00), and(shr(8, beVal), 0x00FF00FF00FF00FF))
                beVal := or(and(shl64(16, beVal), 0xFFFF0000FFFF0000), and(shr(16, beVal), 0x0000FFFF0000FFFF))
                leVal := or(shl64(32, beVal), shr(32, beVal))
            }

            // fetch a state element from the passed `StateMatrix` struct memory ptr.
            function stateElem(ptr, idx) -> elem {
                elem := mload(add(ptr, shl(0x05, idx)))
            }

            let stateMatrixPtr := add(_stateMatrix, 0x20)
            hash_ :=
                or(
                    or(shl(192, toLE(stateElem(stateMatrixPtr, 0))), shl(128, toLE(stateElem(stateMatrixPtr, 1)))),
                    or(shl(64, toLE(stateElem(stateMatrixPtr, 2))), toLE(stateElem(stateMatrixPtr, 3)))
                )
        }
    }

    /// @notice Pads input data to an even multiple of the Keccak-f[1600] permutation block size, 1088 bits (136 bytes).
    function pad(bytes calldata _data) internal pure returns (bytes memory padded_) {
        assembly {
            padded_ := mload(0x40)

            // Grab the original length of `_data`
            let len := _data.length

            let dataPtr := add(padded_, 0x20)
            let endPtr := add(dataPtr, len)

            // Copy the data into memory.
            calldatacopy(dataPtr, _data.offset, len)

            let modBlockSize := mod(len, BLOCK_SIZE_BYTES)
            switch modBlockSize
            case false {
                // Clean the full padding block. It is possible that this memory is dirty, since solidity sometimes does
                // not update the free memory pointer when allocating memory, for example with external calls. To do
                // this, we read out-of-bounds from the calldata, which will always return 0 bytes.
                calldatacopy(endPtr, calldatasize(), 0x88)

                // If the input is a perfect multiple of the block size, then we add a full extra block of padding.
                mstore8(endPtr, 0x01)
                mstore8(sub(add(endPtr, BLOCK_SIZE_BYTES), 0x01), 0x80)

                // Update the length of the data to include the padding.
                mstore(padded_, add(len, BLOCK_SIZE_BYTES))
            }
            default {
                // If the input is not a perfect multiple of the block size, then we add a partial block of padding.
                // This should entail a set bit after the input, followed by as many zero bits as necessary to fill
                // the block, followed by a single 1 bit in the lowest-order bit of the final block.

                let remaining := sub(BLOCK_SIZE_BYTES, modBlockSize)
                let newLen := add(len, remaining)
                let paddedEndPtr := add(dataPtr, newLen)

                // Clean the remainder to ensure that the intermediate data between the padding bits is 0. It is
                // possible that this memory is dirty, since solidity sometimes does not update the free memory pointer
                // when allocating memory, for example with external calls. To do this, we read out-of-bounds from the
                // calldata, which will always return 0 bytes.
                let partialRemainder := sub(paddedEndPtr, endPtr)
                calldatacopy(endPtr, calldatasize(), partialRemainder)

                // Store the padding bits.
                mstore8(sub(paddedEndPtr, 0x01), 0x80)
                mstore8(endPtr, or(byte(0x00, mload(endPtr)), 0x01))

                // Update the length of the data to include the padding. The length should be a multiple of the
                // block size after this.
                mstore(padded_, newLen)
            }

            // Update the free memory pointer.
            mstore(0x40, add(padded_, and(add(mload(padded_), 0x3F), not(0x1F))))
        }
    }

    /// @notice Pads input data to an even multiple of the Keccak-f[1600] permutation block size, 1088 bits (136 bytes).
    function padMemory(bytes memory _data) internal pure returns (bytes memory padded_) {
        assembly {
            padded_ := mload(0x40)

            // Grab the original length of `_data`
            let len := mload(_data)

            let dataPtr := add(padded_, 0x20)
            let endPtr := add(dataPtr, len)

            // Copy the data.
            let originalDataPtr := add(_data, 0x20)
            for { let i := 0x00 } lt(i, len) { i := add(i, 0x20) } {
                mstore(add(dataPtr, i), mload(add(originalDataPtr, i)))
            }

            let modBlockSize := mod(len, BLOCK_SIZE_BYTES)
            switch modBlockSize
            case false {
                // Clean the full padding block. It is possible that this memory is dirty, since solidity sometimes does
                // not update the free memory pointer when allocating memory, for example with external calls. To do
                // this, we read out-of-bounds from the calldata, which will always return 0 bytes.
                calldatacopy(endPtr, calldatasize(), 0x88)

                // If the input is a perfect multiple of the block size, then we add a full extra block of padding.
                mstore8(sub(add(endPtr, BLOCK_SIZE_BYTES), 0x01), 0x80)
                mstore8(endPtr, 0x01)

                // Update the length of the data to include the padding.
                mstore(padded_, add(len, BLOCK_SIZE_BYTES))
            }
            default {
                // If the input is not a perfect multiple of the block size, then we add a partial block of padding.
                // This should entail a set bit after the input, followed by as many zero bits as necessary to fill
                // the block, followed by a single 1 bit in the lowest-order bit of the final block.

                let remaining := sub(BLOCK_SIZE_BYTES, modBlockSize)
                let newLen := add(len, remaining)
                let paddedEndPtr := add(dataPtr, newLen)

                // Clean the remainder to ensure that the intermediate data between the padding bits is 0. It is
                // possible that this memory is dirty, since solidity sometimes does not update the free memory pointer
                // when allocating memory, for example with external calls. To do this, we read out-of-bounds from the
                // calldata, which will always return 0 bytes.
                let partialRemainder := sub(paddedEndPtr, endPtr)
                calldatacopy(endPtr, calldatasize(), partialRemainder)

                // Store the padding bits.
                mstore8(sub(paddedEndPtr, 0x01), 0x80)
                mstore8(endPtr, or(byte(0x00, mload(endPtr)), 0x01))

                // Update the length of the data to include the padding. The length should be a multiple of the
                // block size after this.
                mstore(padded_, newLen)
            }

            // Update the free memory pointer.
            mstore(0x40, add(padded_, and(add(mload(padded_), 0x3F), not(0x1F))))
        }
    }
}

// ============================================================
// FILE: src/cannon/interfaces/IPreimageOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { LibKeccak } from "@lib-keccak/LibKeccak.sol";
import { LPPMetaData } from "src/cannon/libraries/CannonTypes.sol";

interface IPreimageOracle {
    struct Leaf {
        bytes input;
        uint256 index;
        bytes32 stateCommitment;
    }

    error ActiveProposal();
    error AlreadyFinalized();
    error AlreadyInitialized();
    error BadProposal();
    error BondTransferFailed();
    error InsufficientBond();
    error InvalidInputSize();
    error InvalidPreimage();
    error InvalidProof();
    error NotEOA();
    error NotInitialized();
    error PartOffsetOOB();
    error PostStateMatches();
    error StatesNotContiguous();
    error TreeSizeOverflow();
    error WrongStartingBlock();

    function KECCAK_TREE_DEPTH() external view returns (uint256);
    function MAX_LEAF_COUNT() external view returns (uint256);
    function MIN_BOND_SIZE() external view returns (uint256);
    function PRECOMPILE_CALL_RESERVED_GAS() external view returns (uint256);
    function addLeavesLPP(
        uint256 _uuid,
        uint256 _inputStartBlock,
        bytes memory _input,
        bytes32[] memory _stateCommitments,
        bool _finalize
    )
        external;
    function challengeFirstLPP(
        address _claimant,
        uint256 _uuid,
        Leaf memory _postState,
        bytes32[] memory _postStateProof
    )
        external;
    function challengeLPP(
        address _claimant,
        uint256 _uuid,
        LibKeccak.StateMatrix memory _stateMatrix,
        Leaf memory _preState,
        bytes32[] memory _preStateProof,
        Leaf memory _postState,
        bytes32[] memory _postStateProof
    )
        external;
    function challengePeriod() external view returns (uint256 challengePeriod_);
    function getTreeRootLPP(address _owner, uint256 _uuid) external view returns (bytes32 treeRoot_);
    function initLPP(uint256 _uuid, uint32 _partOffset, uint32 _claimedSize) external payable;
    function loadBlobPreimagePart(
        uint256 _z,
        uint256 _y,
        bytes memory _commitment,
        bytes memory _proof,
        uint256 _partOffset
    )
        external;
    function loadKeccak256PreimagePart(uint256 _partOffset, bytes memory _preimage) external;
    function loadLocalData(
        uint256 _ident,
        bytes32 _localContext,
        bytes32 _word,
        uint256 _size,
        uint256 _partOffset
    )
        external
        returns (bytes32 key_);
    function loadPrecompilePreimagePart(
        uint256 _partOffset,
        address _precompile,
        uint64 _requiredGas,
        bytes memory _input
    )
        external;
    function loadSha256PreimagePart(uint256 _partOffset, bytes memory _preimage) external;
    function minProposalSize() external view returns (uint256 minProposalSize_);
    function preimageLengths(bytes32) external view returns (uint256);
    function preimagePartOk(bytes32, uint256) external view returns (bool);
    function preimageParts(bytes32, uint256) external view returns (bytes32);
    function proposalBlocks(address, uint256, uint256) external view returns (uint64);
    function proposalBlocksLen(address _claimant, uint256 _uuid) external view returns (uint256 len_);
    function proposalBonds(address, uint256) external view returns (uint256);
    function proposalBranches(address, uint256, uint256) external view returns (bytes32);
    function proposalCount() external view returns (uint256 count_);
    function proposalMetadata(address, uint256) external view returns (LPPMetaData);
    function proposalParts(address, uint256) external view returns (bytes32);
    function proposals(uint256) external view returns (address claimant, uint256 uuid); // nosemgrep:
        // sol-style-return-arg-fmt
    function readPreimage(bytes32 _key, uint256 _offset) external view returns (bytes32 dat_, uint256 datLen_);
    function squeezeLPP(
        address _claimant,
        uint256 _uuid,
        LibKeccak.StateMatrix memory _stateMatrix,
        Leaf memory _preState,
        bytes32[] memory _preStateProof,
        Leaf memory _postState,
        bytes32[] memory _postStateProof
    )
        external;
    function version() external view returns (string memory);
    function zeroHashes(uint256) external view returns (bytes32);

    function __constructor__(uint256 _minProposalSize, uint256 _challengePeriod) external;
}

// ============================================================
// FILE: src/cannon/libraries/CannonErrors.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

/// @notice Thrown when a passed part offset is out of bounds.
error PartOffsetOOB();

/// @notice Thrown when insufficient gas is provided when loading precompile preimages.
error NotEnoughGas();

/// @notice Thrown when a merkle proof fails to verify.
error InvalidProof();

/// @notice Thrown when the prestate preimage doesn't match the claimed preimage.
error InvalidPreimage();

/// @notice Thrown when a leaf with an invalid input size is added.
error InvalidInputSize();

/// @notice Thrown when data is submitted out of order in a large preimage proposal.
error WrongStartingBlock();

/// @notice Thrown when the pre and post states passed aren't contiguous.
error StatesNotContiguous();

/// @notice Thrown when the permutation yields the expected result.
error PostStateMatches();

/// @notice Thrown when the preimage is too large to fit in the tree.
error TreeSizeOverflow();

/// @notice Thrown when the preimage proposal has already been finalized.
error AlreadyFinalized();

/// @notice Thrown when the proposal has not matured past the challenge period.
error ActiveProposal();

/// @notice Thrown when attempting to finalize a proposal that has been challenged.
error BadProposal();

/// @notice Thrown when attempting to add leaves to a preimage proposal that has not been initialized.
error NotInitialized();

/// @notice Thrown when attempting to re-initialize an existing large preimage proposal.
error AlreadyInitialized();

/// @notice Thrown when the caller of a function is not an EOA.
error NotEOA();

/// @notice Thrown when an insufficient bond is provided for a large preimage proposal.
error InsufficientBond();

/// @notice Thrown when a bond transfer fails.
error BondTransferFailed();

/// @notice Thrown when the value of the exited boolean is not 0 or 1.
error InvalidExitedValue();

/// @notice Thrown when reading an invalid memory
error InvalidMemoryProof();

/// @notice Thrown when the second memory location is invalid
error InvalidSecondMemoryProof();

/// @notice Thrown when an RMW instruction is expected, but a different instruction is provided.
error InvalidRMWInstruction();

// ============================================================
// FILE: src/cannon/libraries/CannonTypes.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

using LPPMetadataLib for LPPMetaData global;

/// @notice Packed LPP metadata.
/// ┌─────────────┬────────────────────────────────────────────┐
/// │ Bit Offsets │                Description                 │
/// ├─────────────┼────────────────────────────────────────────┤
/// │ [0, 64)     │ Timestamp (Finalized - All data available) │
/// │ [64, 96)    │ Part Offset                                │
/// │ [96, 128)   │ Claimed Size                               │
/// │ [128, 160)  │ Blocks Processed (Inclusive of Padding)    │
/// │ [160, 192)  │ Bytes Processed (Non-inclusive of Padding) │
/// │ [192, 256)  │ Countered                                  │
/// └─────────────┴────────────────────────────────────────────┘
type LPPMetaData is bytes32;

/// @notice LPP metadata UDT extension functions.
library LPPMetadataLib {
    uint256 private constant U64_MASK = 0xFFFFFFFFFFFFFFFF;
    uint256 private constant U32_MASK = 0xFFFFFFFF;

    function setTimestamp(LPPMetaData _self, uint64 _timestamp) internal pure returns (LPPMetaData self_) {
        assembly {
            self_ := or(shl(192, _timestamp), and(_self, not(shl(192, U64_MASK))))
        }
    }

    function setPartOffset(LPPMetaData _self, uint32 _partOffset) internal pure returns (LPPMetaData self_) {
        assembly {
            self_ := or(shl(160, _partOffset), and(_self, not(shl(160, U32_MASK))))
        }
    }

    function setClaimedSize(LPPMetaData _self, uint32 _claimedSize) internal pure returns (LPPMetaData self_) {
        assembly {
            self_ := or(shl(128, _claimedSize), and(_self, not(shl(128, U32_MASK))))
        }
    }

    function setBlocksProcessed(LPPMetaData _self, uint32 _blocksProcessed) internal pure returns (LPPMetaData self_) {
        assembly {
            self_ := or(shl(96, _blocksProcessed), and(_self, not(shl(96, U32_MASK))))
        }
    }

    function setBytesProcessed(LPPMetaData _self, uint32 _bytesProcessed) internal pure returns (LPPMetaData self_) {
        assembly {
            self_ := or(shl(64, _bytesProcessed), and(_self, not(shl(64, U32_MASK))))
        }
    }

    function setCountered(LPPMetaData _self, bool _countered) internal pure returns (LPPMetaData self_) {
        assembly {
            self_ := or(_countered, and(_self, not(U64_MASK)))
        }
    }

    function timestamp(LPPMetaData _self) internal pure returns (uint64 timestamp_) {
        assembly {
            timestamp_ := shr(192, _self)
        }
    }

    function partOffset(LPPMetaData _self) internal pure returns (uint64 partOffset_) {
        assembly {
            partOffset_ := and(shr(160, _self), U32_MASK)
        }
    }

    function claimedSize(LPPMetaData _self) internal pure returns (uint32 claimedSize_) {
        assembly {
            claimedSize_ := and(shr(128, _self), U32_MASK)
        }
    }

    function blocksProcessed(LPPMetaData _self) internal pure returns (uint32 blocksProcessed_) {
        assembly {
            blocksProcessed_ := and(shr(96, _self), U32_MASK)
        }
    }

    function bytesProcessed(LPPMetaData _self) internal pure returns (uint32 bytesProcessed_) {
        assembly {
            bytesProcessed_ := and(shr(64, _self), U32_MASK)
        }
    }

    function countered(LPPMetaData _self) internal pure returns (bool countered_) {
        assembly {
            countered_ := and(_self, U64_MASK)
        }
    }
}

// ============================================================
// FILE: src/cannon/libraries/MIPSInstructions.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import { MIPSMemory } from "src/cannon/libraries/MIPSMemory.sol";
import { MIPSState as st } from "src/cannon/libraries/MIPSState.sol";

library MIPSInstructions {
    uint32 internal constant OP_LOAD_LINKED = 0x30;
    uint32 internal constant OP_STORE_CONDITIONAL = 0x38;
    uint32 internal constant REG_RA = 31;

    struct CoreStepLogicParams {
        /// @param opcode The opcode value parsed from insn_.
        st.CpuScalars cpu;
        /// @param registers The CPU registers.
        uint32[32] registers;
        /// @param memRoot The current merkle root of the memory.
        bytes32 memRoot;
        /// @param memProofOffset The offset in calldata specify where the memory merkle proof is located.
        uint256 memProofOffset;
        /// @param insn The current 32-bit instruction at the pc.
        uint32 insn;
        /// @param cpu The CPU scalar fields.
        uint32 opcode;
        /// @param fun The function value parsed from insn_.
        uint32 fun;
    }

    /// @param _pc The program counter.
    /// @param _memRoot The current memory root.
    /// @param _insnProofOffset The calldata offset of the memory proof for the current instruction.
    /// @return insn_ The current 32-bit instruction at the pc.
    /// @return opcode_ The opcode value parsed from insn_.
    /// @return fun_ The function value parsed from insn_.
    function getInstructionDetails(
        uint32 _pc,
        bytes32 _memRoot,
        uint256 _insnProofOffset
    )
        internal
        pure
        returns (uint32 insn_, uint32 opcode_, uint32 fun_)
    {
        unchecked {
            insn_ = MIPSMemory.readMem(_memRoot, _pc, _insnProofOffset);
            opcode_ = insn_ >> 26; // First 6-bits
            fun_ = insn_ & 0x3f; // Last 6-bits

            return (insn_, opcode_, fun_);
        }
    }

    /// @notice Execute core MIPS step logic.
    /// @return newMemRoot_ The updated merkle root of memory after any modifications, may be unchanged.
    /// @return memUpdated_ True if memory was modified.
    /// @return memAddr_ Holds the memory address that was updated if memUpdated_ is true.
    function execMipsCoreStepLogic(CoreStepLogicParams memory _args)
        internal
        pure
        returns (bytes32 newMemRoot_, bool memUpdated_, uint32 memAddr_)
    {
        unchecked {
            newMemRoot_ = _args.memRoot;
            memUpdated_ = false;
            memAddr_ = 0;

            // j-type j/jal
            if (_args.opcode == 2 || _args.opcode == 3) {
                // Take top 4 bits of the next PC (its 256 MB region), and concatenate with the 26-bit offset
                uint32 target = (_args.cpu.nextPC & 0xF0000000) | (_args.insn & 0x03FFFFFF) << 2;
                handleJump(_args.cpu, _args.registers, _args.opcode == 2 ? 0 : 31, target);
                return (newMemRoot_, memUpdated_, memAddr_);
            }

            // register fetch
            uint32 rs = 0; // source register 1 value
            uint32 rt = 0; // source register 2 / temp value
            uint32 rtReg = (_args.insn >> 16) & 0x1F;

            // R-type or I-type (stores rt)
            rs = _args.registers[(_args.insn >> 21) & 0x1F];
            uint32 rdReg = rtReg;

            if (_args.opcode == 0 || _args.opcode == 0x1c) {
                // R-type (stores rd)
                rt = _args.registers[rtReg];
                rdReg = (_args.insn >> 11) & 0x1F;
            } else if (_args.opcode < 0x20) {
                // rt is SignExtImm
                // don't sign extend for andi, ori, xori
                if (_args.opcode == 0xC || _args.opcode == 0xD || _args.opcode == 0xe) {
                    // ZeroExtImm
                    rt = _args.insn & 0xFFFF;
                } else {
                    // SignExtImm
                    rt = signExtend(_args.insn & 0xFFFF, 16);
                }
            } else if (_args.opcode >= 0x28 || _args.opcode == 0x22 || _args.opcode == 0x26) {
                // store rt value with store
                rt = _args.registers[rtReg];

                // store actual rt with lwl and lwr
                rdReg = rtReg;
            }

            if ((_args.opcode >= 4 && _args.opcode < 8) || _args.opcode == 1) {
                handleBranch({
                    _cpu: _args.cpu,
                    _registers: _args.registers,
                    _opcode: _args.opcode,
                    _insn: _args.insn,
                    _rtReg: rtReg,
                    _rs: rs
                });
                return (newMemRoot_, memUpdated_, memAddr_);
            }

            uint32 storeAddr = 0xFF_FF_FF_FF;
            // memory fetch (all I-type)
            // we do the load for stores also
            uint32 mem = 0;
            if (_args.opcode >= 0x20) {
                // M[R[rs]+SignExtImm]
                rs += signExtend(_args.insn & 0xFFFF, 16);
                uint32 addr = rs & 0xFFFFFFFC;
                mem = MIPSMemory.readMem(_args.memRoot, addr, _args.memProofOffset);
                if (_args.opcode >= 0x28) {
                    // store
                    storeAddr = addr;
                    // store opcodes don't write back to a register
                    rdReg = 0;
                }
            }

            // ALU
            // Note: swr outputs more than 4 bytes without the mask 0xffFFffFF
            uint32 val = executeMipsInstruction(_args.insn, _args.opcode, _args.fun, rs, rt, mem) & 0xffFFffFF;

            if (_args.opcode == 0 && _args.fun >= 8 && _args.fun < 0x1c) {
                if (_args.fun == 8 || _args.fun == 9) {
                    // jr/jalr
                    handleJump(_args.cpu, _args.registers, _args.fun == 8 ? 0 : rdReg, rs);
                    return (newMemRoot_, memUpdated_, memAddr_);
                }

                if (_args.fun == 0xa) {
                    // movz
                    handleRd(_args.cpu, _args.registers, rdReg, rs, rt == 0);
                    return (newMemRoot_, memUpdated_, memAddr_);
                }
                if (_args.fun == 0xb) {
                    // movn
                    handleRd(_args.cpu, _args.registers, rdReg, rs, rt != 0);
                    return (newMemRoot_, memUpdated_, memAddr_);
                }

                // lo and hi registers
                // can write back
                if (_args.fun >= 0x10 && _args.fun < 0x1c) {
                    handleHiLo({
                        _cpu: _args.cpu,
                        _registers: _args.registers,
                        _fun: _args.fun,
                        _rs: rs,
                        _rt: rt,
                        _storeReg: rdReg
                    });
                    return (newMemRoot_, memUpdated_, memAddr_);
                }
            }

            // write memory
            if (storeAddr != 0xFF_FF_FF_FF) {
                newMemRoot_ = MIPSMemory.writeMem(storeAddr, _args.memProofOffset, val);
                memUpdated_ = true;
                memAddr_ = storeAddr;
            }

            // write back the value to destination register
            handleRd(_args.cpu, _args.registers, rdReg, val, true);

            return (newMemRoot_, memUpdated_, memAddr_);
        }
    }

    function signExtendImmediate(uint32 _insn) internal pure returns (uint32 offset_) {
        unchecked {
            return signExtend(_insn & 0xFFFF, 16);
        }
    }

    /// @notice Execute an instruction.
    function executeMipsInstruction(
        uint32 _insn,
        uint32 _opcode,
        uint32 _fun,
        uint32 _rs,
        uint32 _rt,
        uint32 _mem
    )
        internal
        pure
        returns (uint32 out_)
    {
        unchecked {
            if (_opcode == 0 || (_opcode >= 8 && _opcode < 0xF)) {
                assembly {
                    // transform ArithLogI to SPECIAL
                    switch _opcode
                    // addi
                    case 0x8 { _fun := 0x20 }
                    // addiu
                    case 0x9 { _fun := 0x21 }
                    // stli
                    case 0xA { _fun := 0x2A }
                    // sltiu
                    case 0xB { _fun := 0x2B }
                    // andi
                    case 0xC { _fun := 0x24 }
                    // ori
                    case 0xD { _fun := 0x25 }
                    // xori
                    case 0xE { _fun := 0x26 }
                }

                // sll
                if (_fun == 0x00) {
                    return _rt << ((_insn >> 6) & 0x1F);
                }
                // srl
                else if (_fun == 0x02) {
                    return _rt >> ((_insn >> 6) & 0x1F);
                }
                // sra
                else if (_fun == 0x03) {
                    uint32 shamt = (_insn >> 6) & 0x1F;
                    return signExtend(_rt >> shamt, 32 - shamt);
                }
                // sllv
                else if (_fun == 0x04) {
                    return _rt << (_rs & 0x1F);
                }
                // srlv
                else if (_fun == 0x6) {
                    return _rt >> (_rs & 0x1F);
                }
                // srav
                else if (_fun == 0x07) {
                    // shamt here is different than the typical shamt which comes from the
                    // instruction itself, here it comes from the rs register
                    uint32 shamt = _rs & 0x1F;
                    return signExtend(_rt >> shamt, 32 - shamt);
                }
                // functs in range [0x8, 0x1b] are handled specially by other functions
                // Explicitly enumerate each funct in range to reduce code diff against Go Vm
                // jr
                else if (_fun == 0x08) {
                    return _rs;
                }
                // jalr
                else if (_fun == 0x09) {
                    return _rs;
                }
                // movz
                else if (_fun == 0x0a) {
                    return _rs;
                }
                // movn
                else if (_fun == 0x0b) {
                    return _rs;
                }
                // syscall
                else if (_fun == 0x0c) {
                    return _rs;
                }
                // 0x0d - break not supported
                // sync
                else if (_fun == 0x0f) {
                    return _rs;
                }
                // mfhi
                else if (_fun == 0x10) {
                    return _rs;
                }
                // mthi
                else if (_fun == 0x11) {
                    return _rs;
                }
                // mflo
                else if (_fun == 0x12) {
                    return _rs;
                }
                // mtlo
                else if (_fun == 0x13) {
                    return _rs;
                }
                // mult
                else if (_fun == 0x18) {
                    return _rs;
                }
                // multu
                else if (_fun == 0x19) {
                    return _rs;
                }
                // div
                else if (_fun == 0x1a) {
                    return _rs;
                }
                // divu
                else if (_fun == 0x1b) {
                    return _rs;
                }
                // The rest includes transformed R-type arith imm instructions
                // add
                else if (_fun == 0x20) {
                    return (_rs + _rt);
                }
                // addu
                else if (_fun == 0x21) {
                    return (_rs + _rt);
                }
                // sub
                else if (_fun == 0x22) {
                    return (_rs - _rt);
                }
                // subu
                else if (_fun == 0x23) {
                    return (_rs - _rt);
                }
                // and
                else if (_fun == 0x24) {
                    return (_rs & _rt);
                }
                // or
                else if (_fun == 0x25) {
                    return (_rs | _rt);
                }
                // xor
                else if (_fun == 0x26) {
                    return (_rs ^ _rt);
                }
                // nor
                else if (_fun == 0x27) {
                    return ~(_rs | _rt);
                }
                // slti
                else if (_fun == 0x2a) {
                    return int32(_rs) < int32(_rt) ? 1 : 0;
                }
                // sltiu
                else if (_fun == 0x2b) {
                    return _rs < _rt ? 1 : 0;
                } else {
                    revert("invalid instruction");
                }
            } else {
                // SPECIAL2
                if (_opcode == 0x1C) {
                    // mul
                    if (_fun == 0x2) {
                        return uint32(int32(_rs) * int32(_rt));
                    }
                    // clz, clo
                    else if (_fun == 0x20 || _fun == 0x21) {
                        if (_fun == 0x20) {
                            _rs = ~_rs;
                        }
                        uint32 i = 0;
                        while (_rs & 0x80000000 != 0) {
                            i++;
                            _rs <<= 1;
                        }
                        return i;
                    }
                }
                // lui
                else if (_opcode == 0x0F) {
                    return _rt << 16;
                }
                // lb
                else if (_opcode == 0x20) {
                    return selectSubWord(_rs, _mem, 1, true);
                }
                // lh
                else if (_opcode == 0x21) {
                    return selectSubWord(_rs, _mem, 2, true);
                }
                // lwl
                else if (_opcode == 0x22) {
                    uint32 val = _mem << ((_rs & 3) * 8);
                    uint32 mask = uint32(0xFFFFFFFF) << ((_rs & 3) * 8);
                    return (_rt & ~mask) | val;
                }
                // lw
                else if (_opcode == 0x23) {
                    return selectSubWord(_rs, _mem, 4, true);
                }
                // lbu
                else if (_opcode == 0x24) {
                    return selectSubWord(_rs, _mem, 1, false);
                }
                //  lhu
                else if (_opcode == 0x25) {
                    return selectSubWord(_rs, _mem, 2, false);
                }
                //  lwr
                else if (_opcode == 0x26) {
                    uint32 val = _mem >> (24 - (_rs & 3) * 8);
                    uint32 mask = uint32(0xFFFFFFFF) >> (24 - (_rs & 3) * 8);
                    return (_rt & ~mask) | val;
                }
                //  sb
                else if (_opcode == 0x28) {
                    return updateSubWord(_rs, _mem, 1, _rt);
                }
                //  sh
                else if (_opcode == 0x29) {
                    return updateSubWord(_rs, _mem, 2, _rt);
                }
                //  swl
                else if (_opcode == 0x2a) {
                    uint32 val = _rt >> ((_rs & 3) * 8);
                    uint32 mask = uint32(0xFFFFFFFF) >> ((_rs & 3) * 8);
                    return (_mem & ~mask) | val;
                }
                //  sw
                else if (_opcode == 0x2b) {
                    return updateSubWord(_rs, _mem, 4, _rt);
                }
                //  swr
                else if (_opcode == 0x2e) {
                    uint32 val = _rt << (24 - (_rs & 3) * 8);
                    uint32 mask = uint32(0xFFFFFFFF) << (24 - (_rs & 3) * 8);
                    return (_mem & ~mask) | val;
                } else {
                    revert("invalid instruction");
                }
            }
            revert("invalid instruction");
        }
    }

    /// @notice Extends the value leftwards with its most significant bit (sign extension).
    function signExtend(uint32 _dat, uint32 _idx) internal pure returns (uint32 out_) {
        unchecked {
            bool isSigned = (_dat >> (_idx - 1)) != 0;
            uint256 signed = ((1 << (32 - _idx)) - 1) << _idx;
            uint256 mask = (1 << _idx) - 1;
            return uint32(_dat & mask | (isSigned ? signed : 0));
        }
    }

    /// @notice Handles a branch instruction, updating the MIPS state PC where needed.
    /// @param _cpu Holds the state of cpu scalars pc, nextPC, hi, lo.
    /// @param _registers Holds the current state of the cpu registers.
    /// @param _opcode The opcode of the branch instruction.
    /// @param _insn The instruction to be executed.
    /// @param _rtReg The register to be used for the branch.
    /// @param _rs The register to be compared with the branch register.
    function handleBranch(
        st.CpuScalars memory _cpu,
        uint32[32] memory _registers,
        uint32 _opcode,
        uint32 _insn,
        uint32 _rtReg,
        uint32 _rs
    )
        internal
        pure
    {
        unchecked {
            bool shouldBranch = false;

            if (_cpu.nextPC != _cpu.pc + 4) {
                revert("branch in delay slot");
            }

            // beq/bne: Branch on equal / not equal
            if (_opcode == 4 || _opcode == 5) {
                uint32 rt = _registers[_rtReg];
                shouldBranch = (_rs == rt && _opcode == 4) || (_rs != rt && _opcode == 5);
            }
            // blez: Branches if instruction is less than or equal to zero
            else if (_opcode == 6) {
                shouldBranch = int32(_rs) <= 0;
            }
            // bgtz: Branches if instruction is greater than zero
            else if (_opcode == 7) {
                shouldBranch = int32(_rs) > 0;
            }
            // bltz/bgez: Branch on less than zero / greater than or equal to zero
            else if (_opcode == 1) {
                // regimm
                uint32 rtv = ((_insn >> 16) & 0x1F);
                if (rtv == 0) {
                    shouldBranch = int32(_rs) < 0;
                }
                // bltzal
                if (rtv == 0x10) {
                    shouldBranch = int32(_rs) < 0;
                    _registers[31] = _cpu.pc + 8; // always set regardless of branch taken
                }
                if (rtv == 1) {
                    shouldBranch = int32(_rs) >= 0;
                }
                // bgezal (i.e. bal mnemonic)
                if (rtv == 0x11) {
                    shouldBranch = int32(_rs) >= 0;
                    _registers[REG_RA] = _cpu.pc + 8; // always set regardless of branch taken
                }
            }

            // Update the state's previous PC
            uint32 prevPC = _cpu.pc;

            // Execute the delay slot first
            _cpu.pc = _cpu.nextPC;

            // If we should branch, update the PC to the branch target
            // Otherwise, proceed to the next instruction
            if (shouldBranch) {
                _cpu.nextPC = prevPC + 4 + (signExtend(_insn & 0xFFFF, 16) << 2);
            } else {
                _cpu.nextPC = _cpu.nextPC + 4;
            }
        }
    }

    /// @notice Handles HI and LO register instructions.
    /// @param _cpu Holds the state of cpu scalars pc, nextPC, hi, lo.
    /// @param _registers Holds the current state of the cpu registers.
    /// @param _fun The function code of the instruction.
    /// @param _rs The value of the RS register.
    /// @param _rt The value of the RT register.
    /// @param _storeReg The register to store the result in.
    function handleHiLo(
        st.CpuScalars memory _cpu,
        uint32[32] memory _registers,
        uint32 _fun,
        uint32 _rs,
        uint32 _rt,
        uint32 _storeReg
    )
        internal
        pure
    {
        unchecked {
            uint32 val = 0;

            // mfhi: Move the contents of the HI register into the destination
            if (_fun == 0x10) {
                val = _cpu.hi;
            }
            // mthi: Move the contents of the source into the HI register
            else if (_fun == 0x11) {
                _cpu.hi = _rs;
            }
            // mflo: Move the contents of the LO register into the destination
            else if (_fun == 0x12) {
                val = _cpu.lo;
            }
            // mtlo: Move the contents of the source into the LO register
            else if (_fun == 0x13) {
                _cpu.lo = _rs;
            }
            // mult: Multiplies `rs` by `rt` and stores the result in HI and LO registers
            else if (_fun == 0x18) {
                uint64 acc = uint64(int64(int32(_rs)) * int64(int32(_rt)));
                _cpu.hi = uint32(acc >> 32);
                _cpu.lo = uint32(acc);
            }
            // multu: Unsigned multiplies `rs` by `rt` and stores the result in HI and LO registers
            else if (_fun == 0x19) {
                uint64 acc = uint64(uint64(_rs) * uint64(_rt));
                _cpu.hi = uint32(acc >> 32);
                _cpu.lo = uint32(acc);
            }
            // div: Divides `rs` by `rt`.
            // Stores the quotient in LO
            // And the remainder in HI
            else if (_fun == 0x1a) {
                if (int32(_rt) == 0) {
                    revert("MIPS: division by zero");
                }
                _cpu.hi = uint32(int32(_rs) % int32(_rt));
                _cpu.lo = uint32(int32(_rs) / int32(_rt));
            }
            // divu: Unsigned divides `rs` by `rt`.
            // Stores the quotient in LO
            // And the remainder in HI
            else if (_fun == 0x1b) {
                if (_rt == 0) {
                    revert("MIPS: division by zero");
                }
                _cpu.hi = _rs % _rt;
                _cpu.lo = _rs / _rt;
            }

            // Store the result in the destination register, if applicable
            if (_storeReg != 0) {
                _registers[_storeReg] = val;
            }

            // Update the PC
            _cpu.pc = _cpu.nextPC;
            _cpu.nextPC = _cpu.nextPC + 4;
        }
    }

    /// @notice Handles a jump instruction, updating the MIPS state PC where needed.
    /// @param _cpu Holds the state of cpu scalars pc, nextPC, hi, lo.
    /// @param _registers Holds the current state of the cpu registers.
    /// @param _linkReg The register to store the link to the instruction after the delay slot instruction.
    /// @param _dest The destination to jump to.
    function handleJump(
        st.CpuScalars memory _cpu,
        uint32[32] memory _registers,
        uint32 _linkReg,
        uint32 _dest
    )
        internal
        pure
    {
        unchecked {
            if (_cpu.nextPC != _cpu.pc + 4) {
                revert("jump in delay slot");
            }

            // Update the next PC to the jump destination.
            uint32 prevPC = _cpu.pc;
            _cpu.pc = _cpu.nextPC;
            _cpu.nextPC = _dest;

            // Update the link-register to the instruction after the delay slot instruction.
            if (_linkReg != 0) {
                _registers[_linkReg] = prevPC + 8;
            }
        }
    }

    /// @notice Handles a storing a value into a register.
    /// @param _cpu Holds the state of cpu scalars pc, nextPC, hi, lo.
    /// @param _registers Holds the current state of the cpu registers.
    /// @param _storeReg The register to store the value into.
    /// @param _val The value to store.
    /// @param _conditional Whether or not the store is conditional.
    function handleRd(
        st.CpuScalars memory _cpu,
        uint32[32] memory _registers,
        uint32 _storeReg,
        uint32 _val,
        bool _conditional
    )
        internal
        pure
    {
        unchecked {
            // The destination register must be valid.
            require(_storeReg < 32, "valid register");

            // Never write to reg 0, and it can be conditional (movz, movn).
            if (_storeReg != 0 && _conditional) {
                _registers[_storeReg] = _val;
            }

            // Update the PC.
            _cpu.pc = _cpu.nextPC;
            _cpu.nextPC = _cpu.nextPC + 4;
        }
    }

    /// @notice Selects a subword of byteLength size contained in memWord based on the low-order bits of vaddr
    /// @param _vaddr The virtual address of the the subword.
    /// @param _memWord The full word to select a subword from.
    /// @param _byteLength The size of the subword.
    /// @param _signExtend Whether to sign extend the selected subwrod.
    function selectSubWord(
        uint32 _vaddr,
        uint32 _memWord,
        uint32 _byteLength,
        bool _signExtend
    )
        internal
        pure
        returns (uint32 retval_)
    {
        (uint32 dataMask, uint32 bitOffset, uint32 bitLength) = calculateSubWordMaskAndOffset(_vaddr, _byteLength);
        retval_ = (_memWord >> bitOffset) & dataMask;
        if (_signExtend) {
            retval_ = signExtend(retval_, bitLength);
        }
        return retval_;
    }

    /// @notice Returns a word that has been updated by the specified subword at bit positions determined by the virtual
    /// address
    /// @param _vaddr The virtual address of the subword.
    /// @param _memWord The full word to update.
    /// @param _byteLength The size of the subword.
    /// @param _value The subword that updates _memWord.
    function updateSubWord(
        uint32 _vaddr,
        uint32 _memWord,
        uint32 _byteLength,
        uint32 _value
    )
        internal
        pure
        returns (uint32 word_)
    {
        (uint32 dataMask, uint32 bitOffset,) = calculateSubWordMaskAndOffset(_vaddr, _byteLength);
        uint32 subWordValue = dataMask & _value;
        uint32 memUpdateMask = dataMask << bitOffset;
        return subWordValue << bitOffset | (~memUpdateMask) & _memWord;
    }

    function calculateSubWordMaskAndOffset(
        uint32 _vaddr,
        uint32 _byteLength
    )
        internal
        pure
        returns (uint32 dataMask_, uint32 bitOffset_, uint32 bitLength_)
    {
        uint32 bitLength = _byteLength << 3;
        uint32 dataMask = ~uint32(0) >> (32 - bitLength);

        // Figure out sub-word index based on the low-order bits in vaddr
        uint32 byteIndexMask = _vaddr & 0x3 & ~(_byteLength - 1);
        uint32 maxByteShift = 4 - _byteLength;
        uint32 byteIndex = _vaddr & byteIndexMask;
        uint32 bitOffset = (maxByteShift - byteIndex) << 3;

        return (dataMask, bitOffset, bitLength);
    }
}

// ============================================================
// FILE: src/cannon/libraries/MIPSMemory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "src/cannon/libraries/CannonErrors.sol";

library MIPSMemory {
    /// @notice Reads a 32-bit value from memory.
    /// @param _memRoot The current memory root
    /// @param _addr The address to read from.
    /// @param _proofOffset The offset of the memory proof in calldata.
    /// @return out_ The hashed MIPS state.
    function readMem(bytes32 _memRoot, uint32 _addr, uint256 _proofOffset) internal pure returns (uint32 out_) {
        bool valid;
        (out_, valid) = readMemUnchecked(_memRoot, _addr, _proofOffset);
        if (!valid) {
            revert InvalidMemoryProof();
        }
    }

    /// @notice Reads a 32-bit value from memory.
    /// @param _memRoot The current memory root
    /// @param _addr The address to read from.
    /// @param _proofOffset The offset of the memory proof in calldata.
    /// @return out_ The hashed MIPS state.
    ///         valid_ Whether the proof is valid.
    function readMemUnchecked(
        bytes32 _memRoot,
        uint32 _addr,
        uint256 _proofOffset
    )
        internal
        pure
        returns (uint32 out_, bool valid_)
    {
        unchecked {
            validateMemoryProofAvailability(_proofOffset);
            assembly {
                // Validate the address alignement.
                if and(_addr, 3) { revert(0, 0) }

                // Load the leaf value.
                let leaf := calldataload(_proofOffset)
                _proofOffset := add(_proofOffset, 32)

                // Convenience function to hash two nodes together in scratch space.
                function hashPair(a, b) -> h {
                    mstore(0, a)
                    mstore(32, b)
                    h := keccak256(0, 64)
                }

                // Start with the leaf node.
                // Work back up by combining with siblings, to reconstruct the root.
                let path := shr(5, _addr)
                let node := leaf
                for { let i := 0 } lt(i, 27) { i := add(i, 1) } {
                    let sibling := calldataload(_proofOffset)
                    _proofOffset := add(_proofOffset, 32)
                    switch and(shr(i, path), 1)
                    case 0 { node := hashPair(node, sibling) }
                    case 1 { node := hashPair(sibling, node) }
                }

                // Verify the root matches.
                valid_ := eq(node, _memRoot)
                if valid_ {
                    // Bits to shift = (32 - 4 - (addr % 32)) * 8
                    let shamt := shl(3, sub(sub(32, 4), and(_addr, 31)))
                    out_ := and(shr(shamt, leaf), 0xFFffFFff)
                }
            }
        }
    }

    /// @notice Writes a 32-bit value to memory.
    ///         This function first overwrites the part of the leaf.
    ///         Then it recomputes the memory merkle root.
    /// @param _addr The address to write to.
    /// @param _proofOffset The offset of the memory proof in calldata.
    /// @param _val The value to write.
    /// @return newMemRoot_ The new memory root after modification
    function writeMem(uint32 _addr, uint256 _proofOffset, uint32 _val) internal pure returns (bytes32 newMemRoot_) {
        unchecked {
            validateMemoryProofAvailability(_proofOffset);
            assembly {
                // Validate the address alignement.
                if and(_addr, 3) { revert(0, 0) }

                // Load the leaf value.
                let leaf := calldataload(_proofOffset)
                let shamt := shl(3, sub(sub(32, 4), and(_addr, 31)))

                // Mask out 4 bytes, and OR in the value
                leaf := or(and(leaf, not(shl(shamt, 0xFFffFFff))), shl(shamt, _val))
                _proofOffset := add(_proofOffset, 32)

                // Convenience function to hash two nodes together in scratch space.
                function hashPair(a, b) -> h {
                    mstore(0, a)
                    mstore(32, b)
                    h := keccak256(0, 64)
                }

                // Start with the leaf node.
                // Work back up by combining with siblings, to reconstruct the root.
                let path := shr(5, _addr)
                let node := leaf
                for { let i := 0 } lt(i, 27) { i := add(i, 1) } {
                    let sibling := calldataload(_proofOffset)
                    _proofOffset := add(_proofOffset, 32)
                    switch and(shr(i, path), 1)
                    case 0 { node := hashPair(node, sibling) }
                    case 1 { node := hashPair(sibling, node) }
                }

                newMemRoot_ := node
            }
            return newMemRoot_;
        }
    }

    /// @notice Verifies a memory proof.
    /// @param _memRoot The expected memory root
    /// @param _addr The _addr proven.
    /// @param _proofOffset The offset of the memory proof in calldata.
    /// @return valid_ True iff it is a valid proof.
    function isValidProof(bytes32 _memRoot, uint32 _addr, uint256 _proofOffset) internal pure returns (bool valid_) {
        (, valid_) = readMemUnchecked(_memRoot, _addr, _proofOffset);
    }

    /// @notice Computes the offset of a memory proof in the calldata.
    /// @param _proofDataOffset The offset of the set of all memory proof data within calldata (proof.offset)
    ///     Equal to the offset of the first memory proof (at _proofIndex 0).
    /// @param _proofIndex The index of the proof in the calldata.
    /// @return offset_ The offset of the memory proof at the given _proofIndex in the calldata.
    function memoryProofOffset(uint256 _proofDataOffset, uint8 _proofIndex) internal pure returns (uint256 offset_) {
        unchecked {
            // A proof of 32 bit memory, with 32-byte leaf values, is (32-5)=27 bytes32 entries.
            // And the leaf value itself needs to be encoded as well: (27 + 1) = 28 bytes32 entries.
            offset_ = _proofDataOffset + (uint256(_proofIndex) * (28 * 32));
            return offset_;
        }
    }

    /// @notice Validates that enough calldata is available to hold a full memory proof at the given offset
    /// @param _proofStartOffset The index of the first byte of the target memory proof in calldata
    function validateMemoryProofAvailability(uint256 _proofStartOffset) internal pure {
        unchecked {
            uint256 s = 0;
            assembly {
                s := calldatasize()
            }
            // A memory proof consists of 28 bytes32 values - verify we have enough calldata
            require(s >= (_proofStartOffset + 28 * 32), "check that there is enough calldata");
        }
    }
}

// ============================================================
// FILE: src/cannon/libraries/MIPSState.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import { InvalidExitedValue } from "src/cannon/libraries/CannonErrors.sol";

library MIPSState {
    struct CpuScalars {
        uint32 pc;
        uint32 nextPC;
        uint32 lo;
        uint32 hi;
    }

    function assertExitedIsValid(uint32 _exited) internal pure {
        if (_exited > 1) {
            revert InvalidExitedValue();
        }
    }
}

// ============================================================
// FILE: src/cannon/libraries/MIPSSyscalls.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import { MIPSMemory } from "src/cannon/libraries/MIPSMemory.sol";
import { MIPSState as st } from "src/cannon/libraries/MIPSState.sol";
import { IPreimageOracle } from "src/cannon/interfaces/IPreimageOracle.sol";
import { PreimageKeyLib } from "src/cannon/PreimageKeyLib.sol";

library MIPSSyscalls {
    struct SysReadParams {
        /// @param _a0 The file descriptor.
        uint32 a0;
        /// @param _a1 The memory location where data should be read to.
        uint32 a1;
        /// @param _a2 The number of bytes to read from the file
        uint32 a2;
        /// @param _preimageKey The key of the preimage to read.
        bytes32 preimageKey;
        /// @param _preimageOffset The offset of the preimage to read.
        uint32 preimageOffset;
        /// @param _localContext The local context for the preimage key.
        bytes32 localContext;
        /// @param _oracle The address of the preimage oracle.
        IPreimageOracle oracle;
        /// @param _proofOffset The offset of the memory proof in calldata.
        uint256 proofOffset;
        /// @param _memRoot The current memory root.
        bytes32 memRoot;
    }

    uint32 internal constant SYS_MMAP = 4090;
    uint32 internal constant SYS_BRK = 4045;
    uint32 internal constant SYS_CLONE = 4120;
    uint32 internal constant SYS_EXIT_GROUP = 4246;
    uint32 internal constant SYS_READ = 4003;
    uint32 internal constant SYS_WRITE = 4004;
    uint32 internal constant SYS_FCNTL = 4055;
    uint32 internal constant SYS_EXIT = 4001;
    uint32 internal constant SYS_SCHED_YIELD = 4162;
    uint32 internal constant SYS_GETTID = 4222;
    uint32 internal constant SYS_FUTEX = 4238;
    uint32 internal constant SYS_OPEN = 4005;
    uint32 internal constant SYS_NANOSLEEP = 4166;
    uint32 internal constant SYS_CLOCKGETTIME = 4263;
    uint32 internal constant SYS_GETPID = 4020;
    // unused syscalls
    uint32 internal constant SYS_MUNMAP = 4091;
    uint32 internal constant SYS_GETAFFINITY = 4240;
    uint32 internal constant SYS_MADVISE = 4218;
    uint32 internal constant SYS_RTSIGPROCMASK = 4195;
    uint32 internal constant SYS_SIGALTSTACK = 4206;
    uint32 internal constant SYS_RTSIGACTION = 4194;
    uint32 internal constant SYS_PRLIMIT64 = 4338;
    uint32 internal constant SYS_CLOSE = 4006;
    uint32 internal constant SYS_PREAD64 = 4200;
    uint32 internal constant SYS_STAT = 4106;
    uint32 internal constant SYS_FSTAT = 4108;
    uint32 internal constant SYS_FSTAT64 = 4215;
    uint32 internal constant SYS_OPENAT = 4288;
    uint32 internal constant SYS_READLINK = 4085;
    uint32 internal constant SYS_READLINKAT = 4298;
    uint32 internal constant SYS_IOCTL = 4054;
    uint32 internal constant SYS_EPOLLCREATE1 = 4326;
    uint32 internal constant SYS_PIPE2 = 4328;
    uint32 internal constant SYS_EPOLLCTL = 4249;
    uint32 internal constant SYS_EPOLLPWAIT = 4313;
    uint32 internal constant SYS_GETRANDOM = 4353;
    uint32 internal constant SYS_UNAME = 4122;
    uint32 internal constant SYS_STAT64 = 4213;
    uint32 internal constant SYS_GETUID = 4024;
    uint32 internal constant SYS_GETGID = 4047;
    uint32 internal constant SYS_LLSEEK = 4140;
    uint32 internal constant SYS_MINCORE = 4217;
    uint32 internal constant SYS_TGKILL = 4266;
    uint32 internal constant SYS_GETRLIMIT = 4076;
    uint32 internal constant SYS_LSEEK = 4019;

    // profiling-related syscalls - ignored
    uint32 internal constant SYS_SETITIMER = 4104;
    uint32 internal constant SYS_TIMERCREATE = 4257;
    uint32 internal constant SYS_TIMERSETTIME = 4258;
    uint32 internal constant SYS_TIMERDELETE = 4261;

    uint32 internal constant FD_STDIN = 0;
    uint32 internal constant FD_STDOUT = 1;
    uint32 internal constant FD_STDERR = 2;
    uint32 internal constant FD_HINT_READ = 3;
    uint32 internal constant FD_HINT_WRITE = 4;
    uint32 internal constant FD_PREIMAGE_READ = 5;
    uint32 internal constant FD_PREIMAGE_WRITE = 6;

    uint32 internal constant SYS_ERROR_SIGNAL = 0xFF_FF_FF_FF;
    uint32 internal constant EBADF = 0x9;
    uint32 internal constant EINVAL = 0x16;
    uint32 internal constant EAGAIN = 0xb;
    uint32 internal constant ETIMEDOUT = 0x91;

    uint32 internal constant FUTEX_WAIT_PRIVATE = 128;
    uint32 internal constant FUTEX_WAKE_PRIVATE = 129;
    uint32 internal constant FUTEX_TIMEOUT_STEPS = 10000;
    uint64 internal constant FUTEX_NO_TIMEOUT = type(uint64).max;
    uint32 internal constant FUTEX_EMPTY_ADDR = 0xFF_FF_FF_FF;

    uint32 internal constant SCHED_QUANTUM = 100_000;
    uint32 internal constant HZ = 10_000_000;
    uint32 internal constant CLOCK_GETTIME_REALTIME_FLAG = 0;
    uint32 internal constant CLOCK_GETTIME_MONOTONIC_FLAG = 1;
    /// @notice Start of the data segment.
    uint32 internal constant PROGRAM_BREAK = 0x40000000;
    uint32 internal constant HEAP_END = 0x60000000;

    // SYS_CLONE flags
    uint32 internal constant CLONE_VM = 0x100;
    uint32 internal constant CLONE_FS = 0x200;
    uint32 internal constant CLONE_FILES = 0x400;
    uint32 internal constant CLONE_SIGHAND = 0x800;
    uint32 internal constant CLONE_PTRACE = 0x2000;
    uint32 internal constant CLONE_VFORK = 0x4000;
    uint32 internal constant CLONE_PARENT = 0x8000;
    uint32 internal constant CLONE_THREAD = 0x10000;
    uint32 internal constant CLONE_NEWNS = 0x20000;
    uint32 internal constant CLONE_SYSVSEM = 0x40000;
    uint32 internal constant CLONE_SETTLS = 0x80000;
    uint32 internal constant CLONE_PARENTSETTID = 0x100000;
    uint32 internal constant CLONE_CHILDCLEARTID = 0x200000;
    uint32 internal constant CLONE_UNTRACED = 0x800000;
    uint32 internal constant CLONE_CHILDSETTID = 0x1000000;
    uint32 internal constant CLONE_STOPPED = 0x2000000;
    uint32 internal constant CLONE_NEWUTS = 0x4000000;
    uint32 internal constant CLONE_NEWIPC = 0x8000000;
    uint32 internal constant VALID_SYS_CLONE_FLAGS =
        CLONE_VM | CLONE_FS | CLONE_FILES | CLONE_SIGHAND | CLONE_SYSVSEM | CLONE_THREAD;

    // FYI: https://en.wikibooks.org/wiki/MIPS_Assembly/Register_File
    //      https://refspecs.linuxfoundation.org/elf/mipsabi.pdf
    uint32 internal constant REG_V0 = 2;
    uint32 internal constant REG_A0 = 4;
    uint32 internal constant REG_A1 = 5;
    uint32 internal constant REG_A2 = 6;
    uint32 internal constant REG_A3 = 7;

    // FYI: https://web.archive.org/web/20231223163047/https://www.linux-mips.org/wiki/Syscall
    uint32 internal constant REG_SYSCALL_NUM = REG_V0;
    uint32 internal constant REG_SYSCALL_ERRNO = REG_A3;
    uint32 internal constant REG_SYSCALL_RET1 = REG_V0;
    uint32 internal constant REG_SYSCALL_PARAM1 = REG_A0;
    uint32 internal constant REG_SYSCALL_PARAM2 = REG_A1;
    uint32 internal constant REG_SYSCALL_PARAM3 = REG_A2;
    uint32 internal constant REG_SYSCALL_PARAM4 = REG_A3;

    /// @notice Extract syscall num and arguments from registers.
    /// @param _registers The cpu registers.
    /// @return sysCallNum_ The syscall number.
    /// @return a0_ The first argument available to the syscall operation.
    /// @return a1_ The second argument available to the syscall operation.
    /// @return a2_ The third argument available to the syscall operation.
    /// @return a3_ The fourth argument available to the syscall operation.
    function getSyscallArgs(uint32[32] memory _registers)
        internal
        pure
        returns (uint32 sysCallNum_, uint32 a0_, uint32 a1_, uint32 a2_, uint32 a3_)
    {
        unchecked {
            sysCallNum_ = _registers[REG_SYSCALL_NUM];

            a0_ = _registers[REG_SYSCALL_PARAM1];
            a1_ = _registers[REG_SYSCALL_PARAM2];
            a2_ = _registers[REG_SYSCALL_PARAM3];
            a3_ = _registers[REG_SYSCALL_PARAM4];

            return (sysCallNum_, a0_, a1_, a2_, a3_);
        }
    }

    /// @notice Like a Linux mmap syscall. Allocates a page from the heap.
    /// @param _a0 The address for the new mapping
    /// @param _a1 The size of the new mapping
    /// @param _heap The current value of the heap pointer
    /// @return v0_ The address of the new mapping
    /// @return v1_ Unused error code (0)
    /// @return newHeap_ The new value for the heap, may be unchanged
    function handleSysMmap(
        uint32 _a0,
        uint32 _a1,
        uint32 _heap
    )
        internal
        pure
        returns (uint32 v0_, uint32 v1_, uint32 newHeap_)
    {
        unchecked {
            v1_ = uint32(0);
            newHeap_ = _heap;

            uint32 sz = _a1;
            if (sz & 4095 != 0) {
                // adjust size to align with page size
                sz += 4096 - (sz & 4095);
            }
            if (_a0 == 0) {
                v0_ = _heap;
                newHeap_ += sz;
                // Fail if new heap exceeds memory limit, newHeap overflows to low memory, or sz overflows
                if (newHeap_ > HEAP_END || newHeap_ < _heap || sz < _a1) {
                    v0_ = SYS_ERROR_SIGNAL;
                    v1_ = EINVAL;
                    return (v0_, v1_, _heap);
                }
            } else {
                v0_ = _a0;
            }

            return (v0_, v1_, newHeap_);
        }
    }

    /// @notice Like a Linux read syscall. Splits unaligned reads into aligned reads.
    ///         Args are provided as a struct to reduce stack pressure.
    /// @return v0_ The number of bytes read, -1 on error.
    /// @return v1_ The error code, 0 if there is no error.
    /// @return newPreimageOffset_ The new value for the preimage offset.
    /// @return newMemRoot_ The new memory root.
    function handleSysRead(SysReadParams memory _args)
        internal
        view
        returns (
            uint32 v0_,
            uint32 v1_,
            uint32 newPreimageOffset_,
            bytes32 newMemRoot_,
            bool memUpdated_,
            uint32 memAddr_
        )
    {
        unchecked {
            v0_ = uint32(0);
            v1_ = uint32(0);
            newMemRoot_ = _args.memRoot;
            newPreimageOffset_ = _args.preimageOffset;
            memUpdated_ = false;
            memAddr_ = 0;

            // args: _a0 = fd, _a1 = addr, _a2 = count
            // returns: v0_ = read, v1_ = err code
            if (_args.a0 == FD_STDIN) {
                // Leave v0_ and v1_ zero: read nothing, no error
            }
            // pre-image oracle read
            else if (_args.a0 == FD_PREIMAGE_READ) {
                uint32 effAddr = _args.a1 & 0xFFffFFfc;
                // verify proof is correct, and get the existing memory.
                // mask the addr to align it to 4 bytes
                uint32 mem = MIPSMemory.readMem(_args.memRoot, effAddr, _args.proofOffset);
                // If the preimage key is a local key, localize it in the context of the caller.
                if (uint8(_args.preimageKey[0]) == 1) {
                    _args.preimageKey = PreimageKeyLib.localize(_args.preimageKey, _args.localContext);
                }
                (bytes32 dat, uint256 datLen) = _args.oracle.readPreimage(_args.preimageKey, _args.preimageOffset);

                // Transform data for writing to memory
                // We use assembly for more precise ops, and no var count limit
                uint32 a1 = _args.a1;
                uint32 a2 = _args.a2;
                assembly {
                    let alignment := and(a1, 3) // the read might not start at an aligned address
                    let space := sub(4, alignment) // remaining space in memory word
                    if lt(space, datLen) { datLen := space } // if less space than data, shorten data
                    if lt(a2, datLen) { datLen := a2 } // if requested to read less, read less
                    dat := shr(sub(256, mul(datLen, 8)), dat) // right-align data
                    dat := shl(mul(sub(sub(4, datLen), alignment), 8), dat) // position data to insert into memory
                    // word
                    let mask := sub(shl(mul(sub(4, alignment), 8), 1), 1) // mask all bytes after start
                    let suffixMask := sub(shl(mul(sub(sub(4, alignment), datLen), 8), 1), 1) // mask of all bytes
                    // starting from end, maybe none
                    mask := and(mask, not(suffixMask)) // reduce mask to just cover the data we insert
                    mem := or(and(mem, not(mask)), dat) // clear masked part of original memory, and insert data
                }

                // Write memory back
                newMemRoot_ = MIPSMemory.writeMem(effAddr, _args.proofOffset, mem);
                memUpdated_ = true;
                memAddr_ = effAddr;
                newPreimageOffset_ += uint32(datLen);
                v0_ = uint32(datLen);
            }
            // hint response
            else if (_args.a0 == FD_HINT_READ) {
                // Don't read into memory, just say we read it all
                // The result is ignored anyway
                v0_ = _args.a2;
            } else {
                v0_ = 0xFFffFFff;
                v1_ = EBADF;
            }

            return (v0_, v1_, newPreimageOffset_, newMemRoot_, memUpdated_, memAddr_);
        }
    }

    /// @notice Like a Linux write syscall. Splits unaligned writes into aligned writes.
    /// @param _a0 The file descriptor.
    /// @param _a1 The memory address to read from.
    /// @param _a2 The number of bytes to read.
    /// @param _preimageKey The current preimaageKey.
    /// @param _preimageOffset The current preimageOffset.
    /// @param _proofOffset The offset of the memory proof in calldata.
    /// @param _memRoot The current memory root.
    /// @return v0_ The number of bytes written, or -1 on error.
    /// @return v1_ The error code, or 0 if empty.
    /// @return newPreimageKey_ The new preimageKey.
    /// @return newPreimageOffset_ The new preimageOffset.
    function handleSysWrite(
        uint32 _a0,
        uint32 _a1,
        uint32 _a2,
        bytes32 _preimageKey,
        uint32 _preimageOffset,
        uint256 _proofOffset,
        bytes32 _memRoot
    )
        internal
        pure
        returns (uint32 v0_, uint32 v1_, bytes32 newPreimageKey_, uint32 newPreimageOffset_)
    {
        unchecked {
            // args: _a0 = fd, _a1 = addr, _a2 = count
            // returns: v0_ = written, v1_ = err code
            v0_ = uint32(0);
            v1_ = uint32(0);
            newPreimageKey_ = _preimageKey;
            newPreimageOffset_ = _preimageOffset;

            if (_a0 == FD_STDOUT || _a0 == FD_STDERR || _a0 == FD_HINT_WRITE) {
                v0_ = _a2; // tell program we have written everything
            }
            // pre-image oracle
            else if (_a0 == FD_PREIMAGE_WRITE) {
                // mask the addr to align it to 4 bytes
                uint32 mem = MIPSMemory.readMem(_memRoot, _a1 & 0xFFffFFfc, _proofOffset);
                bytes32 key = _preimageKey;

                // Construct pre-image key from memory
                // We use assembly for more precise ops, and no var count limit
                assembly {
                    let alignment := and(_a1, 3) // the read might not start at an aligned address
                    let space := sub(4, alignment) // remaining space in memory word
                    if lt(space, _a2) { _a2 := space } // if less space than data, shorten data
                    key := shl(mul(_a2, 8), key) // shift key, make space for new info
                    let mask := sub(shl(mul(_a2, 8), 1), 1) // mask for extracting value from memory
                    mem := and(shr(mul(sub(space, _a2), 8), mem), mask) // align value to right, mask it
                    key := or(key, mem) // insert into key
                }

                // Write pre-image key to oracle
                newPreimageKey_ = key;
                newPreimageOffset_ = 0; // reset offset, to read new pre-image data from the start
                v0_ = _a2;
            } else {
                v0_ = 0xFFffFFff;
                v1_ = EBADF;
            }

            return (v0_, v1_, newPreimageKey_, newPreimageOffset_);
        }
    }

    /// @notice Like Linux fcntl (file control) syscall, but only supports minimal file-descriptor control commands, to
    /// retrieve the file-descriptor R/W flags.
    /// @param _a0 The file descriptor.
    /// @param _a1 The control command.
    /// @param v0_ The file status flag (only supported commands are F_GETFD and F_GETFL), or -1 on error.
    /// @param v1_ An error number, or 0 if there is no error.
    function handleSysFcntl(uint32 _a0, uint32 _a1) internal pure returns (uint32 v0_, uint32 v1_) {
        unchecked {
            v0_ = uint32(0);
            v1_ = uint32(0);

            // args: _a0 = fd, _a1 = cmd
            if (_a1 == 1) {
                // F_GETFD: get file descriptor flags
                if (
                    _a0 == FD_STDIN || _a0 == FD_STDOUT || _a0 == FD_STDERR || _a0 == FD_PREIMAGE_READ
                        || _a0 == FD_HINT_READ || _a0 == FD_PREIMAGE_WRITE || _a0 == FD_HINT_WRITE
                ) {
                    v0_ = 0; // No flags set
                } else {
                    v0_ = 0xFFffFFff;
                    v1_ = EBADF;
                }
            } else if (_a1 == 3) {
                // F_GETFL: get file status flags
                if (_a0 == FD_STDIN || _a0 == FD_PREIMAGE_READ || _a0 == FD_HINT_READ) {
                    v0_ = 0; // O_RDONLY
                } else if (_a0 == FD_STDOUT || _a0 == FD_STDERR || _a0 == FD_PREIMAGE_WRITE || _a0 == FD_HINT_WRITE) {
                    v0_ = 1; // O_WRONLY
                } else {
                    v0_ = 0xFFffFFff;
                    v1_ = EBADF;
                }
            } else {
                v0_ = 0xFFffFFff;
                v1_ = EINVAL; // cmd not recognized by this kernel
            }

            return (v0_, v1_);
        }
    }

    function handleSyscallUpdates(
        st.CpuScalars memory _cpu,
        uint32[32] memory _registers,
        uint32 _v0,
        uint32 _v1
    )
        internal
        pure
    {
        unchecked {
            // Write the results back to the state registers
            _registers[REG_SYSCALL_RET1] = _v0;
            _registers[REG_SYSCALL_ERRNO] = _v1;

            // Update the PC and nextPC
            _cpu.pc = _cpu.nextPC;
            _cpu.nextPC = _cpu.nextPC + 4;
        }
    }
}

// ============================================================
// FILE: src/cannon/MIPS.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import { ISemver } from "src/universal/interfaces/ISemver.sol";
import { IPreimageOracle } from "./interfaces/IPreimageOracle.sol";
import { MIPSInstructions as ins } from "src/cannon/libraries/MIPSInstructions.sol";
import { MIPSSyscalls as sys } from "src/cannon/libraries/MIPSSyscalls.sol";
import { MIPSState as st } from "src/cannon/libraries/MIPSState.sol";
import { MIPSMemory } from "src/cannon/libraries/MIPSMemory.sol";
import { InvalidRMWInstruction } from "src/cannon/libraries/CannonErrors.sol";

/// @title MIPS
/// @notice The MIPS contract emulates a single MIPS instruction.
///         Note that delay slots are isolated instructions:
///         the nextPC in the state pre-schedules where the VM jumps next.
///         The Step input is a packed VM state, with binary-merkle-tree
///         witness data for memory reads/writes.
///         The Step outputs a keccak256 hash of the packed VM State,
///         and logs the resulting state for offchain usage.
/// @dev https://inst.eecs.berkeley.edu/~cs61c/resources/MIPS_Green_Sheet.pdf
/// @dev https://www.cs.cmu.edu/afs/cs/academic/class/15740-f97/public/doc/mips-isa.pdf
///      (page A-177)
/// @dev https://uweb.engr.arizona.edu/~ece369/Resources/spim/MIPSReference.pdf
/// @dev https://en.wikibooks.org/wiki/MIPS_Assembly/Instruction_Formats
/// @dev https://github.com/golang/go/blob/master/src/syscall/zerrors_linux_mips.go
///      MIPS linux kernel errors used by Go runtime
contract MIPS is ISemver {
    /// @notice Stores the VM state.
    ///         Total state size: 32 + 32 + 6 * 4 + 1 + 1 + 8 + 32 * 4 = 226 bytes
    ///         If nextPC != pc + 4, then the VM is executing a branch/jump delay slot.
    struct State {
        bytes32 memRoot;
        bytes32 preimageKey;
        uint32 preimageOffset;
        uint32 pc;
        uint32 nextPC;
        uint32 lo;
        uint32 hi;
        uint32 heap;
        uint8 exitCode;
        bool exited;
        uint64 step;
        uint32[32] registers;
    }

    /// @notice The semantic version of the MIPS contract.
    /// @custom:semver 1.2.1
    string public constant version = "1.2.1";

    /// @notice The preimage oracle contract.
    IPreimageOracle internal immutable ORACLE;

    // The offset of the start of proof calldata (_proof.offset) in the step() function
    uint256 internal constant STEP_PROOF_OFFSET = 420;

    /// @param _oracle The address of the preimage oracle contract.
    constructor(IPreimageOracle _oracle) {
        ORACLE = _oracle;
    }

    /// @notice Getter for the pre-image oracle contract.
    /// @return oracle_ The IPreimageOracle contract.
    function oracle() external view returns (IPreimageOracle oracle_) {
        oracle_ = ORACLE;
    }

    /// @notice Computes the hash of the MIPS state.
    /// @return out_ The hashed MIPS state.
    function outputState() internal returns (bytes32 out_) {
        assembly {
            // copies 'size' bytes, right-aligned in word at 'from', to 'to', incl. trailing data
            function copyMem(from, to, size) -> fromOut, toOut {
                mstore(to, mload(add(from, sub(32, size))))
                fromOut := add(from, 32)
                toOut := add(to, size)
            }

            // From points to the MIPS State
            let from := 0x80

            // Copy to the free memory pointer
            let start := mload(0x40)
            let to := start

            // Copy state to free memory
            from, to := copyMem(from, to, 32) // memRoot
            from, to := copyMem(from, to, 32) // preimageKey
            from, to := copyMem(from, to, 4) // preimageOffset
            from, to := copyMem(from, to, 4) // pc
            from, to := copyMem(from, to, 4) // nextPC
            from, to := copyMem(from, to, 4) // lo
            from, to := copyMem(from, to, 4) // hi
            from, to := copyMem(from, to, 4) // heap
            let exitCode := mload(from)
            from, to := copyMem(from, to, 1) // exitCode
            let exited := mload(from)
            from, to := copyMem(from, to, 1) // exited
            from, to := copyMem(from, to, 8) // step
            from := add(from, 32) // offset to registers

            // Verify that the value of exited is valid (0 or 1)
            if gt(exited, 1) {
                // revert InvalidExitedValue();
                let ptr := mload(0x40)
                mstore(ptr, shl(224, 0x0136cc76))
                revert(ptr, 0x04)
            }

            // Copy registers
            for { let i := 0 } lt(i, 32) { i := add(i, 1) } { from, to := copyMem(from, to, 4) }

            // Clean up end of memory
            mstore(to, 0)

            // Log the resulting MIPS state, for debugging
            log0(start, sub(to, start))

            // Determine the VM status
            let status := 0
            switch exited
            case 1 {
                switch exitCode
                // VMStatusValid
                case 0 { status := 0 }
                // VMStatusInvalid
                case 1 { status := 1 }
                // VMStatusPanic
                default { status := 2 }
            }
            // VMStatusUnfinished
            default { status := 3 }

            // Compute the hash of the resulting MIPS state and set the status byte
            out_ := keccak256(start, sub(to, start))
            out_ := or(and(not(shl(248, 0xFF)), out_), shl(248, status))
        }
    }

    /// @notice Handles a syscall.
    /// @param _localContext The local key context for the preimage oracle.
    /// @return out_ The hashed MIPS state.
    function handleSyscall(bytes32 _localContext) internal returns (bytes32 out_) {
        unchecked {
            // Load state from memory
            State memory state;
            assembly {
                state := 0x80
            }

            // Load the syscall numbers and args from the registers
            (uint32 syscall_no, uint32 a0, uint32 a1, uint32 a2,) = sys.getSyscallArgs(state.registers);

            uint32 v0 = 0;
            uint32 v1 = 0;

            if (syscall_no == sys.SYS_MMAP) {
                (v0, v1, state.heap) = sys.handleSysMmap(a0, a1, state.heap);
            } else if (syscall_no == sys.SYS_BRK) {
                // brk: Returns a fixed address for the program break at 0x40000000
                v0 = sys.PROGRAM_BREAK;
            } else if (syscall_no == sys.SYS_CLONE) {
                // clone (not supported) returns 1
                v0 = 1;
            } else if (syscall_no == sys.SYS_EXIT_GROUP) {
                // exit group: Sets the Exited and ExitCode states to true and argument 0.
                state.exited = true;
                state.exitCode = uint8(a0);
                return outputState();
            } else if (syscall_no == sys.SYS_READ) {
                sys.SysReadParams memory args = sys.SysReadParams({
                    a0: a0,
                    a1: a1,
                    a2: a2,
                    preimageKey: state.preimageKey,
                    preimageOffset: state.preimageOffset,
                    localContext: _localContext,
                    oracle: ORACLE,
                    proofOffset: MIPSMemory.memoryProofOffset(STEP_PROOF_OFFSET, 1),
                    memRoot: state.memRoot
                });
                (v0, v1, state.preimageOffset, state.memRoot,,) = sys.handleSysRead(args);
            } else if (syscall_no == sys.SYS_WRITE) {
                (v0, v1, state.preimageKey, state.preimageOffset) = sys.handleSysWrite({
                    _a0: a0,
                    _a1: a1,
                    _a2: a2,
                    _preimageKey: state.preimageKey,
                    _preimageOffset: state.preimageOffset,
                    _proofOffset: MIPSMemory.memoryProofOffset(STEP_PROOF_OFFSET, 1),
                    _memRoot: state.memRoot
                });
            } else if (syscall_no == sys.SYS_FCNTL) {
                (v0, v1) = sys.handleSysFcntl(a0, a1);
            }

            st.CpuScalars memory cpu = getCpuScalars(state);
            sys.handleSyscallUpdates(cpu, state.registers, v0, v1);
            setStateCpuScalars(state, cpu);

            out_ = outputState();
        }
    }

    /// @notice Executes a single step of the vm.
    ///         Will revert if any required input state is missing.
    /// @param _stateData The encoded state witness data.
    /// @param _proof The encoded proof data for leaves within the MIPS VM's memory.
    /// @param _localContext The local key context for the preimage oracle. Optional, can be set as a constant
    ///                      if the caller only requires one set of local keys.
    function step(bytes calldata _stateData, bytes calldata _proof, bytes32 _localContext) public returns (bytes32) {
        unchecked {
            State memory state;

            // Packed calldata is ~6 times smaller than state size
            assembly {
                if iszero(eq(state, 0x80)) {
                    // expected state mem offset check
                    revert(0, 0)
                }
                if iszero(eq(mload(0x40), shl(5, 48))) {
                    // expected memory check
                    revert(0, 0)
                }
                if iszero(eq(_stateData.offset, 132)) {
                    // 32*4+4=132 expected state data offset
                    revert(0, 0)
                }
                if iszero(eq(_proof.offset, STEP_PROOF_OFFSET)) {
                    // 132+32+256=420 expected proof offset
                    revert(0, 0)
                }

                function putField(callOffset, memOffset, size) -> callOffsetOut, memOffsetOut {
                    // calldata is packed, thus starting left-aligned, shift-right to pad and right-align
                    let w := shr(shl(3, sub(32, size)), calldataload(callOffset))
                    mstore(memOffset, w)
                    callOffsetOut := add(callOffset, size)
                    memOffsetOut := add(memOffset, 32)
                }

                // Unpack state from calldata into memory
                let c := _stateData.offset // calldata offset
                let m := 0x80 // mem offset
                c, m := putField(c, m, 32) // memRoot
                c, m := putField(c, m, 32) // preimageKey
                c, m := putField(c, m, 4) // preimageOffset
                c, m := putField(c, m, 4) // pc
                c, m := putField(c, m, 4) // nextPC
                c, m := putField(c, m, 4) // lo
                c, m := putField(c, m, 4) // hi
                c, m := putField(c, m, 4) // heap
                c, m := putField(c, m, 1) // exitCode
                c, m := putField(c, m, 1) // exited
                let exited := mload(sub(m, 32))
                c, m := putField(c, m, 8) // step

                // Verify that the value of exited is valid (0 or 1)
                if gt(exited, 1) {
                    // revert InvalidExitedValue();
                    let ptr := mload(0x40)
                    mstore(ptr, shl(224, 0x0136cc76))
                    revert(ptr, 0x04)
                }

                // Compiler should have done this already
                if iszero(eq(mload(m), add(m, 32))) {
                    // expected registers offset check
                    revert(0, 0)
                }

                // Unpack register calldata into memory
                m := add(m, 32)
                for { let i := 0 } lt(i, 32) { i := add(i, 1) } { c, m := putField(c, m, 4) }
            }

            // Don't change state once exited
            if (state.exited) {
                return outputState();
            }

            state.step += 1;

            // instruction fetch
            uint256 insnProofOffset = MIPSMemory.memoryProofOffset(STEP_PROOF_OFFSET, 0);
            (uint32 insn, uint32 opcode, uint32 fun) =
                ins.getInstructionDetails(state.pc, state.memRoot, insnProofOffset);

            // Handle syscall separately
            // syscall (can read and write)
            if (opcode == 0 && fun == 0xC) {
                return handleSyscall(_localContext);
            }

            // Handle RMW (read-modify-write) ops
            if (opcode == ins.OP_LOAD_LINKED || opcode == ins.OP_STORE_CONDITIONAL) {
                return handleRMWOps(state, insn, opcode);
            }

            // Exec the rest of the step logic
            st.CpuScalars memory cpu = getCpuScalars(state);
            ins.CoreStepLogicParams memory coreStepArgs = ins.CoreStepLogicParams({
                cpu: cpu,
                registers: state.registers,
                memRoot: state.memRoot,
                memProofOffset: MIPSMemory.memoryProofOffset(STEP_PROOF_OFFSET, 1),
                insn: insn,
                opcode: opcode,
                fun: fun
            });
            (state.memRoot,,) = ins.execMipsCoreStepLogic(coreStepArgs);
            setStateCpuScalars(state, cpu);

            return outputState();
        }
    }

    function handleRMWOps(State memory _state, uint32 _insn, uint32 _opcode) internal returns (bytes32) {
        unchecked {
            uint32 baseReg = (_insn >> 21) & 0x1F;
            uint32 base = _state.registers[baseReg];
            uint32 rtReg = (_insn >> 16) & 0x1F;
            uint32 offset = ins.signExtendImmediate(_insn);

            uint32 effAddr = (base + offset) & 0xFFFFFFFC;
            uint256 memProofOffset = MIPSMemory.memoryProofOffset(STEP_PROOF_OFFSET, 1);
            uint32 mem = MIPSMemory.readMem(_state.memRoot, effAddr, memProofOffset);

            uint32 retVal;
            if (_opcode == ins.OP_LOAD_LINKED) {
                retVal = mem;
            } else if (_opcode == ins.OP_STORE_CONDITIONAL) {
                uint32 val = _state.registers[rtReg];
                _state.memRoot = MIPSMemory.writeMem(effAddr, memProofOffset, val);
                retVal = 1; // 1 for success
            } else {
                revert InvalidRMWInstruction();
            }

            st.CpuScalars memory cpu = getCpuScalars(_state);
            ins.handleRd(cpu, _state.registers, rtReg, retVal, true);
            setStateCpuScalars(_state, cpu);

            return outputState();
        }
    }

    function getCpuScalars(State memory _state) internal pure returns (st.CpuScalars memory) {
        return st.CpuScalars({ pc: _state.pc, nextPC: _state.nextPC, lo: _state.lo, hi: _state.hi });
    }

    function setStateCpuScalars(State memory _state, st.CpuScalars memory _cpu) internal pure {
        _state.pc = _cpu.pc;
        _state.nextPC = _cpu.nextPC;
        _state.lo = _cpu.lo;
        _state.hi = _cpu.hi;
    }
}

// ============================================================
// FILE: src/cannon/PreimageKeyLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

/// @title PreimageKeyLib
/// @notice Shared utilities for localizing local keys in the preimage oracle.
library PreimageKeyLib {
    /// @notice Generates a context-specific local key for the given local data identifier.
    /// @dev See `localize` for a description of the localization operation.
    /// @param _ident The identifier of the local data. [0, 32) bytes in size.
    /// @param _localContext The local context for the key.
    /// @return key_ The context-specific local key.
    function localizeIdent(uint256 _ident, bytes32 _localContext) internal view returns (bytes32 key_) {
        assembly {
            // Set the type byte in the given identifier to `1` (Local). We only care about
            // the [1, 32) bytes in this value.
            key_ := or(shl(248, 1), and(_ident, not(shl(248, 0xFF))))
        }
        // Localize the key with the given local context.
        key_ = localize(key_, _localContext);
    }

    /// @notice Localizes a given local data key for the caller's context.
    /// @dev The localization operation is defined as:
    ///      localize(k) = H(k .. sender .. local_context) & ~(0xFF << 248) | (0x01 << 248)
    ///      where H is the Keccak-256 hash function.
    /// @param _key The local data key to localize.
    /// @param _localContext The local context for the key.
    /// @return localizedKey_ The localized local data key.
    function localize(bytes32 _key, bytes32 _localContext) internal view returns (bytes32 localizedKey_) {
        assembly {
            // Grab the current free memory pointer to restore later.
            let ptr := mload(0x40)
            // Store the local data key and caller next to each other in memory for hashing.
            mstore(0, _key)
            mstore(0x20, caller())
            mstore(0x40, _localContext)
            // Localize the key with the above `localize` operation.
            localizedKey_ := or(and(keccak256(0, 0x60), not(shl(248, 0xFF))), shl(248, 1))
            // Restore the free memory pointer.
            mstore(0x40, ptr)
        }
    }

    /// @notice Computes and returns the key for a global keccak pre-image.
    /// @param _preimage The pre-image.
    /// @return key_ The pre-image key.
    function keccak256PreimageKey(bytes memory _preimage) internal pure returns (bytes32 key_) {
        assembly {
            // Grab the size of the `_preimage`
            let size := mload(_preimage)

            // Compute the pre-image keccak256 hash (aka the pre-image key)
            let h := keccak256(add(_preimage, 0x20), size)

            // Mask out prefix byte, replace with type 2 byte
            key_ := or(and(h, not(shl(248, 0xFF))), shl(248, 2))
        }
    }
}

// ============================================================
// FILE: src/universal/interfaces/ISemver.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title ISemver
/// @notice ISemver is a simple contract for ensuring that contracts are
///         versioned using semantic versioning.
interface ISemver {
    /// @notice Getter for the semantic version of the contract. This is not
    ///         meant to be used onchain but instead meant to be used by offchain
    ///         tooling.
    /// @return Semver contract version as a string.
    function version() external view returns (string memory);
}
