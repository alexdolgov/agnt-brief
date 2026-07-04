pragma solidity ^0.8.17;

import "./trie/Node.sol";
import "./trie/Option.sol";
import "./trie/NibbleSlice.sol";
import "./trie/TrieDB.sol";

import "./trie/ethereum/EthereumTrieDB.sol";

// SPDX-License-Identifier: Apache2

/**
 * @title A Merkle Patricia library
 * @author Polytope Labs
 * @dev Use this library to verify merkle patricia proofs
 * @dev refer to research for more info. https://research.polytope.technology/state-(machine)-proofs
 */
library MerklePatricia {
    using NibbleSliceOps for NibbleSlice;
    /// @notice libraries in solidity can only have constant variables
    /// @dev MAX_TRIE_DEPTH, we don't explore deeply nested trie keys.
    uint256 internal constant MAX_TRIE_DEPTH = 50;

    /**
     * @notice Verifies ethereum specific merkle patricia proofs as described by EIP-1188.
     * @param root hash of the merkle patricia trie
     * @param proof a list of proof nodes
     * @param keys a list of keys to verify
     * @return bytes[] a list of values corresponding to the supplied keys.
     */
    function VerifyEthereumProof(
        bytes32 root,
        bytes[] memory proof,
        bytes[] memory keys
    ) internal pure returns (bytes[] memory) {
        bytes[] memory values = new bytes[](keys.length);
        TrieNode[] memory nodes = new TrieNode[](proof.length);
        for (uint256 i = 0; i < proof.length; i++) {
            nodes[i] = TrieNode(keccak256(proof[i]), proof[i]);
        }
        for (uint256 i = 0; i < keys.length; i++) {
            NibbleSlice memory keyNibbles = NibbleSlice(keys[i], 0);
            NodeKind memory node = EthereumTrieDB.decodeNodeKind(TrieDB.get(nodes, root));

            // worst case scenario, so we avoid unbounded loops
            for (uint256 j = 0; j < MAX_TRIE_DEPTH; j++) {
                NodeHandle memory nextNode;

                if (TrieDB.isLeaf(node)) {
                    Leaf memory leaf = EthereumTrieDB.decodeLeaf(node);

                    if (NibbleSliceOps.eq(leaf.key, keyNibbles)) {
                        values[i] = TrieDB.load(nodes, leaf.value);
                    }

                    break;
                } else if (TrieDB.isExtension(node)) {
                    Extension memory extension = EthereumTrieDB.decodeExtension(node);
                    if (NibbleSliceOps.startsWith(keyNibbles, extension.key)) {
                        uint256 len = NibbleSliceOps.len(extension.key);
                        keyNibbles = NibbleSliceOps.mid(keyNibbles, len);
                        nextNode = extension.node;
                    } else {
                        break;
                    }
                } else if (TrieDB.isBranch(node)) {
                    Branch memory branch = EthereumTrieDB.decodeBranch(node);

                    if (NibbleSliceOps.isEmpty(keyNibbles)) {
                        if (Option.isSome(branch.value)) {
                            values[i] = TrieDB.load(nodes, branch.value.value);
                        }

                        break;
                    } else {
                        uint256 childIndex = NibbleSliceOps.at(keyNibbles, 0);

                        NodeHandleOption memory handle = branch.children[childIndex];
                        if (Option.isSome(handle)) {
                            keyNibbles = NibbleSliceOps.mid(keyNibbles, 1);

                            nextNode = handle.value;
                        } else {
                            break;
                        }
                    }
                } else if (TrieDB.isEmpty(node)) {
                    break;
                }

                bytes memory nextNodeEncoded = TrieDB.load(nodes, nextNode);

                node = EthereumTrieDB.decodeNodeKind(nextNodeEncoded);
            }
        }

        return values;
    }
}
