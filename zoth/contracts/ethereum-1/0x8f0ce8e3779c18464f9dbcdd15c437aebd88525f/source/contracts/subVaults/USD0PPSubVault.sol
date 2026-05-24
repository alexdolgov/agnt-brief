// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import '@openzeppelin/contracts/access/AccessControl.sol';
import '@openzeppelin/contracts/utils/Pausable.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '../interfaces/ISubVault.sol';
import '../interfaces/IFundVaultV2.sol';
import '../interfaces/IPriceOracle.sol';

/**
 * @title USD0++ SubVault
 * @notice A vault for managing USD0++ token and additional supported assets
 * @dev Implements comprehensive security measures and asset management
 *
 * INHERITANCE STRUCTURE:
 * - AccessControl: Role-based access control
 * - Pausable: Circuit breaker pattern
 * - ReentrancyGuard: Protection against reentrancy
 * - ISubVault: Core vault interface
 *
 * SECURITY CONSIDERATIONS:
 * 1. Access Control
 *    - Role-based permissions (DEFAULT_ADMIN_ROLE, ADMIN_ROLE)
 *    - Router authorization
 *    - Emergency admin controls
 *
 * 2. Asset Safety
 *    - Non-reentrant operations
 *    - SafeERC20 usage
 *    - Balance validations
 *    - Explicit approval management
 *
 * 3. Emergency Features
 *    - Pause functionality
 *    - Emergency mode with timelock
 *    - Protected withdrawal system
 *
 * @custom:security-contact paras@zoth.io
 */
contract USD0PPSubVault is AccessControl, Pausable, ReentrancyGuard, ISubVault {
    using SafeERC20 for IERC20;

    /// @dev Role definitions
    bytes32 public constant ADMIN_ROLE = keccak256('ADMIN_ROLE');

    /// @notice Core contract references
    address public immutable router;

    /// @notice USD0++ token address
    address public immutable USD0PP;

    /// @notice Asset management mappings
    mapping(address => bool) public supportedAssets;
    address[] private _supportedAssetsList;

    /// @notice Emergency control settings
    uint256 public constant EMERGENCY_DELAY = 6 hours;
    uint256 public lastEmergencyAction;
    bool public emergencyMode;

    /// @notice Price oracle mapping
    mapping(address => address) public assetOracles;

    /**
     * @notice Contract constructor
     * @param _usd0pp Address of USD0++ token
     * @param _router Address of router contract
     * @param _admin Address of initial admin
     */
    constructor(address _usd0pp, address _router, address _admin) {
        require(_usd0pp != address(0), 'Invalid USD0++');
        require(_router != address(0), 'Invalid router');
        require(_admin != address(0), 'Invalid admin');

        USD0PP = _usd0pp;
        router = _router;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(ADMIN_ROLE, _admin);
        _setRoleAdmin(ADMIN_ROLE, DEFAULT_ADMIN_ROLE);

        // Set up USD0++ as primary asset
        supportedAssets[_usd0pp] = true;
        _supportedAssetsList.push(_usd0pp);

        emit AssetAdded(_usd0pp, 'USD0++ configured as primary asset');
    }

    /// @notice Ensures caller is authorized router
    modifier onlyRouter() {
        if (msg.sender != router) revert UnauthorizedCaller(msg.sender);
        _;
    }

    /// @notice Ensures address is not zero
    modifier validAddress(address addr) {
        if (addr == address(0)) revert InvalidAddress(addr);
        _;
    }

    // Function to set oracle for an asset
    function setAssetOracle(address asset, address oracle) external onlyRole(ADMIN_ROLE) {
        require(asset != address(0), 'Invalid asset address');
        require(oracle != address(0), 'Invalid oracle address');
        assetOracles[asset] = oracle;
        emit AssetOracleSet(asset, oracle);
    }

    /// @notice Gets the oracle price for a supported asset
    function getOraclePrice(
        address asset
    ) external view override returns (uint256 price, bool success) {
        if (!supportedAssets[asset]) {
            return (0, false);
        }

        address oracle = assetOracles[asset];
        if (oracle == address(0)) {
            return (0, false);
        }

        try IPriceOracle(oracle).latestRoundData() returns (
            uint80,
            int256 answer,
            uint256,
            uint256 updatedAt,
            uint80
        ) {
            // Check if the price is positive
            if (answer <= 0) {
                return (0, false);
            }

            // Check for stale price
            if (block.timestamp - updatedAt > 24 hours) {
                return (0, false);
            }

            return (uint256(answer), true);
        } catch {
            return (0, false);
        }
    }

    /// @notice Handles deposit of supported assets
    /// @dev Only handles primary asset deposits, reverts for secondary assets
    /// @param user Address of depositing user
    /// @param asset Address of asset being deposited
    /// @param amount Amount to deposit
    /// @return success Whether deposit was successful
    function handleDeposit(
        address user,
        address asset,
        uint256 amount
    ) external override nonReentrant onlyRouter whenNotPaused returns (bool) {
        if (amount == 0) revert InvalidAmount();
        if (emergencyMode) revert EmergencyModeEnabled(block.timestamp);

        // Only allow deposits of primary asset
        if (asset != USD0PP) revert UnsupportedAsset(asset);

        // Primary asset deposits not supported in this vault
        revert('Deposits not supported in this vault');
    }

    /// @notice Handles withdrawal of supported assets
    /// @dev Only handles primary asset withdrawals
    /// @param user Address of withdrawing user
    /// @param asset Address of asset being withdrawn
    /// @param amount Amount to withdraw
    /// @return success Whether withdrawal was successful
    function handleWithdraw(
        address user,
        address asset,
        uint256 amount
    ) external override nonReentrant onlyRouter whenNotPaused returns (bool) {
        if (amount == 0) revert InvalidAmount();
        if (emergencyMode) revert EmergencyModeEnabled(block.timestamp);

        // Only allow withdrawals of primary asset
        if (asset != USD0PP) revert UnsupportedAsset(asset);

        // Transfer primary asset directly
        IERC20(USD0PP).safeTransfer(user, amount);
        emit PrimaryAssetOperation(user, amount, false);
        return true;
    }

    /// @notice Adds support for a secondary asset
    /// @dev This functionality is disabled in this version
    function addAsset(
        address asset,
        string calldata
    ) external view override onlyRole(ADMIN_ROLE) validAddress(asset) {
        revert('Asset addition is not supported in this version');
    }

    /// @notice Removes support for a secondary asset
    /// @dev This functionality is disabled in this version
    function removeAsset(address, string calldata) external view override onlyRole(ADMIN_ROLE) {
        revert('Asset removal is not supported in this version');
    }

    /// @notice Enables emergency mode
    function enableEmergencyMode() external override onlyRole(ADMIN_ROLE) whenNotPaused {
        emergencyMode = true;
        _pause();
        lastEmergencyAction = block.timestamp;
        emit EmergencyModeSet(block.timestamp, true);
    }

    /// @notice Disables emergency mode
    function disableEmergencyMode() external override onlyRole(ADMIN_ROLE) {
        if (block.timestamp < lastEmergencyAction + EMERGENCY_DELAY)
            revert EmergencyDelayNotPassed();
        _unpause();
        emergencyMode = false;
        emit EmergencyModeSet(block.timestamp, false);
    }

    /// @notice Executes emergency withdrawal
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

        if (asset == USD0PP) {
            _revokeApproval(USD0PP, address(USD0PP));
        }

        IERC20(asset).safeTransfer(to, withdrawAmount);

        lastEmergencyAction = block.timestamp;
        emit EmergencyWithdrawalExecuted(asset, to, withdrawAmount, reason);

        return true;
    }

    /// @notice Pauses vault operations
    function pause() external override onlyRole(ADMIN_ROLE) {
        _pause();
    }

    /// @notice Unpauses vault operations
    function unpause() external override onlyRole(ADMIN_ROLE) {
        if (emergencyMode) revert EmergencyModeEnabled(block.timestamp);
        _unpause();
    }

    // Internal functions for approval management
    function _grantApproval(address asset, address spender, uint256 amount) internal {
        try IERC20(asset).approve(spender, amount) {
            emit ApprovalGranted(asset, spender, amount);
        } catch {
            revert ApprovalFailed(asset, spender);
        }
    }

    function _revokeApproval(address asset, address spender) internal {
        try IERC20(asset).approve(spender, 0) {
            emit ApprovalRevoked(asset, spender);
        } catch {
            revert ApprovalFailed(asset, spender);
        }
    }

    // View Functions
    function getSupportedAssets() external view override returns (address[] memory) {
        return _supportedAssetsList;
    }

    function isAssetSupported(address asset) external view override returns (bool) {
        return supportedAssets[asset];
    }

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

    function isPrimaryAsset(address asset) external view override returns (bool) {
        return asset == USD0PP;
    }

    function getPrimaryAsset() external view override returns (address) {
        return USD0PP;
    }

    function getSupportedAssetsCount() external view returns (uint256) {
        return _supportedAssetsList.length;
    }

    function getUSD0Balance() external view returns (uint256) {
        return IERC20(USD0PP).balanceOf(address(this));
    }

    function isOperational() external view returns (bool) {
        return !paused() && !emergencyMode;
    }

    function getVaultStats()
        external
        view
        returns (uint256 usd0Balance, uint256 secondaryAssetCount, bool isActive)
    {
        return (
            IERC20(USD0PP).balanceOf(address(this)),
            _supportedAssetsList.length - 1,
            !paused() && !emergencyMode
        );
    }
}
