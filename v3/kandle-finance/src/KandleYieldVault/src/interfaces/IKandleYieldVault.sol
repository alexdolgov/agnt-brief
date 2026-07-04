// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IAdapter} from "./IAdapter.sol";

/**
 * @title IKandleYieldVault
 * @notice Interface for Kandle yield-generating vault with performance fee mechanism
 * @dev Additional interfaces for user-based cost tracking and performance fee collection
 *      Note: KandleYieldVault also implements IERC4626 via ERC4626 inheritance
 */
interface IKandleYieldVault is IERC4626 {
    // ============================================
    // Structs
    // ============================================

    /**
     * @notice Parameters for deploying a KandleYieldVault
     * @param asset The underlying ERC20 asset
     * @param name Vault share token name
     * @param symbol Vault share token symbol
     * @param adapter Investment adapter address
     * @param manager Manager role address
     * @param developer Developer role address
     * @param feeRecipient Address receiving performance fees
     * @param performanceFee Performance fee in basis points (e.g., 2000 = 20%)
     * @param authorizedSigner Authorized signer for NAV signatures
     */
    struct YieldVaultParams {
        IERC20 asset;
        string name;
        string symbol;
        address adapter;
        address manager;
        address developer;
        address feeRecipient;
        uint256 performanceFee;
        address authorizedSigner;
    }

    /**
     * @notice User's cost basis tracking
     * @param totalCostBasis Total assets paid by user (weighted average cost)
     * @param lockUntil Timestamp until which the user's deposit is locked
     */
    struct UserCostBasis {
        uint256 totalCostBasis;
        uint32 lockUntil;
    }

    /**
     * @notice Unified order structure for deposits and withdrawals
     * @param orderType 0 = deposit, 1 = mint, 2 = withdraw, 3 = redeem
     * @param executed Whether the order has been executed
     * @param deadline Order deadline timestamp
     * @param requestTime Request timestamp (used for withdrawals to enforce T+7 delay)
     * @param caller Address that created the order
     * @param owner Address that owns the shares (for withdrawals)
     * @param receiver Address receiving shares (deposits) or assets (withdrawals)
     * @param assetAmount Amount of assets
     * @param shareAmount Amount of shares
     */
    struct Order {
        uint8 orderType; // 0 = deposit, 1 = mint, 2 = withdraw, 3 = redeem
        bool executed;
        uint32 deadline;
        uint32 requestTime;
        address caller;
        address owner;
        address receiver;
        uint256 assetAmount;
        uint256 shareAmount;
    }

    // ============================================
    // Events
    // ============================================

    /**
     * @notice Emitted when adapter is updated
     * @param oldAdapter Previous adapter address
     * @param newAdapter New adapter address
     */
    event AdapterUpdated(address oldAdapter, address newAdapter);

    /**
     * @notice Emitted when assets are recovered
     * @param asset Token address (address(0) for native currency)
     * @param amount Amount recovered
     * @param to Recipient address
     */
    event RecoveryAsset(address asset, uint256 amount, address to);

    /**
     * @notice Emitted when performance fee rate is updated
     * @param oldFee Previous fee rate in basis points
     * @param newFee New fee rate in basis points
     */
    event PerformanceFeeUpdated(uint256 oldFee, uint256 newFee);

    /**
     * @notice Emitted when fee recipient is updated
     * @param oldRecipient Previous fee recipient address
     * @param newRecipient New fee recipient address
     */
    event FeeRecipientUpdated(address oldRecipient, address newRecipient);

    /**
     * @notice Emitted when authorized signer is updated
     * @param oldSigner Previous authorized signer address
     * @param newSigner New authorized signer address
     */
    event AuthorizedSignerUpdated(address oldSigner, address newSigner);

    /**
     * @notice Emitted when performance fees are collected on withdrawal
     * @param user User address
     * @param feeAmount Fee amount in assets
     * @param userProfit User's profit amount
     * @param sharesRedeemed Number of shares redeemed
     */
    event PerformanceFeeCollected(address user, uint256 feeAmount, uint256 userProfit, uint256 sharesRedeemed);

    /**
     * @notice Emitted when user cost basis is updated
     * @param user User address
     * @param totalCostBasis User's total cost basis
     * @param lockUntil Lock expiration timestamp
     */
    event UserCostBasisUpdated(address user, uint256 totalCostBasis, uint32 lockUntil);

    /**
     * @notice Emitted when a deposit order is created
     * @param orderId Order ID
     * @param caller Address creating the order
     * @param receiver Address receiving the shares
     * @param assetAmount Amount of assets (0 if specifying shares)
     * @param shareAmount Amount of shares (0 if specifying assets)
     */
    event DepositOrderCreated(uint256 orderId, address caller, address receiver, uint256 assetAmount, uint256 shareAmount);

    /**
     * @notice Emitted when a deposit order is executed
     * @param orderId Order ID
     * @param caller Address that created the order
     * @param receiver Address that received the shares
     * @param assets Amount of assets deposited
     * @param shares Amount of shares minted
     * @param totalAssets Total assets after execution
     */
    event DepositOrderExecuted(
        uint256 orderId,
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares,
        uint256 totalAssets
    );

    /**
     * @notice Emitted when a withdrawal order is created
     * @param orderId Order ID
     * @param caller Address creating the order
     * @param receiver Address receiving the assets
     * @param owner Address owning the shares
     * @param assetAmount Amount of assets (0 if specifying shares)
     * @param shareAmount Amount of shares (0 if specifying assets)
     */
    event WithdrawalOrderCreated(
        uint256 orderId,
        address caller,
        address receiver,
        address owner,
        uint256 assetAmount,
        uint256 shareAmount
    );

    /**
     * @notice Emitted when a withdrawal order is executed
     * @param orderId Order ID
     * @param user User address
     * @param shares Amount of shares redeemed
     * @param assets Amount of assets withdrawn
     * @param totalAssets Total assets after execution
     * @param fee Performance fee charged
     */
    event WithdrawalOrderExecuted(
        uint256 orderId,
        address user,
        uint256 shares,
        uint256 assets,
        uint256 totalAssets,
        uint256 fee
    );

    /**
     * @notice Emitted when totalAssets is updated via signature
     * @param oldTotalAssets Previous total assets
     * @param newTotalAssets New total assets
     * @param timestamp Update timestamp
     * @param signer Signer address
     */
    event TotalAssetsUpdated(uint256 oldTotalAssets, uint256 newTotalAssets, uint32 timestamp, address signer);

    /**
     * @notice Emitted when an order is cancelled
     * @param orderId Order ID
     * @param caller Address that cancelled the order
     */
    event OrderCancelled(uint256 indexed orderId, address indexed caller);

    /**
     * @notice Emitted when a VIP user is added
     * @param user User address
     */
    event VIPAdded(address indexed user);

    /**
     * @notice Emitted when a VIP user is removed
     * @param user User address
     */
    event VIPRemoved(address indexed user);

    /**
     * @notice Emitted when deposit lock period is updated
     * @param oldPeriod Previous lock period in seconds
     * @param newPeriod New lock period in seconds
     */
    event DepositLockPeriodUpdated(uint256 oldPeriod, uint256 newPeriod);

    /**
     * @notice Emitted when withdrawal delay period is updated
     * @param oldPeriod Previous delay period in seconds
     * @param newPeriod New delay period in seconds
     */
    event WithdrawalDelayPeriodUpdated(uint256 oldPeriod, uint256 newPeriod);

    // ============================================
    // Errors
    // ============================================
    error InvalidOrderType(uint8);
    /**
     * @notice Error when invalid address is provided
     */
    error InvalidAddress();

    /**
     * @notice Error when invalid adapter is provided
     */
    error InvalidAdapter();

    /**
     * @notice Error when performance fee exceeds maximum allowed
     * @param provided Provided fee rate
     * @param maximum Maximum allowed fee rate
     */
    error PerformanceFeeTooHigh(uint256 provided, uint256 maximum);

    /**
     * @notice Error when deposit is locked
     * @param user User address
     * @param lockUntil Lock expiration timestamp
     */
    error DepositLocked(address user, uint256 lockUntil);

    /**
     * @notice Error when order does not exist
     * @param orderId Order ID
     */
    error OrderNotFound(uint256 orderId);

    /**
     * @notice Error when order is already executed
     * @param orderId Order ID
     */
    error OrderAlreadyExecuted(uint256 orderId);

    /**
     * @notice Error when order is expired
     * @param orderId Order ID
     * @param deadline Order deadline
     */
    error OrderExpired(uint256 orderId, uint256 deadline);

    /**
     * @notice Error when slippage is too high
     * @param expected Expected amount
     * @param actual Actual amount
     */
    error SlippageTooHigh(uint256 expected, uint256 actual);

    /**
     * @notice Error when withdrawal is not ready (T+7 not met)
     * @param orderId Order ID
     * @param requestTime Request timestamp
     * @param earliestTime Earliest withdrawal time
     */
    error WithdrawalNotReady(uint256 orderId, uint256 requestTime, uint256 earliestTime);

    /**
     * @notice Error when signature is invalid
     */
    error InvalidSignature();

    /**
     * @notice Error when signer is invalid
     * @param signer Provided signer address
     */
    error InvalidSigner(address signer);

    /**
     * @notice Error when nonce is invalid (replay protection)
     * @param provided Provided nonce
     * @param expected Expected nonce
     */
    error InvalidNonce(uint256 provided, uint256 expected);

    /**
     * @notice Error when user has insufficient balance for deposit
     * @param user User address
     * @param required Required amount
     * @param available Available amount
     */
    error InsufficientBalance(address user, uint256 required, uint256 available);

    /**
     * @notice Error when user has insufficient allowance for deposit
     * @param user User address
     * @param required Required amount
     * @param available Available amount
     */
    error InsufficientAllowance(address user, uint256 required, uint256 available);

    /**
     * @notice Error when user has insufficient shares for withdrawal
     * @param user User address
     * @param required Required shares
     * @param available Available shares
     */
    error InsufficientShares(address user, uint256 required, uint256 available);

    /**
     * @notice Error when non-VIP user attempts to deposit
     */
    error NotVIP();

    /**
     * @notice Error when trying to add an already existing VIP
     * @param user User address
     */
    error AlreadyVIP(address user);

    /**
     * @notice Error when trying to remove a non-VIP user
     * @param user User address
     */
    error NotExistingVIP(address user);

    /**
     * @notice Error when period is too long
     * @param provided Provided period
     * @param maximum Maximum allowed period
     */
    error PeriodTooLong(uint256 provided, uint256 maximum);

    // ============================================
    // ERC4626 Function Overrides
    // ============================================

    /**
     * @notice Get total assets under management
     * @return Total assets denominated in the underlying asset
     */
    function totalAssets() external view returns (uint256);

    /**
     * @notice Deposit assets and receive vault shares
     * @param assets Amount of assets to deposit
     * @param receiver Address to receive vault shares
     * @return shares Amount of shares minted
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @notice Mint vault shares by depositing assets
     * @param shares Amount of shares to mint
     * @param receiver Address to receive vault shares
     * @return assets Amount of assets deposited
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @notice Withdraw assets by burning vault shares
     * @param assets Amount of assets to withdraw
     * @param receiver Address to receive assets
     * @param owner Address of share owner
     * @return shares Amount of shares burned
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @notice Redeem vault shares for assets
     * @param shares Amount of shares to redeem
     * @param receiver Address to receive assets
     * @param owner Address of share owner
     * @return assets Amount of assets withdrawn
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);

    // ============================================
    // State Variables (View Functions)
    // ============================================

    /**
     * @notice Get the investment adapter address
     * @return Adapter contract address
     */
    function adapter() external view returns (IAdapter);

    /**
     * @notice Get the performance fee rate
     * @return Fee rate in basis points (e.g., 2000 = 20%)
     */
    function performanceFee() external view returns (uint256);

    /**
     * @notice Get the fee recipient address
     * @return Address receiving performance fees
     */
    function feeRecipient() external view returns (address);

    /**
     * @notice Get user's cost basis data
     * @param user User address
     * @return totalCostBasis User's total cost basis in assets
     * @return lockUntil Lock expiration timestamp
     */
    function userCostBasis(address user) external view returns (uint256 totalCostBasis, uint32 lockUntil);

    /**
     * @notice Get maximum performance fee rate
     * @return Maximum fee in basis points
     */
    function MAX_PERFORMANCE_FEE() external view returns (uint256);

    /**
     * @notice Get basis points denominator
     * @return Denominator for basis points calculations
     */
    function BPS_DENOMINATOR() external view returns (uint256);

    // ============================================
    // Performance Fee Functions
    // ============================================

    /**
     * @notice Calculate user's current profit or loss
     * @param user User address
     * @return profit Amount of profit or loss in assets
     * @return isProfit True if user has profit, false if loss
     */
    function getUserProfit(address user) external view returns (uint256 profit, bool isProfit);

    /**
     * @notice Calculate performance fee for a user's withdrawal
     * @param user User address
     * @param sharesToRedeem Amount of shares being redeemed
     * @return feeInAssets Performance fee in assets
     * @return userProfit User's profit on this withdrawal
     */
    function calculatePerformanceFee(
        address user,
        uint256 sharesToRedeem
    ) external view returns (uint256 feeInAssets, uint256 userProfit);

    /**
     * @notice Update performance fee rate
     * @param newFee New performance fee in basis points
     * @dev Can only be called by admin
     */
    function setPerformanceFee(uint256 newFee) external;

    /**
     * @notice Update fee recipient address
     * @param newRecipient New fee recipient address
     * @dev Can only be called by admin
     */
    function setFeeRecipient(address newRecipient) external;

    // ============================================
    // Adapter Management
    // ============================================

    /**
     * @notice Update the investment adapter
     * @param newAdapter Address of the new adapter
     * @dev Can only be called by admin
     */
    function updateAdapter(address newAdapter) external;

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

    // ============================================
    // Order Management Functions
    // ============================================

    /**
     * @notice Get next order ID
     * @return Next order ID
     */
    function nextOrderId() external view returns (uint256);

    /**
     * @notice Get deposit lock period in seconds
     * @return Lock period
     */
    function depositLockPeriod() external view returns (uint256);

    /**
     * @notice Get withdrawal delay period in seconds (T+7)
     * @return Delay period
     */
    function withdrawalDelayPeriod() external view returns (uint256);

    /**
     * @notice Set deposit lock period
     * @param newPeriod New lock period in seconds
     * @dev Can only be called by admin
     */
    function setDepositLockPeriod(uint256 newPeriod) external;

    /**
     * @notice Set withdrawal delay period
     * @param newPeriod New delay period in seconds
     * @dev Can only be called by admin
     */
    function setWithdrawalDelayPeriod(uint256 newPeriod) external;

    /**
     * @notice Get authorized signer address
     * @return Signer address
     */
    function authorizedSigner() external view returns (address);

    /**
     * @notice Set authorized signer for NAV signatures
     * @param newSigner New signer address
     * @dev Can only be called by admin
     */
    function setAuthorizedSigner(address newSigner) external;

    /**
     * @notice Update totalAssets with signed value
     * @param newTotalAssets New total assets value
     * @param nonce Nonce for replay protection (typically timestamp)
     * @param signature Signer's signature
     * @dev Can only be called by developer role
     */
    function updateTotalAssets(uint256 newTotalAssets, uint256 nonce, bytes calldata signature) external;

    /**
     * @notice Get cached total assets value
     * @return Cached total assets
     */
    function cachedTotalAssets() external view returns (uint256);

    /**
     * @notice Get current NAV nonce for signature replay protection
     * @return Current nonce value
     */
    function navNonce() external view returns (uint256);

    /**
     * @notice Cancel a pending order
     * @param orderId Order ID to cancel
     * @dev Can only be called by the order creator
     *      Order must not be executed yet
     */
    function cancelOrder(uint256 orderId) external;

    // ============================================
    // VIP Management Functions
    // ============================================

    /**
     * @notice Add multiple users to VIP list
     * @param users Array of user addresses to add as VIP
     * @dev Can only be called by vault manager
     */
    function addVIPs(address[] calldata users) external;

    /**
     * @notice Remove multiple users from VIP list
     * @param users Array of user addresses to remove from VIP
     * @dev Can only be called by vault manager
     */
    function removeVIPs(address[] calldata users) external;

    /**
     * @notice Check if a user is VIP
     * @param user User address to check
     * @return True if user is VIP, false otherwise
     */
    function isVIP(address user) external view returns (bool);

    // ============================================
    // Pause Management Functions
    // ============================================

    /**
     * @notice Pause all vault operations (deposits, withdrawals, and order executions)
     * @dev Can only be called by admin as emergency brake
     *      When paused, all deposit, mint, withdraw, redeem, and executeOrder are blocked
     */
    function pause() external;

    /**
     * @notice Unpause all vault operations
     * @dev Can only be called by admin
     *      Resumes normal vault operations
     */
    function unpause() external;
}
