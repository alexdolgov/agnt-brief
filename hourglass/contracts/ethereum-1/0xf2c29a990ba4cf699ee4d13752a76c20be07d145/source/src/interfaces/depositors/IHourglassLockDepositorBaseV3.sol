// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

/**
 * @title IHourglassLockDepositorBaseV3
 * @notice Interface for the HourglassLockDepositorBaseV3 contract
 * @dev This contract defines the interface for token deposits before maturity and redemption after maturity
 */
interface IHourglassLockDepositorBaseV3 {
    // Getters
    /// @notice The block number of the contract creation
    function creationBlock() external view returns (uint256);

    /// @notice The maturity timestamp of the vault (unix timestamp in seconds)
    function maturity() external view returns (uint256);

    /// @notice Address of the factory that created this contract
    function factory() external view returns (address);

    /// @notice Returns the major version of the contract
    /// @return The major version number
    function versionMajor() external view returns (uint8);

    /// @notice Returns the minor version of the contract
    /// @return The minor version number
    function versionMinor() external view returns (uint8);

    // Deposit functions
    /// @notice Acquire deposit lock for the caller, callable by contracts only
    /// @dev External contracts can call this to gain exclusive deposit rights.
    ///      Once the lock is acquired, the external contract must push the
    ///      underlying token to the contract and then call `depositWithLock`
    function acquireDepositLock() external;

    /// @notice Deposit underlying tokens and receive either combined or split tokens
    /// @param amount The amount of the underlying token to deposit
    /// @param receiveSplit Whether to receive the split tokens or the combined token
    /// @dev Only callable before maturity, pulls tokens from caller's wallet
    function deposit(uint256 amount, bool receiveSplit) external;

    /// @notice Deposit underlying tokens for a specified user and receive either combined or split tokens
    /// @param user The address of the user to deposit for
    /// @param amount The amount of the underlying token to deposit
    /// @param receiveSplit Whether to receive the split tokens or the combined token
    /// @dev Only callable before maturity, pulls tokens from caller's wallet
    ///      and deposits on behalf of the specified user
    function depositFor(address user, uint256 amount, bool receiveSplit) external;

    /// @notice Deposits within a locked context with specified recipients
    /// @param principalRecipient The address to send the principal tokens to
    /// @param pointRecipient The address to send the point tokens to
    /// @param amount The amount of the deposit token to deposit
    /// @param receiveSplit Whether to receive the split tokens or the combined token
    /// @dev This allows external contracts to push funds to the depositor and then execute the deposit
    ///      The lock is used to ensure that control flow is not intercepted by malicious contracts
    function depositWithLock(address principalRecipient, address pointRecipient, uint256 amount, bool receiveSplit)
        external;

    // Redeem functions
    /// @notice Redeem the combined token for the underlying token
    /// @param amount The amount of combined tokens to redeem
    /// @dev Only callable after maturity
    function redeemCombined(uint256 amount) external;

    /// @notice Redeem the principal token for the underlying token
    /// @param amount The amount of principal tokens to redeem
    /// @dev Only callable after maturity
    function redeemPrincipal(uint256 amount) external;

    // Split & Recombine
    /// @notice Split the combined token into principal and point tokens
    /// @param amount The amount of combined tokens to split
    /// @dev Only callable before maturity, burns combined tokens and mints principal and point tokens
    function split(uint256 amount) external;

    /// @notice Combine principal and point tokens into combined tokens
    /// @param amount The amount of tokens to recombine
    /// @dev Only callable before maturity, burns principal and point tokens and mints combined tokens
    function recombine(uint256 amount) external;

    // Getters
    /// @notice Returns the addresses for the combined, principal, and point tokens
    /// @return tokens An array of the token addresses [combined, principal, point]
    function getTokens() external view returns (address[] memory);

    /// @notice Returns the address of the point token
    /// @return The point token address
    function getPointToken() external view returns (address);

    /// @notice Returns the address of the principal token
    /// @return The principal token address
    function getPrincipalToken() external view returns (address);

    /// @notice Returns the address of the combined token
    /// @return The combined token address
    function getCombinedToken() external view returns (address);

    /// @notice Returns the address of the underlying deposit token
    /// @return The underlying token address
    function getUnderlying() external view returns (address);

    /// @notice Returns the deposit cap for the vault
    /// @return The maximum amount of deposits allowed
    function getDepositCap() external view returns (uint256);

    /// @notice Returns the amount of the underlying token deposited
    /// @return The current total deposits
    function getCurrentDeposits() external view returns (uint256);

    // Admin functions
    /// @notice Set the maximum amount of deposits allowed
    /// @param _depositCap The new deposit cap
    /// @dev Only callable by the factory contract
    function setMaxDeposits(uint256 _depositCap) external;

    /// @notice Recover tokens mistakenly sent to the contract
    /// @param token The address of the token to recover (address(0) for ETH)
    /// @param recipient The address to send the recovered tokens to
    /// @dev Only callable by the factory. For the underlying token, only excess beyond
    ///      current deposits can be recovered. All other tokens can be fully recovered.
    function recoverToken(address token, address recipient) external;

    // Events
    /// @notice Emitted when a deposit is made
    /// @param depositor The address of the depositor contract
    /// @param principalRecipient The address receiving the principal tokens
    /// @param pointRecipient The address receiving the point tokens
    /// @param receiveSplit Whether split tokens were received
    /// @param amount The amount deposited
    event Deposit(
        address indexed depositor, address principalRecipient, address pointRecipient, bool receiveSplit, uint256 amount
    );

    /// @notice Emitted when tokens are redeemed
    /// @param user The address redeeming the tokens
    /// @param amount The amount redeemed
    event Redeem(address indexed user, uint256 amount);

    /// @notice Error thrown when a caller is not the factory
    error CallerNotFactory();

    /// @notice Error thrown when an operation requires post-maturity but it's still pre-maturity
    error NotPostMaturity();

    /// @notice Error thrown when an operation requires pre-maturity but it's already post-maturity
    error NotPreMaturity();

    /// @notice Error thrown when the underlying token address is invalid
    error InvalidUnderlying();

    /// @notice Error thrown when the underlying token has invalid decimals
    error InvalidDecimals();

    /// @notice Error thrown when the maturity timestamp is invalid
    error InvalidMaturity();

    /// @notice Error thrown when the deposit token pull operation fails
    error DepositPullFailed();

    /// @notice Error thrown when the deposit token push operation fails
    error DepositPushFailed();

    /// @notice Error thrown when a deposit would exceed the deposit cap
    error DepositCapExceeded();

    /// @notice Error thrown when attempting to deposit zero amount
    error DepositZeroAmount();

    /// @notice Error thrown when principal and point recipients don't match for combined tokens
    error DepositCombinedRecipientMismatch();

    /// @notice Error thrown when a deposit lock is already held
    error DepositLockAlreadyHeld();

    /// @notice Error thrown when a deposit lock is required but not held
    error DepositLockNotHeld();

    /// @notice Error thrown when the caller for a lock operation is not a contract
    error DepositLockCallerNotContract();

    /// @notice Error thrown when the caller doesn't match the deposit lock entrant
    error DepositLockCallerNotEntrant();

    /// @notice Error thrown when an invalid deposit cap is set
    error InvalidDepositCap();
}
