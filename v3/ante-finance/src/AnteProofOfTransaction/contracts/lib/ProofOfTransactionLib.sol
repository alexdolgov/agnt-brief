/// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.0;
import {RLPReader} from "./RLPReader.sol";
import {RLPEncode} from "./RLPEncode.sol";
import {ECVerify} from "./ECVerify.sol";
import {IAxiomV0} from "../IAxiom.sol";
import "./merkle-trees/MerklePatricia.sol";

library ProofOfTransactionLib {
    struct AccessListItem {
        address addressToPreload;
        bytes32[] storageKeysToPreload;
    }

    struct Transaction {
        uint256 txType;
        uint256 chainId;
        uint256 nonce;
        uint256 gasPrice;
        uint256 maxPriorityFeePerGas;
        uint256 maxFeePerGas;
        uint256 gasLimit;
        address to;
        uint256 value;
        bytes data;
        AccessListItem[] accessList;
        uint256 v;
        uint256 r;
        uint256 s;
        bytes32 txHash;
        address from;
    }
    using RLPReader for RLPReader.RLPItem;

    function copyBytes(bytes memory source, uint256 start, uint256 end) internal pure returns (bytes memory) {
        if (end == 0) {
            end = source.length;
        }
        bytes memory result = new bytes(end - start);
        for (uint256 i = start; i < end; i++) {
            result[i - start] = source[i];
        }
        return result;
    }

    function copyBytes(bytes memory source, uint256 start) internal pure returns (bytes memory) {
        return copyBytes(source, start, source.length);
    }

    function getTransactionUnsignedBytesLegacy(Transaction memory transaction) internal pure returns (bytes memory) {
        bytes[] memory items = new bytes[](9);
        items[0] = RLPEncode.encodeUint(transaction.nonce);
        items[1] = RLPEncode.encodeUint(transaction.gasPrice);
        items[2] = RLPEncode.encodeUint(transaction.gasLimit);
        items[3] = RLPEncode.encodeAddress(transaction.to);
        items[4] = RLPEncode.encodeUint(transaction.value);
        items[5] = RLPEncode.encodeBytes(transaction.data);
        items[6] = RLPEncode.encodeUint(1);
        items[7] = RLPEncode.encodeUint(0);
        items[8] = RLPEncode.encodeUint(0);
        bytes memory txSerialized = RLPEncode.encodeList(items);
        return txSerialized;
    }

    function getTransactionUnsignedBytesNonLegacy(Transaction memory transaction) internal pure returns (bytes memory) {
        uint256 itemsCount = transaction.txType == 2 ? 9 : 8;
        bytes[] memory items = new bytes[](itemsCount);
        uint256 itemIndex = 0;
        items[itemIndex++] = RLPEncode.encodeUint(transaction.chainId);
        items[itemIndex++] = RLPEncode.encodeUint(transaction.nonce);
        if (transaction.txType == 2) {
            items[itemIndex++] = RLPEncode.encodeUint(transaction.maxPriorityFeePerGas);
            items[itemIndex++] = RLPEncode.encodeUint(transaction.maxFeePerGas);
        } else {
            items[itemIndex++] = RLPEncode.encodeUint(transaction.gasPrice);
        }
        items[itemIndex++] = RLPEncode.encodeUint(transaction.gasLimit);
        items[itemIndex++] = RLPEncode.encodeAddress(transaction.to);
        items[itemIndex++] = RLPEncode.encodeUint(transaction.value);
        items[itemIndex++] = RLPEncode.encodeBytes(transaction.data);
        bytes[] memory accessListItems = new bytes[](transaction.accessList.length);
        for (uint256 i = 0; i < transaction.accessList.length; i++) {
            bytes[] memory accessListItem = new bytes[](2);
            accessListItem[0] = RLPEncode.encodeAddress(transaction.accessList[i].addressToPreload);
            bytes[] memory storageKeysToPreload = new bytes[](transaction.accessList[i].storageKeysToPreload.length);
            for (uint256 j = 0; j < transaction.accessList[i].storageKeysToPreload.length; j++) {
                storageKeysToPreload[j] = RLPEncode.encodeUint(
                    uint256(transaction.accessList[i].storageKeysToPreload[j])
                );
            }
            accessListItem[1] = RLPEncode.encodeList(storageKeysToPreload);
            accessListItems[i] = RLPEncode.encodeList(accessListItem);
        }
        items[itemIndex++] = RLPEncode.encodeList(accessListItems);
        bytes memory txSerialized = RLPEncode.encodeList(items);
        bytes[] memory enveloped = new bytes[](2);
        enveloped[0] = abi.encodePacked(uint8(transaction.txType));
        enveloped[1] = txSerialized;
        return abi.encodePacked(enveloped[0], enveloped[1]);
    }

    function getTransactionUnsignedBytes(Transaction memory transaction) internal pure returns (bytes memory) {
        if (transaction.txType == 0) {
            return getTransactionUnsignedBytesLegacy(transaction);
        } else if (transaction.txType == 1 || transaction.txType == 2) {
            return getTransactionUnsignedBytesNonLegacy(transaction);
        }
        return new bytes(0);
    }

    function decodeTransactionFromAddress(Transaction memory transaction) internal pure returns (address) {
        return
            ECVerify.ecverify(
                keccak256(getTransactionUnsignedBytes(transaction)),
                uint8(transaction.v),
                bytes32(transaction.r),
                bytes32(transaction.s)
            );
    }

    function decodeLegacyTransactionFromBytes(bytes memory transactionData) internal pure returns (Transaction memory) {
        Transaction memory transaction;
        transaction.txType = 0;
        RLPReader.RLPItem[] memory rlpTx = RLPReader.toRlpItem(transactionData).toList();
        transaction.nonce = rlpTx[0].toUint();
        transaction.gasPrice = rlpTx[1].toUint();
        transaction.gasLimit = rlpTx[2].toUint();
        transaction.to = rlpTx[3].toAddress();
        transaction.value = rlpTx[4].toUint();
        transaction.data = rlpTx[5].toBytes();
        transaction.v = rlpTx[6].toUint();
        transaction.r = rlpTx[7].toUint();
        transaction.s = rlpTx[8].toUint();
        transaction.txHash = keccak256(transactionData);
        transaction.from = decodeTransactionFromAddress(transaction);
        return transaction;
    }

    function decodeAccessListFromRlpItem(
        RLPReader.RLPItem memory rlpItem
    ) internal pure returns (AccessListItem[] memory) {
        RLPReader.RLPItem[] memory accessListItems = rlpItem.toList();
        AccessListItem[] memory accessList = new AccessListItem[](accessListItems.length);
        for (uint256 i = 0; i < accessListItems.length; i++) {
            RLPReader.RLPItem[] memory accessListItem = accessListItems[i].toList();
            accessList[i].addressToPreload = accessListItem[0].toAddress();
            RLPReader.RLPItem[] memory storageKeys = accessListItem[1].toList();
            accessList[i].storageKeysToPreload = new bytes32[](storageKeys.length);
            for (uint256 j = 0; j < storageKeys.length; j++) {
                accessList[i].storageKeysToPreload[j] = bytes32(storageKeys[j].toUint());
            }
        }
        return accessList;
    }

    function decodeEIP1559TransactionFromBytes(
        bytes memory transactionData
    ) internal pure returns (Transaction memory) {
        Transaction memory transaction;
        transaction.txType = uint256(uint8(transactionData[0]));

        RLPReader.RLPItem[] memory rlpTx = RLPReader.toRlpItem(copyBytes(transactionData, 1)).toList();
        transaction.txType = 2;
        transaction.chainId = rlpTx[0].toUint();
        transaction.nonce = rlpTx[1].toUint();
        transaction.maxPriorityFeePerGas = rlpTx[2].toUint();
        transaction.maxFeePerGas = rlpTx[3].toUint();
        transaction.gasLimit = rlpTx[4].toUint();
        transaction.to = rlpTx[5].toAddress();
        transaction.value = rlpTx[6].toUint();
        transaction.data = rlpTx[7].toBytes();
        transaction.accessList = decodeAccessListFromRlpItem(rlpTx[8]);
        transaction.v = rlpTx[9].toUint();
        transaction.r = rlpTx[10].toUint();
        transaction.s = rlpTx[11].toUint();
        transaction.txHash = keccak256(transactionData);
        transaction.from = decodeTransactionFromAddress(transaction);
        return transaction;
    }

    function decodeEIP2930TransactionFromBytes(
        bytes memory transactionData
    ) internal pure returns (Transaction memory) {
        Transaction memory transaction;
        transaction.txType = uint256(uint8(transactionData[0]));

        RLPReader.RLPItem[] memory rlpTx = RLPReader.toRlpItem(copyBytes(transactionData, 1)).toList();
        transaction.txType = 1;
        transaction.chainId = rlpTx[0].toUint();
        transaction.nonce = rlpTx[1].toUint();
        transaction.gasPrice = rlpTx[2].toUint();
        transaction.gasLimit = rlpTx[3].toUint();
        transaction.to = rlpTx[4].toAddress();
        transaction.value = rlpTx[5].toUint();
        transaction.data = rlpTx[6].toBytes();
        transaction.accessList = decodeAccessListFromRlpItem(rlpTx[7]);
        transaction.v = rlpTx[8].toUint();
        transaction.r = rlpTx[9].toUint();
        transaction.s = rlpTx[10].toUint();
        transaction.txHash = keccak256(transactionData);
        transaction.from = decodeTransactionFromAddress(transaction);
        return transaction;
    }

    function decodeTransactionFromProof(
        bytes memory rlpEncodedTransactionBytes
    ) internal pure returns (Transaction memory) {
        uint256 transactionType = 0;
        transactionType = uint256(uint8(rlpEncodedTransactionBytes[0]));
        if (transactionType == 2) {
            return decodeEIP1559TransactionFromBytes(rlpEncodedTransactionBytes);
        }
        if (transactionType == 1) {
            return decodeEIP2930TransactionFromBytes(rlpEncodedTransactionBytes);
        }
        return decodeLegacyTransactionFromBytes(rlpEncodedTransactionBytes);
    }

    function getTransactionsTrieRootFromHeader(bytes memory header) internal pure returns (bytes32) {
        RLPReader.RLPItem[] memory headerRLP = RLPReader.toRlpItem(header).toList();
        return bytes32(headerRLP[4].toUint());
    }

    function verifyBlock(IAxiomV0.BlockHashWitness memory witness, bytes memory header) internal view returns (bool) {
        address axiomAddress = 0x01d5b501C1fc0121e1411970fb79c322737025c2;
        if (witness.blockNumber >= 17034240) {
            axiomAddress = 0xF990f9CB1A0aa6B51c0720a6f4cAe577d7AbD86A;
        }
        if (witness.blockNumber == 0) {
            return false;
        }
        if (witness.blockNumber < block.number - 256) {
            try IAxiomV0(axiomAddress).isBlockHashValid(witness) returns (bool blockValidation) {
                if (!blockValidation) {
                    return false;
                }
            } catch {
                return false;
            }
        } else {
            try IAxiomV0(axiomAddress).isRecentBlockHashValid(witness.blockNumber, witness.claimedBlockHash) returns (
                bool blockValidation
            ) {
                if (!blockValidation) {
                    return false;
                }
            } catch {
                return false;
            }
        }
        bytes32 blockHashFromHeader = keccak256(header);
        if (blockHashFromHeader != witness.claimedBlockHash) {
            return false;
        }
        return true;
    }

    function emptyTransaction() internal pure returns (Transaction memory) {
        Transaction memory transaction;
        transaction.txType = 0;
        transaction.chainId = 0;
        transaction.nonce = 0;
        transaction.gasPrice = 0;
        transaction.gasLimit = 0;
        transaction.to = address(0);
        transaction.value = 0;
        transaction.data = new bytes(0);
        transaction.accessList = new AccessListItem[](0);
        transaction.v = 0;
        transaction.r = 0;
        transaction.s = 0;
        transaction.txHash = bytes32(0);
        transaction.from = address(0);
        return transaction;
    }

    function verifyTransaction(
        bytes memory txProof,
        bytes memory key,
        bytes memory header,
        bytes32 transactionHash
    ) internal pure returns (bool verification, Transaction memory) {
        bytes32 transactionsRoot = getTransactionsTrieRootFromHeader(header);

        bytes[] memory keysToVerify = new bytes[](1);
        keysToVerify[0] = key;
        bytes[] memory proof = abi.decode(txProof, (bytes[]));
        bytes[] memory verifiedValuesForKeys = MerklePatricia.VerifyEthereumProof(
            transactionsRoot,
            proof,
            keysToVerify
        );

        if (verifiedValuesForKeys.length != 1) {
            return (false, emptyTransaction());
        } else {
            if (transactionHash != keccak256(verifiedValuesForKeys[0])) {
                return (false, emptyTransaction());
            }
        }

        return (true, ProofOfTransactionLib.decodeTransactionFromProof(verifiedValuesForKeys[0]));
    }
}
