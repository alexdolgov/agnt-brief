// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/* ─────────────────────────────────────────────────────────────
 * External interfaces (minimal)
 * ───────────────────────────────────────────────────────────── */

interface IB2FFactoryLike {
    function isBribeTokenWhitelistedView(address token) external view returns (bool);
    function getPremiumInfo(address campaign) external view returns (uint256 tierIndex, uint256 totalPaid);
    function minBribePremiumTier() external view returns (uint256);
}

interface IB2FCampaignLike {
    // CampaignStatus: Pending=0, Burning=1, Finalizing=2, Claimable=3, Refundable=4
    function getStatus() external view returns (uint8);
    function totalBurned() external view returns (uint256);
    function burned(address user) external view returns (uint256);
}

/* ─────────────────────────────────────────────────────────────
 * Custom errors
 * ───────────────────────────────────────────────────────────── */
error AlreadyInitialized();
error NotFactory();
error InvalidAddress();
error ForbiddenAsset();
error InvalidCondition();
error BribesNotActive();
error ZeroAmount();
error NotFinalized();
error NotBurner();
error NoClaim();
error NoRefund();
error NativeTransferFailed();

/* ─────────────────────────────────────────────────────────────
 * Events (subgraph-friendly)
 * ───────────────────────────────────────────────────────────── */
event Initialized(address indexed campaign, address indexed factory);

event AssetListed(address indexed asset);

event TokenBribed(
    address indexed asset,
    address indexed depositor,
    uint8 indexed cond,
    uint256 requestedAmount,
    uint256 receivedAmount
);

event NativeBribed(address indexed depositor, uint8 indexed cond, uint256 amount);

event FinalStateSynced(bool success, uint256 totalBurned);

event Claimed(address indexed user, address indexed asset, uint8 indexed cond, uint256 amount);

event UnusedRefunded(address indexed depositor, address indexed asset, uint8 indexed cond, uint256 amount);

/* ─────────────────────────────────────────────────────────────
 * BurnToFunBribeVault
 *
 * Accepts native (S) and whitelisted ERC-20 bribes for a campaign.
 * Distributes to campaign burners pro-rata by burned FIVE once finalized.
 * Unused pools (condition not met, or no burners for Cond.Any) are refundable.
 * ───────────────────────────────────────────────────────────── */
contract BurnToFunBribeVault is ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ──────────────── Types ──────────────── */

    /// @dev Distribution conditions (indexes double as bit positions).
    enum Cond {
        Any, // always distribute to burners (unless finalTotalBurned == 0)
        OnSuccess, // distribute only if campaign success (Claimable)
        OnFailure // distribute only if campaign failure (Refundable)
    }

    /* ──────────────── Core wiring ──────────────── */
    address public campaign;
    address public factory;

    /* ──────────────── Finalization latch ──────────────── */
    bool public finalSynced;
    bool public finalSuccess;
    uint256 public finalTotalBurned; // cached from campaign.totalBurned() on first sync

    /* ──────────────── Asset registry ──────────────── */
    address[] private _assets; // enumerated assets (address(0) = native)
    mapping(address => bool) public assetListed; // is asset known in this vault
    mapping(address => uint8) public assetConditionsMask; // bitmask: bit0=Any, bit1=OnSuccess, bit2=OnFailure

    /* ──────────────── Totals (per asset / condition) ──────────────── */
    mapping(address => mapping(uint8 => uint256)) public totalDeposited; // asset => cond => amount
    mapping(address => mapping(uint8 => uint256)) public totalClaimed; // asset => cond => amount
    mapping(address => mapping(uint8 => uint256)) public totalRefunded; // asset => cond => amount

    /* ──────────────── Per-user accounting ──────────────── */
    mapping(address => mapping(address => mapping(uint8 => uint256))) public userDeposited; // user => asset => cond
    mapping(address => mapping(address => mapping(uint8 => uint256))) public userRefunded; // user => asset => cond
    mapping(address => mapping(address => mapping(uint8 => uint256))) public userClaimed; // user => asset => cond

    /* ──────────────── Init ──────────────── */

    /// @notice One-time initializer. Called by the factory immediately after clone deploy.
    function initialize(address _campaign, address _factory) external {
        if (campaign != address(0)) revert AlreadyInitialized();
        if (_campaign == address(0) || _factory == address(0)) revert InvalidAddress();
        if (_campaign.code.length == 0 || _factory.code.length == 0) revert InvalidAddress();

        campaign = _campaign;
        factory = _factory;

        emit Initialized(_campaign, _factory);
    }

    /* ──────────────── Internal guards ──────────────── */

    function _requireActive() internal view {
        (uint256 tierIndex, ) = IB2FFactoryLike(factory).getPremiumInfo(campaign);
        if (tierIndex < IB2FFactoryLike(factory).minBribePremiumTier()) revert BribesNotActive();
    }

    function _requireValidCond(uint8 cond) internal pure {
        if (cond > uint8(Cond.OnFailure)) revert InvalidCondition();
    }

    function _bit(uint8 cond) internal pure returns (uint8) {
        return uint8(1) << cond; // 1, 2, or 4
    }

    function _listAssetIfNeeded(address asset, uint8 cond) internal {
        if (!assetListed[asset]) {
            assetListed[asset] = true;
            _assets.push(asset);
            emit AssetListed(asset);
        }
        // mark pool existence
        uint8 m = assetConditionsMask[asset];
        uint8 b = _bit(cond);
        if (m & b == 0) {
            assetConditionsMask[asset] = m | b;
        }
    }

    /* ──────────────── Deposits ──────────────── */

    /// @notice Deposit native coin (S) for a condition.
    function depositNative(uint8 cond) external payable nonReentrant {
        _requireActive();
        _requireValidCond(cond);
        if (msg.value == 0) revert ZeroAmount();

        address asset = address(0);
        _listAssetIfNeeded(asset, cond);

        totalDeposited[asset][cond] += msg.value;
        userDeposited[msg.sender][asset][cond] += msg.value;

        emit NativeBribed(msg.sender, cond, msg.value);
    }

    /// @notice Deposit a whitelisted ERC-20 for a condition (FoT-safe via balance delta).
    function depositERC20(address asset, uint256 amount, uint8 cond) external nonReentrant {
        _requireActive();
        _requireValidCond(cond);
        if (asset == address(0)) revert ForbiddenAsset();
        if (!IB2FFactoryLike(factory).isBribeTokenWhitelistedView(asset)) revert ForbiddenAsset();
        if (amount == 0) revert ZeroAmount();

        _listAssetIfNeeded(asset, cond);

        uint256 beforeBal = IERC20(asset).balanceOf(address(this));
        IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
        uint256 afterBal = IERC20(asset).balanceOf(address(this));

        uint256 received = afterBal - beforeBal; // auto-reverts on underflow in 0.8.x
        if (received == 0) revert ZeroAmount(); // covers fee-on-transfer that zeroed the inbound

        totalDeposited[asset][cond] += received;
        userDeposited[msg.sender][asset][cond] += received;

        emit TokenBribed(asset, msg.sender, cond, amount, received);
    }

    /* ──────────────── Finalization sync ──────────────── */

    /// @notice Cache final state (success/failure + totalBurned). Callable by anyone, idempotent.
    function syncFinalState() public {
        if (finalSynced) return;

        uint8 status = IB2FCampaignLike(campaign).getStatus(); // 3=Claimable (success), 4=Refundable (failure)
        if (status != 3 && status != 4) revert NotFinalized();

        finalSynced = true;
        finalSuccess = (status == 3);
        finalTotalBurned = IB2FCampaignLike(campaign).totalBurned();

        emit FinalStateSynced(finalSuccess, finalTotalBurned);
    }

    function _requireFinalAndSync() internal {
        if (!finalSynced) syncFinalState();
    }

    /* ──────────────── Claims (burners) ──────────────── */

    /// @notice Claim a single pool for caller (must have burned FIVE in the campaign).
    function claim(address asset, uint8 cond) public nonReentrant {
        _requireFinalAndSync();
        _requireValidCond(cond);

        // pool must be eligible under final outcome
        if (Cond(cond) == Cond.OnSuccess && !finalSuccess) revert NoClaim();
        if (Cond(cond) == Cond.OnFailure && finalSuccess) revert NoClaim();

        uint256 userBurn = IB2FCampaignLike(campaign).burned(msg.sender);
        if (userBurn == 0 || finalTotalBurned == 0) revert NotBurner();

        // Effective pool excludes any processed refunds (safety)
        uint256 poolEffective = totalDeposited[asset][cond] - totalRefunded[asset][cond];

        // Pro-rata owed total for the user from this pool
        uint256 owedTotal = (poolEffective * userBurn) / finalTotalBurned;

        uint256 already = userClaimed[msg.sender][asset][cond];
        if (owedTotal <= already) revert NoClaim();

        uint256 toSend = owedTotal - already;

        // effects
        userClaimed[msg.sender][asset][cond] = owedTotal;
        totalClaimed[asset][cond] += toSend;

        // interactions
        if (asset == address(0)) {
            (bool ok, ) = payable(msg.sender).call{ value: toSend }("");
            if (!ok) revert NativeTransferFailed();
        } else {
            IERC20(asset).safeTransfer(msg.sender, toSend);
        }

        emit Claimed(msg.sender, asset, cond, toSend);
    }

    /// @notice Claim all eligible pools across all listed assets for caller (best-effort).
    function claimAll() external {
        uint256 n = _assets.length;
        for (uint256 i; i < n; ) {
            address asset = _assets[i];
            uint8 mask = assetConditionsMask[asset];

            // short-circuit if no pools listed for this asset
            if (mask != 0) {
                if (mask & _bit(uint8(Cond.Any)) != 0) _tryClaim(asset, uint8(Cond.Any));
                if (mask & _bit(uint8(Cond.OnSuccess)) != 0) _tryClaim(asset, uint8(Cond.OnSuccess));
                if (mask & _bit(uint8(Cond.OnFailure)) != 0) _tryClaim(asset, uint8(Cond.OnFailure));
            }
            unchecked {
                ++i;
            }
        }
    }

    function _tryClaim(address asset, uint8 cond) internal {
        // swallow reverts that indicate "nothing to claim" to keep best-effort behavior
        try this.claim(asset, cond) {} catch {}
    }

    /* ──────────────── Refunds (depositors) ──────────────── */

    /// @notice Refund your unused deposit from a pool whose condition was not met.
    ///         Special case: Cond.Any refundable only if finalTotalBurned == 0 (no burners).
    function refundUnused(address asset, uint8 cond) external nonReentrant {
        _requireFinalAndSync();
        _requireValidCond(cond);

        bool refundable;
        if (Cond(cond) == Cond.Any) {
            refundable = (finalTotalBurned == 0);
        } else if (Cond(cond) == Cond.OnSuccess) {
            refundable = !finalSuccess;
        } else {
            // Cond.OnFailure
            refundable = finalSuccess;
        }
        if (!refundable) revert NoRefund();

        uint256 deposited = userDeposited[msg.sender][asset][cond];
        uint256 already = userRefunded[msg.sender][asset][cond];
        if (deposited <= already) revert NoRefund();

        uint256 toSend = deposited - already;

        // effects
        userRefunded[msg.sender][asset][cond] = deposited;
        totalRefunded[asset][cond] += toSend;

        // interactions
        if (asset == address(0)) {
            (bool ok, ) = payable(msg.sender).call{ value: toSend }("");
            if (!ok) revert NativeTransferFailed();
        } else {
            IERC20(asset).safeTransfer(msg.sender, toSend);
        }

        emit UnusedRefunded(msg.sender, asset, cond, toSend);
    }

    /* ──────────────── Views: assets & pools ──────────────── */

    function assets() external view returns (address[] memory) {
        return _assets;
    }
    function assetsLength() external view returns (uint256) {
        return _assets.length;
    }
    function assetAt(uint256 idx) external view returns (address) {
        return _assets[idx];
    }

    /// @notice Return (any, onSuccess, onFailure) pool existence flags for an asset.
    function getPools(address asset) external view returns (bool any_, bool onSuccess_, bool onFailure_) {
        uint8 m = assetConditionsMask[asset];
        any_ = (m & _bit(uint8(Cond.Any))) != 0;
        onSuccess_ = (m & _bit(uint8(Cond.OnSuccess))) != 0;
        onFailure_ = (m & _bit(uint8(Cond.OnFailure))) != 0;
    }

    /// @notice Total deposited across all conditions for an asset.
    function totalDepositedOf(address asset) public view returns (uint256) {
        return
            totalDeposited[asset][uint8(Cond.Any)] +
            totalDeposited[asset][uint8(Cond.OnSuccess)] +
            totalDeposited[asset][uint8(Cond.OnFailure)];
    }

    /// @notice Total refunded across all conditions for an asset.
    function totalRefundedOf(address asset) public view returns (uint256) {
        return
            totalRefunded[asset][uint8(Cond.Any)] +
            totalRefunded[asset][uint8(Cond.OnSuccess)] +
            totalRefunded[asset][uint8(Cond.OnFailure)];
    }

    /// @notice Total claimed across all conditions for an asset.
    function totalClaimedOf(address asset) public view returns (uint256) {
        return
            totalClaimed[asset][uint8(Cond.Any)] +
            totalClaimed[asset][uint8(Cond.OnSuccess)] +
            totalClaimed[asset][uint8(Cond.OnFailure)];
    }

    /// @notice Is a depositor refundable for a given pool under current (cached) final state?
    function isRefundable(address depositor, address asset, uint8 cond) external view returns (bool) {
        if (!finalSynced) return false;
        if (userDeposited[depositor][asset][cond] == 0) return false;

        if (Cond(cond) == Cond.Any) return finalTotalBurned == 0;
        if (Cond(cond) == Cond.OnSuccess) return !finalSuccess;
        if (Cond(cond) == Cond.OnFailure) return finalSuccess;
        return false;
    }

    /* ──────────────── Views: per-user aggregates ──────────────── */

    function userDepositedOf(address user, address asset) public view returns (uint256) {
        return
            userDeposited[user][asset][uint8(Cond.Any)] +
            userDeposited[user][asset][uint8(Cond.OnSuccess)] +
            userDeposited[user][asset][uint8(Cond.OnFailure)];
    }

    function userRefundedOf(address user, address asset) public view returns (uint256) {
        return
            userRefunded[user][asset][uint8(Cond.Any)] +
            userRefunded[user][asset][uint8(Cond.OnSuccess)] +
            userRefunded[user][asset][uint8(Cond.OnFailure)];
    }

    function userClaimedOf(address user, address asset) public view returns (uint256) {
        return
            userClaimed[user][asset][uint8(Cond.Any)] +
            userClaimed[user][asset][uint8(Cond.OnSuccess)] +
            userClaimed[user][asset][uint8(Cond.OnFailure)];
    }

    /// @notice Totals across all assets for a user in this campaign.
    function userTotals(
        address user
    ) external view returns (uint256 totalDeposited_, uint256 totalClaimed_, uint256 totalRefunded_) {
        uint256 n = _assets.length;
        for (uint256 i; i < n; ) {
            address a = _assets[i];
            totalDeposited_ += userDepositedOf(user, a);
            totalClaimed_ += userClaimedOf(user, a);
            totalRefunded_ += userRefundedOf(user, a);
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Number of distinct assets where user has deposited > 0.
    function userDepositedAssetCount(address user) external view returns (uint256 count) {
        uint256 n = _assets.length;
        for (uint256 i; i < n; ) {
            if (userDepositedOf(user, _assets[i]) > 0) count++;
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Quick preview for burners: how much would be claimable *now* from a pool (post-final).
    function preview(address user, address asset, uint8 cond) external view returns (uint256 claimable) {
        if (!finalSynced) return 0;
        if (Cond(cond) == Cond.OnSuccess && !finalSuccess) return 0;
        if (Cond(cond) == Cond.OnFailure && finalSuccess) return 0;

        uint256 userBurn = IB2FCampaignLike(campaign).burned(user);
        if (userBurn == 0 || finalTotalBurned == 0) return 0;

        uint256 poolEffective = totalDeposited[asset][cond] - totalRefunded[asset][cond];
        uint256 owedTotal = (poolEffective * userBurn) / finalTotalBurned;
        uint256 already = userClaimed[user][asset][cond];

        if (owedTotal > already) claimable = owedTotal - already;
    }

    /* ──────────────── Views: compact per-asset stats ──────────────── */

    /**
     * @notice Compact stats for a single asset.
     * @dev Arrays are indexed by uint8(Cond): 0=Any, 1=OnSuccess, 2=OnFailure.
     * @return listed          Whether this asset has been seen in this vault.
     * @return condMask        Bitmask of active pools: bit0=Any, bit1=OnSuccess, bit2=OnFailure.
     * @return whitelisted     True if native (address(0)) or whitelisted in factory.
     * @return deposited       [Any, OnSuccess, OnFailure] total deposited.
     * @return claimed         [Any, OnSuccess, OnFailure] total claimed.
     * @return refunded        [Any, OnSuccess, OnFailure] total refunded.
     * @return totalDeposited_ Sum across all conditions.
     * @return totalClaimed_   Sum across all conditions.
     * @return totalRefunded_  Sum across all conditions.
     */
    function assetStats(
        address asset
    )
        external
        view
        returns (
            bool listed,
            uint8 condMask,
            bool whitelisted,
            uint256[3] memory deposited,
            uint256[3] memory claimed,
            uint256[3] memory refunded,
            uint256 totalDeposited_,
            uint256 totalClaimed_,
            uint256 totalRefunded_
        )
    {
        listed = assetListed[asset];
        condMask = assetConditionsMask[asset];
        whitelisted = (asset == address(0)) || IB2FFactoryLike(factory).isBribeTokenWhitelistedView(asset);

        deposited[0] = totalDeposited[asset][uint8(Cond.Any)];
        deposited[1] = totalDeposited[asset][uint8(Cond.OnSuccess)];
        deposited[2] = totalDeposited[asset][uint8(Cond.OnFailure)];

        claimed[0] = totalClaimed[asset][uint8(Cond.Any)];
        claimed[1] = totalClaimed[asset][uint8(Cond.OnSuccess)];
        claimed[2] = totalClaimed[asset][uint8(Cond.OnFailure)];

        refunded[0] = totalRefunded[asset][uint8(Cond.Any)];
        refunded[1] = totalRefunded[asset][uint8(Cond.OnSuccess)];
        refunded[2] = totalRefunded[asset][uint8(Cond.OnFailure)];

        totalDeposited_ = deposited[0] + deposited[1] + deposited[2];
        totalClaimed_ = claimed[0] + claimed[1] + claimed[2];
        totalRefunded_ = refunded[0] + refunded[1] + refunded[2];
    }

    /// @notice Convenience: stats by index from internal registry.
    function assetStatsAt(
        uint256 index
    )
        external
        view
        returns (
            address asset,
            bool listed,
            uint8 condMask,
            bool whitelisted,
            uint256[3] memory deposited,
            uint256[3] memory claimed,
            uint256[3] memory refunded,
            uint256 totalDeposited_,
            uint256 totalClaimed_,
            uint256 totalRefunded_
        )
    {
        asset = _assets[index];
        (
            listed,
            condMask,
            whitelisted,
            deposited,
            claimed,
            refunded,
            totalDeposited_,
            totalClaimed_,
            totalRefunded_
        ) = this.assetStats(asset);
    }

    /* ──────────────── Views: global aggregates ──────────────── */

    /// @notice Totals across all assets (for the whole vault).
    function totalsAcrossAssets()
        external
        view
        returns (uint256 totalDeposited_, uint256 totalClaimed_, uint256 totalRefunded_)
    {
        uint256 n = _assets.length;
        for (uint256 i; i < n; ) {
            address a = _assets[i];
            totalDeposited_ += totalDepositedOf(a);
            totalClaimed_ += totalClaimedOf(a);
            totalRefunded_ += totalRefundedOf(a);
            unchecked {
                ++i;
            }
        }
    }
}
