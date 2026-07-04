// SPDX-License-Identifier: Apache2
pragma solidity ^0.8.17;

import "../Node.sol";
import "../Bytes.sol";
import {NibbleSliceOps, NibbleSlice} from "../NibbleSlice.sol";

import {RLPReader} from "../../../RLPReader.sol";
import {RLPEncode} from "../../../RLPEncode.sol";

library EthereumTrieDB {
    using RLPReader for RLPReader.RLPItem;

    function decodeNodeKind(bytes memory encoded) internal pure returns (NodeKind memory) {
        NodeKind memory node;

        RLPReader.RLPItem memory rlpItem = RLPReader.toRlpItem(encoded);

        if (rlpItem.isList()) {
            if (rlpItem.numItems() == 17) {
                // branch node
                node.isBranch = true;
                node.data = ByteSlice(encoded, 0);
            } else if (rlpItem.numItems() == 2) {
                RLPReader.RLPItem[] memory items = rlpItem.toList();
                bytes memory key = items[0].toBytes();

                if (uint8(key[0]) > 1) {
                    // terminator
                    node.isLeaf = true;
                } else {
                    // extension node
                    node.isExtension = true;
                }
                node.nibbleSize = key.length;
                node.data = ByteSlice(encoded, 0);
            } else {
                revert("Invalid node kind");
            }
        }

        return node;
    }

    function decodeLeaf(NodeKind memory node) internal pure returns (Leaf memory) {
        Leaf memory leaf;
        ByteSlice memory input = node.data;

        RLPReader.RLPItem[] memory items = RLPReader.toRlpItem(input.data).toList();

        bytes memory key = items[0].toBytes();

        bytes memory value = items[1].toBytes();

        leaf.value = NodeHandle({isHash: false, hash: bytes32(0), isInline: true, inLine: value});

        if (uint8(key[0]) % 2 == 1) {
            leaf.key = NibbleSlice(key, 1);
        } else {
            // remove first two bytes

            leaf.key = NibbleSlice(key, 2);
        }

        //leaf.key = NibbleSlice(key, 0);

        return leaf;
    }

    function decodeExtension(NodeKind memory node) internal pure returns (Extension memory) {
        Extension memory extension;
        ByteSlice memory input = node.data;

        RLPReader.RLPItem[] memory items = RLPReader.toRlpItem(input.data).toList();

        bytes memory key = items[0].toBytes();

        if (uint8(key[0]) % 2 == 1) {
            extension.key = NibbleSlice(key, 1);
        } else {
            // remove first two bytes

            extension.key = NibbleSlice(key, 2);
        }

        extension.node = NodeHandle({
            isHash: true,
            hash: bytes32(items[1].toBytes()),
            isInline: false,
            inLine: new bytes(0)
        });

        return extension;
    }

    function decodeBranch(NodeKind memory node) internal pure returns (Branch memory) {
        Branch memory branch;
        ByteSlice memory input = node.data;

        RLPReader.RLPItem[] memory items = RLPReader.toRlpItem(input.data).toList();

        branch.value = NodeHandleOption(
            false,
            NodeHandle({
                isHash: false,
                hash: bytes32(0),
                isInline: true,
                inLine: RLPEncode.encodeBytes(items[16].toBytes())
            })
        );

        for (uint256 i = 0; i < items.length - 1; i++) {
            if (items[i].toBytes().length == 0) {
                continue;
            }

            branch.children[i] = NodeHandleOption(
                true,
                NodeHandle({isHash: true, hash: bytes32(items[i].toBytes()), isInline: false, inLine: new bytes(0)})
            );
        }

        return branch;
    }
}
