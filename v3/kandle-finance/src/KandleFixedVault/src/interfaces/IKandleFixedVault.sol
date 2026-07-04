// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title IKandleFixedVault
 * @notice Interface for Kandle fixed-yield vault with APY-based growth and early withdrawal fees
 * @dev Fixed yield vault with:
 *      - Controllable total share supply (optional cap)
 *      - No deposit lock period
 *      - Early withdrawal fee (0.1% if withdrawn within X days of deposit)
 *      - totalAssets grows based on configured APY with pause/resume capability
 *      - APY and growth toggle configurable by manager
 */
interface IKandleFixedVault is IERC4626 {
    // ============================================
    // Structs
    // ============================================

    /**
     * @notice Parameters for deploying a KandleFixedVault
     * @param asset The underlying ERC20 asset
     * @param name Vault share token name
     * @param symbol Vault share token symbol
     * @param manager Manager role address
     * @param developer Developer role address
     * @param feeRecipient Address receiving early withdrawal fees
     * @param adapter Investment adapter address
     * @param annualYieldBps Initial annual yield in basis points (e.g., 500 = 5%)
     * @param lockTime Initial withdrawal lock period timestamp
     */
    struct FixedVaultParams {
        IERC20 asset;
        string name;
        string symbol;
        address manager;
        address developer;
        address feeRecipient;
        address adapter;
        uint256 annualYieldBps;
        uint256 lockTime;
    }

    /**
     * @notice User's deposit information for withdrawal fee calculation
     * @param lastDepositTime Timestamp of user's last deposit (for early withdrawal fee)
     */
    struct UserDepositInfo {
        uint32 lastDepositTime;
    }

    // ============================================
    // Events
    // ============================================

    /**
     * @notice Emitted when annual yield rate is updated
     * @param oldYieldBps Previous yield rate in basis points
     * @param newYieldBps New yield rate in basis points
     */
    event AnnualYieldUpdated(uint256 oldYieldBps, uint256 newYieldBps);

    /**
     * @notice Emitted when yield growth is paused
     * @param pausedAt Timestamp when paused
     * @param accumulatedAssets Total assets accumulated at pause time
     */
    event YieldGrowthPaused(uint256 pausedAt, uint256 accumulatedAssets);

    /**
     * @notice Emitted when yield growth is resumed
     * @param resumedAt Timestamp when resumed
     * @param baseAssets New base assets for yield calculation
     */
    event YieldGrowthResumed(uint256 resumedAt, uint256 baseAssets);

    /**
     * @notice Emitted when share cap is updated
     * @param oldCap Previous share cap (0 = unlimited)
     * @param newCap New share cap (0 = unlimited)
     */
    event ShareCapUpdated(uint256 oldCap, uint256 newCap);

    /**
     * @notice Emitted when early withdrawal period is updated
     * @param oldPeriod Previous period in seconds
     * @param newPeriod New period in seconds
     */
    event EarlyWithdrawalPeriodUpdated(uint256 oldPeriod, uint256 newPeriod);

    /**
     * @notice Emitted when early withdrawal fee is updated
     * @param oldFeeBps Previous fee in basis points
     * @param newFeeBps New fee in basis points
     */
    event EarlyWithdrawalFeeUpdated(uint256 oldFeeBps, uint256 newFeeBps);

    /**
     * @notice Emitted when fee recipient is updated
     * @param oldRecipient Previous fee recipient address
     * @param newRecipient New fee recipient address
     */
    event FeeRecipientUpdated(address oldRecipient, address newRecipient);

    /**
     * @notice Emitted when adapter address is updated
     * @param oldAdapter Previous adapter address
     * @param newAdapter New adapter address
     */
    event AdapterUpdated(address oldAdapter, address newAdapter);

    /**
     * @notice Emitted when early withdrawal fee is collected
     * @param user User address
     * @param feeAmount Fee amount in assets
     * @param totalWithdrawn Total assets withdrawn (before fee)
     */
    event EarlyWithdrawalFeeCollected(address indexed user, uint256 feeAmount, uint256 totalWithdrawn);

    /**
     * @notice Emitted when transfer fee is collected (shares burned due to early transfer)
     * @param from Address transferring shares
     * @param to Address receiving shares
     * @param sharesFee Fee amount in shares (burned)
     * @param sharesTransferred Total shares transferred (before fee)
     */
    event TransferFeeCollected(address indexed from, address indexed to, uint256 sharesFee, uint256 sharesTransferred);

    /**
     * @notice Emitted when assets are recovered
     * @param asset Token address (address(0) for native currency)
     * @param amount Amount recovered
     * @param to Recipient address
     */
    event RecoveryAsset(address asset, uint256 amount, address to);

    /**
     * @notice Emitted when deposit limits per user are updated
     * @param oldMinShares Previous minimum shares per transaction
     * @param newMinShares New minimum shares per transaction
     * @param oldMaxShares Previous maximum shares per user
     * @param newMaxShares New maximum shares per user
     */
    event DepositLimitsUpdated(uint256 oldMinShares, uint256 newMinShares, uint256 oldMaxShares, uint256 newMaxShares);

    /**
     * @notice Emitted when asset underflow is detected during withdrawal
     * @dev This should never occur in normal operation due to ERC4626 constraints
     *      If emitted, indicates a critical bug requiring immediate investigation
     * @param assetType Type of asset that underflowed ("accumulated" or "base")
     * @param attemptedDeduction Amount that was attempted to be deducted
     * @param actualBalance Actual balance before deduction
     * @param user User who triggered the withdrawal
     */
    event AssetUnderflowDetected(string assetType, uint256 attemptedDeduction, uint256 actualBalance, address indexed user);

    // ============================================
    // Errors
    // ============================================

    /**
     * @notice Error when invalid address is provided
     */
    error InvalidAddress();

    /**
     * @notice Error when annual yield exceeds maximum allowed
     * @param provided Provided yield rate
     * @param maximum Maximum allowed yield rate
     */
    error AnnualYieldTooHigh(uint256 provided, uint256 maximum);

    /**
     * @notice Error when early withdrawal fee exceeds maximum allowed
     * @param provided Provided fee rate
     * @param maximum Maximum allowed fee rate
     */
    error EarlyWithdrawalFeeTooHigh(uint256 provided, uint256 maximum);

    /**
     * @notice Error when share cap is exceeded
     * @param requested Requested total shares
     * @param cap Maximum allowed shares
     */
    error ShareCapExceeded(uint256 requested, uint256 cap);

    /**
     * @notice Error when yield growth is already in the target state
     */
    error YieldGrowthAlreadyPaused();

    /**
     * @notice Error when yield growth is already in the target state
     */
    error YieldGrowthAlreadyActive();

    /**
     * @notice Error when minting shares below minimum per transaction
     * @param provided Provided shares amount
     * @param minimum Minimum required shares
     */
    error DepositBelowMinimum(uint256 provided, uint256 minimum);

    /**
     * @notice Error when user's total shares would exceed maximum
     * @param newTotal New total shares user would have
     * @param maximum Maximum allowed shares per user
     */
    error UserSharesExceeded(uint256 newTotal, uint256 maximum);

    /**
     * @notice Error when attempting to withdraw before lock time expires
     * @param currentTime Current block timestamp
     * @param lockTime Vault lock expiry timestamp
     */
    error WithdrawalLockedUntil(uint256 currentTime, uint256 lockTime);

    // ============================================
    // State Variables (View Functions)
    // ============================================

    /**
     * @notice Get the annual yield rate
     * @return Yield rate in basis points (e.g., 500 = 5%)
     */
    function annualYieldBps() external view returns (uint256);

    /**
     * @notice Check if yield growth is paused
     * @return True if paused, false if active
     */
    function yieldGrowthPaused() external view returns (bool);

    /**
     * @notice Get the base timestamp for yield calculation
     * @return Timestamp when current yield period started
     */
    function baseTimestamp() external view returns (uint256);

    /**
     * @notice Get the base total assets for yield calculation
     * @return Base assets amount
     */
    function baseTotalAssets() external view returns (uint256);

    /**
     * @notice Get the accumulated assets (used when paused or as base)
     * @return Accumulated assets amount
     */
    function accumulatedAssets() external view returns (uint256);

    /**
     * @notice Get the share cap limit
     * @return Maximum total shares (0 = unlimited)
     */
    function shareCap() external view returns (uint256);

    /**
     * @notice Get the early withdrawal period
     * @return Period in seconds
     */
    function earlyWithdrawalPeriod() external view returns (uint256);

    /**
     * @notice Get the early withdrawal fee rate
     * @return Fee rate in basis points
     */
    function earlyWithdrawalFeeBps() external view returns (uint256);

    /**
     * @notice Get the fee recipient address
     * @return Address receiving fees
     */
    function feeRecipient() external view returns (address);

    /**
     * @notice Get the adapter address
     * @return Address of the adapter managing actual assets
     */
    function adapter() external view returns (address);

    /**
     * @notice Get user's deposit information
     * @param user User address
     * @return lastDepositTime Timestamp of last deposit
     */
    function userDepositInfo(address user) external view returns (uint32 lastDepositTime);

    /**
     * @notice Get maximum annual yield rate
     * @return Maximum yield in basis points
     */
    function MAX_ANNUAL_YIELD() external view returns (uint256);

    /**
     * @notice Get maximum early withdrawal fee
     * @return Maximum fee in basis points
     */
    function MAX_EARLY_WITHDRAWAL_FEE() external view returns (uint256);

    /**
     * @notice Get basis points denominator
     * @return Denominator for basis points calculations
     */
    function BPS_DENOMINATOR() external view returns (uint256);

    /**
     * @notice Get minimum shares to mint per transaction
     * @return Minimum shares per transaction (0 = no minimum)
     * @dev This limit is enforced in deposit/mint operations and affects maxDeposit/maxMint return values
     */
    function minSharesPerDeposit() external view returns (uint256);

    /**
     * @notice Get maximum shares a user can hold
     * @return Maximum shares per user (0 = unlimited)
     * @dev This limit is enforced in deposit/mint operations and affects maxDeposit/maxMint return values
     */
    function maxSharesPerUser() external view returns (uint256);

    /**
     * @notice Get the vault lock time
     * @return Timestamp until which all withdrawals are locked
     * @dev Users cannot redeem or withdraw until block.timestamp > lockTime
     */
    function lockTime() external view returns (uint256);

    // ============================================
    // Yield Management Functions
    // ============================================

    /**
     * @notice Set annual yield rate
     * @param newYieldBps New yield rate in basis points
     * @dev Can only be called by manager
     *      Updates baseTimestamp and accumulates previous yield
     */
    function setAnnualYield(uint256 newYieldBps) external;

    /**
     * @notice Pause yield growth
     * @dev Can only be called by manager
     *      Accumulates current yield and stops further growth
     */
    function pauseYieldGrowth() external;

    /**
     * @notice Resume yield growth
     * @dev Can only be called by manager
     *      Sets new base values for yield calculation
     */
    function resumeYieldGrowth() external;

    // ============================================
    // Share Cap Management
    // ============================================

    /**
     * @notice Set share cap limit
     * @param newCap New maximum total shares (0 = unlimited)
     * @dev Can only be called by manager
     */
    function setShareCap(uint256 newCap) external;

    /**
     * @notice Set deposit limits per user
     * @param newMinShares New minimum shares to mint per transaction (0 = no minimum)
     * @param newMaxShares New maximum shares a user can hold (0 = unlimited)
     * @dev Can only be called by manager
     */
    function setDepositLimits(uint256 newMinShares, uint256 newMaxShares) external;

    // ============================================
    // Fee Management Functions
    // ============================================

    /**
     * @notice Set early withdrawal period
     * @param newPeriod New period in seconds
     * @dev Can only be called by manager
     */
    function setEarlyWithdrawalPeriod(uint256 newPeriod) external;

    /**
     * @notice Set early withdrawal fee rate
     * @param newFeeBps New fee rate in basis points
     * @dev Can only be called by manager
     */
    function setEarlyWithdrawalFee(uint256 newFeeBps) external;

    /**
     * @notice Set fee recipient address
     * @param newRecipient New fee recipient address
     * @dev Can only be called by manager
     */
    function setFeeRecipient(address newRecipient) external;

    /**
     * @notice Update adapter address
     * @param newAdapter New adapter address
     * @dev Can only be called by admin
     */
    function updateAdapter(address newAdapter) external;

    /**
     * @notice Calculate early withdrawal fee for a user
     * @param user User address
     * @param assets Amount of assets to withdraw
     * @return feeAmount Fee amount in assets (0 if not early withdrawal)
     */
    function calculateEarlyWithdrawalFee(address user, uint256 assets) external view returns (uint256 feeAmount);

    // ============================================
    // Pause Management Functions
    // ============================================

    /**
     * @notice Pause all vault operations (deposits and withdrawals)
     * @dev Can only be called by admin as emergency brake
     *      When paused, all deposits, mints, withdrawals, and redemptions are blocked
     */
    function pause() external;

    /**
     * @notice Unpause all vault operations
     * @dev Can only be called by admin
     *      Resumes normal vault operations
     */
    function unpause() external;

    // ============================================
    // Asset Recovery
    // ============================================

    /**
     * @notice Recover accidentally sent tokens or native currency
     * @param asset Address of token to recover (address(0) for native currency)
     * @param amount Amount to recover
     * @param to Recipient address
     * @dev Can only be called by admin
     */
    function recoverAsset(address asset, uint256 amount, address to) external;
}
