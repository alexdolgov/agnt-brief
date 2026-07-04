// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

/// @title IWithdrawController
/// @author luoyhang003
/// @notice Interface for the WithdrawController contract, which manages
///         withdrawal requests, processing, completion, and administration
///         of supported withdrawal assets.
/// @dev Defines core data structures, events, and status enums used by
///      the WithdrawController implementation.
interface IWithdrawController {
    /*//////////////////////////////////////////////////////////////////////////
                                    ENUM
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Lifecycle statuses of a withdrawal request.
    /// @dev Used in {WithdrawalReceipt.status} to track progress and outcomes.
    /// @dev
    ///  REQUESTED  - User has submitted a withdrawal request (initial state).
    ///  CANCELLED  - User cancelled their request, shares refunded. (terminal)
    ///  PROCESSING - Operator marked request as processing with oracle prices.
    ///  REVIEWING  - Request under manual review by operator.
    ///  PROCESSED  - Approved and ready for completion.
    ///  COMPLETED  - Withdrawal finalized, shares burned, assets transferred. (terminal)
    ///  REJECTED   - Request rejected, shares refunded to requester. (terminal)
    ///  FORFEITED  - Request penalized, shares sent to treasury. (terminal)
    ///
    /// @custom:terminal States CANCELLED, REJECTED, FORFEITED, and COMPLETED are terminal.
    enum WITHDRAWAL_STATUS {
        /// @notice User has submitted a withdrawal request.
        REQUESTED,
        /// @notice Withdrawal request was cancelled by the requester.
        CANCELLED,
        /// @notice Withdrawal request has been marked as under processing.
        PROCESSING,
        /// @notice Withdrawal request is under manual or administrative review.
        REVIEWING,
        /// @notice Withdrawal request has been processed and is ready to complete.
        PROCESSED,
        /// @notice Withdrawal request has been successfully completed.
        COMPLETED,
        /// @notice Withdrawal request was explicitly rejected during review.
        REJECTED,
        /// @notice Withdrawal request was forfeited (e.g. due to rule violations).
        FORFEITED
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    STRUCTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Record of a single withdrawal request.
    /// @dev Used to track user withdrawals, pricing context, fees, and status.
    struct WithdrawalReceipt {
        /// @notice Address of the user who requested the withdrawal.
        address requester;
        /// @notice Asset to be withdrawn (ERC20 token address).
        address requestAsset;
        /// @notice Amount of shares (vault tokens) requested to redeem.
        uint256 requestShares;
        /// @notice Snapshot price of the share token at processing time.
        uint256 shareTokenPrice;
        /// @notice Snapshot price of the requested asset at processing time.
        uint256 requestAssetPrice;
        /// @notice Fee rate (in basis points) applied to this withdrawal.
        uint256 feeRate;
        /// @notice Current status of the withdrawal request.
        WITHDRAWAL_STATUS status;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a user submits a withdrawal request.
    /// @param requester The address of the user requesting withdrawal.
    /// @param requestAsset The asset requested for withdrawal.
    /// @param requestShares The number of shares submitted for withdrawal.
    /// @param id The unique ID assigned to the withdrawal receipt.
    event WithdrawalRequested(
        address indexed requester,
        address indexed requestAsset,
        uint256 requestShares,
        uint256 id
    );

    /// @notice Emitted when a withdrawal request is cancelled by the user.
    /// @param requester The address of the user who cancelled.
    /// @param requestShares The number of shares refunded.
    /// @param id The ID of the cancelled withdrawal receipt.
    event WithdrawalCancelled(
        address indexed requester,
        uint256 requestShares,
        uint256 id
    );

    /// @notice Emitted when a withdrawal is completed and assets are transferred.
    /// @param requester The user receiving withdrawn assets.
    /// @param withdrawnAsset The ERC20 asset withdrawn.
    /// @param withdrawnAmount The amount of asset received by the user.
    /// @param feeCharged The fee amount deducted from the withdrawal.
    /// @param id The ID of the completed withdrawal receipt.
    event WithdrawalCompleted(
        address indexed requester,
        address indexed withdrawnAsset,
        uint256 withdrawnAmount,
        uint256 feeCharged,
        uint256 id
    );

    /// @notice Emitted when a withdrawal request is marked as processing.
    /// @param shareTokenPrice The price of the share token at processing.
    /// @param requestAssetPrice The price of the requested asset at processing.
    /// @param id The ID of the withdrawal receipt being processed.
    event WithdrawalProcessing(
        uint256 shareTokenPrice,
        uint256 requestAssetPrice,
        uint256 id
    );

    /// @notice Emitted when all targeted withdrawal requests are marked as processing.
    event AllMarkedAsProcessing();

    /// @notice Emitted when a withdrawal receipt is marked as processed.
    /// @param id The ID of the processed withdrawal receipt.
    event WithdrawalProcessed(uint256 id);

    /// @notice Emitted when a withdrawal receipt is marked as under review.
    /// @param id The ID of the withdrawal receipt.
    event WithdrawalReviewing(uint256 id);

    /// @notice Emitted when a withdrawal request is rejected.
    /// @param id The ID of the rejected withdrawal receipt.
    event WithdrawalRejected(uint256 id);

    /// @notice Emitted when a withdrawal request is forfeited.
    /// @param id The ID of the forfeited withdrawal receipt.
    event WithdrawalForfeited(uint256 id);

    /// @notice Emitted when a new withdrawal asset is added.
    /// @param asset The address of the newly added ERC20 asset.
    event WithdrawalAssetAdded(address indexed asset);

    /// @notice Emitted when a withdrawal asset is removed.
    /// @param asset The address of the removed ERC20 asset.
    event WithdrawalAssetRemoved(address indexed asset);

    /// @notice Emitted when the AssetsRouter address is updated.
    /// @param oldRouter The previous router address.
    /// @param newRouter The new router address.
    event SetAssetsRouter(address oldRouter, address newRouter);

    /// @notice Emitted when an operator repays assets into the controller.
    /// @param asset The ERC20 asset repaid.
    /// @param amount The amount of asset repaid.
    event AssetRepaid(address indexed asset, uint256 amount);

    /// @notice Emitted when the assets forcefully routed.
    /// @param asset The address of the underlying asset to be routed.
    /// @param amount The amount of the underlying asset to be routed.
    event ForceRouteAssets(address asset, uint256 amount);

    /*//////////////////////////////////////////////////////////////////////////
                                    WITHDRAWAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Request withdrawal of a specific asset by burning shares.
    /// @param _requestToken Asset to withdraw into.
    /// @param _shares Number of shares to redeem.
    /// @dev User must be whitelisted. Generates a withdrawal receipt.
    function requestWithdrawal(address _requestToken, uint256 _shares) external;

    /// @notice Batch request withdrawals across multiple assets.
    /// @param _requestTokens List of withdrawal asset addresses.
    /// @param _shares Corresponding share amounts per asset.
    /// @dev Lengths must match. Generates multiple withdrawal receipts.
    function requestWithdrawals(
        address[] memory _requestTokens,
        uint256[] memory _shares
    ) external;

    /// @notice Cancel a single pending withdrawal request.
    /// @param _id Receipt ID of the withdrawal request.
    /// @dev Only the original requester can cancel. Shares are refunded.
    function cancelWithdrawal(uint256 _id) external;

    /// @notice Batch cancel withdrawal requests.
    /// @param _ids An array of receipt IDs of the withdrawal requests.
    /// @dev Only the original requester can cancel. Shares are refunded.
    function cancelWithdrawals(uint256[] memory _ids) external;

    /// @notice Complete a withdrawal once processed.
    /// @param _id Receipt ID of withdrawal.
    /// @dev Burns shares, transfers asset to user, applies fees.
    function completeWithdrawal(uint256 _id) external;

    /// @notice Batch complete withdrawals.
    /// @param _ids An array of receipt IDs of withdrawals.
    /// @dev Burns shares, transfers asset to user, applies fees.
    function completeWithdrawals(uint256[] memory _ids) external;

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns total number of withdrawal receipts created.
    /// @return length_ Total number of withdrawal receipts.
    function getWithdrawalReceiptsLength()
        external
        view
        returns (uint256 length_);

    /// @notice Paginates withdrawal receipts.
    /// @param _offset Start index in array.
    /// @param _limit Number of receipts to fetch.
    /// @return receipts_ List of withdrawal receipts within range.
    function getWithdrawalReceipts(
        uint256 _offset,
        uint256 _limit
    ) external view returns (WithdrawalReceipt[] memory receipts_);
}
