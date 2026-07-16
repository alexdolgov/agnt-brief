// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../pricing/PriceRouter.sol";
import "./PayoutTokenRegistry.sol";
import "./RedemptionVault.sol";
import "../token/IShareToken.sol";
import "../compliance/IKYCRegistry.sol";
import "../deposit/FeeVault.sol";
import "../pricing/IRedemptionReserves.sol";

/**
 * @title InstantRedemption
 * @notice Processes redemptions immediately (when no window is open) with daily/global/user limits.
 * @dev Design notes for auditors (Certora):
 * - **Units**: Share price and payout-token price fetched from {PriceRouter} are WAD (1e18).
 *   Payout amounts are converted to token units using the token's decimals.
 * - **Limits**: Limits are derived from `highWatermark` (USD WAD) and expressed as bps; counters
 *   are tracked in *gross payout token units* for the active payout token and reset daily or
 *   when the active payout token changes intra-day (see `dayPayoutToken`).
 * - **Safety**: Reentrancy guarded; authorization via {AccessManaged}. KYC enforced.
 * - **Accounting**: High-watermark is updated on daily reset when capacity increases.
 * - **Events**: Emits detailed events for processing, resets and refills.
 * - **Fees**: If feeBps > 0, fees are paid into a configured {FeeVault} instance via the {recorder} API.
 */
contract InstantRedemption is AccessManaged, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;
    using Math for uint256;

    // ============ State ============
    IShareToken public immutable shareToken;
    RedemptionVault public immutable vault;
    PayoutTokenRegistry public immutable payoutTokenRegistry;
    PriceRouter public immutable redemptionPriceRouter;
    IKYCRegistry public immutable kyc;
    address public immutable custodialWallet;

    uint256 public highWatermark; // In WAD format for comparisons
    uint256 public dailyLimitBps = 2000; // 20% default
    uint256 public userLimitBps = 1000; // 10% default
    uint256 public minRedemption = 10e18; // $10 minimum in WAD
    uint256 public maxRedemption = 1_000_000e18; // $1M maximum in WAD
    uint16 public feeBps; // Fee in basis points
    FeeVault public feeVault; // Set per-product

    uint256 public lastDailyReset; // Timestamp of last daily reset

    // Global daily tracking
    uint256 public currentDay;
    uint256 public dailyGrossSpending;

    /// @notice The payout token in effect for the current day's counters
    address public dayPayoutToken;

    /// @notice The redemption reserve calculator
    IRedemptionReserves public redemptionReserves;

    // User-specific daily tracking (properly resets per user)
    struct UserDaily {
        uint256 lastResetDay;
        uint256 spending;
    }

    mapping(address => UserDaily) public userDailyTracking;

    // ============ Constants ============
    uint256 private constant BPS_DENOMINATOR = 10000;
    uint256 private constant MAX_FEE_BPS = 1000; // 10%
    uint256 private constant WAD = 1e18;
    uint256 private constant DAY_DURATION = 1 days;
    uint256 private constant VAULT_LOW_BALANCE_BPS = 2500; // 25% threshold

    // ============ Events ============
    event InstantRedemptionProcessed(
        address indexed user,
        uint256 sharesBurned,
        uint256 grossPayout,
        uint256 feeAmount,
        uint256 netPayout
    );
    event HighWatermarkUpdated(uint256 oldValue, uint256 newValue);
    event LimitsUpdated(uint256 dailyBps, uint256 userBps);
    event RedemptionRangeUpdated(uint256 min, uint256 max);
    event FeeUpdated(uint16 feeBps);
    event DailyReset(uint256 totalCapacity, uint256 newHighWatermark);
    event RefillNeeded(uint256 currentBalance, uint256 threshold, uint256 dailyLimit);

    /// @notice Emitted when the active payout token changes mid-day and we hard-reset daily counters
    event DailyResetByTokenSwitch(
        address indexed previousToken, address indexed newToken, uint256 indexed day
    );
    event FeeVaultSet(address indexed feeVault);

    // ============ Errors ============
    error InvalidAmount();
    error BelowMinimum();
    error ExceedsMaximum();
    error GlobalLimitExceeded();
    error UserLimitExceeded();
    error InsufficientOutput();
    error InvalidConfiguration();
    error ZeroAddress();
    error KYCRequired();
    error InvalidDecimals();

    // ============ Constructor ============

    constructor(
        address _accessManager,
        address _shareToken,
        address _vault,
        address _tokenRegistry,
        address _priceRouter,
        address _kyc,
        address _custodialWallet,
        address _redemptionReserves
    ) AccessManaged(_accessManager) {
        if (_shareToken == address(0)) revert ZeroAddress();
        if (_vault == address(0)) revert ZeroAddress();
        if (_tokenRegistry == address(0)) revert ZeroAddress();
        if (_priceRouter == address(0)) revert ZeroAddress();
        if (_kyc == address(0)) revert ZeroAddress();
        if (_custodialWallet == address(0)) revert ZeroAddress();
        if (_redemptionReserves == address(0)) revert ZeroAddress();
        if (IERC20Metadata(_shareToken).decimals() != 18) revert InvalidDecimals();

        shareToken = IShareToken(_shareToken);
        vault = RedemptionVault(_vault);
        payoutTokenRegistry = PayoutTokenRegistry(_tokenRegistry);
        redemptionPriceRouter = PriceRouter(_priceRouter);
        kyc = IKYCRegistry(_kyc);
        custodialWallet = _custodialWallet;
        lastDailyReset = block.timestamp;
        redemptionReserves = IRedemptionReserves(_redemptionReserves);

        // Pin the current day and the payout token used for this day (if configured)
        currentDay = _getCurrentDay();
        dayPayoutToken = payoutTokenRegistry.activePayoutToken();

        // Roles are now managed by AccessManager

        // Initialize highWatermark from current capacity to prevent DoS
        // This ensures the system is immediately usable after deployment
        uint256 initialCapacity = _calculateCapacityWad();
        if (initialCapacity > 0) {
            highWatermark = initialCapacity;
            emit HighWatermarkUpdated(0, initialCapacity);
        }
    }

    // ============ Redemption Functions ============

    /**
     * @notice Process instant redemption for a user (gateway call)
     * @param user The actual user redeeming
     * @param shares Amount of shares to redeem
     * @param minPayout Minimum payout acceptable
     */
    function redeemFor(address user, uint256 shares, uint256 minPayout) external restricted {
        _processRedemption(user, shares, minPayout);
    }

    /**
     * @notice Internal redemption logic
     * @param user The user performing redemption
     * @param shares Amount of shares to redeem
     * @param minPayout Minimum payout acceptable
     */
    function _processRedemption(address user, uint256 shares, uint256 minPayout)
        internal
        nonReentrant
        whenNotPaused
    {
        if (shares == 0) revert InvalidAmount();
        if (!kyc.isKYCApproved(user)) revert KYCRequired();

        // Refresh daily state unconditionally: handles new day, high watermark updates,
        // and mid-day payout token switches atomically.
        _refreshDailyState();

        // Get payout token (post ensure)
        address payoutToken = payoutTokenRegistry.activePayoutToken();

        // Calculate USD value and payout amount
        (uint256 usdValue, uint256 grossPayout) = _calculateRedemption(shares, payoutToken);

        // Check redemption limits in USD
        if (usdValue < minRedemption) revert BelowMinimum();
        if (usdValue > maxRedemption) revert ExceedsMaximum();

        if (dailyGrossSpending + grossPayout > _getDailyLimit()) revert GlobalLimitExceeded();

        // Update user-specific daily tracking with proper reset
        uint256 userSpending = _getUserDailySpending(user);
        if (userSpending + grossPayout > _getUserLimit()) revert UserLimitExceeded();

        // Update spending
        dailyGrossSpending += grossPayout;

        // Update user tracking with proper day reset
        UserDaily storage userDaily = userDailyTracking[user];
        uint256 today = _getCurrentDay();
        if (today > userDaily.lastResetDay) {
            userDaily.lastResetDay = today;
            userDaily.spending = grossPayout;
        } else {
            userDaily.spending = userSpending + grossPayout;
        }

        // Calculate fee and net payout
        uint256 fee = (grossPayout * feeBps) / BPS_DENOMINATOR;
        uint256 netPayout = grossPayout - fee;

        // Check slippage protection
        if (netPayout < minPayout) revert InsufficientOutput();

        // Transfer shares from user directly (delegation pattern) and burn
        IERC20(address(shareToken)).safeTransferFrom(user, address(this), shares);
        shareToken.burn(address(this), shares);

        // Transfer payout
        vault.withdraw(payoutToken, user, netPayout);

        // Transfer fee if applicable
        if (fee > 0) {
            vault.withdraw(payoutToken, address(feeVault), fee);
            feeVault.recordFee(payoutToken, fee);
        }

        // Check if vault needs refill after withdrawal
        _checkVaultBalance(payoutToken);

        emit InstantRedemptionProcessed(user, shares, grossPayout, fee, netPayout);
    }

    // ============ Admin Functions ============

    /**
     * @notice Update high watermark to match current reserves
     * @dev Operator can set to any value including zero. System self-heals if zero.
     */
    function updateHighWatermark() external restricted {
        uint256 capacityWad = _calculateCapacityWad();
        uint256 oldWatermark = highWatermark;
        highWatermark = capacityWad;
        emit HighWatermarkUpdated(oldWatermark, capacityWad);
    }

    /**
     * @notice Update limit percentages
     */
    function updateLimitPercentages(uint256 _dailyBps, uint256 _userBps) external restricted {
        if (_dailyBps == 0 || _dailyBps > BPS_DENOMINATOR) revert InvalidConfiguration();
        if (_userBps == 0 || _userBps > _dailyBps) revert InvalidConfiguration();

        dailyLimitBps = _dailyBps;
        userLimitBps = _userBps;

        emit LimitsUpdated(_dailyBps, _userBps);
    }

    /**
     * @notice Update redemption range
     */
    function updateRedemptionRange(uint256 _min, uint256 _max) external restricted {
        if (_min == 0 || _max <= _min) revert InvalidConfiguration();

        minRedemption = _min;
        maxRedemption = _max;

        emit RedemptionRangeUpdated(_min, _max);
    }

    /**
     * @notice Update fee bps (0 to 1000 / 10%)
     */
    function updateFee(uint16 _feeBps) external restricted {
        if (_feeBps > MAX_FEE_BPS) revert InvalidConfiguration();
        if (_feeBps > 0 && address(feeVault) == address(0)) revert ZeroAddress();
        feeBps = _feeBps;
        emit FeeUpdated(_feeBps);
    }

    /**
     * @notice Pause redemptions
     */
    function pause() external restricted {
        _pause();
    }

    /**
     * @notice Unpause redemptions
     */
    function unpause() external restricted {
        _unpause();
    }

    // ============ Public View Functions ============

    /**
     * @notice Get total capacity (vault + custodial wallet)
     * @return Total payout tokens available in the system
     */
    function getTotalCapacity() public view returns (uint256) {
        address payoutToken = payoutTokenRegistry.activePayoutToken();
        uint256 vaultBalance = IERC20(payoutToken).balanceOf(address(vault));
        uint256 custodialBalance = IERC20(payoutToken).balanceOf(custodialWallet);
        return vaultBalance + custodialBalance;
    }

    // ============ View Functions ============

    /**
     * @notice Get current global daily redemption info
     */
    function getDailyRedemptions() external view returns (uint256 day, uint256 spending) {
        uint256 today = _getCurrentDay();
        address currentToken = payoutTokenRegistry.activePayoutToken();
        if (today > currentDay || (currentToken != address(0) && currentToken != dayPayoutToken)) {
            return (today, 0);
        }
        return (currentDay, dailyGrossSpending);
    }

    /**
     * @notice Get user's current daily spending
     * @param user User address
     * @return Current day's spending for the user
     */
    function getUserDailySpending(address user) external view returns (uint256) {
        return _getUserDailySpending(user);
    }

    /**
     * @notice Preview redemption without executing
     * @param user User address
     * @param shares Amount of shares
     * @return grossPayout Gross payout amount
     * @return fee Fee amount
     * @return netPayout Net payout after fee
     * @return available Whether redemption would succeed
     */
    function previewRedemption(address user, uint256 shares)
        external
        view
        returns (uint256 grossPayout, uint256 fee, uint256 netPayout, bool available)
    {
        // Check basic requirements
        if (shares == 0 || !kyc.isKYCApproved(user)) {
            return (0, 0, 0, false);
        }

        // Get payout token and calculate amounts
        address payoutToken = payoutTokenRegistry.activePayoutToken();
        (uint256 usdValue, uint256 gross) = _calculateRedemption(shares, payoutToken);

        // Check limits
        if (usdValue < minRedemption || usdValue > maxRedemption) {
            return (0, 0, 0, false);
        }

        // Check daily limits (simulate reset if needed)
        bool isNewDayOrToken = currentDay < _getCurrentDay()
            || (
                payoutTokenRegistry.activePayoutToken() != address(0)
                    && payoutTokenRegistry.activePayoutToken() != dayPayoutToken
            );

        uint256 todayGlobalSpending = isNewDayOrToken ? 0 : dailyGrossSpending;
        if (todayGlobalSpending + gross > _getDailyLimit()) {
            return (0, 0, 0, false);
        }

        uint256 userSpending = _getUserDailySpending(user);
        if (userSpending + gross > _getUserLimit()) {
            return (0, 0, 0, false);
        }

        // Calculate fee and net
        uint256 feeAmount = (gross * feeBps) / BPS_DENOMINATOR;
        uint256 net = gross - feeAmount;

        return (gross, feeAmount, net, true);
    }

    /**
     * @notice Get the vault low balance threshold (25% of daily limit)
     * @return Threshold amount in payout token decimals
     */
    function getVaultLowBalanceThreshold() public view returns (uint256) {
        uint256 dailyLimit = _getDailyLimit();
        return (dailyLimit * VAULT_LOW_BALANCE_BPS) / BPS_DENOMINATOR;
    }

    /**
     * @notice Get remaining daily limit
     * @return Amount remaining in payout token decimals
     */
    function getRemainingDailyLimit() public view returns (uint256) {
        bool isNewDayOrToken = currentDay < _getCurrentDay()
            || (
                payoutTokenRegistry.activePayoutToken() != address(0)
                    && payoutTokenRegistry.activePayoutToken() != dayPayoutToken
            );

        uint256 todaySpending = isNewDayOrToken ? 0 : dailyGrossSpending;
        uint256 dailyLimit = _getDailyLimit();
        return dailyLimit > todaySpending ? dailyLimit - todaySpending : 0;
    }

    /**
     * @notice Get remaining user limit for a specific user
     * @param user The user to check
     * @return Amount remaining in payout token decimals
     */
    function getRemainingUserLimit(address user) public view returns (uint256) {
        uint256 userSpending = _getUserDailySpending(user);
        uint256 userLimit = _getUserLimit();
        return userLimit > userSpending ? userLimit - userSpending : 0;
    }

    /**
     * @notice Get comprehensive redemption status for a user
     * @param user The user to check
     * @return kycApproved Whether user is KYC approved
     * @return remainingDaily Remaining daily limit in payout token decimals
     * @return remainingUser Remaining user limit in payout token decimals
     * @return minRedemptionAmount Minimum redemption amount in WAD
     * @return maxRedemptionAmount Maximum redemption amount in WAD
     * @return currentFee Current fee in basis points
     */
    function getRedemptionStatus(address user)
        public
        view
        returns (
            bool kycApproved,
            uint256 remainingDaily,
            uint256 remainingUser,
            uint256 minRedemptionAmount,
            uint256 maxRedemptionAmount,
            uint256 currentFee
        )
    {
        kycApproved = kyc.isKYCApproved(user);
        remainingDaily = getRemainingDailyLimit();
        remainingUser = getRemainingUserLimit(user);
        minRedemptionAmount = minRedemption;
        maxRedemptionAmount = maxRedemption;
        currentFee = feeBps;
    }

    /**
     * @notice Set the FeeVault used to collect protocol fees on claims
     */
    function setFeeVault(address _feeVault) external restricted {
        if (_feeVault == address(0)) revert ZeroAddress();
        feeVault = FeeVault(_feeVault);
        emit FeeVaultSet(_feeVault);
    }

    // ============ Internal Functions ============

    /**
     * @notice Calculate redemption amounts
     */
    function _calculateRedemption(uint256 shares, address payoutToken)
        private
        view
        returns (uint256 usdValue, uint256 grossPayout)
    {
        // Get prices from router
        uint256 sharePrice = redemptionPriceRouter.getPrice(address(shareToken));
        uint256 payoutPrice = redemptionPriceRouter.getPrice(payoutToken);

        // Calculate USD value of shares
        usdValue = Math.mulDiv(shares, sharePrice, WAD);

        // Calculate payout amount in token decimals
        uint8 payoutDecimals = IERC20Metadata(payoutToken).decimals();
        if (payoutDecimals > 24) revert InvalidDecimals();
        grossPayout = Math.mulDiv(usdValue, 10 ** payoutDecimals, payoutPrice);
    }

    /**
     * @notice Refresh daily state atomically.
     * @dev Consolidates daily reset and token switch handling.
     *
     * Invariants after return:
     * - `currentDay` equals `_getCurrentDay()`.
     * - `dayPayoutToken` matches `payoutTokenRegistry.activePayoutToken()`.
     * - `dailyGrossSpending` is zeroed when the UTC day or payout token changed.
     *
     * Emits:
     * - `DailyReset` when a new day starts (also updates `highWatermark` if capacity grew).
     * - `DailyResetByTokenSwitch` when the token changes mid-day.
     *
     * Should be called unconditionally at the start of `_processRedemption()`.
     */
    function _refreshDailyState() private {
        uint256 today = _getCurrentDay();
        uint256 lastResetDay = lastDailyReset / DAY_DURATION;
        address currentToken = payoutTokenRegistry.activePayoutToken();

        // New day or initialization path
        if (today > lastResetDay || highWatermark == 0) {
            // Calculate current capacity in USD WAD
            uint256 totalCapacityWad = _calculateCapacityWad();

            // Update high watermark if capacity increased
            uint256 oldWatermark = highWatermark;
            if (totalCapacityWad > highWatermark) {
                highWatermark = totalCapacityWad;
                emit HighWatermarkUpdated(oldWatermark, totalCapacityWad);
            }

            // Reset day timestamp & pin today's payout token
            lastDailyReset = block.timestamp;
            currentDay = today;
            dayPayoutToken = currentToken;

            // Reset global daily counters for the new day
            dailyGrossSpending = 0;

            emit DailyReset(totalCapacityWad, highWatermark);
            return;
        }

        // Same day: if payout token switched, hard reset today's counters
        if (currentToken != address(0) && currentToken != dayPayoutToken) {
            address previousToken = dayPayoutToken;
            dayPayoutToken = currentToken;
            dailyGrossSpending = 0;
            emit DailyResetByTokenSwitch(previousToken, currentToken, today);
        }

        // Safety: if currentDay lags today (shouldn't happen), sync it
        if (today > currentDay) {
            currentDay = today;
        }
    }

    /**
     * @notice Get user's daily spending with proper reset
     * @param user User address
     * @return Current spending amount
     */
    function _getUserDailySpending(address user) private view returns (uint256) {
        UserDaily storage userDaily = userDailyTracking[user];
        uint256 today = _getCurrentDay();
        address currentToken = payoutTokenRegistry.activePayoutToken();

        // Treat token mismatch like a new day for all users
        if (
            today > userDaily.lastResetDay
                || (currentToken != address(0) && currentToken != dayPayoutToken)
        ) {
            return 0;
        }
        return userDaily.spending;
    }

    /**
     * @notice Get current day index
     */
    function _getCurrentDay() private view returns (uint256) {
        return block.timestamp / DAY_DURATION;
    }

    /**
     * @notice Calculate current total capacity in USD WAD
     * @dev Converts token balances to USD value using price from router
     */
    function _calculateCapacityWad() private view returns (uint256) {
        address payoutToken = payoutTokenRegistry.activePayoutToken();
        if (payoutToken == address(0)) return 0;

        return redemptionReserves.calculateTotalReserveValue(address(vault), custodialWallet);
    }

    /**
     * @notice Get daily limit in payout token decimals
     * @dev Converts USD limit to token amount using current price
     */
    function _getDailyLimit() private view returns (uint256) {
        address payoutToken = payoutTokenRegistry.activePayoutToken();
        uint8 decimals = IERC20Metadata(payoutToken).decimals();
        if (decimals > 24) revert InvalidDecimals();

        // Calculate limit in USD WAD
        uint256 limitInUsdWad = (highWatermark * dailyLimitBps) / BPS_DENOMINATOR;

        // Get payout token price in USD WAD
        uint256 payoutPriceWad = redemptionPriceRouter.getPrice(payoutToken);

        // Convert USD limit to token amount
        // tokens = (USD * 10^decimals) / price
        return Math.mulDiv(limitInUsdWad, 10 ** decimals, payoutPriceWad);
    }

    /**
     * @notice Get user limit in payout token decimals
     * @dev Converts USD limit to token amount using current price
     */
    function _getUserLimit() private view returns (uint256) {
        address payoutToken = payoutTokenRegistry.activePayoutToken();
        uint8 decimals = IERC20Metadata(payoutToken).decimals();
        if (decimals > 24) revert InvalidDecimals();

        // Calculate limit in USD WAD
        uint256 limitInUsdWad = (highWatermark * userLimitBps) / BPS_DENOMINATOR;

        // Get payout token price in USD WAD
        uint256 payoutPriceWad = redemptionPriceRouter.getPrice(payoutToken);

        // Convert USD limit to token amount
        // tokens = (USD * 10^decimals) / price
        return Math.mulDiv(limitInUsdWad, 10 ** decimals, payoutPriceWad);
    }

    /**
     * @notice Check vault balance and emit warning if below threshold
     */
    function _checkVaultBalance(address payoutToken) private {
        uint256 vaultBalance = IERC20(payoutToken).balanceOf(address(vault));
        uint256 threshold = getVaultLowBalanceThreshold();
        uint256 dailyLimit = _getDailyLimit();

        if (vaultBalance < threshold) {
            emit RefillNeeded(vaultBalance, threshold, dailyLimit);
        }
    }
}
