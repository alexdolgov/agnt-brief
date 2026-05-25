// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

interface IUniversalSigValidator {
    /**
     * @notice Validates a signature using EOA, EIP-1271, or ERC-6492 semantics.
     *         Handles counterfactual deployments and avoids side effects when called externally.
     * @param signer The address that is expected to have signed the message
     * @param hash The hashed message that was signed (e.g. EIP-712 or EIP-191 digest)
     * @param signature The signature bytes (standard, 1271, or ERC-6492-wrapped)
     * @return isValid True if the signature is valid, otherwise false or reverts
     *
     * @dev If the internal call to isValidSigImpl attempts a contract deployment (or another side effect),
     *      and allowSideEffects is set to false, the call may revert with a single byte result (0x01 or 0x00).
     *      This function interprets that single byte to return a boolean.
     *      For all other cases, errors are propagated using `revert(error, len)` to preserve custom revert messages.
     */
    function isValidSig(address signer, bytes32 hash, bytes calldata signature) external returns (bool);
}
