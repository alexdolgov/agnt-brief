// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

/// @title IAccountManager
/// @author Bundie Team
/// @notice Interface for the factory contract that deploys and manages Account instances
/// @dev AccountManager is responsible for:
///      - Deploying new Account proxies via beacon pattern
///      - Managing the vault implementation (upgrades)
///      - Maintaining the token whitelist for deposits
///      - Storing the validator address for cross-chain confirmations
///
///      ## Architecture
///      - Uses OpenZeppelin's UpgradeableBeacon for vault upgrades
///      - Each user can have exactly one vault (1:1 mapping)
///      - Vaults are deployed as BeaconProxy pointing to shared implementation
///
///      ## Security Considerations
///      - Only owner can upgrade implementation, update validator, manage whitelist
///      - Token whitelist prevents deposits of arbitrary tokens
///      - Validator address is critical - only validator can confirm cross-chain ops
interface IAccountManager {
    // ========================== Vault Creation ==========================

    /// @notice Create a new vault for the caller
    /// @dev Deploys a BeaconProxy pointing to the current vault implementation.
    ///      Each address can only have one vault.
    ///
    ///      Requirements:
    ///      - Caller must not already have a vault
    ///
    /// @return vault Address of the newly created vault
    function createAccount() external returns (address vault);

    // ========================== Admin Functions ==========================

    /// @notice Upgrade vault implementation for all vaults
    /// @dev Updates the beacon to point to new implementation.
    ///      All existing vaults automatically use the new implementation.
    ///
    ///      Requirements:
    ///      - Caller must be contract owner
    ///      - New implementation must be valid contract
    ///
    /// @param newImplementation Address of the new vault implementation
    function upgradeImplementation(address newImplementation) external;

    /// @notice Queue a vault implementation upgrade with enforced delay
    /// @param newImplementation Address of the new vault implementation
    function queueUpgradeImplementation(address newImplementation) external;

    /// @notice Cancel a queued implementation upgrade
    function cancelQueuedUpgrade() external;

    /// @notice Update the validator address
    /// @dev Validator is responsible for confirming cross-chain operations.
    ///      This is a critical security role - validator can confirm deposits/withdrawals.
    ///
    ///      Requirements:
    ///      - Caller must be contract owner
    ///      - New validator must not be zero address
    ///
    /// @param newValidator Address of the new validator
    function updateValidator(address newValidator) external;

    /// @notice Add a token to the deposit whitelist
    /// @dev Whitelisted tokens can be deposited into vaults.
    ///      Typically bridgeable tokens that can be sent cross-chain.
    ///
    ///      Requirements:
    ///      - Caller must be contract owner
    ///      - Token must not already be whitelisted
    ///      - Token must not be zero address
    ///
    /// @param token Token address to whitelist
    function addWhitelistedToken(address token) external;

    /// @notice Pause or unpause new deposits/allocations
    /// @param paused True to pause, false to unpause
    function setAllocationsPaused(bool paused) external;

    /// @notice Remove a token from the deposit whitelist
    /// @dev Removed tokens can no longer be deposited (existing balances unaffected).
    ///
    ///      Requirements:
    ///      - Caller must be contract owner
    ///      - Token must be currently whitelisted
    ///
    /// @param token Token address to remove from whitelist
    function removeWhitelistedToken(address token) external;

    // ========================== View Functions ==========================

    /// @notice Get vault address for a user
    /// @dev Returns zero address if user has no vault.
    /// @param user User address to query
    /// @return vault Vault address (address(0) if none exists)
    function getAccount(address user) external view returns (address vault);

    /// @notice Check if user has a vault
    /// @dev Convenience function equivalent to `getAccount(user) != address(0)`.
    /// @param user User address to check
    /// @return hasAccount True if user has a vault, false otherwise
    function hasAccount(address user) external view returns (bool hasAccount);

    /// @notice Check if address is a registered vault
    /// @dev Used by routers to verify caller authorization.
    /// @param vaultAddress Address to check
    /// @return isRegistered True if address is a registered vault
    function isRegisteredAccount(address vaultAddress) external view returns (bool isRegistered);

    /// @notice Get total number of vaults created
    /// @dev Useful for pagination and analytics.
    /// @return count Total vault count
    function getAccountCount() external view returns (uint256 count);

    /// @notice Get vault address at specific index
    /// @dev Used for iterating over all vaults. Index is 0-based.
    ///
    ///      Requirements:
    ///      - Index must be less than vault count
    ///
    /// @param index Zero-based index of vault
    /// @return vault Vault address at the given index
    function getAccountAtIndex(uint256 index) external view returns (address vault);

    /// @notice Check if token is in the deposit whitelist
    /// @dev Vaults only accept deposits of whitelisted tokens.
    /// @param token Token address to check
    /// @return isWhitelisted True if token can be deposited
    function isTokenWhitelisted(address token) external view returns (bool isWhitelisted);

    /// @notice Returns whether deposits/allocations are paused
    function allocationsPaused() external view returns (bool);

    /// @notice Get a paginated subset of whitelisted token addresses
    /// @param offset Starting index (0-based)
    /// @param limit Maximum number of tokens to return
    /// @return tokens Array of whitelisted token addresses
    function getWhitelistedTokens(uint256 offset, uint256 limit) external view returns (address[] memory tokens);

    /// @notice Get number of whitelisted tokens
    /// @dev Useful for checking whitelist size before iteration.
    /// @return count Number of whitelisted tokens
    function getWhitelistedTokenCount() external view returns (uint256 count);

    /// @notice Get the validator address
    /// @dev Validator is authorized to confirm cross-chain operations.
    /// @return validatorAddress Current validator address
    function validator() external view returns (address validatorAddress);

    // ========================== Fee Configuration ==========================

    /// @notice Get the fee manager registry address
    /// @dev Fee policy + computation is maintained in a separate contract.
    function feeManager() external view returns (address);

    /// @notice Get the performance fee config that applies at a given timestamp
    /// @dev Used by vaults to prevent in-flight fee hikes (use initiation timestamp).
    /// @param atTimestamp Timestamp to evaluate fee config at
    /// @return perfFeeBps Performance fee rate in bps
    /// @return recipient Fee recipient address (may be address(0) if fee disabled)
    function getPerformanceFeeConfig(uint48 atTimestamp) external view returns (uint16 perfFeeBps, address recipient);

    /// @notice Get the canonical WETH address for native ETH wrapping
    /// @return wethAddress WETH contract address (address(0) if not configured)
    function weth() external view returns (address wethAddress);

    /// @notice Get the beacon used for vault proxies
    /// @dev All vaults are BeaconProxy instances pointing to this beacon.
    /// @return beacon UpgradeableBeacon contract
    function BEACON() external view returns (address beacon);

    /// @notice Get user's vault address (raw mapping access)
    /// @dev Returns zero address if user has not created a vault.
    /// @param user User address to query
    /// @return vault User's vault proxy address (address(0) if not created)
    function accounts(address user) external view returns (address vault);

    /// @notice Get vault address at specific index (raw array access)
    /// @dev Used for iterating through all vaults.
    /// @param index Vault index in allAccounts array
    /// @return vault Vault address at index
    function allAccounts(uint256 index) external view returns (address vault);

    /// @notice Get token whitelist status (raw mapping access)
    /// @dev Returns true if token is whitelisted for deposits.
    /// @param token Token address to check
    /// @return isWhitelisted True if token can be deposited
    function whitelistedTokens(address token) external view returns (bool isWhitelisted);

    /// @notice Get whitelisted token at specific index
    /// @dev Used for iterating through whitelisted tokens.
    /// @param index Zero-based index into the whitelisted token set
    /// @return token Token address at index
    function whitelistedTokenList(uint256 index) external view returns (address token);

    /// @notice Get queued implementation (raw access)
    function pendingImplementation() external view returns (address);

    /// @notice Get queued implementation ETA (raw access)
    function pendingImplementationEta() external view returns (uint48);
}
