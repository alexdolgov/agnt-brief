// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

/**
 * @title IPermittable
 * @notice Interface for the Permittable contract implementing EIP-712 compliant permit functionality
 * @dev Defines functions for approving token spending through signatures (EIP-2612)
 */
interface IPermittable {
    /**
     * @dev Error thrown when signature has expired
     */
    error SignatureExpired();
    
    /**
     * @dev Error thrown when S value in signature is invalid
     */
    error InvalidSignatureS();
    
    /**
     * @dev Error thrown when signature verification fails
     */
    error BadSignatory();

    /**
     * @dev Returns the current nonce for an address
     * @param owner The address to get the nonce for
     * @return The current nonce
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Sets approval amount for a spender via signature from signatory
     * @param owner The address that signed the signature
     * @param spender The address to authorize (or rescind authorization from)
     * @param value Amount that `owner` is approving for `spender`
     * @param deadline Expiration time for the signature
     * @param v The recovery byte of the signature
     * @param r Half of the ECDSA signature pair
     * @param s Half of the ECDSA signature pair
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the domain separator used in the encoding of the signature for permit
     * @return bytes32 The domain separator
     */
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}
