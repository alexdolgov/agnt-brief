// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';

contract DocumentHashRegistry is Initializable, AccessControlUpgradeable {
  // Events
  event DocumentHashAdded(bytes32 indexed key, bytes32 value);
  event DocumentHashUpdated(bytes32 indexed key, bytes32 oldValue, bytes32 newValue);
  event DocumentHashRemoved(bytes32 indexed key, bytes32 value);

  // Custom errors
  error EmptyKey();
  error EmptyValue();
  error KeysLengthMismatch();

  /**
   * @dev Mapping from file name (hashed) to document hash. An empty document hash means the document does not exist.
   */
  mapping(bytes32 => bytes32) public documentHashes;

  /**
   * @dev Mapping to track whether a document hash is registered. Used to check if a document hash exists in the dictionary.
   */
  mapping(bytes32 => bool) public registeredHashes;

  /**
   * @dev Initializes the contract by setting up the AccessControl and granting the default admin role to the deployer.
   */
  function __DocumentHashRegistry_init() public virtual initializer {
    __AccessControl_init();
    __DocumentHashRegistry_init_unchained();
  }

  function __DocumentHashRegistry_init_unchained() internal onlyInitializing {
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  /**
   * @dev Updates the document hashes in the registry. If a key already exists, it will be overwritten.
   *      An empty document hash represents that the document does not exist.
   * @param keys Array of the document names (hashed).
   * @param values Array of the document hashes.
   */
  function updateDocumentHashes(bytes32[] memory keys, bytes32[] memory values) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (keys.length != values.length) {
      revert KeysLengthMismatch();
    }

    // Check for empty strings in keys and values
    for (uint i = 0; i < keys.length; i++) {
      bytes32 key = keys[i];
      if (key == bytes32(0)) {
        revert EmptyKey();
      }
      bytes32 value = values[i];
      bytes32 existingHash = documentHashes[key];

      // Adding a new document (most common case)
      if (existingHash == bytes32(0) && value != bytes32(0)) {
        documentHashes[key] = value;
        registeredHashes[value] = true;
        emit DocumentHashAdded(key, value);

        // Updating an existing document
      } else if (existingHash != bytes32(0) && value != bytes32(0) && existingHash != value) {
        documentHashes[key] = value;
        registeredHashes[existingHash] = false;
        registeredHashes[value] = true;
        emit DocumentHashUpdated(key, existingHash, value);

        // Removing a document
      } else if (value == bytes32(0) && existingHash != bytes32(0)) {
        documentHashes[key] = bytes32(0);
        registeredHashes[existingHash] = false;
        emit DocumentHashRemoved(key, existingHash);
      }
    }
  }

  /**
   * @dev Returns the document hash associated with the given key.
   * @param key The hashed file name.
   * @return The document hash associated with the key.
   */
  function getDocumentHash(bytes32 key) public view returns (bytes32) {
    return documentHashes[key];
  }

  /**
   * @dev Checks if a document hash exists in the dictionary as a value.
   * @param documentHash The document hash to check.
   * @return True if the document hash is registered, false otherwise.
   */
  function isHashRegistered(bytes32 documentHash) public view virtual returns (bool) {
    return registeredHashes[documentHash];
  }
}
