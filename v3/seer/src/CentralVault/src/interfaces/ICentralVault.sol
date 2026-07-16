// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ICVPositions} from "./ICVPositions.sol";
import {IConditionalTokens} from "./IConditionalTokens.sol";
import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";
import {IRouter} from "./IRouter.sol";

/// @notice Parimutuel scalar / categorical vault with socialized surplus redistribution.
interface ICentralVault {
    /// @notice Basis-point scale for position weights (must sum to this value).
    function WEIGHT_SCALE() external view returns (uint256);

    function router() external view returns (IRouter);

    function conditionalTokens() external view returns (IConditionalTokens);

    function cvPositions() external view returns (ICVPositions);

    event PositionEntered(
        address indexed market, address indexed collateral, address indexed user, uint256 amount, uint256[] weights
    );

    event Redeemed(
        address indexed market, address indexed collateral, address indexed user, uint256[] amounts, uint256 payout
    );

    /// @notice Splits collateral via the Router, keeps surplus outcome tokens in the vault, mints position tokens.
    /// @param collateralToken ERC20 collateral used by this market (same token the Router expects).
    /// @param weights Length must equal `market.numOutcomes()`; entries must sum to `WEIGHT_SCALE`.
    function enterPosition(IERC20 collateralToken, IMarket market, uint256 amount, uint256[] calldata weights) external;

    /// @notice Redeems CV position tokens with socialized vault bonus; pays collateral to the caller.
    /// @param collateralToken ERC20 collateral to receive on redemption.
    /// @param amounts One entry per outcome slot (`getOutcomeSlotCount`); zero if not redeeming that slot.
    function redeem(IERC20 collateralToken, IMarket market, uint256[] calldata amounts) external;

    /// @notice Vault bonus tokens per outcome index for a hypothetical redeem.
    function previewBonus(IMarket market, uint256[] calldata amounts) external view returns (uint256[] memory);

    function vaultBalance(IMarket market, uint256 outcomeIndex) external view returns (uint256);

    /// @notice CV position tokens in circulation for an outcome (`cvPositions.totalSupply`).
    function positionCirculating(IMarket market, uint256 outcomeIndex) external view returns (uint256);

    /// @notice Pool size while betting is open: total collateral deposited via this vault.
    /// @dev `vaultBalance(market, 0) + positionCirculating(market, 0)`.
    ///      Exact before any redeem: each `enterPosition(amount)` adds `amount` to every positionable
    ///      outcome as `vaultBalance(i)` (raw surplus) plus `positionCirculating(i)` (CVPositions minted).
    ///      After redeems it no longer tracks total deposits because winning redeems burn raw tokens and
    ///      pay collateral out (lowering the sum on the redeemed slot), losing-outcome surplus is never
    ///      consumed by `previewBonus` (`payoutNumerator == 0`) and can remain stranded on other slots,
    ///      and per-outcome sums diverge. Intended only for the open betting window.
    function openInterest(IMarket market) external view returns (uint256);

    /// @notice ERC1155 token id for a market outcome slot.
    function positionTokenId(IMarket market, uint256 outcomeIndex) external view returns (uint256);
}
