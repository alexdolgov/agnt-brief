// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EIP712Upgradeable} from "@openzeppelin-contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {ECDSAUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";

/// @title FlapOracle
/// @notice Upgradeable EIP712 oracle that provides generic signature verification.
/// @dev Callers compute the struct hash for their specific EIP712 type and pass it to `verify()`.
///      This contract owns the EIP712 domain and the trusted signer address.
///
///      Example — V2PoolReserves type:
///
///      ```solidity
///      struct V2PoolReserves {
///          address pool;       // The Uniswap V2-style pool address
///          uint112 reserve0;   // Reserve of token0
///          uint112 reserve1;   // Reserve of token1
///          uint32  timestamp;  // Block timestamp of the last update
///      }
///
///      bytes32 constant V2_POOL_RESERVES_TYPEHASH = keccak256(
///          "V2PoolReserves(address pool,uint112 reserve0,uint112 reserve1,uint32 timestamp)"
///      );
///
///      bytes32 structHash = keccak256(abi.encode(
///          V2_POOL_RESERVES_TYPEHASH,
///          reserves.pool,
///          reserves.reserve0,
///          reserves.reserve1,
///          reserves.timestamp
///      ));
///
///      bool valid = flapOracle.verify(structHash, signature);
///      ```
contract FlapOracle is Initializable, AccessControlUpgradeable, EIP712Upgradeable {
    using ECDSAUpgradeable for bytes32;

    // =========================================================
    // Events
    // =========================================================

    /// @notice Emitted when the signer address is updated
    event SignerUpdated(address indexed oldSigner, address indexed newSigner);

    // =========================================================
    // Errors
    // =========================================================

    /// @notice Thrown when attempting to set signer to address(0)
    error ZeroAddress();

    // =========================================================
    // State
    // =========================================================

    /// @notice The oracle's public key address (corresponds to the off-chain private key used to sign EIP712 messages)
    address public signer;

    // =========================================================
    // Constructor
    // =========================================================

    constructor() {
        _disableInitializers();
    }

    // =========================================================
    // Initializer
    // =========================================================

    /// @notice Initializes the contract
    /// @param _signer The initial signer address
    function initialize(address _signer) external initializer {
        __AccessControl_init();
        __EIP712_init("FlapOracle", "1");

        signer = _signer;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    // =========================================================
    // Core Method
    // =========================================================

    /// @notice Generic EIP712 signature verification
    /// @dev Callers are responsible for computing the structHash for their specific EIP712 type.
    ///      Returns false if signer is address(0).
    /// @param structHash The EIP712 struct hash (keccak256 of the encoded typed struct)
    /// @param signature The signature bytes to verify
    /// @return valid True if the signature was produced by the configured signer
    function verify(bytes32 structHash, bytes calldata signature) external view returns (bool valid) {
        if (signer == address(0)) {
            return false;
        }
        bytes32 digest = _hashTypedDataV4(structHash);
        address recovered = ECDSAUpgradeable.recover(digest, signature);
        return recovered == signer;
    }

    // =========================================================
    // View Methods
    // =========================================================

    /// @notice Returns the EIP712 domain separator
    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }

    // =========================================================
    // Admin Methods
    // =========================================================

    /// @notice Updates the signer address
    /// @param _signer The new signer address
    function setSigner(address _signer) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_signer == address(0)) {
            revert ZeroAddress();
        }
        address oldSigner = signer;
        signer = _signer;
        emit SignerUpdated(oldSigner, _signer);
    }
}
