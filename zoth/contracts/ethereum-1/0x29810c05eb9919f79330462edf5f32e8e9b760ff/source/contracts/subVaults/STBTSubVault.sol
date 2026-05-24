// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '../interfaces/ISubVault.sol';
import '../interfaces/IPriceOracle.sol';

/**
 * @title STBT SubVault

 * @notice An upgradeable vault for managing STBT token and additional supported assets

 * @dev Implements UUPS upgradeability pattern with comprehensive security measures
 *
 * INHERITANCE STRUCTURE:
 * - Initializable: Base contract for upgradeable pattern
 * - UUPSUpgradeable: Implements upgradeability pattern
 * - AccessControlUpgradeable: Role-based access control
 * - PausableUpgradeable: Circuit breaker pattern
 * - ReentrancyGuardUpgradeable: Protection against reentrancy
 * - ISubVault: Core vault interface
 *
 * SECURITY CONSIDERATIONS:
 * 1. Upgradeability
 *    - UUPS pattern with access control
 *    - Storage gaps for future versions
 *    - Initializer protection
 *
 * 2. Access Control
 *    - Role-based permissions (DEFAULT_ADMIN_ROLE, ADMIN_ROLE)
 *    - Router authorization
 *    - Emergency admin controls
 *
 * 3. Asset Safety
 *    - Non-reentrant operations
 *    - SafeERC20 usage
 *    - Balance validations
 *    - Explicit approval management
 *
 * 4. Emergency Features
 *    - Pause functionality
 *    - Emergency mode with timelock
 *    - Protected withdrawal system
 *
 * 5. STBT Integration
 *    - Safe minting through Minter contract
 *    - Secure redemption process
 *    - Proper approval management
 *
 * STORAGE LAYOUT:
 * Careful consideration for storage layout is crucial for upgradeability.
 * Never modify existing storage variable order or size.
 * Always append new storage variables at the end.
 *
 * @custom:security-contact paras@zoth.io
 */
contract STBTSubVaultUpgradeable is
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    ISubVault
{
    using SafeERC20 for IERC20;

    /// @dev Role definitions
    bytes32 public constant ADMIN_ROLE = keccak256('ADMIN_ROLE');

    /// @notice Core contract references
    address public router;

    address public minter;

    /// @notice STBT token address
    /// @dev Primary asset of this vault
    address public STBT;

    /// @notice Asset management mappings
    mapping(address => bool) public supportedAssets;
    address[] private _supportedAssetsList;

    /// @notice Emergency control settings
    /// @dev Timing and state management for emergency mode
    uint256 public constant EMERGENCY_DELAY = 1 hours;
    uint256 public lastEmergencyAction;
    bool public emergencyMode;

    // Add mapping for asset to oracle
    mapping(address => address) public assetOracles;

    /// @notice Events for STBT operations
    event STBTMintInitiated(address indexed user, uint256 usdcAmount, uint256 proposedSTBTAmount);
    event STBTRedeemInitiated(address indexed user, uint256 stbtAmount, uint256 expectedUSDCAmount);
    event MinterSet(address indexed newMinter);
    event MinterApprovalRevoked(address indexed token);

    /// @notice Ensures caller is authorized router

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

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Contract initializer (replaces constructor)
    /// @dev Sets up STBT vault with initial configuration and minter integration
    /// @param _stbt Address of STBT token
    /// @param _router Address of router contract
    /// @param _admin Address of initial admin
    /// @param _minter Address of STBT minter contract
    function initialize(
        address _stbt,
        address _router,
        address _admin,
        address _minter
    ) public initializer {
        require(_stbt != address(0), 'Invalid STBT address');
        require(_router != address(0), 'Invalid router address');
        require(_admin != address(0), 'Invalid admin address');
        require(_minter != address(0), 'Invalid minter address');

        // Initialize parent contracts
        __AccessControl_init();
        __Pausable_init();
        __ReentrancyGuard_init();

        // Set up roles
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(ADMIN_ROLE, _admin);
        _setRoleAdmin(ADMIN_ROLE, DEFAULT_ADMIN_ROLE);

        // Initialize state variables
        STBT = _stbt;
        router = _router;

        minter = _minter;

        // Set up STBT as primary asset
        supportedAssets[_stbt] = true;
        _supportedAssetsList.push(_stbt);
        emit AssetAdded(_stbt, 'STBT configured as primary asset');
    }

    /// @notice Sets or updates the minter contract address
    /// @param _minter New minter contract address
    function setMinter(address _minter) external onlyRole(ADMIN_ROLE) validAddress(_minter) {
        // Revoke existing approvals if any
        if (minter != address(0)) {
            _revokeApproval(STBT, minter);
            for (uint i = 0; i < _supportedAssetsList.length; i++) {
                _revokeApproval(_supportedAssetsList[i], minter);
            }
        }
        minter = _minter;
        emit MinterSet(_minter);
    }

    /// @notice Sets the router address
    /// @param _router Address of the router contract

    function setRouter(address _router) external onlyRole(ADMIN_ROLE) validAddress(_router) {
        router = _router;
        emit RouterSet(_router);
    }

    /// @notice Sets oracle for an asset
    /// @param asset Asset address to set oracle for
    /// @param oracle Oracle contract address
    function setAssetOracle(
        address asset,
        address oracle
    ) external onlyRole(ADMIN_ROLE) validAddress(asset) validAddress(oracle) {
        require(asset != address(0), 'Invalid asset address');
        require(oracle != address(0), 'Invalid oracle address');
        assetOracles[asset] = oracle;
        emit AssetOracleSet(asset, oracle);
    }

    /// @notice Gets the oracle price for a supported asset
    /// @param asset Address of the asset to get price for
    /// @return price Current oracle price converted to uint256
    /// @return success Whether oracle price was successfully fetched
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
            // Check if the price is positive
            uint80,
            int256 answer,
            uint256,
            uint256 updatedAt,
            uint80
        ) {
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

    /// @dev Routes deposits through STBT minter for secondary assets
    /// @param user Address depositing assets
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

        // Approve minter to spend the asset if needed
        _revokeApproval(asset, minter);
        _grantApproval(asset, minter, amount);

        // Initiate minting through minter contract
        try
            IMinter(minter).mint(
                asset,
                amount,
                0, // minProposedAmount
                bytes32(0), // salt
                bytes('') // extraData
            )
        {
            emit SecondaryAssetOperation(asset, user, amount, true);
            return true;
        } catch Error(string memory reason) {
            _revokeApproval(asset, minter);
            revert SecondaryAssetOperationFailed(reason);
        }
    }

    /// @notice Handles withdrawal of supported assets
    /// @dev Routes withdrawals through STBT minter for secondary assets
    /// @param user Address withdrawing assets
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

        if (asset == STBT) {
            // Direct STBT withdrawals
            IERC20(STBT).safeTransfer(user, amount);
            emit PrimaryAssetOperation(user, amount, false);
            return true;
        } else if (supportedAssets[asset]) {
            // Handle secondary asset withdrawal through redemption
            uint256 currentAllowance = IERC20(STBT).allowance(address(this), minter);
            if (currentAllowance < amount) {
                IERC20(STBT).approve(minter, type(uint256).max);
            }

            // Initiate redemption through minter contract
            try
                IMinter(minter).redeem(
                    amount,
                    asset,
                    bytes32(0), // salt (0x as per docs)
                    bytes('') // extraData (empty as per docs)
                )
            {
                emit STBTRedeemInitiated(user, amount, 0);
                return true;
            } catch {
                revert('STBT redemption failed');
            }
        }

        revert UnsupportedAsset(asset);
    }

    /// @notice Adds support for a secondary asset
    /// @param asset Asset address to add
    /// @param assetName Name/description of asset
    function addAsset(
        address asset,
        string calldata assetName
    ) external override onlyRole(ADMIN_ROLE) validAddress(asset) {
        if (supportedAssets[asset]) revert AssetAlreadySupported(asset);

        supportedAssets[asset] = true;
        _supportedAssetsList.push(asset);

        emit AssetAdded(asset, assetName);
    }

    /// @notice Removes support for a secondary asset
    /// @param asset Asset address to remove
    /// @param reason Reason for removal
    function removeAsset(
        address asset,
        string calldata reason
    ) external override onlyRole(ADMIN_ROLE) {
        if (asset == STBT) revert CannotRemovePrimaryAsset();
        if (!supportedAssets[asset]) revert UnsupportedAsset(asset);

        supportedAssets[asset] = false;

        // Remove from list
        for (uint i = 0; i < _supportedAssetsList.length; i++) {
            if (_supportedAssetsList[i] == asset) {
                _supportedAssetsList[i] = _supportedAssetsList[_supportedAssetsList.length - 1];
                _supportedAssetsList.pop();
                break;
            }
        }

        // Revoke minter approval if exists
        _revokeApproval(asset, minter);

        emit AssetRemoved(asset, reason);
    }

    /// @notice Enables emergency mode
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

        if (block.timestamp < lastEmergencyAction + EMERGENCY_DELAY) {
            revert EmergencyDelayNotPassed();
        }
        if (amount == 0) revert InvalidAmount();
        if (!supportedAssets[asset]) revert UnsupportedAsset(asset);

        uint256 balance = IERC20(asset).balanceOf(address(this));
        uint256 withdrawAmount = amount > balance ? balance : amount;

        // Handle specific asset withdrawals
        if (asset == STBT) {
            // Revoke minter approval for STBT
            _revokeApproval(STBT, minter);
        } else {
            // Revoke minter approval for secondary asset
            _revokeApproval(asset, minter);
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

    /// @notice Checks if an asset is supported
    /// @param asset Asset address to check
    /// @return bool Whether the asset is supported
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

    /// @notice Checks if asset is STBT
    /// @param asset Asset to check
    /// @return bool Whether asset is STBT
    function isPrimaryAsset(address asset) external view override returns (bool) {
        return asset == STBT;
    }

    /// @notice Gets STBT address
    /// @return address STBT token address
    function getPrimaryAsset() external view override returns (address) {
        return STBT;
    }

    /// @notice Gets total supported assets count
    /// @return uint256 Number of supported assets (including STBT)
    function getSupportedAssetsCount() external view returns (uint256) {
        return _supportedAssetsList.length;
    }

    /// @notice Gets the vault's STBT balance
    /// @return uint256 STBT balance
    function getSTBTBalance() external view returns (uint256) {
        return IERC20(STBT).balanceOf(address(this));
    }

    /// @notice Checks if operations are possible
    /// @dev Combines emergency and pause status
    /// @return bool Whether operations are possible
    function isOperational() external view returns (bool) {
        return !paused() && !emergencyMode;
    }

    /// @notice Gets comprehensive vault statistics
    /// @return stbtBalance Current STBT balance
    /// @return secondaryAssetCount Number of secondary assets
    /// @return isActive Whether vault is active
    /// @return minterAddress Current minter contract address
    function getVaultStats()
        external
        view
        returns (
            uint256 stbtBalance,
            uint256 secondaryAssetCount,
            bool isActive,
            address minterAddress
        )
    {
        return (
            IERC20(STBT).balanceOf(address(this)),
            _supportedAssetsList.length - 1,
            !paused() && !emergencyMode,
            minter
        );
    }

    /// @notice Function to handle contract upgrades
    /// @param newImplementation Address of new implementation
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /// @custom:gap Storage gap for future upgrades
    uint256[45] private __gap;
}

/// @notice Interface for STBT Minter operations
interface IMinter {
    /// @notice Mints STBT tokens
    /// @param token Address of token to deposit
    /// @param depositAmount Amount to deposit
    /// @param minProposedAmount Minimum STBT amount to receive
    /// @param salt Random number for timelocked operation
    /// @param extraData Additional data for minting
    function mint(
        address token,
        uint256 depositAmount,
        uint256 minProposedAmount,
        bytes32 salt,
        bytes calldata extraData
    ) external;

    /// @notice Redeems STBT tokens
    /// @param amount Amount of STBT to redeem
    /// @param token Token to receive
    /// @param salt Random number for timelocked operation
    /// @param extraData Additional data for redemption
    function redeem(uint256 amount, address token, bytes32 salt, bytes calldata extraData) external;
}
