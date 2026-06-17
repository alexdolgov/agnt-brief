// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../errors/IBaseVaultErrors.sol';
import '../events/IBaseVaultEvents.sol';

/**
 * @title IBaseVault
 * @notice Core interface for all vault implementations
 * @dev Defines the standard functions that all vaults must implement
 */
interface IBaseVault is IBaseVaultErrors, IBaseVaultEvents {
    /**
     * @notice Adds support for a secondary asset
     * @param asset Asset address to add
     * @param reason Reason for adding support
     */
    function addAsset(address asset, string calldata reason) external;

    /**
     * @notice Removes support for a secondary asset
     * @param asset Asset address to remove
     * @param reason Reason for removal
     */
    function removeAsset(address asset, string calldata reason) external;

    /**
     * @notice Enables emergency mode
     */
    function enableEmergencyMode() external;

    /**
     * @notice Disables emergency mode
     */
    function disableEmergencyMode() external;

    /**
     * @notice Executes emergency withdrawal
     * @param asset Asset to withdraw
     * @param to Address to send assets to
     * @param amount Amount to withdraw
     * @param reason Reason for withdrawal
     */
    function withdrawEmergency(
        address asset,
        address to,
        uint256 amount,
        string calldata reason
    ) external;

    /**
     * @notice Sets up initial approval for bridge operations
     * @param asset Asset to approve
     */
    function setupInitialApproval(address asset) external;

    /**
     * @notice Pauses vault operations
     */
    function pause() external;

    /**
     * @notice Unpauses vault operations
     */
    function unpause() external;

    /**
     * @notice Gets list of supported assets
     * @return Array of supported asset addresses
     */
    function getSupportedAssets() external view returns (address[] memory);

    /**
     * @notice Gets balances of all supported assets
     * @return assets Array of asset addresses
     * @return balances Array of corresponding balances
     */
    function getSupportedAssetBalances()
        external
        view
        returns (address[] memory assets, uint256[] memory balances);

    /**
     * @notice Checks if asset is supported
     * @param asset Asset to check
     * @return Whether the asset is supported
     */
    function isAssetSupported(address asset) external view returns (bool);

    /**
     * @notice Gets emergency status details
     * @return isEmergencyMode Whether emergency mode is active
     * @return isPaused Whether operations are paused
     * @return timeUntilNextAction Time until next emergency action
     */
    function getEmergencyStatus()
        external
        view
        returns (bool isEmergencyMode, bool isPaused, uint256 timeUntilNextAction);

    /**
     * @notice Checks if asset is primary asset
     * @param asset Asset to check
     * @return Whether asset is primary asset
     */
    function isPrimaryAsset(address asset) external view returns (bool);

    /**
     * @notice Gets primary asset address
     * @return Primary asset address
     */
    function getPrimaryAsset() external view returns (address);

    /**
     * @notice Sets the maximum allowed slippage
     * @param maxSlippageBps New maximum slippage in basis points (1/100 of 1%, capped at 1000 = 10%)
     */
    function setMaxSlippage(uint256 maxSlippageBps) external;

    /**
     * @notice Gets the current maximum allowed slippage
     * @return Maximum slippage in basis points
     */
    function getMaxSlippage() external view returns (uint256);

    /**
     * @notice Validates that slippage is within acceptable limits
     * @param expectedAmount Expected amount from operation
     * @param actualAmount Actual amount received
     * @return Whether slippage is acceptable
     */
    function isSlippageAcceptable(
        uint256 expectedAmount,
        uint256 actualAmount
    ) external view returns (bool);

    /**
     * @notice Emitted when price oracle is set
     * @param priceOracle Address of the price oracle
     */
    event PriceOracleSet(address priceOracle);

    /**
     * @notice Emitted when a secondary asset withdrawal is initiated but not completed
     * @param asset Asset being withdrawn
     * @param user User initiating the withdrawal
     * @param amount Amount being withdrawn
     * @param expectedOutput Expected output amount
     */
    event SecondaryAssetWithdrawalInitiated(
        address indexed asset,
        address indexed user,
        uint256 amount,
        uint256 expectedOutput
    );
}
