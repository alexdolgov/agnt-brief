// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

contract ISignatureVerificationConstants {
    bytes4 internal constant EIP1271_MAGIC_VALUE = 0x1626ba7e;
}

abstract contract ISignatureVerification is ISignatureVerificationConstants {
    /**
     * @notice EIP1271 method to validate a signature.
     * @param _hash Hash of the data signed on the behalf of address(this).
     * @param _signature Signature byte array associated with _data.
     *
     * MUST return the bytes4 magic value 0x1626ba7e when function passes.
     * MUST NOT modify state (using STATICCALL for solc < 0.5, view modifier for solc > 0.5)
     * MUST allow external calls
     */
    function isValidSignature(bytes32 _hash, bytes memory _signature) external view virtual returns (bytes4);
}