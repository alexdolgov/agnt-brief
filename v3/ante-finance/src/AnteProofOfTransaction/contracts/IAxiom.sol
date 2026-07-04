// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

interface IAxiomV0 {
    function historicalRoots(uint32 startBlockNumber) external view returns (bytes32);

    event UpdateEvent(uint32 startBlockNumber, bytes32 prevHash, bytes32 root, uint32 numFinal);
    struct BlockHashWitness {
        uint32 blockNumber;
        bytes32 claimedBlockHash;
        bytes32 prevHash;
        uint32 numFinal;
        bytes32[10] merkleProof;
    }

    function getEmptyHash(uint256 depth) external pure returns (bytes32);

    function isRecentBlockHashValid(uint32 blockNumber, bytes32 claimedBlockHash) external view returns (bool);

    function isBlockHashValid(BlockHashWitness calldata witness) external view returns (bool);
}
