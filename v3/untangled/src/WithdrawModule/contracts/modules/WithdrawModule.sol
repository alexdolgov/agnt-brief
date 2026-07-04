pragma solidity 0.8.21;
import {IWithdrawModule} from "../interfaces/modules/IWithdrawModule.sol";

/// @title Batched withdrawal request/settlement module
/// @notice Queues per-user share withdrawal requests into epochs and settles them pro-rata at an assets-per-share rate.
/// @dev
/// - All state-changing functions are restricted to the configured Hook via onlyHook.
/// - Epochs are indexed by epochId. New requests are tagged with the current epochId and are settled
///   when the Hook calls settle(). After settlement, epochId is incremented to open a new epoch.
/// - Fulfillment is stored in basis points (BPS) and the settlement rate is stored as assets-per-share
///   scaled by 10**shareDecimal.
/// - This module does not move tokens. The Hook is responsible for redeeming shares, transferring assets,
///   and invoking claim() to decrement user requests accordingly.
/// @custom:security Only the Hook may call mutating functions. Use a trusted Hook.
contract WithdrawModule is IWithdrawModule {
    /// @notice Per-user withdrawal request state.
    struct Order {
        /// @notice Total shares requested for withdrawal that are still outstanding.
        uint256 shares;
        /// @notice The epoch in which the latest request was made.
        uint256 epochId;
    }

    /// @notice Settlement data for an epoch.
    struct EpochInfo {
        /// @notice Fulfillment as BPS of requested shares settled in this epoch (10_000 = 100%).
        uint256 fulfillment;
        /// @notice Assets-per-share settlement rate scaled by 10**shareDecimal.
        uint256 rate;
    }

    /// @notice Current open epoch identifier (first epoch is 1).
    uint256 public epochId = 1;

    /// @notice Total shares requested for withdrawal across all users for the current open epoch.
    uint256 public totalWithdraw;

    /// @notice Basis points denominator (10_000 = 100%).
    uint256 constant ONE_HUNDRED_PERCENT = 10000;

    /// @notice Decimals used to scale the assets-per-share rate (typically vault share decimals).
    uint256 immutable shareDecimal;

    /// @notice Hook authorized to call this module.
    address immutable hook;

    /// @notice Pending withdrawal orders by receiver.
    mapping(address => Order) public orders;

    /// @notice Settlement info per epoch.
    mapping(uint256 => EpochInfo) public epochs;

    /// @notice Initialize the withdraw module.
    /// @param _shareDecimal Decimals used to scale assets-per-share rate (matches the share token decimals).
    /// @param _hook Address of the Hook that controls this module.
    constructor(uint256 _shareDecimal, address _hook) {
        shareDecimal = _shareDecimal;
        hook = _hook;
    }

    /// @notice Restricts function access to the configured Hook.
    modifier onlyHook() {
        require(msg.sender == hook, "Not hook");
        _;
    }

    /// @notice Emitted when a receiver requests a withdrawal.
    /// @param receiver Address for which the withdrawal was requested.
    /// @param shares Amount of shares requested.
    event WithdrawRequested(address indexed receiver, uint256 shares);

    /// @notice Emitted when an epoch is settled and a new epoch is opened.
    /// @param epochId The newly opened epoch id (the previous epochId - 1 was just settled).
    /// @param rate Assets-per-share settlement rate for the settled epoch, scaled by 10**shareDecimal.
    event EpochSettled(uint256 indexed epochId, uint256 rate);

    /// @notice Emitted when a receiver's settled shares are claimed (accounting-only in this module).
    /// @param receiver Address claiming settled shares.
    /// @param shares Amount of shares accounted as claimed.
    event WithdrawClaimed(address indexed receiver, uint256 shares);

    /// @notice Queue a withdrawal request for shares in the current epoch.
    /// @param caller Original msg.sender initiating the withdrawal (informational).
    /// @param receiver Address that will receive assets when claimed.
    /// @param owner Share owner authorizing the withdrawal (informational).
    /// @param shares Amount of shares to request.
    /// @dev
    /// - Accumulates requested shares in orders[receiver].
    /// - Tags the order with the current epochId if it lags behind.
    /// - Increments totalWithdraw for the current epoch.
    /// - Token movements are handled by the Hook; this function updates accounting only.
    function request(
        address caller,
        address receiver,
        address owner,
        uint256 shares
    ) external onlyHook {
        // Custom logic to handle withdraw requests
        orders[receiver].shares += shares;
        if (orders[receiver].epochId < epochId) {
            orders[receiver].epochId = epochId;
        }
        totalWithdraw += shares;

        emit WithdrawRequested(receiver, shares);
    }

    /// @notice Account for a receiver's claim of settled shares.
    /// @param receiver Address claiming.
    /// @param shares Number of shares being marked as claimed.
    /// @dev
    /// - Reverts if attempting to claim more shares than requested.
    /// - When a receiver's outstanding shares reach zero, clears their epochId.
    /// - Asset transfer is performed by the Hook after computing claimable().
    function claim(address receiver, uint256 shares) external onlyHook {
        // Custom logic to process claims for the receiver
        require(orders[receiver].shares >= shares, "Exceed requested shares");
        orders[receiver].shares -= shares;
        if (orders[receiver].shares == 0) {
            orders[receiver].epochId = 0;
        }

        emit WithdrawClaimed(receiver, shares);
    }

    /// @notice Settle a portion of pending withdrawals for the current epoch with a given rate.
    /// @param shares Total shares being settled in this epoch across all users.
    /// @param rate Assets-per-share settlement rate scaled by 10**shareDecimal.
    /// @dev
    /// - Records fulfillment = shares / totalWithdraw (in BPS) for the current epoch.
    /// - Stores the provided settlement rate.
    /// - Reduces totalWithdraw by shares and increments epochId (opening a new epoch).
    /// - Emits EpochSettled with the newly opened epoch id.
    function settle(uint256 shares, uint256 rate) external onlyHook {
        // Custom logic to settle withdraw requests at the end of an epoch
        require(shares <= totalWithdraw, "Exceed total withdraw");
        uint256 fulfillment = (shares * ONE_HUNDRED_PERCENT) / totalWithdraw;
        epochs[epochId] = EpochInfo(fulfillment, rate);
        totalWithdraw -= shares;
        epochId++;

        emit EpochSettled(epochId, rate);
    }

    /// @notice Compute claimable assets and shares for a receiver across all settled epochs.
    /// @param receiver Beneficiary address to query.
    /// @return assets Total claimable assets for the receiver.
    /// @return shares Total shares that will be marked as claimed.
    /// @dev
    /// - If the receiver last requested in the current open epoch, nothing is claimable yet.
    /// - Iterates from the receiver's last request epoch up to the most recently settled epoch
    ///   applying each epoch's fulfillment and rate.
    /// - Assets are computed as settledShares * rate / 10**shareDecimal.
    function claimable(
        address receiver
    ) external view returns (uint256 assets, uint256 shares) {
        // Custom logic to calculate claimable assets and shares for the receiver
        if (orders[receiver].epochId == epochId) {
            return (0, 0);
        }
        uint256 lastRequestId = orders[receiver].epochId;

        uint256 totalAssets;
        uint256 remainShares = orders[receiver].shares;

        while (lastRequestId < epochId) {
            uint256 settledShares = (remainShares *
                epochs[lastRequestId].fulfillment) / ONE_HUNDRED_PERCENT;
            uint256 settledAssets = (settledShares *
                epochs[lastRequestId].rate) / 10 ** shareDecimal;
            totalAssets += settledAssets;
            remainShares -= settledShares;
            lastRequestId++;
        }

        return (totalAssets, orders[receiver].shares - remainShares);
    }
}
