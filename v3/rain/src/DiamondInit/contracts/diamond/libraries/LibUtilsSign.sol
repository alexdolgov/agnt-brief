// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

import { LibEIP712 } from "../dependencies/openzeppelin/libraries/LibEIP712.sol";

import { IHelper } from "../interfaces/IHelper.sol";

import { LibAppStorage } from "./LibAppStorage.sol";
import { LibUtilsRevert } from "./LibUtilsRevert.sol";

/**
 * @title LibUtilsSign
 * @author Rain Team
 * @notice Library for signature validation utilities.
 * @dev Implements EIP-712 signature verification against the authorized signer stored in AppStorage.
 */
library LibUtilsSign {
    using ECDSA for bytes32;

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Validates an EIP-712 signature against the authorized signer.
     * @param structHash Keccak256 hash of the EIP-712 typed structured data.
     * @param signature Signature to verify.
     */
    function validateSignature(bytes32 structHash, bytes memory signature) internal view {
        bytes32 digest = LibEIP712.hashTypedDataV4(structHash);

        if (LibAppStorage.signer() != digest.recover(signature)) {
            LibUtilsRevert.revertWithSelector(IHelper.IncorrectSignatureRecovery.selector);
        }
    }
}
