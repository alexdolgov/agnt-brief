// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title  IBondingCurve
/// @notice Per-token bonding curve. Implements a virtual-reserve constant-product market
///         (`x · y = k`) between the launcher token and native ETH, with fees taken on the
///         ETH leg only. Migrates to a downstream pool via {graduate} once either threshold
///         is crossed; in normal flow graduation runs inline from the terminal {buy}.
interface IBondingCurve {
    /* -------------------------------------------------------------------------- */
    /*                                   EVENTS                                   */
    /* -------------------------------------------------------------------------- */

    event Buy(
        address indexed buyer,
        uint256 ethIn,
        uint256 ethFee,
        uint256 tokensOut,
        uint256 virtualTokenReserves,
        uint256 virtualEthReserves
    );
    event Sell(
        address indexed seller,
        uint256 tokensIn,
        uint256 ethFee,
        uint256 ethOut,
        uint256 virtualTokenReserves,
        uint256 virtualEthReserves
    );
    event Graduated(
        address indexed token, bytes32 indexed poolId, uint256 ethSeeded, uint256 tokensSeeded, uint256 lpTokenId
    );
    event CreatorChanged(address indexed oldCreator, address indexed newCreator);
    event FeesAccrued(uint256 creatorAmount, uint256 protocolAmount);
    event CreatorFeesClaimed(uint256 totalClaimed, uint256 failedAmount);
    event ProtocolFeesClaimed(address indexed recipient, uint256 amount, bool ok);
    event CreatorSplitsChanged(uint256 newLength);
    event FeeRedirectsLocked();

    /* -------------------------------------------------------------------------- */
    /*                              IMMUTABLE CONFIG                              */
    /* -------------------------------------------------------------------------- */

    function TOKEN() external view returns (address);

    /// @notice Current creator (receives the creator share of every trade fee).
    /// @dev    Mutable via {setCreator}. The fee hook snapshots this at pool init; call
    ///         {IPumpFeeHook.syncCreator} after rotation to update the hook.
    function CREATOR() external view returns (address);

    function FACTORY() external view returns (address);

    /// @notice Tokens set aside to be sold on the curve.
    function CURVE_SUPPLY() external view returns (uint256);

    /// @notice Tokens seeded as initial liquidity into the downstream pool at graduation.
    function MIGRATION_SUPPLY() external view returns (uint256);

    /// @notice Post-fee `realEthIn` value that triggers graduation.
    function GRADUATION_ETH_TARGET() external view returns (uint256);

    /// @notice Flat ETH fee paid to the protocol at graduation.
    function GRADUATION_FEE_WEI() external view returns (uint256);

    /// @notice Flat ETH bonus paid to the creator at graduation.
    function CREATOR_GRADUATION_REWARD_WEI() external view returns (uint256);

    /// @notice Protocol share of per-trade fees, in bps (10 000 = 100 %).
    function PROTOCOL_FEE_BPS() external view returns (uint96);

    /// @notice Creator share of per-trade fees, in bps.
    function CREATOR_FEE_BPS() external view returns (uint96);

    function PROTOCOL_FEE_RECIPIENT() external view returns (address);

    /// @notice The {IMigrator} that owns the graduation flow for this curve.
    function MIGRATOR() external view returns (address);

    /// @notice If true, the creator share is zeroed at fee-calc time; traders pay only the
    ///         protocol share. Set at construction; immutable.
    function CASHBACK_MODE() external view returns (bool);

    /// @notice Unix timestamp at which the creator-only first-buy window closes by *time*.
    ///         Zero if the launch did not opt in.
    /// @dev    The window also closes early on the first successful {buy} ({firstBuyDone}
    ///         flips). While both gates are open, only {CREATOR} may call {buy}.
    function CREATOR_WINDOW_END() external view returns (uint64);

    /// @notice Sticky flag: true once the first successful {buy} has executed. A later
    ///         {sell} does NOT reset this; the creator-only window cannot be re-armed.
    function firstBuyDone() external view returns (bool);

    /* -------------------------------------------------------------------------- */
    /*                            CREATOR FEE SPLITTING                           */
    /* -------------------------------------------------------------------------- */

    struct CreatorSplit {
        address recipient;
        uint96 bps;
    }

    /// @notice Maximum number of recipients the creator share can be split across.
    function MAX_CREATOR_SPLITS() external view returns (uint256);

    /// @notice Replace the creator splits. Caller must be the current {CREATOR}. Each entry
    ///         must have a non-zero recipient and non-zero bps; total bps must equal 10 000.
    ///         An empty array routes the full bucket to {CREATOR}.
    function setCreatorSplits(CreatorSplit[] calldata splits) external;

    /// @notice Length of the configured splits array (0 means: pay {CREATOR} directly).
    function creatorSplitCount() external view returns (uint256);

    function creatorSplitAt(uint256 i) external view returns (address recipient, uint96 bps);

    /* -------------------------------------------------------------------------- */
    /*                              FEE CLAIM BUCKETS                             */
    /* -------------------------------------------------------------------------- */

    /// @notice ETH owed to the creator side, pending {claimCreatorFees}.
    function creatorOwed() external view returns (uint256);

    /// @notice ETH owed to {PROTOCOL_FEE_RECIPIENT}, pending {claimProtocolFees}.
    function protocolOwed() external view returns (uint256);

    /// @notice Drain {creatorOwed} to the configured splits (or to {CREATOR} if none).
    ///         Permissionless. Bounded-gas calls; recipients that revert leave their share
    ///         in the bucket for retry.
    function claimCreatorFees() external;

    /// @notice Drain {protocolOwed} to {PROTOCOL_FEE_RECIPIENT}. Permissionless.
    function claimProtocolFees() external;

    /* -------------------------------------------------------------------------- */
    /*                                   STATE                                    */
    /* -------------------------------------------------------------------------- */

    function virtualTokenReserves() external view returns (uint256);
    function virtualEthReserves() external view returns (uint256);

    /// @notice Cumulative tokens net-sold to buyers (non-decreasing until graduation).
    function realTokensSold() external view returns (uint256);

    /// @notice Cumulative ETH net-raised (fee-exclusive).
    function realEthIn() external view returns (uint256);

    function graduated() external view returns (bool);

    /* -------------------------------------------------------------------------- */
    /*                                  ACTIONS                                   */
    /* -------------------------------------------------------------------------- */

    /// @notice Buy tokens from the curve, paying with `msg.value`. The trade is clamped by
    ///         the smaller of (tokens remaining, ETH remaining to graduation); excess ETH
    ///         is refunded. If either cap is exhausted, graduation runs inline before this
    ///         call returns.
    /// @dev    Window enforcement: while {CREATOR_WINDOW_END} is non-zero, `block.timestamp
    ///         < CREATOR_WINDOW_END`, AND {firstBuyDone} is false, only {CREATOR} may call.
    function buy(uint256 minTokensOut, address receiver) external payable returns (uint256 tokensOut);

    /// @notice Sell `tokensIn` tokens back to the curve. Caller must have approved this
    ///         contract for `tokensIn` first.
    function sell(uint256 tokensIn, uint256 minEthOut, address receiver) external returns (uint256 ethOut);

    /// @notice Graduate the curve: route fee + creator bonus into pull-claim buckets, lift
    ///         the token transfer lock, and forward (MIGRATION_SUPPLY + remaining ETH) to
    ///         the migrator. Permissionless.
    /// @dev    In normal flow this is triggered ATOMICALLY by the terminal {buy}; this
    ///         external entry exists as a defensive fallback and reverts {CurveGraduated}
    ///         after auto-graduation has run.
    function graduate() external;

    /// @notice Rotate the creator. Caller must be the current {CREATOR}. Single-use:
    ///         flips {feeRedirectsLocked} and subsequent rotations revert.
    /// @dev    For post-graduation pools, call {IPumpFeeHook.syncCreator} after this so new
    ///         swap fees flow to the rotated address.
    function setCreator(address newCreator) external;

    /// @notice True once the one-shot fee-routing change has been used (set by either
    ///         {setCreator} or {setCreatorSplits}).
    function feeRedirectsLocked() external view returns (bool);

    /* -------------------------------------------------------------------------- */
    /*                                  QUOTING                                   */
    /* -------------------------------------------------------------------------- */

    /// @notice Preview a {buy}. Matches execution exactly.
    function quoteBuy(uint256 ethIn) external view returns (uint256 tokensOut, uint256 feePaid);

    /// @notice Preview a {sell}. Matches execution exactly.
    function quoteSell(uint256 tokensIn) external view returns (uint256 ethOut, uint256 feePaid);
}
