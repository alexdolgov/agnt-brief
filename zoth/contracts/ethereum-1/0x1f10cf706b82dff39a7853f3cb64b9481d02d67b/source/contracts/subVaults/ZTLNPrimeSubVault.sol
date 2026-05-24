// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import '@openzeppelin/contracts/access/AccessControl.sol';
import '@openzeppelin/contracts/utils/Pausable.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/utils/Context.sol';
import '../interfaces/ISubVault.sol';
import '../interfaces/IFundVaultV2.sol';

/// @title ZTLN Prime SubVault
/// @notice ZTLN Prime token vault with support for additional assets
/// @dev Implements ZTLN Prime specific operations with FundVaultV2
/// @custom:security-contact paras@zoth.io
contract ZTLNPrimeSubVault is ISubVault, AccessControl, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @dev SECURITY CONSIDERATIONS:
    /// - NonReentrant guard on all external functions
    /// - SafeERC20 for ZTLN Prime and token transfers
    /// - Balance checks before operations
    /// - Explicit approval management
    /// - Role-based access control
    /// - Emergency mode restrictions
    /// - Pausable functionality

    /// @dev ASSET MANAGEMENT:
    /// ZTLN Prime Token (Primary Asset):
    /// - Immutable ZTLN Prime address
    /// - Direct integration with FundVaultV2
    /// - Cannot be removed
    /// - Special handling in emergencies
    ///
    /// Secondary Assets:
    /// - Can be added/removed by admin
    /// - Separate balance tracking
    /// - Independent transfer handling
    /// - Must be compatible with ZTLN Prime operations

    /// @dev Role definitions
    bytes32 public constant ADMIN_ROLE = keccak256('ADMIN_ROLE');

    /// @notice Core contract references
    address public router;

    /// @notice ZTLN Prime token address
    /// @dev Primary asset of this vault
    address public immutable ztlnPrime;

    /// @notice Asset management mappings
    /// @dev Tracks ZTLN Prime and secondary assets
    mapping(address => bool) public supportedAssets;
    address[] private _supportedAssetsList;

    /// @notice Emergency control settings
    /// @dev Timing and state management for emergency mode
    uint256 public constant EMERGENCY_DELAY = 6 hours;
    uint256 public lastEmergencyAction;
    bool public emergencyMode;

    /// @notice Ensures caller is authorized router
    /// @dev Prevents unauthorized access to core functions
    modifier onlyRouter() {
        if (msg.sender != router) revert UnauthorizedCaller(msg.sender);
        _;
    }

    /// @notice Ensures address is not zero
    /// @param addr Address to validate
    modifier validAddress(address addr) {
        if (addr == address(0)) revert InvalidAddress(addr);
        _;
    }

    /// @notice Contract constructor
    /// @dev Sets up ZTLN Prime vault with initial configuration
    /// @param _initialOwner Address of contract owner
    /// @param _ztlnPrime Address of ZTLN Prime token
    /// @param _router Address of router contract
    /// @param _admin Address of initial admin
    constructor(
        address _initialOwner,
        address _ztlnPrime,
        address _router,
        address _admin
    )
        validAddress(_initialOwner)
        validAddress(_ztlnPrime)
        validAddress(_router)
        validAddress(_admin)
    {
        _grantRole(DEFAULT_ADMIN_ROLE, _initialOwner);
        _grantRole(ADMIN_ROLE, _admin);
        _setRoleAdmin(ADMIN_ROLE, DEFAULT_ADMIN_ROLE);

        ztlnPrime = _ztlnPrime;
        router = _router;

        // Set up ZTLN Prime as primary asset
        supportedAssets[_ztlnPrime] = true;
        _supportedAssetsList.push(_ztlnPrime);
        emit AssetAdded(_ztlnPrime, 'ZTLN Prime configured as primary asset');
    }

    // Add router setup function
    /// @notice Sets the router address
    /// @param _router Address of the router contract
    /// @dev Can only be set once by admin
    function setRouter(address _router) external onlyRole(ADMIN_ROLE) validAddress(_router) {
        router = _router;
        emit RouterSet(_router);
    }

    /// @notice Handles deposit of supported assets
    /// @dev Routes to ZTLN Prime or secondary asset handling
    /// @param user Address of depositing user
    /// @param asset Address of asset being deposited
    /// @param amount Amount to deposit
    /// @return success Whether deposit was successful
    function handleDeposit(
        address user,
        address asset,
        uint256 amount
    ) external override nonReentrant onlyRouter whenNotPaused returns (bool) {
        if (!supportedAssets[asset]) revert UnsupportedAsset(asset);
        if (amount == 0) revert InvalidAmount();
        if (emergencyMode) revert EmergencyModeEnabled(block.timestamp);

        _revokeApproval(asset, address(ztlnPrime));
        _grantApproval(asset, address(ztlnPrime), amount);

        try IFundVaultV2(ztlnPrime).deposit(asset, amount) returns (uint256) {
            emit SecondaryAssetOperation(asset, user, amount, true);
            return true;
        } catch Error(string memory reason) {
            _revokeApproval(asset, address(ztlnPrime));
            revert SecondaryAssetOperationFailed(reason);
        }
    }

    /// @notice Handles withdrawal of supported assets
    /// @dev Routes to ZTLN Prime or secondary asset handling
    /// @param user Address of withdrawing user
    /// @param asset Address of asset being withdrawn
    /// @param amount Amount to withdraw
    /// @return success Whether withdrawal was successful
    function handleWithdraw(
        address user,
        address asset,
        uint256 amount
    ) external override nonReentrant onlyRouter whenNotPaused returns (bool) {
        if (!supportedAssets[asset]) revert UnsupportedAsset(asset);
        if (amount == 0) revert InvalidAmount();
        if (emergencyMode) revert EmergencyModeEnabled(block.timestamp);

        if (asset == ztlnPrime) {
            return _handleZTLNWithdraw(user, amount);
        } else {
            return _handleSecondaryAssetWithdraw(user, asset, amount);
        }
    }

    /// @notice Internal handler for ZTLN Prime withdrawals
    /// @dev Withdraws ZTLN Prime from FundVaultV2
    /// @param user User receiving withdrawal
    /// @param amount Amount being withdrawn
    /// @return success Whether operation succeeded
    function _handleZTLNWithdraw(address user, uint256 amount) internal returns (bool) {
        IERC20(ztlnPrime).safeTransfer(user, amount);
        emit PrimaryAssetOperation(user, amount, false);
        return true;
    }

    /// @notice Internal handler for secondary asset withdrawals
    /// @dev Handles non-ZTLN Prime token withdrawals
    /// @param user User receiving withdrawal
    /// @param asset Asset being withdrawn
    /// @param amount Amount being withdrawn
    /// @return success Whether operation succeeded
    function _handleSecondaryAssetWithdraw(
        address user,
        address asset,
        uint256 amount
    ) internal returns (bool) {
        try IFundVaultV2(ztlnPrime).redeem(amount, asset) returns (uint256 withdrawnAmount) {
            emit SecondaryAssetOperation(ztlnPrime, user, withdrawnAmount, false);
            return true;
        } catch Error(string memory reason) {
            revert PrimaryAssetOperationFailed(reason);
        }
    }

    /// @notice Adds support for a secondary asset
    /// @dev Cannot add ZTLN Prime as it's already primary
    /// @param asset Asset address to add
    /// @param reason Reason for adding support
    function addAsset(
        address asset,
        string calldata reason
    ) external override onlyRole(ADMIN_ROLE) validAddress(asset) {
        if (asset == ztlnPrime) revert AssetAlreadySupported(asset);
        if (supportedAssets[asset]) revert AssetAlreadySupported(asset);

        supportedAssets[asset] = true;
        _supportedAssetsList.push(asset);
        emit AssetAdded(asset, reason);
    }

    /// @notice Removes support for a secondary asset
    /// @dev Cannot remove ZTLN Prime
    /// @param asset Asset address to remove
    /// @param reason Reason for removal
    function removeAsset(
        address asset,
        string calldata reason
    ) external override onlyRole(ADMIN_ROLE) {
        if (asset == ztlnPrime) revert CannotRemovePrimaryAsset();
        if (!supportedAssets[asset]) revert UnsupportedAsset(asset);

        uint256 length = _supportedAssetsList.length;
        uint256 assetIndex = type(uint256).max;

        for (uint256 i = 0; i < length; i++) {
            if (_supportedAssetsList[i] == asset) {
                assetIndex = i;
                break;
            }
        }

        require(assetIndex != type(uint256).max, 'Asset not found');

        if (assetIndex != length - 1) {
            _supportedAssetsList[assetIndex] = _supportedAssetsList[length - 1];
        }
        _supportedAssetsList.pop();

        emit AssetRemoved(asset, reason);
    }

    /// @notice Enables emergency mode
    /// @dev Pauses operations and starts emergency timer
    function enableEmergencyMode() external override onlyRole(ADMIN_ROLE) whenNotPaused {
        emergencyMode = true;
        _pause();
        lastEmergencyAction = block.timestamp;
        emit EmergencyModeSet(block.timestamp, true);
    }

    /// @notice Disables emergency mode
    /// @dev Requires emergency delay to have passed
    function disableEmergencyMode() external override onlyRole(ADMIN_ROLE) {
        if (block.timestamp < lastEmergencyAction + EMERGENCY_DELAY)
            revert EmergencyDelayNotPassed();
        _unpause();
        emergencyMode = false;
        emit EmergencyModeSet(block.timestamp, false);
    }

    /// @notice Executes emergency withdrawal
    /// @dev Available only in emergency mode after delay
    /// @param asset Asset to withdraw
    /// @param to Recipient address
    /// @param amount Amount to withdraw
    /// @param reason Reason for withdrawal
    /// @return success Whether withdrawal succeeded
    function withdrawEmergency(
        address asset,
        address to,
        uint256 amount,
        string calldata reason
    ) external override nonReentrant onlyRole(ADMIN_ROLE) returns (bool) {
        if (!emergencyMode) revert EmergencyModeNotEnabled();
        if (block.timestamp < lastEmergencyAction + EMERGENCY_DELAY)
            revert EmergencyDelayNotPassed();
        if (amount == 0) revert InvalidAmount();
        if (!supportedAssets[asset]) revert UnsupportedAsset(asset);

        uint256 balance = IERC20(asset).balanceOf(address(this));
        uint256 withdrawAmount = amount > balance ? balance : amount;

        if (asset == ztlnPrime) {
            // Special handling for ZTLN Prime emergency withdrawal
            _revokeApproval(ztlnPrime, address(ztlnPrime));
        }

        IERC20(asset).safeTransfer(to, withdrawAmount);

        lastEmergencyAction = block.timestamp;
        emit EmergencyWithdrawalExecuted(asset, to, withdrawAmount, reason);

        return true;
    }

    /// @notice Pauses vault operations
    /// @dev Admin only function
    function pause() external override onlyRole(ADMIN_ROLE) {
        _pause();
    }

    /// @notice Unpauses vault operations
    /// @dev Cannot unpause in emergency mode
    function unpause() external override onlyRole(ADMIN_ROLE) {
        if (emergencyMode) revert EmergencyModeEnabled(block.timestamp);
        _unpause();
    }

    /// @notice Grants approval for asset spending
    /// @dev Internal function for managing approvals
    /// @param asset Asset to approve
    /// @param spender Address to approve
    /// @param amount Amount to approve
    function _grantApproval(address asset, address spender, uint256 amount) internal {
        try IERC20(asset).approve(spender, amount) {
            emit ApprovalGranted(asset, spender, amount);
        } catch {
            revert ApprovalFailed(asset, spender);
        }
    }

    /// @notice Revokes approval for asset spending
    /// @dev Internal function for managing approvals
    /// @param asset Asset to revoke approval for
    /// @param spender Address to revoke approval from
    function _revokeApproval(address asset, address spender) internal {
        try IERC20(asset).approve(spender, 0) {
            emit ApprovalRevoked(asset, spender);
        } catch {
            revert ApprovalFailed(asset, spender);
        }
    }

    // View Functions

    /// @notice Gets list of supported assets
    /// @return Array of supported asset addresses
    function getSupportedAssets() external view override returns (address[] memory) {
        return _supportedAssetsList;
    }

    /// @notice Gets true for supported assets
    /// @return Whether the asset is supported
    function isAssetSupported(address asset) external view override returns (bool) {
        return supportedAssets[asset];
    }

    /// @notice Gets emergency status details
    /// @return isEmergencyMode Whether emergency mode is active
    /// @return isPaused Whether operations are paused
    /// @return timeUntilNextAction Time until next emergency action
    function getEmergencyStatus()
        external
        view
        override
        returns (bool isEmergencyMode, bool isPaused, uint256 timeUntilNextAction)
    {
        uint256 nextActionTime = lastEmergencyAction + EMERGENCY_DELAY;
        uint256 timeUntil = block.timestamp >= nextActionTime
            ? 0
            : nextActionTime - block.timestamp;

        return (emergencyMode, paused(), timeUntil);
    }

    /// @notice Checks if asset is ZTLN Prime
    /// @param asset Asset to check
    /// @return bool Whether asset is ZTLN Prime
    function isPrimaryAsset(address asset) external view override returns (bool) {
        return asset == ztlnPrime;
    }

    /// @notice Gets ZTLN Prime address
    /// @return address ZTLN Prime token address
    function getPrimaryAsset() external view override returns (address) {
        return ztlnPrime;
    }

    /// @notice Gets total supported assets count
    /// @return uint256 Number of supported assets (including ZTLN Prime)
    function getSupportedAssetsCount() external view returns (uint256) {
        return _supportedAssetsList.length;
    }

    /// @notice Gets ZTLN Prime balance
    /// @dev Returns the vault's ZTLN Prime balance
    /// @return uint256 ZTLN Prime balance
    function getZTLNBalance() external view returns (uint256) {
        return IERC20(ztlnPrime).balanceOf(address(this));
    }

    /// @notice Checks if operations are possible
    /// @dev Combines emergency and pause status
    /// @return bool Whether operations are possible
    function isOperational() external view returns (bool) {
        return !paused() && !emergencyMode;
    }

    /// @notice Gets vault statistics
    /// @dev Returns key vault metrics
    /// @return ztlnBalance Current ZTLN Prime balance
    /// @return secondaryAssetCount Number of secondary assets
    /// @return isActive Whether vault is active
    function getVaultStats()
        external
        view
        returns (uint256 ztlnBalance, uint256 secondaryAssetCount, bool isActive)
    {
        return (
            IERC20(ztlnPrime).balanceOf(address(this)),
            _supportedAssetsList.length - 1, // Subtract 1 for ZTLN Prime
            !paused() && !emergencyMode
        );
    }
}
