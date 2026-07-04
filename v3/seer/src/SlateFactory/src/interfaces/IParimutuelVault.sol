// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IParimutuelPositions} from "./IParimutuelPositions.sol";
import {IConditionalTokens} from "./IConditionalTokens.sol";
import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";
import {IRouter} from "./IRouter.sol";

/// @title IParimutuelVault
/// @notice Parimutuel scalar / categorical vault with socialized surplus redistribution.
interface IParimutuelVault {
    /// @notice Basis-point scale for position weights (must sum to this value).
    function WEIGHT_SCALE() external view returns (uint256);

    /// @notice Seer Router used for split and redeem of raw outcome tokens.
    function router() external view returns (IRouter);

    /// @notice Conditional Tokens Framework instance backing Seer markets.
    function conditionalTokens() external view returns (IConditionalTokens);

    /// @notice ERC1155 position tokens minted to participants on enter.
    function parimutuelPositions() external view returns (IParimutuelPositions);

    /// @notice Emitted after collateral is split and positions are minted for one market in a batch enter.
    event PositionEntered(
        uint32 indexed entryDeadline,
        address indexed market,
        address indexed collateral,
        address recipient,
        uint256 amount,
        uint256[] weights
    );

    /// @notice Emitted after one market's positions are redeemed and collateral payout is computed.
    event Redeemed(
        uint32 indexed entryDeadline,
        address indexed market,
        address indexed collateral,
        address user,
        uint256[] amounts,
        uint256 payout
    );

    /// @notice Enters a range of markets: one collateral pull and Router approval for the batch slice.
    /// @param payer Account debited for collateral; must have approved this vault.
    /// @param collateralToken ERC20 collateral used by these markets (same token the Router expects).
    /// @param marketStart First market index in `markets` to enter (inclusive).
    /// @param marketEnd One past the last market index to enter (exclusive); must be `<= markets.length`.
    /// @param recipient Address that receives minted parimutuel position tokens.
    /// @param amountPerMarket Collateral deposited per market; total pull is `amountPerMarket * (marketEnd - marketStart)`.
    /// @param weightsPerMarket Outer length must equal `marketEnd - marketStart`; inner weights per market.
    ///      Individual weights may be 0; they must still sum to `WEIGHT_SCALE` per market.
    /// @param entryDeadline Unix timestamp scoping positions and surplus for this batch; entries are rejected once
    ///      `block.timestamp >= entryDeadline` (`0` always fails the deadline check).
    /// @dev Caller must be `payer`, or `payer == recipient` (e.g. slate factory acting for a user).
    ///      When `payer == recipient`, any third party may call on behalf of a user who approved this vault;
    ///      positions always mint to `payer` (no fund redirection). Residual risk: griefing via unwanted entries
    ///      within the user's ERC20 allowance.
    ///      Positions and bonus pools are keyed by `(market, outcome, entryDeadline)`. Slates with the same kickoff
    ///      share one pool. A late entry with a different future `entryDeadline` mints distinct positions and cannot
    ///      dilute an earlier closed window.
    ///      Zero-weight outcomes deposit raw surplus into the vault without minting positions on that slot.
    ///      Duplicate market addresses in `markets` are not rejected; each entry is entered separately.
    ///      Entries are rejected once `block.timestamp >= entryDeadline`.
    function enterPositions(
        address payer,
        IERC20 collateralToken,
        IMarket[] calldata markets,
        uint256 marketStart,
        uint256 marketEnd,
        uint256 amountPerMarket,
        uint256[][] calldata weightsPerMarket,
        address recipient,
        uint32 entryDeadline
    ) external;

    /// @notice Redeems parimutuel position tokens for a range of markets; pays collateral to `positionOwner`.
    /// @param positionOwner Account whose positions are burned; receives the collateral payout.
    /// @param collateralToken ERC20 collateral to receive on redemption.
    /// @param marketStart First market index in `markets` to redeem (inclusive).
    /// @param marketEnd One past the last market index to redeem (exclusive); must be `<= markets.length`.
    /// @param amountsPerMarket Outer length must equal `marketEnd - marketStart`; inner length `numOutcomes + 1` per market.
    /// @param entryDeadline Unix timestamp cohort key; must match the `entryDeadline` used when the positions were
    ///      minted. Redemption is not gated by this deadline — only enter is.
    /// @dev Caller must be `positionOwner` or an ERC1155 operator approved on ParimutuelPositions.
    function redeemPositions(
        address positionOwner,
        IERC20 collateralToken,
        IMarket[] calldata markets,
        uint256 marketStart,
        uint256 marketEnd,
        uint256[][] calldata amountsPerMarket,
        uint32 entryDeadline
    ) external returns (uint256 payout);

    /// @notice Vault bonus tokens per outcome index for a hypothetical redeem within a deadline cohort.
    /// @dev bonus_i = amounts[i] * vaultBalance(entryDeadline, i) / positionCirculating(entryDeadline, i) — pro-rata
    ///      among holders on outcome i within the same `entryDeadline`.
    function previewBonus(uint32 entryDeadline, IMarket market, uint256[] calldata amounts)
        external
        view
        returns (uint256[] memory);

    /// @notice Deadline-scoped socialized surplus for a market outcome index (raw outcome tokens, not collateral).
    function vaultBalance(uint32 entryDeadline, IMarket market, uint256 outcomeIndex) external view returns (uint256);

    /// @notice Parimutuel position tokens in circulation for a deadline cohort outcome (`parimutuelPositions.totalSupply`).
    function positionCirculating(uint32 entryDeadline, IMarket market, uint256 outcomeIndex)
        external
        view
        returns (uint256);

    /// @notice Pool size while betting is open for a deadline cohort on a market.
    /// @dev `vaultBalance(entryDeadline, market, 0) + positionCirculating(entryDeadline, market, 0)`.
    ///      Exact before any redeem: each `enterPositions` deposit per market adds that amount to every positionable
    ///      outcome as `vaultBalance` (raw surplus) plus `positionCirculating` (ParimutuelPositions minted).
    ///      After redeems it no longer tracks total deposits because winning redeems burn raw tokens and
    ///      pay collateral out (lowering the sum on the redeemed slot). Losing-outcome surplus is never
    ///      consumed by `previewBonus` (`payoutNumerator == 0`) and remains stranded in the vault on
    ///      those slots — those tokens cannot be redeemed for collateral. Per-outcome sums diverge.
    ///      Intended only for the open betting window.
    function openInterest(uint32 entryDeadline, IMarket market) external view returns (uint256);

    /// @notice ERC1155 token id for a deadline-scoped market outcome slot.
    function positionTokenId(uint32 entryDeadline, IMarket market, uint256 outcomeIndex) external view returns (uint256);
}
