// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/interfaces/IERC1271.sol";

/**
 * @title EIP3009
 * @notice EIP-3009 implementation for gasless token transfers via off-chain authorization
 * @dev Allows token holders to authorize transfers via signed messages that can be submitted by third parties
 */
abstract contract EIP3009 is ERC20, EIP712 {
    using ECDSA for bytes32;
    using Address for address;

    // EIP-3009 type hash for transferWithAuthorization
    bytes32 public constant TRANSFER_WITH_AUTHORIZATION_TYPEHASH = keccak256(
        "TransferWithAuthorization(address from,address to,uint256 value,uint256 validAfter,uint256 validBefore,bytes32 nonce)"
    );

    // Type hash for cancelAuthorization
    bytes32 public constant CANCEL_AUTHORIZATION_TYPEHASH =
        keccak256("CancelAuthorization(address authorizer,bytes32 nonce)");

    // Type hash for receiveWithAuthorization
    bytes32 public constant RECEIVE_WITH_AUTHORIZATION_TYPEHASH = keccak256(
        "ReceiveWithAuthorization(address from,address to,uint256 value,uint256 validAfter,uint256 validBefore,bytes32 nonce)"
    );

    // Mapping to track used authorizations (prevents replay attacks)
    mapping(address => mapping(bytes32 => bool)) private _authorizationStates;

    /**
     * @notice Emitted when an authorization is used
     * @param authorizer The address that authorized the transfer
     * @param nonce The unique nonce for the authorization
     */
    event AuthorizationUsed(address indexed authorizer, bytes32 indexed nonce);

    /**
     * @notice Emitted when an authorization is canceled
     * @param authorizer The address that authorized the transfer
     * @param nonce The unique nonce for the authorization
     */
    event AuthorizationCanceled(address indexed authorizer, bytes32 indexed nonce);

    /**
     * @notice Execute a transfer with a signed authorization
     * @param from Payer's address (Authorizer)
     * @param to Payee's address
     * @param value Amount to be transferred
     * @param validAfter The time after which this is valid (unix timestamp)
     * @param validBefore The time before which this is valid (unix timestamp)
     * @param nonce Unique nonce
     * @param v ECDSA signature parameter v
     * @param r ECDSA signature parameter r
     * @param s ECDSA signature parameter s
     */
    function transferWithAuthorization(
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        require(block.timestamp > validAfter, "Authorization not yet valid");
        require(block.timestamp < validBefore, "Authorization expired");
        require(!_authorizationStates[from][nonce], "Authorization already used");

        // Construct the EIP-712 hash
        bytes32 structHash = keccak256(
            abi.encode(TRANSFER_WITH_AUTHORIZATION_TYPEHASH, from, to, value, validAfter, validBefore, nonce)
        );

        bytes32 digest = _hashTypedDataV4(structHash);

        // Validate signature: support both EOA (ECDSA) and contract signers (ERC-1271)
        require(_isValidSignatureNow(from, digest, v, r, s), "Invalid signature");

        // Mark authorization as used BEFORE transfer (CEI pattern)
        _authorizationStates[from][nonce] = true;
        emit AuthorizationUsed(from, nonce);

        // Execute the transfer
        _transfer(from, to, value);
    }

    /**
     * @notice Receive a transfer with a signed authorization
     * @param from Payer's address (Authorizer, must be msg.sender)
     * @param to Payee's address
     * @param value Amount to be transferred
     * @param validAfter The time after which this is valid (unix timestamp)
     * @param validBefore The time before which this is valid (unix timestamp)
     * @param nonce Unique nonce
     * @param v ECDSA signature parameter v
     * @param r ECDSA signature parameter r
     * @param s ECDSA signature parameter s
     * @dev The `from` parameter must equal msg.sender to ensure only the authorizer can call this
     */
    function receiveWithAuthorization(
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        // The receiver (`to`) must be the caller of this function per EIP-3009 semantics
        require(to == msg.sender, "Receiver must be msg.sender");
        require(block.timestamp > validAfter, "Authorization not yet valid");
        require(block.timestamp < validBefore, "Authorization expired");
        require(!_authorizationStates[from][nonce], "Authorization already used");

        // Construct the EIP-712 hash
        bytes32 structHash =
            keccak256(abi.encode(RECEIVE_WITH_AUTHORIZATION_TYPEHASH, from, to, value, validAfter, validBefore, nonce));

        bytes32 digest = _hashTypedDataV4(structHash);

        // Validate signature: support both EOA (ECDSA) and contract signers (ERC-1271)
        require(_isValidSignatureNow(from, digest, v, r, s), "Invalid signature");

        // Mark authorization as used BEFORE transfer (CEI pattern)
        _authorizationStates[from][nonce] = true;
        emit AuthorizationUsed(from, nonce);

        // Execute the transfer
        _transfer(from, to, value);
    }

    /**
     * @notice Cancel an authorization
     * @param authorizer Authorizer's address
     * @param nonce Nonce of the authorization
     * @param v ECDSA signature parameter v
     * @param r ECDSA signature parameter r
     * @param s ECDSA signature parameter s
     * @dev Requires a valid signature from the authorizer
     */
    function cancelAuthorization(address authorizer, bytes32 nonce, uint8 v, bytes32 r, bytes32 s) external {
        require(!_authorizationStates[authorizer][nonce], "Authorization already used");

        // Construct the EIP-712 hash
        bytes32 structHash = keccak256(abi.encode(CANCEL_AUTHORIZATION_TYPEHASH, authorizer, nonce));

        bytes32 digest = _hashTypedDataV4(structHash);

        // Validate signature: support both EOA (ECDSA) and contract signers (ERC-1271)
        require(_isValidSignatureNow(authorizer, digest, v, r, s), "Invalid signature");

        // Mark authorization as used BEFORE emitting event (CEI pattern)
        _authorizationStates[authorizer][nonce] = true;
        emit AuthorizationCanceled(authorizer, nonce);
    }

    /**
     * @notice Check if an authorization has been used
     * @param authorizer Authorizer's address
     * @param nonce Nonce of the authorization
     * @return True if the authorization has been used
     */
    function authorizationState(address authorizer, bytes32 nonce) external view returns (bool) {
        return _authorizationStates[authorizer][nonce];
    }

    // ============ Internal Helper Functions ============

    /**
     * @dev Convert v,r,s into a packed signature bytes sequence (r || s || v)
     */
    function _toSignatureBytes(bytes32 r, bytes32 s, uint8 v) internal pure returns (bytes memory) {
        return abi.encodePacked(r, s, v);
    }

    /**
     * @dev Validate a signature for `signer` over `digest`.
     *      First attempt ECDSA recovery (EOA). If that fails and `signer` is a contract,
     *      call `isValidSignature` (ERC-1271) on the contract.
     */
    function _isValidSignatureNow(address signer, bytes32 digest, uint8 v, bytes32 r, bytes32 s)
        internal
        view
        returns (bool)
    {
        // Try EOA signature first via ECDSA recover
        address recovered = ECDSA.recover(digest, v, r, s);
        if (recovered == signer) {
            return true;
        }

        // If signer is a contract, try ERC-1271
        if (signer.isContract()) {
            bytes memory sig = _toSignatureBytes(r, s, v);
            try IERC1271(signer).isValidSignature(digest, sig) returns (bytes4 magic) {
                return (magic == IERC1271.isValidSignature.selector);
            } catch {
                return false;
            }
        }

        return false;
    }
}
