//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./interfaces/IDepositAddressRegistry.sol";
import "./interfaces/IServiceConfigurationV5.sol";
import "./upgrades/DeployerUUPSUpgradeable.sol";

/**
 * @title Deposit Address Registry.
 * @dev Registry for managing deposit addresses across multiple chains and tokens
 * @author Open Trade Technology Ltd.
 * @notice This contract is used to register deposit addresses for different tokens and chains.
 * @notice Chain Identifier Format: CAIP-2 format is preferred for the chain parameter, but the string 
 * type is used for flexibility. This allows for custom chain identifiers or instructions to be included
 * when necessary, accommodating non-standard chain identification requirements.
 */

contract DepositAddressRegistry is IDepositAddressRegistry, DeployerUUPSUpgradeable {
  /**
   * @notice Hash of (tokenAddress, chain) => DepositAddressInfo
   */

  mapping(bytes32 => DepositAddressInfo) public depositAddresses;

  /**
   * @notice Array to track all deposit address keys
   */
  bytes32[] public depositAddressKeys;

  /**
   * @notice Mapping to track the index of each key in the depositAddressKeys array
   * @dev Enables O(1) removal using swap-and-pop pattern
   */
  mapping(bytes32 => uint256) public keyIndex;

  /**
   * @notice Mapping to quickly check if a deposit address is registered.
   * @dev Maps a unique key (hash of token address and chain) to a boolean indicating registration status.
   */
  mapping(bytes32 => bool) public isRegistered;

  /**
   * @dev Restricts caller to ServiceOperator
   */
  modifier onlyOperator() {
    if (!_serviceConfiguration.isOperator(msg.sender)) {
      revert NotOperator();
    }
    _;
  }

  /**
   * @param serviceConfiguration The address of the service configuration contract
   * @notice Initializer for the DepositAddressRegistry
   */
  function initialize(address serviceConfiguration) public initializer {
    if (serviceConfiguration == address(0)) {
      revert InvalidParameters();
    }
    _serviceConfiguration = IServiceConfigurationV5(serviceConfiguration);
  }

  /**
   * @param tokenAddress The address of the token
   * @param chain The chain identifier
   * @notice Generates a unique key for a token-chain pair
   * @return The unique key for the token-chain pair
   */
  function getKey(string calldata tokenAddress, string calldata chain) public pure returns (bytes32) {
    return keccak256(abi.encode(keccak256(bytes(tokenAddress)), keccak256(bytes(chain))));
  }

  /**
   * @notice Adds a new deposit address for a token-chain pair
   * @param tokenAddress The address of the token (string format for multi-chain support)
   * @param chain The chain identifier (CAIP-2 format preferred, but flexible string type allows custom identifiers or instructions)
   * @param depositAddress The deposit address (can be EVM, Solana, or Tron format)
   */
  function addDepositAddress(
    string calldata tokenAddress,
    string calldata chain,
    string calldata depositAddress
  ) external onlyOperator {
    if (bytes(tokenAddress).length == 0 || bytes(chain).length == 0 || bytes(depositAddress).length == 0) {
      revert InvalidParameters();
    }

    bytes32 key = getKey(tokenAddress, chain);

    if (isRegistered[key]) {
      revert DepositAddressAlreadyExists(tokenAddress, chain);
    }

    depositAddresses[key] = DepositAddressInfo({
      tokenAddress: tokenAddress,
      chain: chain,
      depositAddress: depositAddress
    });

    keyIndex[key] = depositAddressKeys.length;
    depositAddressKeys.push(key);
    isRegistered[key] = true;

    emit DepositAddressAdded(tokenAddress, chain, depositAddress);
  }

  /**
   * @notice Updates an existing deposit address
   * @param tokenAddress The address of the token (string format for multi-chain support)
   * @param chain The chain identifier (CAIP-2 format preferred, but flexible string type allows custom identifiers or instructions)
   * @param newDepositAddress The new deposit address (can be EVM, Solana, or Tron format)
   */
  function updateDepositAddress(
    string calldata tokenAddress,
    string calldata chain,
    string calldata newDepositAddress
  ) external onlyOperator {
    if (bytes(tokenAddress).length == 0 || bytes(chain).length == 0 || bytes(newDepositAddress).length == 0) {
      revert InvalidParameters();
    }

    bytes32 key = getKey(tokenAddress, chain);

    if (!isRegistered[key]) {
      revert DepositAddressNotRegistered(tokenAddress, chain);
    }

    string memory previousDepositAddress = depositAddresses[key].depositAddress;

    if (keccak256(bytes(previousDepositAddress)) == keccak256(bytes(newDepositAddress))) {
      revert DepositAddressUnchanged(tokenAddress, chain);
    }

    depositAddresses[key].depositAddress = newDepositAddress;

    emit DepositAddressUpdated(tokenAddress, chain, previousDepositAddress, newDepositAddress);
  }

  /**
   * @notice Removes a deposit address for a token-chain pair
   * @param tokenAddress The address of the token
   * @param chain The chain identifier
   */
  function removeDepositAddress(string calldata tokenAddress, string calldata chain) external onlyOperator {
    if (bytes(tokenAddress).length == 0 || bytes(chain).length == 0) {
      revert InvalidParameters();
    }

    bytes32 key = getKey(tokenAddress, chain);

    if (!isRegistered[key]) {
      revert DepositAddressNotRegistered(tokenAddress, chain);
    }

    isRegistered[key] = false;

    delete depositAddresses[key];

    uint256 indexToRemove = keyIndex[key];
    uint256 lastIndex = depositAddressKeys.length - 1;

    if (indexToRemove != lastIndex) {
      bytes32 lastKey = depositAddressKeys[lastIndex];
      depositAddressKeys[indexToRemove] = lastKey;
      keyIndex[lastKey] = indexToRemove;
    }

    depositAddressKeys.pop();
    delete keyIndex[key];

    emit DepositAddressRemoved(tokenAddress, chain);
  }

  /**
   * @notice Gets deposit address info for a token-chain pair
   * @param tokenAddress The address of the token
   * @param chain The chain identifier
   * @return The deposit address info for the token-chain pair
   */
  function getDepositAddress(
    string calldata tokenAddress,
    string calldata chain
  ) external view returns (DepositAddressInfo memory) {
    bytes32 key = getKey(tokenAddress, chain);

    if (!isRegistered[key]) {
      revert DepositAddressNotRegistered(tokenAddress, chain);
    }

    return depositAddresses[key];
  }

  /**
   * @param tokenAddress The address of the token
   * @param chain The chain identifier
   * @notice Checks if a deposit address is registered for a token-chain pair
   * @return True if the deposit address is registered for the token-chain pair, false otherwise
   */
  function isDepositAddressRegistered(string calldata tokenAddress, string calldata chain) external view returns (bool) {
    bytes32 key = getKey(tokenAddress, chain);
    return isRegistered[key];
  }
  /**
   * @notice Returns the count of registered deposit addresses
   * @return The count of registered deposit addresses
   */
  function getDepositAddressCount() external view returns (uint256) {
    return depositAddressKeys.length;
  }
}
