// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0;

interface IAsyncRequestManager {
    /// @notice Thrown when the controller already has a pending redeem request.
    error PendingWithdrawal(address vault, address controller);

    /// @notice Thrown when the provided shares amount is invalid.
    error InvalidShares(uint256 shares);

    /// @notice Thrown when the shares amount exceeds the claimable balance in the request.
    error InsufficientShares(uint256 shares);

    /// @notice Thrown when the asset amount exceeds the claimable balance in the request.
    error InsufficientAssets(uint256 assets);

    /// @notice Thrown when the request has not been fulfilled by the operator yet.
    error NotFulfilledWithdrawal(address vault, address controller);

    /**
     * @title RedeemRequest
     * @notice Represents a pending redeem request submitted by a user for a specific asset.
     * @dev One request exists per user per asset. `shares` and `assets` are reduced when partial claims
     */
    struct RedeemRequest {
        /// @notice Total shares submitted for redemption. Decreases as the controller claims.
        uint256 shares;
        /// @notice Asset amount to be received in exchange for the redeemed shares, set upon fulfillment.
        uint256 assets;
        /// @notice Unix timestamp when the request was created. Used for time-range queries.
        uint64 requestedAt;
        /// @notice Whether this request has been fulfilled by the operator.
        bool isFulfilled;
    }

    /**
     * @title RequestedRedeem
     * @notice Immutable snapshot of the originally requested (shares, assets) for a redeem request.
     * @dev Written once at request time and never mutated by `redeem`/`withdraw`/`fulfillRedeem`/`cancelRedeem`.
     *      Both fields packed into a single storage slot.
     */
    struct RequestedRedeem {
        /// @notice Shares originally submitted at request time.
        uint128 shares;
        /// @notice Asset amount quoted from `convertToAssets` at request time.
        uint128 assets;
    }

    /**
     * @title RedeemEntry
     * @notice Identifies a pending redeem entry by its associated vault and controller.
     * @dev Used to index or look up a `RedeemRequest` within the async request manager.
     */
    struct RedeemEntry {
        /// @notice Address of the vault the redeem request was submitted to.
        address vault;
        /// @notice Address of the controller (user) who submitted the redeem request.
        address controller;
    }

    /// @notice Defines how a controller may initiate withdrawal requests.
    enum RedeemMode {
        /// @notice Only one active withdrawal allowed at a time, across all assets.
        Global,
        /// @notice One active withdrawal allowed per asset at a time.
        PerAsset
    }

    /**
     * @notice Emitted when a redeem request is successfully queued.
     * @param queueId Index of the new entry in `redeemEntries`.
     * @param vault Address of the vault the redeem was requested against.
     * @param controller Address of the controller who submitted the request.
     * @param owner Address whose shares are locked
     * @param shares Total shares submitted for redemption.
     * @param assets Expected asset amount to be received upon fulfillment.
     */
    event RedeemQueued(
        uint256 indexed queueId,
        address indexed vault,
        address indexed controller,
        address owner,
        uint256 shares,
        uint256 assets
    );

    /**
     * @notice Emitted when a redeem request is fulfilled by the operator.
     * @param vault        Vault the redeem request was submitted against.
     * @param controller   Controller whose request was fulfilled.
     * @param shares       Total shares redeemed in this fulfillment.
     * @param assets       Asset amount allocated to the controller upon fulfillment.
     * @param requestedAt  Unix timestamp when the original request was created.
     */
    event RedeemFulfilled(
        address indexed vault, address indexed controller, uint256 shares, uint256 assets, uint64 requestedAt
    );

    /**
     * @notice Emitted when a redeem request is cancelled and shares are returned to the controller.
     * @param vault        Vault the original redeem request was submitted against.
     * @param controller   Controller whose request was cancelled.
     * @param shares       Number of shares returned to the controller.
     */
    event RedeemCancelled(address indexed vault, address indexed controller, uint256 shares);

    /**
     * @notice Emitted alongside the standard ERC-7575 Deposit / Withdraw flow to record the asset
     *         price and the asset amount observed at the moment of the action.
     * @param  vault       The AssetVault that initiated the call (msg.sender of the manager method).
     * @param  asset       The underlying asset whose price was observed.
     * @param  action      Action discriminator: 0 = deposit/mint, 1 = requestRedeem, 2 = redeem/withdraw.
     * @param  assets      Amount of `asset` involved in the action, in asset-token units.
     *                     - action 0 (deposit/mint):     amount transferred into the FundVault.
     *                     - action 1 (requestRedeem):    quoted asset amount at request time (`convertToAssets`).
     *                     - action 2 (redeem/withdraw):  amount paid out to the controller.
     * @param  assetPrice  Denomination units per 1 full token, 1e18 scale (matches IPriceFeed.getPrice).
     */
    event AssetPriceObserved(
        address indexed vault, address indexed asset, uint8 indexed action, uint256 assets, uint256 assetPrice
    );

    /// @notice Returns the total pending shares for a controller across all assets.
    function pendingShares(address controller) external view returns (uint256);

    /**
     * @notice Returns the `redeemRequests` array index of the currently active request for a
     *         (vault, controller) pair, or 0 (the sentinel) if no active request exists.
     * @dev Matches the auto-generated getter for the `currentRequest` public mapping on
     *      AsyncRequestManager. Key must be `keccak256(abi.encode(vault, controller))`.
     *      Use this to determine whether a historical queue entry is still active:
     *      an entry at index `i` is active iff `currentRequest(key) == i`.
     * @param entryHash `keccak256(abi.encode(vault, controller))`
     */
    function currentRequest(bytes32 entryHash) external view returns (uint256);

    /// @notice Returns the current redeem mode (Global or PerAsset).
    function redeemMode() external view returns (RedeemMode);

    /**
     * @notice Returns the active redeem request for a controller in a given vault.
     * @param vault      The vault address (asset identifier).
     * @param controller The controller to query.
     */
    function getRedeemRequest(address vault, address controller) external view returns (RedeemRequest memory);

    /// @notice Returns the total length of the `redeemEntries` array (includes the sentinel at index 0).
    function redeemEntriesLength() external view returns (uint256);

    /**
     * @notice Returns the redeem entry at a given index in the `redeemEntries` array.
     * @param id The 1-based index (index 0 is the sentinel and returns zero values).
     */
    function getRedeemEntry(uint256 id) external view returns (RedeemEntry memory);

    /**
     * @notice Returns the redeem request stored at a given index in the `redeemRequests` array.
     * @dev Use this for index-based historical lookups. Index 0 is the sentinel and returns zero values.
     *      Prefer this over `getRedeemRequest(vault, controller)` when iterating by queue ID,
     *      as the latter resolves through `currentRequest` and returns the currently active request,
     *      not necessarily the one originally submitted at this index.
     * @param id The queue index (mirrors `redeemEntries` — same index maps to the same submission).
     */
    function getRedeemRequestByIndex(uint256 id) external view returns (RedeemRequest memory);

    /**
     * @notice Returns the immutable snapshot of the originally requested (shares, assets) at a given index.
     * @dev Mirrors the index space of `redeemRequests` / `redeemEntries`. Index 0 is the sentinel.
     *      Unlike `getRedeemRequestByIndex`, the values returned here are never decremented by partial claims.
     *      Pre-upgrade requests return zero values (snapshot unavailable).
     * @param id The queue index (mirrors `redeemEntries`).
     */
    function getRequestedRedeemByIndex(uint256 id) external view returns (RequestedRedeem memory);

    /**
     * @notice Called by AssetVault after a deposit to propagate the nav update to VaultManager.
     * @dev Only registered `AssetVault` can call this, msg.sender is the vault.
     *      Calls `VaultManager.updateVaultState` with `depositedAssets` set to `assets`,
     *      which increments navAsset, navDenomination, and effNavDenomination.
     * @param assets  Amount of assets deposited (in asset-token units).
     * @dev Only registered AssetVault can call this, msg.sender is the vault.
     */
    function deposit(uint256 assets) external;

    /**
     * @notice Validate whether the redeem request is valid, then enqueue the request
     * @param shares total of requested shares
     * @param controller the address who can operate on the shares in the request
     * @param owner the adress whose shares is locked
     * @dev Only registered `AssetVault` can call this, msg.sender is the vault
     */
    function requestRedeem(uint256 shares, address controller, address owner) external;

    /**
     * @notice Marks a batch of redeem requests as fulfilled, enabling controllers to claim their assets.
     * @dev Only callable by a registered vault. Skips already-fulfilled requests without reverting.
     * @param controllers List of controller addresses whose redeem requests should be fulfilled.
     */
    function fulfillRedeem(address[] calldata controllers) external;

    /**
     * @notice Validates and processes a share-based claim on a fulfilled redeem request.
     * @dev Only callable by a registered vault. Checks `isFulfilled` and `shares <= req.shares`.
     *      Updates or deletes the request. Returns the proportional asset amount.
     * @param controller  Controller whose fulfilled request is being claimed.
     * @param shares      Number of shares to claim.
     * @return assets     Proportional asset amount corresponding to `shares`.
     */
    function redeem(address controller, uint256 shares) external returns (uint256 assets);

    /**
     * @notice Validates and processes an asset-based claim on a fulfilled redeem request.
     * @dev Only callable by a registered vault. Checks `isFulfilled` and `assets <= req.assets`.
     *      Updates or deletes the request. Returns the proportional share amount to burn.
     * @param controller  Controller whose fulfilled request is being claimed.
     * @param assets      Asset amount to claim.
     * @return shares     Proportional share amount corresponding to `assets`.
     */
    function withdraw(address controller, uint256 assets) external returns (uint256 shares);

    /**
     * @notice Cancels redeem requests and returns the locked share amounts per controller.
     * @dev No vault registration check — intentionally callable by removed vaults to unwind stuck requests.
     *      Scoped by `msg.sender` as the vault key, so cross-vault interference is impossible.
     *      Skips controllers with no active request (`shares == 0`). Cancels both fulfilled and
     *      unfulfilled requests — the caller is responsible for transferring shares back.
     * @param controllers List of controller addresses whose requests should be cancelled.
     * @return shares     Per-controller share amounts unlocked (0 for skipped entries).
     */
    function cancelRedeem(address[] calldata controllers) external returns (uint256[] memory shares);
}

