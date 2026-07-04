// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { HourglassStableVaultBridgeManager } from "./base/HourglassStableVaultBridgeManager.sol";
import { HourglassStableVaultDepositCapManager } from "./base/HourglassStableVaultDepositCapManager.sol";
import { HourglassStableVaultDepositWindowManager } from "./base/HourglassStableVaultDepositWindowManager.sol";
import { HourglassStableVaultKYCManager } from "./base/HourglassStableVaultKYCManager.sol";
import { HourglassStableVaultTreasuryManager } from "./base/HourglassStableVaultTreasuryManager.sol";
import { IBridgeableVault } from "./interfaces/IBridgeableVault.sol";

enum OperationalMode {
    Deposit,
    Kyc,
    Yield,
    Withdraw,
    Recovery
}

/**
 * @title HourglassStableVaultKYC
 * @author Hourglass
 * @notice ERC20 pre-deposit vault with KYC for Stable. Accepts USDC deposits, deploys to treasury for yield generation
 * @dev This vault is a KYC-enabled vault that generates yield for KYC users only.
 *
 * Phase-by-phase logic:
 * 1. Deposit Phase:
 *    - Users receive shares at a 1:1 ratio
 *
 * 2. KYC Phase:
 *    - Admin can mark users as KYC approved during the KYC phase
 *    - Non-KYC users can recover their USDC at a 1:1 ratio
 *
 * 3. Yield Phase:
 *    - Treasury can withdraw KYC-approved USDC to treasury address
 *    - Non-KYC users can recover their USDC at a 1:1 ratio
 *
 * 4. Withdraw Phase:
 *    - KYC users can withdraw pro-rata USDT via the bridge contract
 *    - Non-KYC users can recover their USDC at a 1:1 ratio
 *
 * 5. Recovery Phase:
 *    - After RECOVERY_TIMESTAMP, anyone can transition to Recovery mode
 *    - Non-KYC users recover their USDC at a 1:1 ratio
 *    - KYC users recover their USDT at a pro-rata ratio plus any undeployed USDC pro-rata
 *
 * Accounting State:
 * - All deposited USDC is initially non-KYC
 * - When a user is marked KYC, their USDC moves from non-KYC pool to KYC pool
 * - Deployable assets are USDC in the KYC pool
 * - Non-KYC recoveries pull from the non-KYC USDC pool
 * - KYC recoveries pull from the USDT balance and undeployed USDC
 */
contract HourglassStableVaultKYC is
    IBridgeableVault,
    ERC20,
    ERC20Permit,
    AccessControl,
    ReentrancyGuard,
    HourglassStableVaultDepositWindowManager,
    HourglassStableVaultDepositCapManager,
    HourglassStableVaultBridgeManager,
    HourglassStableVaultKYCManager,
    HourglassStableVaultTreasuryManager
{
    using SafeERC20 for IERC20;
    using Math for uint256;

    // ------------------------------------------
    // State Variables
    // ------------------------------------------

    /// @notice USDC token contract address on Ethereum mainnet
    IERC20 public constant USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);

    /// @notice USDT token contract address on Ethereum mainnet
    IERC20 public constant USDT = IERC20(0xdAC17F958D2ee523a2206206994597C13D831ec7);

    /// @notice Number of decimals for the vault shares (matches USDC/USDT)
    uint8 private constant DECIMALS = 6;

    /// @notice Role identifier for admin operations
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    /// @notice Role identifier for treasury operations
    bytes32 public constant TREASURY_ROLE = keccak256("TREASURY_ROLE");

    /// @notice Maximum number of users that can be processed in a single batch operation
    uint256 public constant MAX_KYC_BATCH_SIZE = 100;

    /// @notice Timestamp after which the vault can enter Recovery mode permissionlessly
    /// @dev Set to 180 days from deployment
    uint256 public immutable RECOVERY_TIMESTAMP;

    /// @notice Current operational mode of the vault
    /// @dev Starts in Deposit mode and transitions through phases
    OperationalMode private _mode = OperationalMode.Deposit;

    // sharesKyc
    // sharesNonKyc

    /// @notice Total shares held by non-KYC users
    /// @dev Decreases when users are marked as KYC approved
    uint256 public sharesNonKyc;

    /// @notice Total shares held by KYC-approved users
    /// @dev Increases when users are marked as KYC approved
    uint256 public sharesKyc;

    /// @notice Total USDC assets available for deployment from KYC pool
    /// @dev Decreases when treasury withdraws for yield generation
    uint256 public usdcKycDeployable;

    // ------------------------------------------
    // Events
    // ------------------------------------------

    /**
     * @notice Emitted when the operational mode changes
     * @param previousMode The previous operational mode
     * @param newMode The new operational mode
     */
    event OperationalModeChanged(OperationalMode indexed previousMode, OperationalMode indexed newMode);

    /**
     * @notice Emitted when treasury withdraws funds
     * @param to Recipient address
     * @param amount Amount withdrawn
     */
    event TreasuryWithdrawal(address indexed to, uint256 indexed amount);

    /**
     * @notice Emitted when non-KYC user recovers their funds
     * @param user User address
     * @param usdcAmount Amount of USDC recovered
     * @param shares Amount of shares burned
     */
    event NonKYCRecovery(address indexed user, uint256 indexed usdcAmount, uint256 shares);

    /**
     * @notice Emitted when KYC user recovers both USDT and undeployed USDC in recovery mode
     * @param user User address
     * @param usdtAmount Amount of USDT recovered
     * @param usdcAmount Amount of undeployed USDC recovered
     * @param shares Amount of shares burned
     */
    event KYCRecovery(address indexed user, uint256 indexed usdtAmount, uint256 usdcAmount, uint256 shares);

    /**
     * @notice Emitted when KYC user recovers USDT in withdrawal mode
     * @param sender The address initiating the redeem
     * @param receiver The address receiving the USDT
     * @param owner The owner of the shares being redeemed
     * @param usdtAmount Amount of USDT recovered
     * @param shares Amount of shares burned
     */
    event KYCRedeem(
        address indexed sender, address indexed receiver, address indexed owner, uint256 usdtAmount, uint256 shares
    );

    /**
     * @notice Emitted when ERC20 tokens are recovered from the contract
     * @param token The token address
     * @param to The recipient address
     * @param amount The amount of tokens recovered
     */
    event RecoveredERC20(address indexed token, address indexed to, uint256 indexed amount);

    /**
     * @notice Emitted when a deposit occurs
     * @param sender The address initiating the deposit
     * @param owner The address that will own the shares
     * @param shares Amount of shares minted
     */
    event Deposit(address indexed sender, address indexed owner, uint256 shares);

    // ------------------------------------------
    // Errors
    // ------------------------------------------

    /// @notice Thrown when attempting an operation without sufficient balance
    error InsufficientBalance();

    /// @notice Thrown when attempting to recover forbidden token
    error RecoveryForbidden(address token);

    /// @notice Thrown when attempting to recover zero amount of tokens or ETH
    error RecoverZeroAmount();

    /// @notice Thrown when an amount parameter is zero but must be non-zero
    error ZeroAmount();

    /// @notice Thrown when an address parameter is zero but must be non-zero
    error ZeroAddress();

    /// @notice Thrown when vault is not in the expected operational mode
    error InvalidOperationalMode(OperationalMode currentMode, OperationalMode expectedMode);

    /// @notice Thrown when trying to transition to Recovery mode before the recovery timestamp
    error TransitionToRecoveryFailed();

    /// @notice Thrown when there are insufficient funds for deployment to treasury
    error InsufficientFundsForDeployment();

    /// @notice Thrown when attempting to transfer shares outside of allowed conditions
    error TransfersDisabled();

    /// @notice Thrown when user has no shares
    error NoSharesFound();

    /// @notice Thrown when batch array is empty
    error EmptyBatch();

    /// @notice Thrown when batch size exceeds maximum allowed
    error BatchTooLarge(uint256 provided, uint256 max);

    // ------------------------------------------
    // Modifiers
    // ------------------------------------------

    /**
     * @notice Ensures the vault is in the expected operational mode
     * @param expectedMode The operational mode that the vault must be in
     */
    modifier onlyMode(OperationalMode expectedMode) {
        if (_mode != expectedMode) revert InvalidOperationalMode(_mode, expectedMode);
        _;
    }

    /**
     * @notice Ensures the provided address is not zero address
     * @param addr The address to validate
     */
    modifier onlyNonZeroAddress(address addr) {
        if (addr == address(0)) revert ZeroAddress();
        _;
    }

    /**
     * @notice Ensures the provided amount is not zero
     * @param amount The amount to validate
     */
    modifier onlyNonZeroAmount(uint256 amount) {
        if (amount == 0) revert ZeroAmount();
        _;
    }

    // ------------------------------------------
    // Constructor & Receive
    // ------------------------------------------

    /**
     * @notice Vault constructor
     * @param _admin Address to receive all administrative roles
     * @param _name Name of the vault token
     * @param _symbol Symbol of the vault token
     * @param _depositCap The initial deposit cap for USDC deposits
     * @param _depositStart Unix timestamp when deposits open (inclusive)
     * @param _depositEnd Unix timestamp when deposits close (inclusive)
     * @param _treasuryAddress Address of the treasury for yield deployment
     * @dev Bridge contract for withdrawals set later to avoid circular dependency.
     *      Sets RECOVERY_TIMESTAMP to 180 days from deployment.
     *      Grants DEFAULT_ADMIN_ROLE, ADMIN_ROLE, and TREASURY_ROLE to _admin.
     */
    constructor(
        address _admin,
        string memory _name,
        string memory _symbol,
        uint256 _depositCap,
        uint64 _depositStart,
        uint64 _depositEnd,
        address _treasuryAddress
    )
        HourglassStableVaultDepositWindowManager(_depositStart, _depositEnd)
        HourglassStableVaultDepositCapManager(_depositCap)
        HourglassStableVaultTreasuryManager(_treasuryAddress)
        ERC20(_name, _symbol)
        ERC20Permit(_name)
        onlyNonZeroAddress(_admin)
    {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(ADMIN_ROLE, _admin);
        _grantRole(TREASURY_ROLE, _admin);

        RECOVERY_TIMESTAMP = block.timestamp + 180 days;
    }

    // ------------------------------------------
    // External Functions - Admin
    // ------------------------------------------

    /**
     * @notice Transitions the vault from Deposit to Kyc mode
     * @dev Only callable by admin role when in Deposit mode.
     *      After transition, no new deposits are accepted.
     */
    function transitionToKycMode() external onlyRole(ADMIN_ROLE) onlyMode(OperationalMode.Deposit) {
        _transitionToModeUnsafe(OperationalMode.Kyc);
    }

    /**
     * @notice Transitions the vault from KYC to Yield mode
     * @dev Called after KYC verification is complete.
     *      Only callable by admin role when in Kyc mode.
     *      After transition, treasury can withdraw KYC-approved funds.
     */
    function transitionToYieldMode() external onlyRole(ADMIN_ROLE) onlyMode(OperationalMode.Kyc) {
        _transitionToModeUnsafe(OperationalMode.Yield);
    }

    /**
     * @notice Transitions the vault from Yield to Withdraw mode
     * @dev Called after yield generation is complete and USDT has been returned.
     *      Only callable by admin role when in Yield mode.
     *      Treasury should have returned USDT before this transition.
     *      After transition, KYC users can withdraw via bridge.
     */
    function transitionToWithdrawMode() external onlyRole(ADMIN_ROLE) onlyMode(OperationalMode.Yield) {
        _transitionToModeUnsafe(OperationalMode.Withdraw);
    }

    /**
     * @notice Transitions the vault from any state to Recovery mode (a terminal state)
     * @dev Must be past the recovery timestamp. Can be called permissionlessly.
     *      Recovery mode is a terminal state that cannot be exited.
     *      Provides emergency exit for all users if admin is compromised.
     *      Non-KYC users recover USDC at 1:1, KYC users recover USDT + undeployed USDC.
     */
    function transitionToRecoveryMode() external {
        if (block.timestamp < RECOVERY_TIMESTAMP) revert TransitionToRecoveryFailed();
        _transitionToModeUnsafe(OperationalMode.Recovery);
    }

    /**
     * @notice Modifies a deposit window that is pending (has not yet started)
     * @param newStart Unix timestamp when deposits open
     * @param newEnd Unix timestamp when deposits close
     */
    function modifyPendingDepositWindow(
        uint64 newStart,
        uint64 newEnd
    )
        external
        onlyRole(ADMIN_ROLE)
        onlyMode(OperationalMode.Deposit)
    {
        _modifyPendingDepositWindow(newStart, newEnd);
    }

    /**
     * @notice Modifies the end timestamp of a deposit window that has already started
     * @param newEnd Unix timestamp when deposits close
     */
    function modifyStartedDepositWindow(uint64 newEnd)
        external
        onlyRole(ADMIN_ROLE)
        onlyMode(OperationalMode.Deposit)
    {
        _modifyStartedDepositWindow(newEnd);
    }

    /**
     * @notice Updates the deposit cap for the vault
     * @param newCap New maximum total USDT allowed (must be > 0 and >= current deposits)
     */
    function setDepositCap(uint256 newCap) external onlyRole(ADMIN_ROLE) onlyMode(OperationalMode.Deposit) {
        _setDepositCap(sharesNonKyc, newCap);
    }

    /**
     * @notice Sets the authorized bridge contract address and marks it as KYC-approved
     * @param newBridgeContract Address of the bridge contract that can call withdraw
     * @dev Also marks the bridge as KYC-approved to allow it to redeem shares
     */
    function setBridgeContract(address newBridgeContract) external onlyRole(ADMIN_ROLE) {
        _setBridgeContract(newBridgeContract);
        _setKycStatus(newBridgeContract, true);
    }

    /**
     * @notice Sets the treasury address where funds are sent
     * @param newTreasury Address of the new treasury
     */
    function setTreasuryAddress(address newTreasury) external onlyRole(ADMIN_ROLE) {
        _setTreasuryAddress(newTreasury);
    }

    /**
     * @notice Batch set KYC status for multiple users
     * @param users Array of addresses to update (max 100)
     * @param status KYC status to set
     * @dev Reverts if batch is empty or exceeds MAX_BATCH_SIZE
     */
    function batchSetKycStatus(
        address[] calldata users,
        bool status
    )
        external
        onlyRole(ADMIN_ROLE)
        onlyMode(OperationalMode.Kyc)
    {
        uint256 length = users.length;

        // Validate batch size
        if (length == 0) revert EmptyBatch();
        if (length > MAX_KYC_BATCH_SIZE) revert BatchTooLarge(length, MAX_KYC_BATCH_SIZE);

        for (uint256 i = 0; i < length;) {
            address user = users[i];
            if (user == address(0)) revert ZeroAddress();
            _setKycStatusWithAccounting(user, status);
            ++i;
        }
    }

    /**
     * @notice Recovers mistakenly sent ERC20 tokens from the contract
     * @param token Address of the ERC20 token to recover
     * @param to Recipient address for recovered tokens
     * @dev Only recovers excess tokens beyond what users can claim.
     *      Protects sharesNonKyc USDC for non-KYC users.
     *      Protects usdcKycDeployable USDC for KYC users.
     *      Protects all USDT as it belongs to KYC users.
     */
    function recoverErc20(
        address token,
        address to
    )
        external
        onlyRole(ADMIN_ROLE)
        onlyNonZeroAddress(token)
        onlyNonZeroAddress(to)
        nonReentrant
    {
        uint256 balance = IERC20(token).balanceOf(address(this));
        uint256 protected = 0;

        // Compute protected amounts for assets the contract holds
        if (token == address(USDC)) {
            // must protect sharesNonKyc so non-KYC users can recover their assets
            // must protect usdcKycDeployable since it belongs to the kyc users
            protected = sharesNonKyc + usdcKycDeployable;
        } else if (token == address(USDT)) {
            // all usdt belongs to the kyc users
            revert RecoveryForbidden(address(USDT));
        }

        uint256 recoverable = balance > protected ? balance - protected : 0;
        if (recoverable == 0) revert RecoverZeroAmount();

        IERC20(token).safeTransfer(to, recoverable);
        emit RecoveredERC20(token, to, recoverable);
    }

    // ---------------------
    // Treasury Functions
    // ---------------------

    /**
     * @notice Allows treasury to transfer USDC funds during Yield phase
     * @param amount Amount of USDC to transfer to treasury for yield generation
     * @dev Treasury can only access KYC pool funds, not non-KYC assets.
     *      Reduces usdcKycDeployable to track deployed funds.
     *      Ensures non-KYC user funds remain untouched and recoverable.
     */
    function transferToTreasury(uint256 amount)
        external
        nonReentrant
        onlyRole(TREASURY_ROLE)
        onlyMode(OperationalMode.Yield)
        onlyWhenTreasurySet
        onlyNonZeroAmount(amount)
    {
        if (amount > usdcKycDeployable) {
            revert InsufficientFundsForDeployment();
        }

        uint256 usdcBalance = USDC.balanceOf(address(this));
        if (amount > usdcBalance) {
            revert InsufficientFundsForDeployment();
        }

        usdcKycDeployable -= amount;
        USDC.safeTransfer(_treasuryAddress, amount);
        emit TreasuryWithdrawal(_treasuryAddress, amount);
    }

    // ------------------------------------------
    // Public Functions
    // ------------------------------------------

    /**
     * @notice Returns the current operational mode of the vault
     * @return The current operational mode of the vault
     */
    function operationalMode() public view returns (OperationalMode) {
        return _mode;
    }

    /**
     * @notice Returns the decimals of the vault shares
     * @return decimals The number of decimals (6, same as USDC and USDT)
     */
    function decimals() public pure override(ERC20) returns (uint8) {
        return DECIMALS;
    }

    /**
     * @notice Deposits USDC and mints shares for non-KYC users
     * @param assets Amount of USDC to deposit
     * @param receiver Address to receive the shares
     * @dev Follows ERC4626-style pattern: check → preview → execute.
     *      Shares are minted at 1:1 ratio to prevent inflation attacks.
     *      Deposits are subject to the configured deposit cap.
     */
    function deposit(
        uint256 assets,
        address receiver
    )
        public
        nonReentrant
        onlyMode(OperationalMode.Deposit)
        onlyWhenDepositWindowOpen
        onlyNonZeroAmount(assets)
    {
        // 1. Check against maximum
        if (assets > maxDeposit()) {
            revert DepositExceedsCap();
        }

        // 1. Transfer assets from depositor
        USDC.safeTransferFrom(msg.sender, address(this), assets);

        // 2. Update accounting
        sharesNonKyc += assets;

        // 3. Mint shares to receiver
        _mint(receiver, assets);

        // 4. Emit event
        emit Deposit(msg.sender, receiver, assets);
    }

    /**
     * @notice Allows non-KYC users to redeem shares for USDC at 1:1 ratio
     * @param shares Amount of shares to burn
     * @param receiver Address to receive the USDC
     * @param owner Owner of the shares being redeemed
     * @dev Available in any phase (including Deposit) - non-KYC funds are always protected.
     *      Non-KYC users maintain 1:1 redemption rate throughout all phases.
     *      This ensures principal preservation for users who don't complete KYC.
     */
    function redeemNonKyc(
        uint256 shares,
        address receiver,
        address owner
    )
        public
        nonReentrant
        onlyNonZeroAmount(shares)
        onlyNonKyc(owner)
    {
        // 1. Handle allowance if caller is not owner
        if (msg.sender != owner) {
            _spendAllowance(owner, msg.sender, shares);
        }

        // 2. Update accounting
        sharesNonKyc -= shares;

        // 3. Burn shares from owner
        _burn(owner, shares);

        // 4. Transfer USDC to receiver
        USDC.safeTransfer(receiver, shares);

        // 5. Emit events
        emit NonKYCRecovery(owner, shares, shares);
    }

    /**
     * @notice Allows KYC users to redeem shares for both USDT and undeployed USDC in Recovery mode
     * @param shares Amount of shares to redeem
     * @param receiver Address to receive the assets
     * @param owner Owner of the shares being redeemed
     * @dev Can only be called in Recovery mode by KYC approved users.
     *      Returns pro-rata share of both USDT and any undeployed USDC.
     *      Non-KYC users should use redeemNonKyc() which works in any phase.
     *      This function ensures KYC users can recover all assets in emergency scenarios,
     *      including both yield-bearing USDT and any USDC not yet deployed.
     */
    function redeemRecoveryKyc(
        uint256 shares,
        address receiver,
        address owner
    )
        external
        nonReentrant
        onlyMode(OperationalMode.Recovery)
        onlyNonZeroAmount(shares)
        onlyKycApproved(owner)
    {
        if (msg.sender != owner) {
            _spendAllowance(owner, msg.sender, shares);
        }

        // 2. Calculate both USDT and undeployed USDC amounts
        (uint256 usdtOut, uint256 usdcOut,) = previewRedeem(owner, shares);

        // 4. Update accounting
        sharesKyc -= shares;
        if (usdcOut > 0) {
            usdcKycDeployable -= usdcOut;
        }

        // 5. Burn shares
        _burn(owner, shares);

        // 6. Transfer both assets
        if (usdtOut > 0) {
            USDT.safeTransfer(receiver, usdtOut);
        }
        if (usdcOut > 0) {
            USDC.safeTransfer(receiver, usdcOut);
        }

        // 7. Emit event
        emit KYCRecovery(owner, usdtOut, usdcOut, shares);
    }

    // ------------------------------------------
    // Preview Functions (ERC4626-style)
    // ------------------------------------------

    function previewRedeem(
        address user,
        uint256 shares
    )
        public
        view
        returns (uint256 usdtOut, uint256 usdcOut, bool isKyc)
    {
        if (shares > balanceOf(user)) {
            revert InsufficientBalance();
        }
        isKyc = _isKycApproved(user);
        if (isKyc) {
            usdtOut = _convertToAssets(shares, sharesKyc, USDT.balanceOf(address(this)));
            usdcOut = _convertToAssets(shares, sharesKyc, usdcKycDeployable);
        } else {
            usdtOut = 0;
            usdcOut = shares;
        }
    }

    // ------------------------------------------
    // Max Functions (ERC4626-style)
    // ------------------------------------------

    /**
     * @notice Maximum amount of USDC that can be deposited
     * @return maxAssets Maximum USDC that can be deposited
     */
    function maxDeposit() public view returns (uint256 maxAssets) {
        if (_mode != OperationalMode.Deposit || !_depositWindowOpen()) return 0;
        return _getMaxDepositAgainstCap(sharesNonKyc);
    }

    // ------------------------------------------
    // Transfer Override Functions
    // ------------------------------------------
    // IBridgeableVault Implementation
    // ------------------------------------------

    /**
     * @notice Redeems vault shares for underlying assets for bridge operations
     * @param shares Amount of vault shares to redeem
     * @param receiver Address to receive the redeemed assets
     * @param owner Address that owns the shares being redeemed
     * @return usdtOut Amount of USDT returned to the receiver
     * @dev Implements IBridgeableVault interface for bridge withdrawals
     * @dev Can only be called in Withdraw mode by authorized bridge contract
     * @dev KYC users receive pro-rata share of USDT based on their share ownership
     */
    function redeemBridge(
        uint256 shares,
        address receiver,
        address owner
    )
        external
        override
        nonReentrant
        onlyNonZeroAmount(shares)
        onlyCallerIsBridge
        onlyMode(OperationalMode.Withdraw)
        returns (uint256 usdtOut)
    {
        // Preview conversion
        (usdtOut,,) = previewRedeem(owner, shares);
        if (usdtOut == 0) revert ZeroAmount();

        // Handle allowance if caller is not owner
        if (msg.sender != owner) {
            _spendAllowance(owner, msg.sender, shares);
        }

        // Update accounting
        sharesKyc -= shares;

        // Burn shares from owner
        _burn(owner, shares);

        // Transfer USDT to receiver
        USDT.safeTransfer(receiver, usdtOut);

        // Emit event
        emit KYCRedeem(msg.sender, receiver, owner, usdtOut, shares);
    }

    /**
     * @notice Preview the amount of assets that would be received for bridge redemption
     * @param shares Amount of shares to preview redemption for
     * @return assets Amount of USDT that would be received
     * @dev Implements IBridgeableVault interface
     * @dev Uses the KYC-specific previewRedeem with msg.sender for compatibility
     */
    function previewRedeemBridge(uint256 shares) external view override returns (uint256 assets) {
        // Use the KYC-specific previewRedeem function with msg.sender
        // This will check if the caller is KYC'd and return appropriate amounts
        (uint256 usdtOut,,) = previewRedeem(msg.sender, shares);
        return usdtOut;
    }

    // ------------------------------------------

    /**
     * @notice Override internal _update to restrict share transfers
     * @param from Sender address
     * @param to Recipient address
     * @param value Amount of shares to transfer
     * @dev Only KYC users can transfer to bridge during Withdraw phase
     *      Mints and burns (from or to address(0)) are always allowed
     */
    function _update(address from, address to, uint256 value) internal virtual override {
        if (
            from == address(0) || to == address(0)
                || (_mode == OperationalMode.Withdraw && _isKycApproved(from) && to == _bridgeContract)
        ) {
            super._update(from, to, value);
            return;
        }
        revert TransfersDisabled();
    }

    // ------------------------------------------
    // Internal Functions
    // ------------------------------------------

    /**
     * @notice Internal helper to convert shares to assets (always rounds down)
     * @param shares Amount of shares to convert
     * @param supply Current supply of shares in the pool
     * @param totalAssets Current total assets in the pool
     * @return Amount of assets equivalent to the shares
     */
    function _convertToAssets(uint256 shares, uint256 supply, uint256 totalAssets) internal pure returns (uint256) {
        if (supply == 0) return 0;
        return Math.mulDiv(shares, totalAssets, supply, Math.Rounding.Floor);
    }

    /**
     * @notice Transitions the vault to a new operational mode
     * @param newMode The new operational mode
     * @dev It is the job of the caller to ensure the prevMode -> newMode transition is valid
     */
    function _transitionToModeUnsafe(OperationalMode newMode) private {
        OperationalMode prevMode = _mode;
        _mode = newMode;
        emit OperationalModeChanged(prevMode, newMode);
    }

    // ------------------------------------------
    // Internal Execution Functions (ERC4626-style)
    // ------------------------------------------

    /**
     * @notice Internal function to set KYC status and update accounting
     * @param user Address to update
     * @param status KYC status to set
     * @dev user validated to be non-zero address at call site
     */
    function _setKycStatusWithAccounting(address user, bool status) internal {
        uint256 userShares = balanceOf(user);
        if (userShares == 0) revert NoSharesFound();

        // Update KYC status using base contract function (emits KYCStatusSet event)
        // Note: _setKycStatus will revert if status is unchanged, guaranteeing the status is different
        _setKycStatus(user, status);

        // Update share and asset accounting based on status change
        // We know status changed, so we can simplify the logic
        if (status) {
            // Marking as KYC - move from non-KYC pool to KYC pool
            sharesNonKyc -= userShares;
            sharesKyc += userShares;
            usdcKycDeployable += userShares;
        } else {
            // Unmarking as KYC - move from KYC pool back to non-KYC pool
            sharesNonKyc += userShares;
            sharesKyc -= userShares;
            usdcKycDeployable -= userShares;
        }
    }
}
