// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Unauthorized, InvalidSigner} from "../constants/Errors.sol";
import {IAtomicBatcher} from "../interfaces/IAtomicBatcher.sol";

import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {StorageSlot} from "@openzeppelin/contracts/utils/StorageSlot.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/// @title AtomicBatcher
/// @notice Stateless singleton contract for EIP-7702 atomic batching
/// @dev Users sign EIP-7702 authorization delegating this contract's code to their EOA
///      When delegated, logic executes in EOA context; nonce is stored in EOA's storage
///      via ERC-7201, preventing collisions with future upgrades
/// @custom:security-contact security@accountable.capital
contract AtomicBatcher is IAtomicBatcher, EIP712 {
    /// @notice EIP-1271 magic value for valid signatures
    bytes4 private constant _MAGIC_VALUE = bytes4(0x1626ba7e);

    /// @notice EIP-1271 invalid signature value
    bytes4 private constant _INVALID_SIGNATURE = bytes4(0xffffffff);

    /// @notice EIP-712 typehash for ExecuteCall
    bytes32 public constant EXECUTE_TYPEHASH =
        keccak256("ExecuteCall(Call[] calls,uint256 nonce)Call(address target,uint256 value,bytes data)");

    /// @notice EIP-712 typehash for Call
    bytes32 public constant CALL_TYPEHASH = keccak256("Call(address target,uint256 value,bytes data)");

    /// @notice ERC-7201 namespace for nonce storage
    string public constant NAMESPACE = "accountable.atomicbatcher.nonce.v1";

    // keccak256(abi.encode(uint256(keccak256("accountable.atomicbatcher.nonce.v1")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant _NONCE_BASE_SLOT = 0xa68386067ee8ee669468449acf0ad3e2ae0d09e4d99f78eaa329c6681c06b900;

    constructor() EIP712("AtomicBatcher", "1") {}

    /// @inheritdoc IAtomicBatcher
    function execute(Call[] calldata calls) external payable {
        if (msg.sender != address(this)) revert Unauthorized();
        _executeCalls(calls);
    }

    /// @inheritdoc IAtomicBatcher
    function execute(Call[] calldata calls, bytes calldata signature) external payable {
        bytes32 nonceSlot = _getNonceSlot(address(this));
        StorageSlot.Uint256Slot storage nonce = StorageSlot.getUint256Slot(nonceSlot);
        uint256 currentNonce = nonce.value;

        bytes32 structHash = _hashCalls(calls, currentNonce);
        bytes32 digest = _hashTypedDataV4(structHash);
        address signer = ECDSA.recover(digest, signature);

        if (signer != address(this)) revert InvalidSigner();

        nonce.value = currentNonce + 1;
        _executeCalls(calls);
    }

    /// @inheritdoc IAtomicBatcher
    function isValidSignature(bytes32 _hash, bytes calldata signature) external view returns (bytes4) {
        (address recovered, ECDSA.RecoverError error,) = ECDSA.tryRecover(_hash, signature);
        if (error != ECDSA.RecoverError.NoError || recovered != address(this)) {
            return _INVALID_SIGNATURE;
        }
        return _MAGIC_VALUE;
    }

    /// @notice Get nonce for an account
    /// @param account The account address
    /// @return The current nonce
    function getNonce(address account) external view returns (uint256) {
        return StorageSlot.getUint256Slot(_getNonceSlot(account)).value;
    }

    /// @notice Execute a batch of calls atomically
    /// @param calls Array of calls to execute
    function _executeCalls(Call[] calldata calls) private {
        uint256 length = calls.length;
        for (uint256 i = 0; i < length;) {
            Address.functionCallWithValue(calls[i].target, calls[i].data, calls[i].value);
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Get ERC-7201 storage slot for nonce mapping
    /// @dev Computes namespace slot: keccak256(abi.encode(uint256(keccak256(namespace)) - 1)) & ~bytes32(uint256(0xff))
    function _getNonceSlot(address account) private pure returns (bytes32) {
        return keccak256(abi.encode(account, _NONCE_BASE_SLOT));
    }

    /// @notice Hash the calls array for EIP-712 signing
    /// @param calls Array of calls to hash
    /// @param nonce The nonce to include in the hash
    /// @return The struct hash
    function _hashCalls(Call[] calldata calls, uint256 nonce) private pure returns (bytes32) {
        bytes32 callsHash = _hashCallArray(calls);
        return keccak256(abi.encode(EXECUTE_TYPEHASH, callsHash, nonce));
    }

    /// @notice Hash an array of calls
    /// @param calls Array of calls
    /// @return The keccak256 hash of the encoded calls
    /// @dev For EIP-712 arrays, we hash each element then hash the concatenation
    function _hashCallArray(Call[] calldata calls) private pure returns (bytes32) {
        if (calls.length == 0) {
            return keccak256("");
        }

        // Hash each call struct
        bytes memory concatenatedHashes = new bytes(32 * calls.length);
        for (uint256 i = 0; i < calls.length;) {
            bytes32 callHash =
                keccak256(abi.encode(CALL_TYPEHASH, calls[i].target, calls[i].value, keccak256(calls[i].data)));
            assembly {
                mstore(add(add(concatenatedHashes, 0x20), mul(i, 0x20)), callHash)
            }
            unchecked {
                ++i;
            }
        }

        return keccak256(concatenatedHashes);
    }
}
