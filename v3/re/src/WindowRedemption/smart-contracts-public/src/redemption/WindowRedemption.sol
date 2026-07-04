// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../pricing/PriceRouter.sol";
import "./PayoutTokenRegistry.sol";
import "./RedemptionVault.sol";
import "../token/IShareToken.sol";
import "../compliance/IKYCRegistry.sol";
import "../deposit/FeeVault.sol";

/**
 * @title WindowRedemption
 * @notice Collects share redemption requests into windows and settles them pro‑rata once funded.
 * @dev Auditor notes:
 * - **Lifecycle**: `openWindow` → (users submit/adjust/cancel) → `closeWindow` or `closeWindowEarly`
 *   → `fundWindow` → `settleWindow` → users `claim` → `finalizeWindow`.
 * - **Pricing**: Uses snapshot share price at close and payout token price at settlement. These
 *   snapshots are persisted and never use live prices during claims.
 * - **Funds**: Funding is reserved in {RedemptionVault}; claims withdraw from the reservation.
 * - **Access**: Operators are managed via {AccessManaged}; user flows require KYC.
 * - **Reentrancy**: All state-changing paths are guarded.
 * - **Fees**: If feeBps > 0, fees are paid into a configured {FeeVault} instance via the {recorder} API.
 */
contract WindowRedemption is AccessManaged, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    // ============ Types ============
    struct Window {
        uint256 openTime;
        uint256 submissionDeadline; // When submissions stop
        uint256 closeTime; // When operator locks prices
        uint256 totalSharesRequested;
        uint256 totalValueRequested; // USD value in WAD
        uint256 fundingAmount; // Payout token amount
        uint256 fulfillmentRate; // Percentage in WAD (1e18 = 100%)
        uint256 totalClaimed; // Track claimed amount
        bool isSettled;
        bool isFinalized; // Track if window has been finalized
        address payoutToken; // Token used for this window
        uint256 sharePriceAtClose; // Share price locked at close time
        uint256 payoutPriceAtSettlement; // Payout price locked at settlement
    }

    struct UserRequest {
        uint256 shares;
        uint256 claimed;
    }

    // ============ Constants ============
    uint256 public constant CLAIM_PERIOD = 30 days;
    uint256 public constant MINIMUM_WINDOW_DURATION = 7 days;
    uint256 public constant WAD = 1e18;
    uint256 public constant MAX_FEE_BPS = 1000; // 10% max fee
    uint256 private constant PRICE_NOT_SET = 0; // Indicates price hasn't been stored yet

    // ============ State ============
    IShareToken public immutable shareToken;
    RedemptionVault public immutable vault;
    PayoutTokenRegistry public immutable payoutRegistry;
    PriceRouter public immutable redemptionPriceRouter;
    IKYCRegistry public immutable kyc;

    /// @notice Index of the next window to be opened (current window being processed)
    /// @dev Only advances after finalization to ensure sequential processing
    uint256 public currentWindowId;
    bool public isWindowOpen;

    // Configuration
    uint256 public minimumRequest;
    uint256 public feeBps;
    FeeVault public feeVault;

    mapping(uint256 => Window) public windows;
    mapping(uint256 => mapping(address => UserRequest)) public userRequests;

    // ============ Events ============
    event WindowOpened(
        uint256 indexed windowId, uint256 openTime, uint256 submissionDeadline, address payoutToken
    );
    event WindowClosed(uint256 indexed windowId, uint256 closeTime, uint256 totalRequested);
    event WindowFunded(uint256 indexed windowId, uint256 amount);
    event WindowSettled(uint256 indexed windowId, uint256 fulfillmentRate);
    event WindowFinalized(uint256 indexed windowId, uint256 releasedAmount);
    event RedemptionRequested(uint256 indexed windowId, address indexed user, uint256 shares);
    event RequestAdjusted(
        uint256 indexed windowId, address indexed user, uint256 oldShares, uint256 newShares
    );
    event RequestCancelled(uint256 indexed windowId, address indexed user, uint256 shares);
    event RequestRefunded(uint256 indexed windowId, address indexed user, uint256 shares);
    event RedemptionClaimed(uint256 indexed windowId, address indexed user, uint256 amount);
    event FeeUpdated(uint256 feeBps);
    event FeeVaultSet(address indexed feeVault);

    // ============ Errors ============
    error WindowAlreadyOpen();
    error WindowNotOpen();
    error WindowNotClosed();
    error WindowNotSettled();
    error WindowAlreadySettled();
    error WindowNotFinalized();
    error WindowAlreadyFunded();
    error InvalidAmount();
    error NoRequest();
    error AlreadyClaimed();
    error KYCRequired();
    error CannotRefund();
    error ClaimPeriodExpired();
    error InsufficientFunding();
    error ZeroAddress();
    error AlreadySubmitted();
    error BelowMinimum();
    error WindowDurationTooShort();
    error InvalidTimestamp();
    error SubmissionDeadlineReached();
    error SubmissionsStillOpen();
    error UseNormalClose();
    error InsufficientFundingForEarlyClose();
    error DeadlineAlreadyPassed();
    error AlreadyFinalized();
    error TooEarlyToFinalize();
    error InvalidDecimals();
    error PriceNotSnapshotted();
    // ============ Constructor ============

    constructor(
        address _accessManager,
        address _shareToken,
        address _vault,
        address _payoutRegistry,
        address _redemptionPriceRouter,
        address _kyc
    ) AccessManaged(_accessManager) {
        if (_shareToken == address(0)) revert ZeroAddress();
        if (_vault == address(0)) revert ZeroAddress();
        if (_payoutRegistry == address(0)) revert ZeroAddress();
        if (_redemptionPriceRouter == address(0)) revert ZeroAddress();
        if (_kyc == address(0)) revert ZeroAddress();
        if (IERC20Metadata(_shareToken).decimals() != 18) revert InvalidDecimals();

        shareToken = IShareToken(_shareToken);
        vault = RedemptionVault(_vault);
        payoutRegistry = PayoutTokenRegistry(_payoutRegistry);
        redemptionPriceRouter = PriceRouter(_redemptionPriceRouter);
        kyc = IKYCRegistry(_kyc);
    }

    // ============ Operator Functions ============

    /**
     * @notice Open a new redemption window with a submission deadline
     * @param submissionDeadline Timestamp when submissions will stop
     */
    function openWindow(uint256 submissionDeadline) external restricted {
        if (isWindowOpen) revert WindowAlreadyOpen();
        if (submissionDeadline <= block.timestamp) revert InvalidTimestamp();
        if (submissionDeadline < block.timestamp + MINIMUM_WINDOW_DURATION) {
            revert WindowDurationTooShort();
        }

        // Prevent opening new window until previous is finalized
        if (currentWindowId > 0 && !windows[currentWindowId - 1].isFinalized) {
            revert WindowNotFinalized();
        }

        Window storage window = windows[currentWindowId];

        // Get current payout token from registry
        address payoutToken = payoutRegistry.activePayoutToken();
        if (payoutToken == address(0)) revert ZeroAddress();

        window.openTime = block.timestamp;
        window.submissionDeadline = submissionDeadline;
        window.payoutToken = payoutToken;

        isWindowOpen = true;

        emit WindowOpened(currentWindowId, block.timestamp, submissionDeadline, payoutToken);
    }

    /**
     * @notice Close the current window and lock in share prices
     * @dev Can only close normally after submission deadline has passed
     */
    function closeWindow() external restricted {
        if (!isWindowOpen) revert WindowNotOpen();

        Window storage window = windows[currentWindowId];

        // Require submission deadline has passed for normal close
        if (block.timestamp < window.submissionDeadline) {
            revert SubmissionsStillOpen();
        }

        // Get share price and store it
        uint256 sharePrice = redemptionPriceRouter.getPrice(address(shareToken));

        // Update window state
        window.closeTime = block.timestamp;
        window.sharePriceAtClose = sharePrice;
        window.totalValueRequested = (window.totalSharesRequested * sharePrice) / WAD;
        isWindowOpen = false;

        // Emit event after state changes
        emit WindowClosed(currentWindowId, block.timestamp, window.totalSharesRequested);
    }

    /**
     * @notice Close window early by fully funding all existing requests
     * @dev Requires 100% fulfillment rate for early closure fairness
     *      Vault must be pre-funded with the payout tokens before calling this function
     * @param fundingAmount Amount of payout tokens to fund the window with
     */
    function closeWindowEarly(uint256 fundingAmount) external restricted {
        if (!isWindowOpen) revert WindowNotOpen();
        if (fundingAmount == 0) revert InvalidAmount();

        Window storage window = windows[currentWindowId];

        // Can only use early close before the submission deadline
        if (block.timestamp >= window.submissionDeadline) {
            revert DeadlineAlreadyPassed();
        }

        // Get all external data
        uint256 sharePrice = redemptionPriceRouter.getPrice(address(shareToken));
        uint256 payoutPrice = redemptionPriceRouter.getPrice(window.payoutToken);
        uint8 payoutDecimals = IERC20Metadata(window.payoutToken).decimals();
        if (payoutDecimals > 24) revert InvalidDecimals();

        // Calculate requirements
        uint256 totalValueRequested = (window.totalSharesRequested * sharePrice) / WAD;
        uint256 fundingValueWad = (fundingAmount * payoutPrice) / (10 ** payoutDecimals);

        // Verify funding covers 100% of requests
        if (fundingValueWad < totalValueRequested) {
            revert InsufficientFundingForEarlyClose(); // Must fund 100%
        }

        // Update all state atomically (Effects)
        window.sharePriceAtClose = sharePrice;
        window.payoutPriceAtSettlement = payoutPrice;
        window.totalValueRequested = totalValueRequested;
        window.submissionDeadline = block.timestamp;
        window.closeTime = block.timestamp;
        window.fundingAmount = fundingAmount;
        window.fulfillmentRate = WAD; // 100%
        window.isSettled = true;
        isWindowOpen = false;

        vault.reserveForWindow(window.payoutToken, fundingAmount);

        emit WindowClosed(currentWindowId, block.timestamp, window.totalSharesRequested);
        emit WindowSettled(currentWindowId, WAD);
    }

    /**
     * @notice Fund a closed window (single-shot only)
     * @dev Vault must be pre-funded with the payout tokens before calling this function
     *      Can only be called once per window to prevent accounting mismatches
     */
    function fundWindow(uint256 windowId, uint256 amount) external restricted {
        Window storage window = windows[windowId];
        if (window.closeTime == 0) revert WindowNotClosed();
        if (window.isSettled) revert WindowAlreadySettled();
        if (amount == 0) revert InvalidAmount();
        if (window.fundingAmount > 0) revert WindowAlreadyFunded(); // Prevent multiple funding

        // Reserve pre-existing funds in vault
        // Vault must already have these funds via deposit()
        vault.reserveForWindow(window.payoutToken, amount);

        window.fundingAmount = amount;
        emit WindowFunded(windowId, amount);
    }

    /**
     * @notice Settle a funded window and calculate fulfillment rate
     */
    function settleWindow(uint256 windowId) external restricted {
        Window storage window = windows[windowId];
        if (window.closeTime == 0) revert WindowNotClosed();
        if (window.isSettled) revert WindowAlreadySettled();

        // If there are no requests, fulfillment is 0 and we can settle without funding
        if (window.totalSharesRequested == 0) {
            window.fulfillmentRate = 0;
        } else {
            // If there are requests, funding must be set before settlement
            if (window.fundingAmount == 0) revert InsufficientFunding();
            // Get and store payout price at settlement time
            uint256 payoutPrice = redemptionPriceRouter.getPrice(window.payoutToken);
            window.payoutPriceAtSettlement = payoutPrice;

            uint8 payoutDecimals = IERC20Metadata(window.payoutToken).decimals();
            if (payoutDecimals > 24) revert InvalidDecimals();

            // Convert funding to USD value
            uint256 fundingValueWad = (window.fundingAmount * payoutPrice) / (10 ** payoutDecimals);

            // Calculate fulfillment rate (capped at 100%)
            window.fulfillmentRate = fundingValueWad > window.totalValueRequested
                ? WAD
                : (fundingValueWad * WAD) / window.totalValueRequested;
        }

        window.isSettled = true;

        emit WindowSettled(windowId, window.fulfillmentRate);
    }

    // ============ Gateway Functions ============
    // These functions accept explicit user parameter and require GATEWAY_ROLE

    /**
     * @notice Submit a redemption request for a user (gateway only)
     * @param user The actual user making the request
     * @param shares Amount of shares to redeem
     */
    function submitRequestFor(address user, uint256 shares)
        external
        restricted
        nonReentrant
        whenNotPaused
    {
        _submitRequest(user, shares);
    }

    /**
     * @notice Adjust a request for a user (gateway only)
     * @param user The actual user adjusting the request
     * @param newShares New amount of shares
     */
    function adjustRequestFor(address user, uint256 newShares)
        external
        restricted
        nonReentrant
        whenNotPaused
    {
        _adjustRequest(user, newShares);
    }

    /**
     * @notice Cancel a request for a user (gateway only)
     * @param user The actual user cancelling the request
     */
    function cancelRequestFor(address user) external restricted nonReentrant whenNotPaused {
        _cancelRequest(user);
    }

    /**
     * @notice Claim payout for a user (gateway only)
     * @param windowId Window ID to claim from
     * @param user The actual user claiming
     */
    function claimFor(uint256 windowId, address user)
        external
        restricted
        nonReentrant
        whenNotPaused
    {
        _claim(windowId, user);
    }

    // ============ Internal Functions ============

    /**
     * @notice Internal function to submit a redemption request
     * @param user The user making the request
     * @param shares Amount of shares to redeem
     */
    function _submitRequest(address user, uint256 shares) internal {
        if (!isWindowOpen) revert WindowNotOpen();
        if (shares == 0) revert InvalidAmount();
        if (minimumRequest > 0 && shares < minimumRequest) revert BelowMinimum();
        if (!kyc.isKYCApproved(user)) revert KYCRequired();

        Window storage window = windows[currentWindowId];
        UserRequest storage request = userRequests[currentWindowId][user];

        // Check against submission deadline
        if (block.timestamp >= window.submissionDeadline) {
            revert SubmissionDeadlineReached();
        }

        // Prevent duplicate requests
        if (request.shares > 0) revert AlreadySubmitted();

        // Transfer shares directly from user (user has approved gateway)
        // Gateway validates KYC and delegates the call
        IERC20(address(shareToken)).safeTransferFrom(user, address(this), shares);

        // Update request
        request.shares = shares; // Changed from += to = since we check for duplicates
        window.totalSharesRequested += shares;

        emit RedemptionRequested(currentWindowId, user, shares);
    }

    /**
     * @notice Internal function to adjust a request
     * @param user The user adjusting the request
     * @param newShares New amount of shares
     */
    function _adjustRequest(address user, uint256 newShares) internal {
        if (!isWindowOpen) revert WindowNotOpen();
        if (!kyc.isKYCApproved(user)) revert KYCRequired();

        Window storage window = windows[currentWindowId];

        // Check against submission deadline
        if (block.timestamp >= window.submissionDeadline) {
            revert SubmissionDeadlineReached();
        }

        UserRequest storage request = userRequests[currentWindowId][user];

        if (request.shares == 0) revert NoRequest();

        // Enforce minimum request on adjustments (consistent with submit)
        if (minimumRequest > 0 && newShares > 0 && newShares < minimumRequest) {
            revert BelowMinimum();
        }

        uint256 oldShares = request.shares;

        if (newShares > oldShares) {
            // Increasing request - pull additional tokens from user
            uint256 additional = newShares - oldShares;
            IERC20(address(shareToken)).safeTransferFrom(user, address(this), additional);
            window.totalSharesRequested += additional;
        } else if (newShares < oldShares) {
            // Decreasing request - return tokens to user
            uint256 reduction = oldShares - newShares;
            IERC20(address(shareToken)).safeTransfer(user, reduction);
            window.totalSharesRequested -= reduction;
        }

        request.shares = newShares;
        emit RequestAdjusted(currentWindowId, user, oldShares, newShares);
    }

    /**
     * @notice Internal function to cancel a request
     * @param user The user cancelling the request
     */
    function _cancelRequest(address user) internal {
        if (!isWindowOpen) revert WindowNotOpen();

        Window storage window = windows[currentWindowId];

        // Check against submission deadline
        if (block.timestamp >= window.submissionDeadline) {
            revert SubmissionDeadlineReached();
        }

        UserRequest storage request = userRequests[currentWindowId][user];

        uint256 shares = request.shares;
        if (shares == 0) revert NoRequest();

        // Clear request
        request.shares = 0;
        window.totalSharesRequested -= shares;

        // Return shares directly to user
        IERC20(address(shareToken)).safeTransfer(user, shares);

        emit RequestCancelled(currentWindowId, user, shares);
    }

    /**
     * @notice Internal function to claim payout
     * @param windowId Window ID to claim from
     * @param user The user claiming
     */
    function _claim(uint256 windowId, address user) internal {
        Window storage window = windows[windowId];
        if (!window.isSettled) revert WindowNotSettled();

        // Check claim period
        if (block.timestamp > window.closeTime + CLAIM_PERIOD) {
            revert ClaimPeriodExpired();
        }

        // KYC check at claim time
        if (!kyc.isKYCApproved(user)) revert KYCRequired();

        UserRequest storage request = userRequests[windowId][user];
        // Check claimed first to provide a precise error when user already claimed
        if (request.claimed > 0) revert AlreadyClaimed();
        if (request.shares == 0) revert NoRequest();

        // Save original shares amount before modifying
        uint256 originalShares = request.shares;

        // Calculate payout based on fulfillment rate
        uint256 sharesToBurn = (originalShares * window.fulfillmentRate) / WAD;

        // CRITICAL: Use ONLY stored snapshot prices, no fallback to live prices
        // These prices MUST be set during closeWindow and settleWindow
        if (window.sharePriceAtClose == PRICE_NOT_SET) revert PriceNotSnapshotted();
        if (window.payoutPriceAtSettlement == PRICE_NOT_SET) revert PriceNotSnapshotted();

        uint256 sharePrice = window.sharePriceAtClose;
        uint256 payoutPrice = window.payoutPriceAtSettlement;
        uint8 payoutDecimals = IERC20Metadata(window.payoutToken).decimals();
        if (payoutDecimals > 24) revert InvalidDecimals();

        // Calculate payout using snapshot prices
        uint256 valueWad = (sharesToBurn * sharePrice) / WAD;
        uint256 payoutAmount = (valueWad * (10 ** payoutDecimals)) / payoutPrice;

        // Mark as claimed (use 1 if payout is 0 to prevent re-claims)
        request.claimed = payoutAmount == 0 ? 1 : payoutAmount;

        // Clear shares to prevent double-claim or recalculation issues
        request.shares = 0;

        // Calculate unfulfilled shares BEFORE modifying request.shares
        uint256 unfulfilledShares =
            originalShares > sharesToBurn ? originalShares - sharesToBurn : 0;

        // Apply fee if configured
        uint256 fee;
        if (feeBps > 0 && payoutAmount > 0) {
            fee = (payoutAmount * feeBps) / 10000;
            payoutAmount -= fee;
        }

        // Update total claimed including fee
        window.totalClaimed += payoutAmount + fee;

        // Burn fulfilled shares
        if (sharesToBurn > 0) {
            shareToken.burn(address(this), sharesToBurn);
        }

        // Return unfulfilled shares
        if (unfulfilledShares > 0) {
            IERC20(address(shareToken)).safeTransfer(user, unfulfilledShares);
        }

        // Transfer payout from vault
        if (payoutAmount > 0) {
            vault.withdrawReserved(window.payoutToken, user, payoutAmount);
        }

        // Transfer fee
        if (fee > 0) {
            vault.withdrawReserved(window.payoutToken, address(feeVault), fee);
            feeVault.recordFee(window.payoutToken, fee);
        }

        emit RedemptionClaimed(windowId, user, payoutAmount);
    }

    /**
     * @notice Refund a redemption request (for lost KYC or unfunded windows)
     * @param windowId Window ID to refund from
     */
    function refundRequest(uint256 windowId) external nonReentrant {
        UserRequest storage request = userRequests[windowId][msg.sender];

        // Check if already claimed first (better error message)
        if (request.claimed > 0) revert AlreadyClaimed();

        // Then check if there's a request to refund
        if (request.shares == 0) revert NoRequest();

        Window storage window = windows[windowId];

        // Allow refund if:
        // 1. Window is settled but user lost KYC
        // 2. Claim period expired and user hasn't claimed
        bool canRefund = false;

        if (window.isSettled && !kyc.isKYCApproved(msg.sender)) {
            canRefund = true; // Lost KYC
        } else if (window.closeTime > 0 && block.timestamp > window.closeTime + CLAIM_PERIOD) {
            canRefund = true; // Claim period expired
        }

        if (!canRefund) revert CannotRefund();

        uint256 sharesToRefund = request.shares;

        // Clear the request
        request.shares = 0;
        request.claimed = type(uint256).max; // Mark as handled

        // Do NOT update window totals after settlement to preserve pro-rata calculations
        // Only update if window was never settled (edge case)
        if (!window.isSettled) {
            window.totalSharesRequested -= sharesToRefund;
        }

        // Return shares to user
        IERC20(address(shareToken)).safeTransfer(msg.sender, sharesToRefund);

        emit RequestRefunded(windowId, msg.sender, sharesToRefund);
    }

    /**
     * @notice Finalize a window after claim period to release unused funds
     * @dev Only callable after claim period expires to allow all users to claim
     * @dev Advances currentWindowId only after finalization to ensure sequential processing
     * @param windowId Window ID to finalize
     */
    function finalizeWindow(uint256 windowId) external restricted {
        Window storage window = windows[windowId];
        if (!window.isSettled) revert WindowNotSettled();
        if (window.isFinalized) revert AlreadyFinalized();
        if (block.timestamp <= window.closeTime + CLAIM_PERIOD) {
            revert TooEarlyToFinalize();
        }

        // Calculate unused funds safely (protect against rounding over-claim)
        // If totalClaimed slightly exceeds fundingAmount due to rounding,
        // treat unused funds as zero instead of underflowing.
        uint256 unusedFunds = window.fundingAmount > window.totalClaimed
            ? window.fundingAmount - window.totalClaimed
            : 0;

        // Release unused reservation from vault
        if (unusedFunds > 0) {
            vault.releaseFromWindow(window.payoutToken, unusedFunds);
        }

        window.isFinalized = true;

        // Now we can safely advance to next window ID if this was the current one
        if (windowId == currentWindowId) {
            currentWindowId = windowId + 1;
        }

        emit WindowFinalized(windowId, unusedFunds);
    }

    // ============ Admin Functions ============

    /**
     * @notice Pause the contract
     */
    function pause() external restricted {
        _pause();
    }

    /**
     * @notice Unpause the contract
     */
    function unpause() external restricted {
        _unpause();
    }

    // ============ View Functions ============

    /**
     * @notice Get window details
     */
    function getWindow(uint256 windowId) external view returns (Window memory) {
        return windows[windowId];
    }

    /**
     * @notice Get user request details
     */
    function getUserRequest(uint256 windowId, address user)
        external
        view
        returns (UserRequest memory)
    {
        return userRequests[windowId][user];
    }

    // ============ Configuration Functions ============

    /**
     * @notice Update fee bps (0 to 1000 / 10%)
     * @param _feeBps Fee in basis points (100 = 1%)
     */
    function updateFee(uint256 _feeBps) external restricted {
        if (_feeBps > MAX_FEE_BPS) revert InvalidAmount();
        if (_feeBps > 0 && address(feeVault) == address(0)) revert ZeroAddress();

        feeBps = _feeBps;

        emit FeeUpdated(_feeBps);
    }

    /**
     * @notice Update minimum request amount
     * @param _minimumRequest Minimum shares for a request
     */
    function updateMinimumRequest(uint256 _minimumRequest) external restricted {
        minimumRequest = _minimumRequest;
    }

    /**
     * @notice Set the FeeVault used to collect protocol fees on claims
     */
    function setFeeVault(address _feeVault) external restricted {
        if (_feeVault == address(0)) revert ZeroAddress();
        feeVault = FeeVault(_feeVault);
        emit FeeVaultSet(_feeVault);
    }
}
