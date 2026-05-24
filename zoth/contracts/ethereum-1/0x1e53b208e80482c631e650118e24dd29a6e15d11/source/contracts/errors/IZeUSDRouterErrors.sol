// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title ZeUSD Router Error Interface
 * @author ZeUSD Protocol Team
 * @notice Contains all error definitions for the ZeUSD Router contract
 * @dev Custom errors for better gas efficiency and more descriptive revert messages
 * @custom:security-contact paras@zoth.io
 */
interface IZeUSDRouterErrors {
    /**
     * @notice Thrown when an invalid (usually zero) address is provided
     * @param addr The invalid address provided
     * @dev Basic input validation error
     */
    error InvalidAddress(address addr);

    /**
     * @notice Thrown when operation involves an unsupported asset
     * @param asset Address of the unsupported asset
     * @dev Asset validation error
     */
    error AssetNotSupported(address asset);

    /**
     * @notice Thrown when trying to access non-existent integration
     * @param integrationId ID of the integration that wasn't found
     * @dev Integration lookup error
     */
    error IntegrationNotFound(bytes32 integrationId);

    /**
     * @notice Thrown when attempting to register an existing integration
     * @param integrationId ID of the integration that already exists
     * @dev Duplicate integration error
     */
    error IntegrationAlreadyExists(bytes32 integrationId);

    /**
     * @notice Thrown when attempting to use an inactive integration
     * @param integrationId ID of the inactive integration
     * @dev Integration state error
     */
    error IntegrationNotActive(bytes32 integrationId);

    /**
     * @notice Thrown when trying to perform operations while deposits are paused
     * @dev System state error
     */
    error DepositsArePaused();

    /**
     * @notice Thrown when trying to use a paused subvault
     * @param subVault Address of the paused subvault
     * @dev SubVault state error
     */
    error SubVaultPaused(address subVault);

    /**
     * @notice Thrown when admin privileges are required but caller lacks them
     * @dev Authorization error
     */
    error AdminRequired();

    /**
     * @notice Thrown when non-whitelisted account attempts restricted operation
     * @param account Address of the non-whitelisted account
     * @dev Access control error
     */
    error NotWhitelisted(address account);

    /**
     * @notice Thrown when blacklisted account attempts any operation
     * @param account Address of the blacklisted account
     * @dev Compliance restriction error
     */
    error Blacklisted(address account);

    /**
     * @notice Thrown when zero amount is provided for operations
     * @dev Amount validation error
     */
    error ZeroAmount();

    /**
     * @notice Thrown when array lengths don't match in batch operations
     * @dev Input validation error
     */
    error InvalidArrayLength();

    /**
     * @notice Thrown when deposit operation fails
     * @param reason Description of why the deposit failed
     * @dev Operation failure error
     */
    error DepositFailed(string reason);

    /**
     * @notice Thrown when bridge operation fails
     * @param reason Description of why the bridge operation failed
     * @dev Bridge operation error
     */
    error BridgeFailed(string reason);

    /**
     * @notice Thrown when withdrawal operation fails
     * @param reason Description of why the withdrawal failed
     * @dev Withdrawal operation error
     */
    error WithdrawFailed(string reason);

    /**
     * @notice Thrown when user has no locked assets for specified asset
     * @param asset Address of the asset checked
     * @dev Balance validation error
     */
    error NoLockedAssets(address asset);

    /**
     * @notice Thrown when insufficient locked assets available for operation
     * @param requested Amount requested
     * @param available Amount actually available
     * @dev Balance validation error
     */
    error InsufficientLockedAssets(uint256 requested, uint256 available);

    /**
     * @notice Thrown when balance is insufficient for operation
     * @param token Description of the token type lacking balance
     * @dev Balance validation error
     */
    error InsufficientBalance(string token);

    /**
     * @notice Thrown when initial approval setup is required
     * @param message Error description
     * @dev Configuration error
     */
    error InitialApproval(string message);

    /**
     * @notice Thrown when registering an already registered asset
     * @param asset The asset address
     * @dev Duplicate asset error
     */
    error AssetAlreadyRegistered(address asset);

    /**
     * @notice Thrown when a subvault is already registered
     * @param asset The associated asset
     * @dev Duplicate subvault error
     */
    error SubvaultAlreadyRegistered(address asset);

    /**
     * @notice Thrown when attempting to operate on an inactive deposit
     * @dev Deposit state validation error
     */
    error DepositNotActive();

    /**
     * @notice Error thrown when insufficient native fee is provided for LayerZero
     * @param provided Amount of native token provided
     * @param required Amount of native token required
     */
    error InsufficientNativeFee(uint256 provided, uint256 required);

    /**
     * @notice Error thrown when an invalid timestamp is provided
     */
    error InvalidTimestamp();

    /**
     * @notice Error thrown when an invalid amount is provided
     */
    error InvalidAmount();
}
