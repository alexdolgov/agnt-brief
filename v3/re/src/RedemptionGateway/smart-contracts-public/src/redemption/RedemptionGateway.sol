// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IInstantRedemption.sol";
import "./IWindowRedemption.sol";
import "../token/IShareToken.sol";
import "../compliance/IKYCRegistry.sol";

/**
 * @title RedemptionGateway
 * @notice Single entry-point for users to redeem shares. Routes to instant or window modules.
 * @dev Business rule: a redemption window, when open, has exclusive precedence over instant mode.
 *
 * **Responsibilities**
 * - Enforce KYC and basic argument checks at the gateway boundary.
 * - Delegate to {IInstantRedemption} or {IWindowRedemption} and bubble up reverts.
 * - Expose consolidated read-only views used by frontends and monitoring.
 *
 * **Security**
 * - Pausable and reentrancy-protected; administrative setters gated by {AccessManaged}.
 */
contract RedemptionGateway is AccessManaged, ReentrancyGuard, Pausable {
    // ============ Types ============
    enum RedemptionMode {
        NONE,
        INSTANT,
        WINDOW
    }

    // ============ Roles ============
    // Roles are now managed by AccessManager

    // ============ State ============
    IInstantRedemption public instantRedemption;
    IWindowRedemption public windowRedemption;
    IShareToken public immutable shareToken;
    IKYCRegistry public immutable kyc;

    // ============ Events ============
    event InstantRedemptionSet(address indexed module);
    event WindowRedemptionSet(address indexed module);
    event InstantRedemptionRouted(address indexed user, uint256 shares, uint256 payout);
    event WindowRedemptionRouted(address indexed user, address indexed module, uint256 amount);

    // ============ Errors ============
    error InvalidModule();
    error KYCRequired();
    error InvalidAmount();
    error WrongMode(uint8 expected, uint8 actual);

    // ============ Constructor ============

    /**
     * @param _accessManager Address of the AccessManager
     * @param _instantRedemption Address of the InstantRedemption module
     * @param _windowRedemption Address of the WindowRedemption module
     * @param _shareToken Address of the ShareToken
     * @param _kyc Address of the KYC registry
     */
    constructor(
        address _accessManager,
        address _instantRedemption,
        address _windowRedemption,
        address _shareToken,
        address _kyc
    ) AccessManaged(_accessManager) {
        // Validate addresses are not zero
        if (_accessManager == address(0)) revert InvalidModule();
        if (_instantRedemption == address(0)) revert InvalidModule();
        if (_windowRedemption == address(0)) revert InvalidModule();
        if (_shareToken == address(0)) revert InvalidModule();
        if (_kyc == address(0)) revert InvalidModule();

        // Store validated addresses
        instantRedemption = IInstantRedemption(_instantRedemption);
        windowRedemption = IWindowRedemption(_windowRedemption);
        shareToken = IShareToken(_shareToken);
        kyc = IKYCRegistry(_kyc);
    }

    // ============ Instant Redemption Functions ============

    /**
     * @notice Process an instant redemption through the gateway
     * @param shares Amount of shares to redeem
     * @param minPayout Minimum payout amount (slippage protection)
     */
    function redeemInstant(uint256 shares, uint256 minPayout) external nonReentrant whenNotPaused {
        // Enforce mutual exclusivity: block instant while a window is open
        RedemptionMode mode = currentMode();
        if (mode != RedemptionMode.INSTANT) {
            revert WrongMode(uint8(RedemptionMode.INSTANT), uint8(mode));
        }

        if (!kyc.isKYCApproved(msg.sender)) revert KYCRequired();
        if (shares == 0) revert InvalidAmount();

        // Instant redemption module will transfer shares directly from user
        // and will revert if allowance is insufficient
        instantRedemption.redeemFor(msg.sender, shares, minPayout);

        emit InstantRedemptionRouted(msg.sender, shares, minPayout);
    }

    /**
     * @notice Preview instant redemption
     * @param user User address
     * @param shares Amount of shares
     * @return grossPayout Gross payout amount
     * @return fee Fee amount
     * @return netPayout Net payout after fee
     * @return available Whether redemption would succeed
     */
    function previewInstantRedemption(address user, uint256 shares)
        external
        view
        returns (uint256 grossPayout, uint256 fee, uint256 netPayout, bool available)
    {
        return instantRedemption.previewRedemption(user, shares);
    }

    // ============ Window Redemption Functions ============

    /**
     * @notice Submit a window redemption request
     * @param shares Amount of shares to request for redemption
     */
    function submitWindowRequest(uint256 shares) external nonReentrant whenNotPaused {
        // Enforce mutual exclusivity: only allow during window mode
        RedemptionMode mode = currentMode();
        if (mode != RedemptionMode.WINDOW) {
            revert WrongMode(uint8(RedemptionMode.WINDOW), uint8(mode));
        }

        if (!kyc.isKYCApproved(msg.sender)) revert KYCRequired();
        if (shares == 0) revert InvalidAmount();

        // Window module will transfer shares directly from user
        // and will revert if allowance is insufficient
        windowRedemption.submitRequestFor(msg.sender, shares);

        emit WindowRedemptionRouted(msg.sender, address(windowRedemption), shares);
    }

    /**
     * @notice Adjust a window redemption request
     * @param newShares New amount of shares for the request
     */
    function adjustWindowRequest(uint256 newShares) external nonReentrant whenNotPaused {
        // Enforce mutual exclusivity: only allow during window mode
        RedemptionMode mode = currentMode();
        if (mode != RedemptionMode.WINDOW) {
            revert WrongMode(uint8(RedemptionMode.WINDOW), uint8(mode));
        }

        if (!kyc.isKYCApproved(msg.sender)) revert KYCRequired();

        // Window module will handle token transfers directly with user
        windowRedemption.adjustRequestFor(msg.sender, newShares);
    }

    /**
     * @notice Cancel a window redemption request
     */
    function cancelWindowRequest() external nonReentrant whenNotPaused {
        // Enforce mutual exclusivity: only allow during window mode
        RedemptionMode mode = currentMode();
        if (mode != RedemptionMode.WINDOW) {
            revert WrongMode(uint8(RedemptionMode.WINDOW), uint8(mode));
        }

        // Window module will return shares directly to user
        windowRedemption.cancelRequestFor(msg.sender);
    }

    /**
     * @notice Claim payout from a settled window
     * @param windowId The window ID to claim from
     */
    function claimWindowPayout(uint256 windowId) external nonReentrant whenNotPaused {
        if (!kyc.isKYCApproved(msg.sender)) revert KYCRequired();

        // Window module will handle payouts directly to user
        windowRedemption.claimFor(windowId, msg.sender);
    }

    /**
     * @notice Get user's window request
     * @param windowId Window ID
     * @param user User address
     * @return shares Amount of shares requested
     * @return claimed Amount already claimed
     */
    function getWindowRequest(uint256 windowId, address user)
        external
        view
        returns (uint256 shares, uint256 claimed)
    {
        IWindowRedemption.UserRequest memory request =
            windowRedemption.getUserRequest(windowId, user);
        return (request.shares, request.claimed);
    }

    // ============ Admin Functions ============

    /**
     * @notice Update instant redemption module
     * @param _instantRedemption New instant redemption module address
     */
    function setInstantRedemption(address _instantRedemption) external restricted {
        if (_instantRedemption == address(0)) revert InvalidModule();

        // Validate interface by calling a view function
        try IInstantRedemption(_instantRedemption).paused() returns (bool) {
            // Interface is valid
        } catch {
            revert InvalidModule();
        }

        instantRedemption = IInstantRedemption(_instantRedemption);
        emit InstantRedemptionSet(_instantRedemption);
    }

    /**
     * @notice Update window redemption module
     * @param _windowRedemption New window redemption module address
     */
    function setWindowRedemption(address _windowRedemption) external restricted {
        if (_windowRedemption == address(0)) revert InvalidModule();

        // Validate interface by calling a view function
        try IWindowRedemption(_windowRedemption).isWindowOpen() returns (bool) {
            // Interface is valid
        } catch {
            revert InvalidModule();
        }

        windowRedemption = IWindowRedemption(_windowRedemption);
        emit WindowRedemptionSet(_windowRedemption);
    }

    /**
     * @notice Pause all redemptions
     */
    function pause() external restricted {
        _pause();
    }

    /**
     * @notice Unpause all redemptions
     */
    function unpause() external restricted {
        _unpause();
    }

    // ============ View Functions ============

    /**
     * @notice Get current redemption mode
     * @dev Rules:
     * - Gateway-level pause overrides and returns `NONE`.
     * - Window has precedence from opening through settlement (including closed-but-unsettled).
     * - Instant is available only when no window is open and the current window is settled.
     * - If the selected module is paused, returns `NONE`.
     * @return Current mode (NONE=0, INSTANT=1, WINDOW=2)
     */
    function currentMode() public view returns (RedemptionMode) {
        // Gateway-level pause overrides everything
        if (paused()) return RedemptionMode.NONE;

        // Window takes priority while open OR until it is settled
        // This enforces mutual exclusivity from window open through settlement.
        if (windowRedemption.isWindowOpen()) {
            return windowRedemption.paused() ? RedemptionMode.NONE : RedemptionMode.WINDOW;
        }

        // If a window was opened and is not yet settled, remain in WINDOW mode
        {
            uint256 id = windowRedemption.currentWindowId();
            IWindowRedemption.Window memory w = windowRedemption.getWindow(id);
            if (w.openTime != 0 && !w.isSettled) {
                return windowRedemption.paused() ? RedemptionMode.NONE : RedemptionMode.WINDOW;
            }
        }

        // Default to instant when no window is open
        return instantRedemption.paused() ? RedemptionMode.NONE : RedemptionMode.INSTANT;
    }

    /**
     * @notice Check if window is open for requests
     * @return isOpen Whether window is currently open
     */
    function isWindowOpen() external view returns (bool) {
        return windowRedemption.isWindowOpen();
    }

    /**
     * @notice Get current window ID
     * @return windowId Current window ID
     */
    function currentWindowId() external view returns (uint256) {
        return windowRedemption.currentWindowId();
    }

    /**
     * @notice Get current daily redemption stats
     * @return day Current day index
     * @return globalSpending Global spending for the day
     */
    function getDailyRedemptions() external view returns (uint256 day, uint256 globalSpending) {
        return instantRedemption.getDailyRedemptions();
    }

    /**
     * @notice Get user's instant redemption spending for today
     * @param user User address
     * @return spending User's spending for current day
     */
    function getUserDailySpending(address user) external view returns (uint256) {
        return instantRedemption.getUserDailySpending(user);
    }
}
