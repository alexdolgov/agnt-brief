// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IParimutuelPositions} from "./IParimutuelPositions.sol";
import {IConditionalTokens} from "./IConditionalTokens.sol";
import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";
import {IRouter} from "./IRouter.sol";

/// @notice Parimutuel scalar / categorical vault with socialized surplus redistribution.
interface IParimutuelVault {
    /// @notice Basis-point scale for position weights (must sum to this value).
    function WEIGHT_SCALE() external view returns (uint256);

    function router() external view returns (IRouter);

    function conditionalTokens() external view returns (IConditionalTokens);

    function parimutuelPositions() external view returns (IParimutuelPositions);

    event PositionEntered(
        address indexed market,
        address indexed collateral,
        address indexed recipient,
        uint256 amount,
        uint256[] weights
    );

    event Redeemed(
        address indexed market, address indexed collateral, address indexed user, uint256[] amounts, uint256 payout
    );

    /// @notice Enters one or more markets: one collateral pull and Router approval for the full batch.
    /// @param payer Account debited for collateral; must have approved this vault.
    /// @param collateralToken ERC20 collateral used by these markets (same token the Router expects).
    /// @param recipient Address that receives minted parimutuel position tokens.
    /// @param amountPerMarket Collateral deposited per market; total pull is `amountPerMarket * markets.length`.
    /// @param weightsPerMarket Outer length must equal `markets.length`; inner weights per market.
    ///      Individual weights may be 0; they must still sum to `WEIGHT_SCALE` per market.
    /// @dev Caller must be `payer`, or `payer == recipient` (e.g. slate factory acting for a user).
    ///      When `payer == recipient`, any third party may call on behalf of a user who approved this vault;
    ///      positions always mint to `payer` (no fund redirection). Residual risk: griefing via unwanted entries
    ///      within the user's ERC20 allowance.
    ///      Zero-weight outcomes deposit raw surplus into the vault without minting positions on that slot.
    ///      Duplicate market addresses in `markets` are not rejected; each entry is entered separately.
    function enterPositions(
        address payer,
        IERC20 collateralToken,
        IMarket[] calldata markets,
        uint256 amountPerMarket,
        uint256[][] calldata weightsPerMarket,
        address recipient
    ) external;

    /// @notice Redeems parimutuel position tokens for one or more markets; pays collateral to `positionOwner`.
    /// @param collateralToken ERC20 collateral to receive on redemption.
    /// @param amountsPerMarket Outer length must equal `markets.length`; inner length `numOutcomes + 1` per market.
    /// @dev Caller must be `positionOwner` or an ERC1155 operator approved on ParimutuelPositions.
    function redeemPositions(
        address positionOwner,
        IERC20 collateralToken,
        IMarket[] calldata markets,
        uint256[][] calldata amountsPerMarket
    ) external returns (uint256 payout);

    /// @notice Vault bonus tokens per outcome index for a hypothetical redeem.
    /// @dev bonus_i = amounts[i] * vaultBalance(i) / positionCirculating(i) — pro-rata among holders on outcome i.
    function previewBonus(IMarket market, uint256[] calldata amounts) external view returns (uint256[] memory);

    function vaultBalance(IMarket market, uint256 outcomeIndex) external view returns (uint256);

    /// @notice Parimutuel position tokens in circulation for an outcome (`parimutuelPositions.totalSupply`).
    function positionCirculating(IMarket market, uint256 outcomeIndex) external view returns (uint256);

    /// @notice Pool size while betting is open: total collateral deposited via this vault.
    /// @dev `vaultBalance(market, 0) + positionCirculating(market, 0)`.
    ///      Exact before any redeem: each `enterPositions` deposit per market adds that amount to every positionable
    ///      outcome as `vaultBalance(i)` (raw surplus) plus `positionCirculating(i)` (ParimutuelPositions minted).
    ///      After redeems it no longer tracks total deposits because winning redeems burn raw tokens and
    ///      pay collateral out (lowering the sum on the redeemed slot). Losing-outcome surplus is never
    ///      consumed by `previewBonus` (`payoutNumerator == 0`) and remains stranded in the vault on
    ///      those slots — those tokens cannot be redeemed for collateral. Per-outcome sums diverge.
    ///      Intended only for the open betting window.
    function openInterest(IMarket market) external view returns (uint256);

    /// @notice ERC1155 token id for a market outcome slot.
    function positionTokenId(IMarket market, uint256 outcomeIndex) external view returns (uint256);
}
