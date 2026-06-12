//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC1271.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

library CheckSig {
    /// @dev Check {from} has signed a hashed message {digest} with signature {v, r, s}.
    function checkSignature(address from, bytes32 digest, uint8 v, bytes32 r, bytes32 s) internal view {
        if (from.code.length > 0) {
            // from is a contract
            (bool success, bytes memory result) = from.staticcall(
                abi.encodeWithSelector(IERC1271.isValidSignature.selector, digest, abi.encodePacked(r, s, v))
            );
            require(
                success && result.length == 32 && abi.decode(result, (bytes32)) == bytes32(IERC1271.isValidSignature.selector),
                "ERC1271: Unauthorized"
            );
        } else {
            require(ECDSA.recover(digest, v, r, s) == from, "CheckSig: Unauthorized");
        }
    }

    /// @dev Check {from} has signed a hashed message {digest} with signature {sig}.
    function checkSignature(address from, bytes32 digest, bytes memory sig) internal view {
        if (from.code.length > 0) {
            // from is a contract
            (bool success, bytes memory result) = from.staticcall(
                abi.encodeWithSelector(IERC1271.isValidSignature.selector, digest, sig)
            );
            require(
                success && result.length == 32 && abi.decode(result, (bytes32)) == bytes32(IERC1271.isValidSignature.selector),
                "ERC1271: Unauthorized"
            );
        } else {
            require(ECDSA.recover(digest, sig) == from, "CheckSig: Unauthorized");
        }
    }
}