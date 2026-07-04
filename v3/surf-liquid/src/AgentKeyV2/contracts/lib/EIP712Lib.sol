// SPDX-License-Identifier: Unlicense
pragma solidity =0.8.27;

/// @title EIP712Lib: A library that stores the signature related types
library EIP712Lib {
    struct Signature {
        bytes signature;
        bytes data;
        uint256 expiresAt;
    }
    struct SignatureWithNonce {
        bytes signature;
        bytes data;
        uint256 expiresAt;
        uint256 nonce;
    }
    bytes32 public constant SIGNATURE_TYPE =
        keccak256("Signature(address account,bytes32 data,uint256 expiresAt)");
    bytes32 public constant SIGNATURE_TYPE_WITH_NONCE =
        keccak256(
            "SignatureWithNonce(address account,bytes32 data,uint256 expiresAt,uint256 nonce)"
        );
}
