// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

/// @notice Interface for the Amphor (async) vault used by the MetaVaultWrapper.
interface IAmphor {
    /* ═════════════════════════════════════════ STRUCTS ═════════════════════════════════════════ */

    /// @dev Parameters for ERC20Permit approvals used by requestDepositWithPermit.
    struct PermitParams {
        uint256 value;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    /// @dev Values computed during settle/previews.
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

    /* ═════════════════════════════════════════ VIEW (STATE) ═════════════════════════════════════ */

    /// @notice Return epoch snapshots (supply, assets) for a given epoch.
    /// @dev Mapping contains nested mappings, so the generated getter cannot return the struct.
    function epochs(
        uint256 epochId
    ) external view returns (uint256 totalSupplySnapshot, uint256 totalAssetsSnapshot);

    /// @notice Current epoch id (increments on settle/open transitions).
    function epochId() external view returns (uint256);

    /// @notice Treasury recipient for fees.
    function treasury() external view returns (address);

    /// @notice Underlying asset managed by the vault.
    function asset() external view returns (address);

    /// @notice Silo addresses used by the async flow.
    function pendingSilo() external view returns (address);
    function claimableSilo() external view returns (address);

    /// @notice Whether the vault is currently open (sync mode).
    function vaultIsOpen() external view returns (bool);

    /// @notice Last saved balance snapshot used by async logic.
    function lastSavedBalance() external view returns (uint256);

    /// @notice Fee in basis points (out of 10_000).
    function feesInBps() external view returns (uint16);

    /* ═════════════════════════════════════ REQUEST / CLAIM (DEPOSIT) ════════════════════════════ */

    /// @notice Async deposit request.
    function requestDeposit(
        uint256 assets,
        address receiver,
        address owner,
        bytes calldata data
    ) external;

    /// @notice Decrease a previously requested deposit amount for msg.sender.
    function decreaseDepositRequest(uint256 assets) external;

    /// @notice Async deposit using permit for allowance.
    function requestDepositWithPermit(
        uint256 assets,
        address receiver,
        bytes calldata data,
        PermitParams calldata permitParams
    ) external;

    /// @notice Pending deposit amount for an owner in the current epoch.
    function pendingDepositRequest(address owner) external view returns (uint256 assets);

    /// @notice Claimable deposit from a previous epoch for an owner.
    function claimableDepositRequest(address owner) external view returns (uint256 assets);

    /// @notice Claimable deposit amount for an owner in the current epoch in assets.
    function claimableDepositBalanceInAsset(address owner) external view returns (uint256 assets);

    /// @notice Claim processed deposit; returns minted SHARES.
    function claimDeposit(address receiver) external returns (uint256 shares);

    /// @notice Upper bound for a new deposit request for an owner.
    function maxDepositRequest(address owner) external view returns (uint256);

    /// @notice Preview claim result for deposits.
    function previewClaimDeposit(address owner) external view returns (uint256);

    /* ═════════════════════════════════════ REQUEST / CLAIM (REDEEM) ═════════════════════════════ */

    /// @notice redeem request (by sending shares to pending silo).
    function requestRedeem(
        uint256 shares,
        address receiver,
        address owner,
        bytes calldata data
    ) external;

    /// @notice Decrease a previously requested redeem amount for msg.sender.
    function decreaseRedeemRequest(uint256 shares) external;

    /// @notice Pending redeem shares for an owner in the current epoch.
    function pendingRedeemRequest(address owner) external view returns (uint256 shares);

    /// @notice Claimable redeem from a previous epoch for an owner.
    function claimableRedeemRequest(address owner) external view returns (uint256 shares);

    /// @notice Claim processed redeem; returns ASSETS (underlying).
    function claimRedeem(address receiver) external returns (uint256 assets);

    /// @notice Upper bound for a new redeem request for an owner.
    function maxRedeemRequest(address owner) external view returns (uint256);

    /// @notice Preview claim result for redeems.
    function previewClaimRedeem(address owner) external view returns (uint256);

    /* ═════════════════════════════════════ CONVERSION HELPERS ═══════════════════════════════════ */

    /// @notice Convert using current live state.
    function convertToShares(uint256 assets) external view returns (uint256 shares);
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /// @notice Convert using a specific epoch/request snapshot.
    function convertToShares(
        uint256 assets,
        uint256 epochOrRequestId
    ) external view returns (uint256 shares);
    function convertToAssets(
        uint256 shares,
        uint256 epochOrRequestId
    ) external view returns (uint256 assets);

    /* ═════════════════════════════════════ AGGREGATE VIEWS ══════════════════════════════════════ */

    function totalPendingDeposits() external view returns (uint256);
    function totalPendingRedeems() external view returns (uint256);
    function totalClaimableShares() external view returns (uint256);
    function totalClaimableAssets() external view returns (uint256);

    /* ═════════════════════════════════════ LIFECYCLE / ADMIN ════════════════════════════════════ */

    function close() external; // onlyOwner in implementation
    function open(uint256 assetReturned) external; // onlyOwner, whenClosed
    function settle(uint256 newSavedBalance) external; // onlyOwner, whenClosed
    function setTreasury(address _treasury) external;
    function setFee(uint16 newFee) external;
    function setMaxDrawdown(uint16 newMaxDrawdown) external;

    /* ══════════════════════════════════════ PREVIEWS ════════════════════════════════════════════ */

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

    /* ═════════════════════════════════════ AUXILIARY (SPECTRA WRAPPER) ══════════════════════════ */

    /// @notice Snapshots for a given epoch.
    function getEpochSnapshots(
        uint256 epochId
    ) external view returns (uint256 totalSupplySnapshot, uint256 totalAssetsSnapshot);

    /// @notice Last epoch where user made a deposit request.
    function lastUserDepositRequestEpoch(address user) external view returns (uint256);

    /// @notice Last epoch where user made a redeem request.
    function lastUserRedeemRequestEpoch(address user) external view returns (uint256);

    /* ═════════════════════════════════════ ERC165 ═══════════════════════════════════════════════ */

    function supportsInterface(bytes4 interfaceId) external pure returns (bool);

    /* ═════════════════════════════════════ ERRORS ═══════════════════════════════════════════════ */

    error ExceededMaxRedeemRequest(address receiver, uint256 shares, uint256 maxShares);
    error ExceededMaxDepositRequest(address receiver, uint256 assets, uint256 maxDeposit);
    error ReceiverFailed();
    error ERC7540CantRequestDepositOnBehalfOf();
    error NoClaimAvailable(address owner);
    error InvalidTreasury();
}
