// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IFheKeySet {
    struct FheKeySet {
        FheKey privateKey;
        FheKey computeKey;
        FheKey publicKey;
        address issuer;
    }

    struct FheKey {
        string keyURL;
        string keyHash;
    }
}
