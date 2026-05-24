// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '../interfaces/ISubVault.sol';
import '../interfaces/IPriceOracle.sol';
import '@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol';
import '@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol';

/**
 * @title WM SubVault
 * @notice A vault for managing WM token and additional supported assets
 * @dev Implements comprehensive security measures and asset management
 *
 * INHERITANCE STRUCTURE:
 * - Initializable: Required for upgradeability pattern
 * - UUPSUpgradeable: Universal Upgradeable Proxy Standard implementation
 * - AccessControlUpgradeable: Role-based access control with upgradeability
 * - PausableUpgradeable: Circuit breaker pattern with upgradeability
 * - ReentrancyGuardUpgradeable: Protection against reentrancy with upgradeability
 * - ISubVault: Core vault interface
 *
 * SECURITY CONSIDERATIONS:
 * 1. Access Control
 *    - Role-based permissions (DEFAULT_ADMIN_ROLE, ADMIN_ROLE)
 *    - Router authorization
 *    - Emergency admin controls
 *    - Upgrade authorization controls
 *
 * 2. Asset Safety
 *    - Non-reentrant operations
 *    - SafeERC20 usage
 *    - Balance validations
 *    - Explicit approval management
 *    - Storage gap protection for upgrades
 *
 * 3. Emergency Features
 *    - Pause functionality
 *    - Emergency mode with timelock
 *    - Protected withdrawal system
 *
 * 4. Upgradeability Safety
 *    - Proper initialization chain
 *    - Storage layout preservation
 *    - UUPS proxy pattern security
 *    - Controlled upgrade process
 *
 * UPGRADE CONSIDERATIONS:
 * 1. Storage Layout
 *    - All storage variables must be preserved in order
 *    - New storage variables must be added at the end
 *    - Existing storage variables cannot be removed or reordered
 *
 * 2. Initialization
 *    - Initialize function can only be called once through the proxy
 *    - All inherited contracts must be properly initialized
 *    - Initializers must be protected against reentrancy
 *
 * 3. Upgrade Process
 *    - Only ADMIN_ROLE can authorize upgrades
 *    - Upgrades must preserve all existing state
 *    - New implementations must be compatible with existing storage
 *
 * @custom:security-contact paras@zoth.io
 */
contract WMSubVaultUpgradeable is
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

    /// @notice WM token address
    address public WM;

    /// @notice Treasury address
    address public TREASURY;

    /// @notice Asset management mappings
    mapping(address => bool) public supportedAssets;
    address[] private _supportedAssetsList;

    /// @notice Emergency control settings
    uint256 public constant EMERGENCY_DELAY = 1 hours;
    uint256 public lastEmergencyAction;
    bool public emergencyMode;
    address public ws;

    /// @notice Price oracle mapping
    mapping(address => address) public assetOracles;

    ISwapRouter public constant swapRouter =
        ISwapRouter(0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45);
    address public constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    uint24 public constant poolFee = 100;

    // Add M token address
    address public constant M = 0x866A2BF4E572CbcF37D5071A7a58503Bfb36be1b;

    event TreasuryUpdated(address indexed oldTreasury, address indexed newTreasury);

    /**
     * @dev Constructor is disabled as this is an upgradeable contract
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the contract replacing the constructor for upgradeability
     * @dev This function can only be called once through the proxy
     * @param _wm Address of WM token
     * @param _router Address of router contract
     * @param _admin Address of initial admin
     */
    function initialize(address _wm, address _router, address _admin) public initializer {
        require(_wm != address(0), 'Invalid WM');
        require(_router != address(0), 'Invalid router');
        require(_admin != address(0), 'Invalid admin');

        // Initialize inherited contracts
        __AccessControl_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        WM = _wm;
        router = _router;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(ADMIN_ROLE, _admin);
        _setRoleAdmin(ADMIN_ROLE, DEFAULT_ADMIN_ROLE);

        // Set up WM as primary asset
        supportedAssets[_wm] = true;
        _supportedAssetsList.push(_wm);

        emit AssetAdded(_wm, 'WM configured as primary asset');
    }

    /**
     * @dev Function that should revert when msg.sender is not authorized to upgrade the contract
     * @param newImplementation Address of the new implementation contract
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}

    /// @notice Ensures caller is authorized router
    modifier onlyRouter() {
        if (msg.sender != router) revert UnauthorizedCaller(msg.sender);
        _;
    }

    modifier onlyWithdrawalSystem() {
        if (msg.sender != ws) revert UnauthorizedCaller(msg.sender);
        _;
    }

    /// @notice Ensures address is not zero
    modifier validAddress(address addr) {
        if (addr == address(0)) revert InvalidAddress(addr);
        _;
    }

    /**
     * @notice Sets the price oracle for a specific asset
     * @param asset Address of the asset
     * @param oracle Address of the price oracle
     */
    function setAssetOracle(address asset, address oracle) external onlyRole(ADMIN_ROLE) {
        require(asset != address(0), 'Invalid asset address');
        require(oracle != address(0), 'Invalid oracle address');
        assetOracles[asset] = oracle;
        emit AssetOracleSet(asset, oracle);
    }

    /// @notice Sets the withdrawal system address
    /// @param _ws Address of the withdrawal system contract
    function WS(address _ws) external onlyRole(ADMIN_ROLE) validAddress(_ws) {
        ws = _ws;
        emit RouterSet(_ws);
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
            uint256 /*updatedAt*/,
            uint80
        ) {
            // Check if the price is positive
            if (answer <= 0) {
                return (0, false);
            }

            return (uint256(answer), true);
        } catch {
            return (0, false);
        }
    }

    /**
     * @notice Adds support for a secondary asset
     * @param asset Address of asset to add
     * @param reason Reason for adding asset
     */
    function addAsset(
        address asset,
        string calldata reason
    ) external override onlyRole(ADMIN_ROLE) validAddress(asset) {
        if (supportedAssets[asset]) revert AssetAlreadySupported(asset);

        supportedAssets[asset] = true;
        _supportedAssetsList.push(asset);

        emit AssetAdded(asset, reason);
    }

    /**
     * @notice Removes support for a secondary asset
     * @param asset Address of asset to remove
     * @param reason Reason for removing asset
     */
    function removeAsset(
        address asset,
        string calldata reason
    ) external override onlyRole(ADMIN_ROLE) {
        if (!supportedAssets[asset]) revert AssetNotSupported(asset);

        // Check balance before removal
        uint256 balance = IERC20(asset).balanceOf(address(this));
        if (balance > 0) revert NonZeroBalance(asset, balance);

        supportedAssets[asset] = false;

        // Remove from list
        for (uint256 i = 0; i < _supportedAssetsList.length; i++) {
            if (_supportedAssetsList[i] == asset) {
                _supportedAssetsList[i] = _supportedAssetsList[_supportedAssetsList.length - 1];
                _supportedAssetsList.pop();
                break;
            }
        }

        emit AssetRemoved(asset, reason);
    }

    /// @notice Handles deposit of supported assets
    function handleDeposit(
        address user,
        address asset,
        uint256 amount
    ) external override nonReentrant onlyRouter whenNotPaused returns (bool) {
        if (amount == 0) revert InvalidAmount();
        if (emergencyMode) revert EmergencyModeEnabled(block.timestamp);
        if (!supportedAssets[asset]) revert UnsupportedAsset(asset);

        if (asset == USDC) {
            // Handle USDC to WM swap via Uniswap
            TransferHelper.safeApprove(USDC, address(swapRouter), amount);

            ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
                tokenIn: USDC,
                tokenOut: WM,
                fee: poolFee,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: amount,
                amountOutMinimum: 0, // In production, use oracle
                sqrtPriceLimitX96: 0
            });

            swapRouter.exactInputSingle(params);
            emit SecondaryAssetOperation(user, asset, amount, true);
            return true;
        } else if (asset == M) {
            // Handle M to WM wrapping
            TransferHelper.safeApprove(M, WM, amount);

            // Call wrap function on WM contract
            uint240 wrapped = IWM(WM).wrap(address(this), amount);

            emit SecondaryAssetOperation(user, asset, wrapped, true);
            return true;
        }

        emit SecondaryAssetOperation(user, asset, amount, true);
        return true;
    }

    /// @notice Handles withdrawal of supported assets
    function handleWithdraw(
        address user,
        address asset,
        uint256 amount
    ) external override nonReentrant onlyWithdrawalSystem whenNotPaused returns (bool) {
        if (amount == 0) revert InvalidAmount();
        if (emergencyMode) revert EmergencyModeEnabled(block.timestamp);
        if (!supportedAssets[asset]) revert UnsupportedAsset(asset);

        if (asset == WM) {
            IERC20(WM).safeTransfer(user, amount);
            emit PrimaryAssetOperation(user, amount, false);
        }

        if (asset == USDC) {
            TransferHelper.safeApprove(WM, address(swapRouter), amount);

            uint256 amountOut = swapRouter.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: WM,
                    tokenOut: USDC,
                    fee: poolFee,
                    recipient: user,
                    deadline: block.timestamp,
                    amountIn: amount,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );

            emit SecondaryAssetOperation(user, asset, amountOut, false);
        }
        return true;
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

        uint256 balance = IERC20(asset).balanceOf(address(this));
        uint256 withdrawAmount = amount > balance ? balance : amount;

        if (asset == WM) {
            _revokeApproval(WM, address(WM));
        }

        IERC20(asset).safeTransfer(to, withdrawAmount);

        lastEmergencyAction = block.timestamp;
        emit EmergencyWithdrawalExecuted(asset, to, withdrawAmount, reason);

        return true;
    }

    /**
     * @notice Sets the treasury address
     * @dev Only callable by admin role
     * @param newTreasury New treasury address
     */
    function setTreasury(address newTreasury) external onlyRole(ADMIN_ROLE) {
        require(newTreasury != address(0), 'Zero address not allowed');
        require(newTreasury != TREASURY, 'Same treasury address');

        address oldTreasury = TREASURY;
        TREASURY = newTreasury;
        emit TreasuryUpdated(oldTreasury, newTreasury);
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
        return asset == WM;
    }

    function getPrimaryAsset() external view override returns (address) {
        return WM;
    }

    function getSupportedAssetsCount() external view returns (uint256) {
        return _supportedAssetsList.length;
    }

    function getWMBalance() external view returns (uint256) {
        return IERC20(WM).balanceOf(address(this));
    }

    function isOperational() external view returns (bool) {
        return !paused() && !emergencyMode;
    }

    function getVaultStats()
        external
        view
        returns (uint256 wmBalance, uint256 secondaryAssetCount, bool isActive)
    {
        return (
            IERC20(WM).balanceOf(address(this)),
            _supportedAssetsList.length - 1,
            !paused() && !emergencyMode
        );
    }
}

/// @notice Interface for WM contract
interface IWM {
    function wrap(address recipient_, uint256 amount_) external returns (uint240 wrapped_);
}
