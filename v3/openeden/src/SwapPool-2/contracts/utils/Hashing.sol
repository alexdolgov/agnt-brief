// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

library Hashing {
    /// @dev keccak256(bytes)
    function hashBytes(bytes memory data) internal pure returns (bytes32 out) {
        assembly ("memory-safe") {
            out := keccak256(add(data, 32), mload(data))
        }
    }

    /// @dev keccak256(abi.encodePacked(bytes32, bytes))
    function hashPacked(bytes32 a, bytes memory b) internal pure returns (bytes32 out) {
        assembly ("memory-safe") {
            // Reuse the bytes buffer in place: temporarily overwrite the length slot with `a`
            let orig := mload(b)
            mstore(b, a)
            out := keccak256(b, add(32, orig))
            // Restore original length
            mstore(b, orig)
        }
    }

    /// @dev keccak256(abi.encode(address,address,address,address))
    function hash4(address a, address b, address c, address d) internal pure returns (bytes32 out) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            mstore(ptr, a)
            mstore(add(ptr, 32), b)
            mstore(add(ptr, 64), c)
            mstore(add(ptr, 96), d)
            out := keccak256(ptr, 128)
            mstore(0x40, add(ptr, 128))
        }
    }

    /// @dev Canonical pair hash: keccak256(abi.encodePacked(min(tokenA,tokenB), max(tokenA,tokenB))) — 20+20 tight pack.
    /// Order-independent: tokenPairHash(A,B) == tokenPairHash(B,A).
    function tokenPairHash(address tokenA, address tokenB) internal pure returns (bytes32 out) {
        assembly ("memory-safe") {
            // Determine ordering by numeric address comparison
            let a := tokenA
            let b := tokenB
            // If a > b, swap
            if gt(a, b) {
                let tmp := a
                a := b
                b := tmp
            }

            let ptr := mload(0x40)
            // Write tightly packed 20+20 bytes in canonical order (a <= b)
            mstore(ptr, shl(96, a))
            mstore(add(ptr, 20), shl(96, b))
            out := keccak256(ptr, 40)
            // Advance free memory to 64-byte boundary
            mstore(0x40, add(ptr, 64))
        }
    }

    /// @dev EIP-191 Ethereum Signed Message hash for a 32-byte message.
    /// digest = keccak256("\x19Ethereum Signed Message:\n32" || inner)
    function ethSignedMessageHash32(bytes32 inner) internal pure returns (bytes32 out) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            // Write 28-byte prefix as two words to avoid oversized literals, left-aligned in their slots
            // "\x19Ethereum Signed" (16 bytes) at [ptr .. ptr+15]
            mstore(ptr, shl(128, 0x19457468657265756d205369676e6564))
            // " Message:\n32" (12 bytes) at [ptr+16 .. ptr+27]
            mstore(add(ptr, 16), shl(160, 0x204d6573736167653a0a3332))
            // Append 32-byte inner starting at offset 28
            mstore(add(ptr, 28), inner)
            out := keccak256(ptr, 60)
            // Bump free mem pointer (60 -> 64)
            mstore(0x40, add(ptr, 64))
        }
    }

    /// @dev keccak256(abi.encode(selfAddr, target, payloadHash, chainid, account, nonce))
    function encode6AndHash(
        address selfAddr,
        address target,
        bytes32 payloadHash,
        uint256 chainId_,
        address account,
        uint256 nonce
    ) internal pure returns (bytes32 out) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            mstore(ptr, selfAddr)
            mstore(add(ptr, 32), target)
            mstore(add(ptr, 64), payloadHash)
            mstore(add(ptr, 96), chainId_)
            mstore(add(ptr, 128), account)
            mstore(add(ptr, 160), nonce)
            out := keccak256(ptr, 192)
            mstore(0x40, add(ptr, 192))
        }
    }
}
