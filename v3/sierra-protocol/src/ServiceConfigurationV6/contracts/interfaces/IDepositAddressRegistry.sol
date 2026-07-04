//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title Deposit Address Registry Interface.
 * @author Open Trade Technology Ltd.
 * @dev Interface for managing deposit addresses across multiple chains and tokens
 * @notice This interface is used to manage deposit addresses across multiple chains and tokens.
 * @notice Chain Identifier Format: CAIP-2 format is preferred for the chain parameter, but the string 
 * type is used for flexibility. This allows for custom chain identifiers or instructions to be included
 * when necessary, accommodating non-standard chain identification requirements.
 */

interface IDepositAddressRegistry {
  struct DepositAddressInfo {
    string tokenAddress; // Can be EVM, Solana, or Tron address
    string chain; // Chain identifier (e.g., "eip155:1", "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp")
    string depositAddress; // Can be EVM, Solana, or Tron address
  }
  /**
   * @notice Emitted when a deposit address is added.
   * @param tokenAddress The address of the token.
   * @param chain The chain identifier.
   * @param depositAddress The deposit address (can be EVM, Solana, or Tron format).
   */

  event DepositAddressAdded(string indexed tokenAddress, string indexed chain, string depositAddress);

  /**
   * @notice Emitted when a deposit address is removed.
   * @param tokenAddress The address of the token.
   * @param chain The chain identifier.
   */
  event DepositAddressRemoved(string indexed tokenAddress, string indexed chain);

  /**
   * @notice Emitted when a deposit address is updated.
   * @param tokenAddress The address of the token.
   * @param chain The chain identifier.
   * @param previousDepositAddress The previous deposit address (can be EVM, Solana, or Tron format).
   * @param newDepositAddress The new deposit address (can be EVM, Solana, or Tron format).
   */
  event DepositAddressUpdated(string indexed tokenAddress, string indexed chain, string previousDepositAddress, string newDepositAddress);

  error DepositAddressNotRegistered(string tokenAddress, string chain);
  error DepositAddressAlreadyExists(string tokenAddress, string chain);
  error DepositAddressUnchanged(string tokenAddress, string chain);
  error NotOperator();
  error InvalidParameters();

  /**
   * @notice Adds a new deposit address for a token-chain pair
   * @param tokenAddress The token address in string format (EVM, Solana, or Tron)
   * @param chain The CAIP-2 chain identifier (e.g., "eip155:1", "solana:5eykt4UsFv8P8NJdTREpY1vzqKqZKvdp")
   * @param depositAddress The deposit address string (can be EVM, Solana, or Tron format)
   */
  function addDepositAddress(string calldata tokenAddress, string calldata chain, string calldata depositAddress) external;

  /**
   * @notice Updates an existing deposit address for a token-chain pair
   * @param tokenAddress The token address in string format (EVM, Solana, or Tron)
   * @param chain The CAIP-2 chain identifier
   * @param newDepositAddress The new deposit address string (can be EVM, Solana, or Tron format)
   */
  function updateDepositAddress(string calldata tokenAddress, string calldata chain, string calldata newDepositAddress) external;

  /**
   * @notice Removes a deposit address for a token-chain pair
   * @param tokenAddress The token address in string format
   * @param chain The CAIP-2 chain identifier
   */
  function removeDepositAddress(string calldata tokenAddress, string calldata chain) external;

  /**
   * @notice Gets the deposit address info for a token-chain pair
   * @param tokenAddress The token address in string format
   * @param chain The CAIP-2 chain identifier
   * @return The DepositAddressInfo struct containing token address, chain, and deposit address
   */
  function getDepositAddress(
    string calldata tokenAddress,
    string calldata chain
  ) external view returns (DepositAddressInfo memory);

  /**
   * @notice Checks if a deposit address is registered for a token-chain pair
   * @param tokenAddress The token address in string format
   * @param chain The CAIP-2 chain identifier
   * @return True if the deposit address is registered, false otherwise
   */
  function isDepositAddressRegistered(string calldata tokenAddress, string calldata chain) external view returns (bool);

  /**
   * @notice Returns the total count of registered deposit addresses
   * @return The number of registered deposit addresses
   */
  function getDepositAddressCount() external view returns (uint256);
}
