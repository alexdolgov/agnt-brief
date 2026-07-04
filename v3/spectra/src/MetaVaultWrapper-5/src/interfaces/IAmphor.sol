// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

interface IAmphor {
    /* ============================== STRUCTS ============================== */

    /// @dev Matches the PermitParams consumed by `requestDepositWithPermit`
    struct PermitParams {
        uint256 value;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    /// @dev Lightweight mirror of the struct returned by previewSettle
    struct SettleValues {
        uint256 lastSavedBalance;
        uint256 fees;
        uint256 pendingRedeem;
        uint256 sharesToMint;
        uint256 pendingDeposit;
        uint256 assetsToWithdraw;
        uint256 totalAssetsSnapshot;
        uint256 totalSupplySnapshot;
    }

    /* =============================== GETTERS ============================= */
    function epochs(uint256 epochId) external view returns (uint256, uint256);
    function epochId() external view returns (uint256);
    function treasury() external view returns (address);
    function pendingSilo() external view returns (address);
    function claimableSilo() external view returns (address);

    /* ========================= REQUEST / CLAIM API ======================= */
    // --- Deposit side ---
    function requestDeposit(
        uint256 assets,
        address receiver,
        address owner,
        bytes calldata data
    ) external;

    function decreaseDepositRequest(uint256 assets) external;

    function decreaseRedeemRequest(uint256 shares) external;

    function requestDepositWithPermit(
        uint256 assets,
        address receiver,
        bytes calldata data,
        PermitParams calldata permitParams
    ) external;

    function pendingDepositRequest(address owner) external view returns (uint256 assets);
    function claimableDepositRequest(address owner) external view returns (uint256 assets);

    function claimDeposit(address receiver) external returns (uint256 shares);

    function maxDepositRequest(address owner) external view returns (uint256);

    function previewClaimDeposit(address owner) external view returns (uint256 shares);

    // --- Redeem side ---
    function requestRedeem(
        uint256 shares,
        address receiver,
        address owner,
        bytes calldata data
    ) external;

    function pendingRedeemRequest(address owner) external view returns (uint256 shares);
    function claimableRedeemRequest(address owner) external view returns (uint256 shares);

    function claimRedeem(address receiver) external returns (uint256 assets);

    function maxRedeemRequest(address owner) external view returns (uint256);

    function previewClaimRedeem(address owner) external view returns (uint256 assets);

    /* ======================= ASYNC CONVERSION HELPERS ==================== */
    function convertToShares(uint256 assets) external view returns (uint256 shares);
    function convertToAssets(uint256 shares) external view returns (uint256 assets);
    function convertToShares(
        uint256 assets,
        uint256 epochOrRequestId
    ) external view returns (uint256 shares);
    function convertToAssets(
        uint256 shares,
        uint256 epochOrRequestId
    ) external view returns (uint256 assets);

    /* ======================== AGGREGATE VIEW HELPERS ===================== */

    function totalPendingDeposits() external view returns (uint256);
    function totalPendingRedeems() external view returns (uint256);
    function totalClaimableShares() external view returns (uint256);
    function totalClaimableAssets() external view returns (uint256);

    /* ============================== LIFECYCLE ============================ */

    function close() external; // onlyOwner in implementation
    function open(uint256 assetReturned) external; // onlyOwner + whenClosed
    function settle(uint256 newSavedBalance) external; // onlyOwner + whenClosed
    function setTreasury(address _treasury) external;

    /* ============================== PREVIEW ============================== */

    function previewSettle(
        uint256 newSavedBalance
    )
        external
        view
        returns (
            uint256 assetsToOwner,
            uint256 assetsToVault,
            uint256 expectedAssetFromOwner,
            SettleValues memory settleValues
        );

    /* ============================== ERC165 =============================== */

    function supportsInterface(bytes4 interfaceId) external pure returns (bool);

    /* =============================== SYNC ============================== */

    /// @notice Fee BPS (out of 10_000).
    function feesInBps() external view returns (uint16);

    /// @notice Whether the vault is currently open (Sync mode).
    function vaultIsOpen() external view returns (bool);

    /// @notice Last saved balance snapshot used by Async/epoch logic.
    function lastSavedBalance() external view returns (uint256);

    /// @notice Admin: set performance fee (BPS).
    function setFee(uint16 newFee) external;

    /// @notice Admin: set max drawdown guardrail (BPS).
    function setMaxDrawdown(uint16 newMaxDrawdown) external;

    /* =============================== SPECTRA WRAPPER SPECIFIC ============================== */

    /// @notice Get epoch snapshots (supply and assets) for a given epoch.
    function getEpochSnapshots(
        uint256 epochId
    ) external view returns (uint256 totalSupplySnapshot, uint256 totalAssetsSnapshot);

    /// @notice Get the last epoch in which the user made a deposit request.
    function lastUserDepositRequestEpoch(address user) external view returns (uint256);

    /// @notice Get the last epoch in which the user made a redeem request.
    function lastUserRedeemRequestEpoch(address user) external view returns (uint256);

    /* =============================== ERRORS ============================== */

    /**
     * @notice This error is emitted when the user request more shares than the
     * maximum allowed.
     * @param receiver The address of the user that requested the redeem.
     * @param shares The amount of shares requested by the user.
     */
    error ExceededMaxRedeemRequest(address receiver, uint256 shares, uint256 maxShares);

    /**
     * @notice This error is emitted when the user request more assets than the
     * maximum allowed.
     * @param receiver The address of the user that requested the deposit.
     * @param assets The amount of assets requested by the user.
     * @param maxDeposit The maximum amount of assets the user can request.
     */
    error ExceededMaxDepositRequest(address receiver, uint256 assets, uint256 maxDeposit);

    /**
     * @notice This error is emitted when the user try to make a new request
     * with an incorrect data.
     */
    error ReceiverFailed();
    /**
     * @notice This error is emitted when the user try to make a new request
     * on behalf of someone else.
     */
    error ERC7540CantRequestDepositOnBehalfOf();
    /**
     * @notice This error is emitted when the user try to make a request
     * when there is no claimable request available.
     */
    error NoClaimAvailable(address owner);
    /**
     * @notice This error is emitted when the user try to make a request
     * when the vault is open.
     */
    error InvalidTreasury();
}
