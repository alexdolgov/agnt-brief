// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {ECDSA} from "openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol";
import {IPermittable} from "src/interfaces/IPermittable.sol";

/**
 * @title Permittable
 * @notice Abstract contract implementing EIP-712 compliant permit functionality with ERC-7201 namespaced storage
 * @dev Allows approval of token spending through signatures (EIP-2612)
 * @dev Combining Nonces with Permits together as a unit
 */
abstract contract Permittable is IPermittable {
    /**
     * @dev Storage struct using ERC-7201 namespaced pattern
     * @custom:storage-location erc7201:superstate.storage.permittable
     */
    struct PermittableStorage {
        /// @notice The next expected nonce for an address, for validating authorizations via signature
        mapping(address => uint256) nonces;
    }
    
    // keccak256(abi.encode(uint256(keccak256(bytes("superstate.storage.permittable"))) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant PERMITTABLE_STORAGE_LOCATION = 
        0x61eb30d84d4dfa1c5d0f066f60f5c357c05c83c2a042c60a480d47da76483800;
    /* Requirements for implementation:
        1. _approve() must be implemented by the inheriting contract
        2. _name() must be implemented by the inheriting contract, referencing to token name to be used for domain separator
        3. _version() must be implemented by the inheriting contract, referencing to contract version to be used for domain separator
    */

    /**
     * @dev Hook to approve token spending
     * @param owner The token owner
     * @param spender The token spender
     * @param amount The amount of tokens to approve
     * @notice Must be implemented by inheriting contract
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual;

    /**
     * @dev Hook to get the token name
     * @notice Must be implemented by inheriting contract
     * @return The name of the token
     */
    function _name() internal view virtual returns (string memory);

    /**
     * @dev Hook to get the version
     * @notice Must be implemented by inheriting contract
     * @return The version string
     */
    function _version() internal view virtual returns (string memory);

    /*
        Provides the following to be used on inheritance:
        1. nonces(address owner) public view virtual returns (uint256)
        2. permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        3. DOMAIN_SEPARATOR() public view virtual returns (bytes32)
    *
    */

    /**
     * @dev Returns the current nonce for an address
     * @param owner The address to get the nonce for
     * @return The current nonce
     */
    function nonces(address owner) public view virtual returns (uint256) {
        PermittableStorage storage $ = _getPermittableStorage();
        return $.nonces[owner];
    }
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
    ) external virtual {
        if (block.timestamp > deadline) revert SignatureExpired();

        uint256 currentNonce = nonces(owner);
        bytes32 structHash = keccak256(abi.encode(
            AUTHORIZATION_TYPEHASH,
            owner,
            spender,
            value,
            currentNonce,
            deadline
        ));
        bytes32 digest = keccak256(abi.encodePacked("\x19\x01", DOMAIN_SEPARATOR(), structHash));

        if (_isValidSignature(owner, digest, v, r, s)) {
            _incrementNonce(owner);
            _approve(owner, spender, value);
        }
    }
    /**
     * @dev Returns the domain separator used in the encoding of the signature for permit
     * @return bytes32 The domain separator
     */
    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return keccak256(
            abi.encode(
                DOMAIN_TYPEHASH,
                keccak256(bytes(_name())),
                keccak256(bytes(_version())),
                block.chainid,
                address(this)
            )
        );
    }

    /// @dev The EIP-712 typehash for authorization via permit
    bytes32 internal constant AUTHORIZATION_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    /// @dev The EIP-712 typehash for the contract's domain
    bytes32 internal constant DOMAIN_TYPEHASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");
    
    /**
     * @dev Returns the PermittableStorage struct
     * @return $ Storage pointer to the PermittableStorage struct
     */
    function _getPermittableStorage() private pure returns (PermittableStorage storage $) {
        assembly {
            $.slot := PERMITTABLE_STORAGE_LOCATION
        }
    }

    
    /**
     * @dev Increments the nonce for an address
     * @param owner The address to increment the nonce for
     */
    function _incrementNonce(address owner) internal {
        PermittableStorage storage $ = _getPermittableStorage();
        $.nonces[owner]++;
    }
    
    /**
     * @dev Checks if a signature is valid
     * @param signer The address that signed the signature
     * @param digest The hashed message that is signed
     * @param v The recovery byte of the signature
     * @param r Half of the ECDSA signature pair
     * @param s Half of the ECDSA signature pair
     * @return bool Whether the signature is valid
     */
    function _isValidSignature(
        address signer,
        bytes32 digest,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (bool) {
        (address recoveredSigner, ECDSA.RecoverError recoverError,) = ECDSA.tryRecover(digest, v, r, s);
        
        if (recoverError == ECDSA.RecoverError.InvalidSignatureS) revert InvalidSignatureS();
        if (recoverError == ECDSA.RecoverError.InvalidSignature) revert BadSignatory();
        if (recoveredSigner != signer) revert BadSignatory();
        
        return true;
    }

    function __Permittable_init() internal {}

}