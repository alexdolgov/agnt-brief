// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC7575Minimal} from "./IERC7575Minimal.sol";
import {IERC7540Operator, IERC7540Redeem} from "./IERC7540.sol";

struct WithdrawalRequest {
    uint256 requestId; // ID of the withdrawal request
    uint256 assets; // Amount of assets to withdraw
    uint256 shares; // Amount of shares burned
    uint256 requestTime; // Timestamp when the request was made
    uint256 unlockTime; // Timestamp when the request can be claimed
    address controller; // Address that can claim assets
}

interface IUTYAsyncVaultV1 {
    // Events
    event Donation(address indexed donor, uint256 indexed amount, uint256 indexed newSharePrice);
    event BondingPeriodUpdated(uint256 indexed oldPeriod, uint256 indexed newPeriod);
    event MaxTotalAssetsUpdated(uint256 indexed oldMax, uint256 indexed newMax);
    event RedemptionsFunded(address indexed funder, uint256 amount);
    event ComposerRoleRevoked(address indexed revoker, address indexed composer);
    /// @dev Emitted when a withdrawal request is fully consumed and deleted from storage.
    /// @param requestId The closed request's ID.
    /// @param controller The address that owned the request.
    /// @param assets Remaining asset amount in the request at closure (not the original request amount).
    /// @param shares Remaining share amount in the request at closure (not the original request amount).
    /// @notice For partial redemptions, these values reflect the final remainder being closed,
    /// not the full original request. Correlate with RedeemRequest events to reconstruct full history.
    event RequestClosed(uint256 indexed requestId, address indexed controller, uint256 assets, uint256 shares);
    event MaxActiveRequestsUpdated(uint256 indexed oldMax, uint256 indexed newMax);
    event MinRedemptionSharesUpdated(uint256 indexed oldMin, uint256 indexed newMin);

    // Errors
    /// @notice Error emitted when owner is not allowed to perform an operation.
    error OperationNotAllowed();
    /// @notice Error emitted when the zero address is given.
    error InvalidZeroAddress();
    /// @notice Error emitted when invalid address is given
    error InvalidAddress(address addr);
    /// @notice Error emitted when shares or assets equal zero.
    error InvalidAmount();
    /// @notice Error emitted when request ID is invalid or does not exist.
    error InvalidRequest();
    /// @notice Error emitted when the shares amount to redeem is greater than the balance of the vault.
    error ExceededAvailableAssets(uint256 assets, uint256 totalAssets);
    /// @notice Error emitted if method is not supported by ERC7540 async flow.
    error ERC7540NotSupported();
    /// @notice Error emitted if funds are not unlocked yet
    error BondingPeriodNotOver();
    /// @notice Error emitted when an unauthorized caller attempts to pause.
    error UnauthorizedPause(address caller);
    /// @notice Error emitted when an internal accounting invariant is violated.
    error InvariantViolation();
    /// @notice Error emitted when a user has too many active withdrawal requests.
    error MaxActiveRequestsExceeded(uint256 current, uint256 max);
    /// @notice Error emitted when a redemption amount is below the minimum.
    error RedemptionAmountTooSmall(uint256 shares, uint256 minimum);

    /**
     * @dev Allows anyone to donate vault tokens to the vault
     * @notice This increases the share price of UTYVault tokens
     * @param amount Amount of vault tokens to donate
     *
     * - Emits Donation event
     */
    function donate(uint256 amount) external;

    /**
     * @dev Redeem assets by request ID
     * @param requestId ID of the claimable withdrawal request
     * @param receiver Address that will receive the assets
     */
    function redeemById(uint256 requestId, address receiver) external;

    /**
     * @dev Mints vault shares to receiver by claiming the request of the controller
     *
     * - required by ERC-7540
     * - MUST emit the Deposit event
     * - controller MUST equal msg.sender unless the controller has approved the msg.sender as an operator
     */
    function deposit(uint256 assets, address receiver, address controller) external returns (uint256 shares);

    /**
     * @dev Mints exactly shares Vault shares to receiver by claiming the Request of the controller
     *
     * - required by ERC-7540
     * - MUST emit the Deposit event
     * - controller MUST equal msg.sender unless the controller has approved the msg.sender as an operator
     */
    function mint(uint256 shares, address receiver, address controller) external returns (uint256 assets);

    /**
     * @dev Restores functionality of {IERC4626-previewWithdraw}
     */
    function previewRequestWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Restores functionality of {IERC4626-previewRedeem}
     */
    function previewRequestRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Get withdrawal requests for a user with pagination support
     * @param controller Address of the user
     * @param offset Starting index for pagination
     * @param limit Maximum number of items to return
     * @return result Array of withdrawal requests for the user with embedded request IDs
     */
    function getWithdrawalRequests(address controller, uint256 offset, uint256 limit)
        external
        view
        returns (WithdrawalRequest[] memory result);

    /**
     * @dev Get withdrawal requests by ID.
     * @param requestId ID of the request
     * @return result Withdrawal request for the request ID
     */
    function getWithdrawalRequest(uint256 requestId) external view returns (WithdrawalRequest memory result);

    /**
     * @dev Returns the total amount of assets pending withdrawal
     */
    function getTotalPendingWithdrawals() external view returns (uint256);

    /**
     * @dev Returns the current maximum total assets allowed in the vault
     */
    function getMaxTotalAssets() external view returns (uint256);

    /**
     * @dev Returns the current bonding period duration
     */
    function getBondingPeriod() external view returns (uint256);

    /**
     * @dev Returns the current maximum active requests per controller.
     * A value of 0 means unlimited.
     */
    function getMaxActiveRequests() external view returns (uint256);

    /**
     * @dev Returns the current minimum shares required per redemption request.
     * A value of 0 means no minimum (anti-dust disabled).
     */
    function getMinRedemptionShares() external view returns (uint256);

    /**
     * @dev Sets the maximum number of active withdrawal requests per controller.
     * @param newMax Must be >= 1. Prevents gas-bounded iteration failures.
     */
    function setMaxActiveRequests(uint256 newMax) external;

    /**
     * @dev Sets the minimum shares required per redemption request (anti-dust).
     * @param newMin Minimum shares per request. 0 disables the check.
     */
    function setMinRedemptionShares(uint256 newMin) external;

    /**
     * @dev Revoke COMPOSER_ROLE from a composer address (emergency only)
     * @param composer Address to revoke COMPOSER_ROLE from
     */
    function revokeComposerRole(address composer) external;

    /**
     * @dev The role hash for EMERGENCY_ROLE
     */
    function EMERGENCY_ROLE() external view returns (bytes32);

    /**
     * @dev The role hash for OPERATIONS_ROLE
     */
    function OPERATIONS_ROLE() external view returns (bytes32);
}

interface IUTYAsyncVault is IUTYAsyncVaultV1, IERC4626, IERC7575Minimal, IERC7540Redeem, IERC7540Operator {}
