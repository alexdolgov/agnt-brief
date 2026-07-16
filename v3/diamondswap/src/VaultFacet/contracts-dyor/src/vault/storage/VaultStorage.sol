// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct VaultLayout {
    mapping(address => VaultAccount) accounts;
}

struct VaultAccount {
    uint256 nonce;
    uint256 balance;
}

struct VaultWithdrawal {
    uint256 nonce;
    uint256 tokenAmount;
    address to;
}

library VaultStorage {
    bytes32 constant STORAGE_POSITION = keccak256("com.dyordex.storage.VaultStorageV1");

    function layout() internal pure returns (VaultLayout storage l) {
        bytes32 position = STORAGE_POSITION;
        assembly {
            l.slot := position
        }
    }
}
