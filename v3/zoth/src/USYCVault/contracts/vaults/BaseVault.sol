// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '../interfaces/access/IRegistry.sol';
import '../interfaces/vaults/IBaseVault.sol';
import '../libraries/SystemRoles.sol';

/**
 * @title BaseVault
 * @author ZeUSD Protocol Team
 * @notice Base contract for all Vault implementations with common functionality
 * @dev Implements UUPS upgradeability pattern with ERC7201 storage pattern
 *
 * The BaseVault contract serves as the foundation for all specialized vaults in the ZeUSD protocol,
 * providing shared functionality for asset management, emergency operations, and security controls.
 * It implements a flexible architecture for handling multiple assets with proper security measures.
 *
 * Core Functionality:
 * - Asset management (primary and supported secondary assets)
 * - Emergency mode with timelock safety mechanisms
 * - Slippage protection for asset conversions
 * - Pause/unpause circuit breaker pattern
 * - Integration with withdrawal system
 *
 * Asset Management:
 * - Primary asset designation and tracking
 * - Dynamic addition/removal of supported assets
 * - Approval management for external integrations
 * - Balance tracking across all supported assets
 *
 * Storage Architecture:
 * - Uses ERC7201 namespaced storage pattern for upgrade safety
 * - Dedicated storage struct containing all base variables
 * - Constant storage slot to prevent collisions
 *
 * @custom:roles-and-capabilities
 * ORCHESTRATOR_ROLE:
 * - Add/remove supported assets
 * - Configure slippage parameters
 * - Set up initial approvals for integrations
 *
 * GUARDIAN_ROLE:
 * - Enable/disable emergency mode
 * - Pause/unpause vault operations
 * - Execute emergency withdrawals after timelock
 * - Perform contract upgrades via UUPS pattern
 *
 * Security Considerations:
 * - Timelock protection for emergency operations (EMERGENCY_DELAY)
 * - Strict access control for administrative functions
 * - Caller validation (router, withdrawal system)
 * - Slippage protection with configurable thresholds
 * - Comprehensive input validation
 * - Safe token transfer patterns
 *
 * @custom:security-contact tech@zoth.io
 */
abstract contract BaseVault is
    PausableUpgradeable,
    AccessManagedUpgradeable,
    IBaseVault
{
    using SafeERC20 for IERC20;

    /**
     * @notice Storage location for ERC7201 storage pattern
     * @dev keccak256(abi.encode(uint256(keccak256("zeusd.base.vault.storage")) - 1)) & ~bytes32(uint256(0xff))
     * @custom:security Critical for storage layout - do not modify
     */
    bytes32 private constant STORAGE_SLOT =
        0xdaa26bb0d1869b7c2d8838528c8b8128afbe73b5a72873403b1f4066dc22ad00;

    /**
     * @notice Main storage structure for the vault
     * @dev All state variables should be added here to maintain upgradeability
     * @custom:security-considerations Ensure proper initialization in upgrades
     */
    struct BaseVaultStorage {
        IRegistry registry;
        bool emergencyMode;
        address primaryAsset;
        address[] supportedAssetsList;
        uint256 lastEmergencyAction;
        uint256 maxSlippageBps; // Maximum allowed slippage in basis points (1/100 of 1%)
        mapping(address => bool) supportedAssets;
    }

    /**
     * @notice Retrieves storage pointer for ERC7201 storage
     * @dev Uses assembly for consistent storage slot access
     * @return $ Storage pointer to Storage struct
     * @custom:security Critical for storage access - do not modify
     */
    function _baseStorage() internal pure returns (BaseVaultStorage storage $) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            $.slot := slot
        }
    }

    // Constants
    uint256 public constant EMERGENCY_DELAY = Constants.ONE_HOUR;
    uint256 public constant MAX_BPS = 10000; // 100% in basis points
    uint256 public constant MAX_ALLOWED_SLIPPAGE_BPS = 1000; // 10% maximum allowed slippage

    /// @notice Ensures address is not zero
    modifier validAddress(address _address) {
        if (_address == address(0)) revert Vault_InvalidAddress(_address);
        _;
    }

    /**
     * @notice Internal initializer for base functionality
     * @dev Should be called by child contract initializers
     * @param _primaryAsset Address of primary asset
     * @param _registry Address of registry contract
     * @param _maxSlippageBps Maximum allowed slippage in basis points
     */
    function __BaseVault_init(
        address _primaryAsset,
        address _registry,
        uint256 _maxSlippageBps
    ) internal validAddress(_primaryAsset) validAddress(_registry) onlyInitializing {
        __Pausable_init();

        if (_maxSlippageBps > MAX_ALLOWED_SLIPPAGE_BPS)
            revert Vault_InvalidSlippage(_maxSlippageBps);

        BaseVaultStorage storage $ = _baseStorage();
        $.registry = IRegistry(_registry);
        $.primaryAsset = _primaryAsset;
        $.maxSlippageBps = _maxSlippageBps;

        // Add primary asset to supported assets
        $.supportedAssets[_primaryAsset] = true;
        $.supportedAssetsList.push(_primaryAsset);

        emit Vault_AssetAdded(_primaryAsset, 'Primary asset configured');
        emit Vault_MaxSlippageUpdated(_maxSlippageBps);
    }

    /**
     * @notice Returns the access manager contract
     * @return IAccessManager interface of the access manager
     */
    function accessManager() external view virtual returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Sets the maximum allowed slippage
     * @param _maxSlippageBps New maximum slippage in basis points (1/100 of 1%, capped at 1000 = 10%)
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     */
    function setMaxSlippage(uint256 _maxSlippageBps) external restricted {
        if (_maxSlippageBps > MAX_ALLOWED_SLIPPAGE_BPS)
            revert Vault_InvalidSlippage(_maxSlippageBps);

        BaseVaultStorage storage $ = _baseStorage();
        $.maxSlippageBps = _maxSlippageBps;
        emit Vault_MaxSlippageUpdated(_maxSlippageBps);
    }

    /**
     * @notice Gets the current maximum allowed slippage
     * @return Maximum slippage in basis points
     */
    function getMaxSlippage() external view returns (uint256) {
        return _baseStorage().maxSlippageBps;
    }

    /**
     * @notice Validates that slippage is within acceptable limits
     * @param expectedAmount Expected amount from operation
     * @param actualAmount Actual amount received
     * @return Whether slippage is acceptable
     */
    function isSlippageAcceptable(
        uint256 expectedAmount,
        uint256 actualAmount
    ) public view returns (bool) {
        if (expectedAmount == 0) return false;
        if (actualAmount >= expectedAmount) return true;

        uint256 slippageBps = ((expectedAmount - actualAmount) * MAX_BPS) / expectedAmount;
        return slippageBps <= _baseStorage().maxSlippageBps;
    }


    /**
     * @notice Adds support for a secondary asset
     * @param asset Asset address to add
     * @param reason Reason for adding support
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     */
    function addAsset(
        address asset,
        string calldata reason
    ) external override validAddress(asset) restricted {
        BaseVaultStorage storage $ = _baseStorage();

        if (asset == $.primaryAsset) revert Vault_AssetAlreadySupported(asset);
        if ($.supportedAssets[asset]) revert Vault_AssetAlreadySupported(asset);

        $.supportedAssets[asset] = true;
        $.supportedAssetsList.push(asset);

        emit Vault_AssetAdded(asset, reason);
    }

    /**
     * @notice Removes support for a secondary asset
     * @param asset Asset address to remove
     * @param reason Reason for removal
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     */
    function removeAsset(address asset, string calldata reason) external override restricted {
        BaseVaultStorage storage $ = _baseStorage();
        if (asset == $.primaryAsset) revert Vault_PrimaryAssetRemovalForbidden();
        if (!$.supportedAssets[asset]) revert Vault_AssetNotSupported(asset);

        // Remove from mapping
        $.supportedAssets[asset] = false;

        // Remove from list
        uint256 length = $.supportedAssetsList.length;
        for (uint256 i = 0; i < length; i++) {
            if ($.supportedAssetsList[i] == asset) {
                if (i != length - 1) {
                    $.supportedAssetsList[i] = $.supportedAssetsList[length - 1];
                }
                $.supportedAssetsList.pop();
                break;
            }
        }

        emit Vault_AssetRemoved(asset, reason);
    }

    /**
     * @notice Enables emergency mode
     * @custom:security Only callable by GUARDIAN_ROLE
     */
    function enableEmergencyMode() external override whenNotPaused restricted {
        BaseVaultStorage storage $ = _baseStorage();
        $.emergencyMode = true;
        _pause();
        $.lastEmergencyAction = block.timestamp;
        emit Vault_EmergencyModeSet(block.timestamp, true);
    }

    /**
     * @notice Disables emergency mode
     * @custom:security Only callable by GUARDIAN_ROLE
     */
    function disableEmergencyMode() external override restricted {
        BaseVaultStorage storage $ = _baseStorage();
        if (!$.emergencyMode) revert Vault_EmergencyModeAlreadyInActive($.lastEmergencyAction);
        if (block.timestamp < $.lastEmergencyAction + EMERGENCY_DELAY) {
            revert Vault_EmergencyDelayPeriodActive();
        }

        _unpause();
        $.emergencyMode = false;
        emit Vault_EmergencyModeSet(block.timestamp, false);
    }

    /**
     * @notice Executes emergency withdrawal
     * @param asset Asset to withdraw
     * @param to Address to send assets to
     * @param amount Amount to withdraw
     * @param reason Reason for withdrawal
     * @custom:security Only callable by GUARDIAN_ROLE
     */
    function withdrawEmergency(
        address asset,
        address to,
        uint256 amount,
        string calldata reason
    ) external override restricted {
        BaseVaultStorage storage $ = _baseStorage();

        if (!$.emergencyMode) revert Vault_EmergencyModeAlreadyInActive($.lastEmergencyAction);
        if (block.timestamp < $.lastEmergencyAction + EMERGENCY_DELAY) {
            revert Vault_EmergencyDelayPeriodActive();
        }
        if (amount == 0) revert Vault_InvalidAmount();

        uint256 balance = IERC20(asset).balanceOf(address(this));
        uint256 withdrawAmount = amount > balance ? balance : amount;

        IERC20(asset).safeTransfer(to, withdrawAmount);

        $.lastEmergencyAction = block.timestamp;
        emit Vault_EmergencyWithdrawalExecuted(asset, to, withdrawAmount, reason);
    }

    /**
     * @notice Sets up initial approval for bridge operations
     * @param _asset Asset to approve
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     */
    function setupInitialApproval(address _asset) external restricted {
        BaseVaultStorage storage $ = _baseStorage();
        IERC20(_asset).forceApprove(
            $.registry.getContract(Constants.CONTRACT_WITHDRAWAL_SYSTEM),
            type(uint256).max
        );
    }

    /**
     * @notice Pauses vault operations
     * @custom:security Only callable by GUARDIAN_ROLE
     */
    function pause() external override restricted {
        _pause();
    }

    /**
     * @notice Unpauses vault operations
     * @custom:security Only callable by GUARDIAN_ROLE
     */
    function unpause() external override restricted {
        BaseVaultStorage storage $ = _baseStorage();
        if ($.emergencyMode) revert Vault_EmergencyModeInactive();
        _unpause();
    }

    /**
     * @notice Grants approval for asset spending
     * @param asset Asset to approve
     * @param spender Address to approve
     * @param amount Amount to approve
     */
    function _grantApproval(address asset, address spender, uint256 amount) internal {
        IERC20(asset).forceApprove(spender, amount);
        emit Vault_ApprovalGranted(asset, spender, amount);
    }

    /**
     * @notice Revokes approval for asset spending
     * @param asset Asset to revoke approval for
     * @param spender Address to revoke approval from
     */
    function _revokeApproval(address asset, address spender) internal {
        bool success = IERC20(asset).approve(spender, 0);
        if (!success) revert Vault_ApprovalFailed(asset, spender);
        emit Vault_ApprovalRevoked(asset, spender);
    }

    // View Functions

    /**
     * @notice Gets list of supported assets
     * @return Array of supported asset addresses
     */
    function getSupportedAssets() external view override returns (address[] memory) {
        return _baseStorage().supportedAssetsList;
    }

    /**
     * @notice Checks if asset is supported
     * @param asset Asset to check
     * @return Whether the asset is supported
     */
    function isAssetSupported(address asset) external view override returns (bool) {
        return _baseStorage().supportedAssets[asset];
    }

    /**
     * @notice Gets emergency status details
     * @return isEmergencyMode Whether emergency mode is active
     * @return isPaused Whether operations are paused
     * @return timeUntilNextAction Time until next emergency action
     */
    function getEmergencyStatus()
        external
        view
        override
        returns (bool isEmergencyMode, bool isPaused, uint256 timeUntilNextAction)
    {
        BaseVaultStorage storage $ = _baseStorage();
        uint256 nextActionTime = $.lastEmergencyAction + EMERGENCY_DELAY;
        uint256 timeUntil = block.timestamp >= nextActionTime
            ? 0
            : nextActionTime - block.timestamp;

        return ($.emergencyMode, paused(), timeUntil);
    }

    /**
     * @notice Checks if asset is primary asset
     * @param asset Asset to check
     * @return Whether asset is primary asset
     */
    function isPrimaryAsset(address asset) external view override returns (bool) {
        return asset == _baseStorage().primaryAsset;
    }

    /**
     * @notice Gets primary asset address
     * @return Primary asset address
     */
    function getPrimaryAsset() external view override returns (address) {
        return _baseStorage().primaryAsset;
    }

    /**
     * @notice Gets balances of all supported assets
     * @return assets Array of asset addresses
     * @return balances Array of corresponding balances
     */
    function getSupportedAssetBalances()
        external
        view
        override
        returns (address[] memory assets, uint256[] memory balances)
    {
        BaseVaultStorage storage $ = _baseStorage();
        uint256 assetCount = $.supportedAssetsList.length;

        assets = new address[](assetCount);
        balances = new uint256[](assetCount);

        for (uint256 i = 0; i < assetCount; i++) {
            address asset = $.supportedAssetsList[i];
            assets[i] = asset;
            balances[i] = IERC20(asset).balanceOf(address(this));
        }

        return (assets, balances);
    }
}
