// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ParimutuelPositions} from "./ParimutuelPositions.sol";
import {IParimutuelVault} from "./interfaces/IParimutuelVault.sol";
import {IParimutuelPositions} from "./interfaces/IParimutuelPositions.sol";
import {IConditionalTokens} from "./interfaces/IConditionalTokens.sol";
import {IERC1155} from "./interfaces/IERC1155.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMarket} from "./interfaces/IMarket.sol";
import {IReality} from "./interfaces/IReality.sol";
import {IRouter} from "./interfaces/IRouter.sol";

/// @title ParimutuelVault
/// @notice Parimutuel Scalar Prediction Market (PSPM) vault for Seer markets.
/// @dev Flow overview (auditors):
///      1. enterPositions: user deposits collateral → Router splits into one unit of each raw Seer outcome
///         token per collateral unit → vault mints ParimutuelPositions (ERC1155) for the user's weighted share of
///         each positionable outcome; raw surplus stays in this contract as the "socialized pool".
///      2. redeemPositions: user (or approved operator) returns ParimutuelPositions → vault unwraps to raw outcome tokens,
///         adds a proportional share of its surplus (the bonus) → Router redeems the combined raw amount →
///         collateral is sent to the user.
///      Users never hold raw Seer outcome tokens; only ParimutuelPositions can redeem through this vault.
///      External Router mints produce raw Seer tokens that cannot access the socialized pool here.
///      Invariant: total collateral redeemed across all users equals total collateral deposited,
///      once every position token has been redeemed. Surplus raw tokens held by the vault are not
///      collateral until they are attached to a user's redeem and burned via the Router.
///      On Seer markets `numOutcomes()` excludes INVALID and equals `outcomeSlotCount - 1`.
///      Positionable indices: `0 .. numOutcomes - 1`. INVALID index: `numOutcomes` (`slotCount - 1`).
///      Per positionable outcome i (while betting is open, before redeems): vaultBalance(i) + positionCirculating(i)
///      == openInterest. openInterest is derived from outcome 0 and is intended for the open betting window only.
///      Zero-weight entries: weights may include 0 as long as they sum to WEIGHT_SCALE. A 0% allocation still
///      splits collateral into raw tokens on that outcome; the vault keeps the full amount as surplus with no
///      ParimutuelPositions minted. This is intentional — users may express "no exposure" on an outcome while
///      markets remain open long enough for others to enter that side. Edge case: zero-weight deposits can leave
///      vault surplus on an outcome with no position holders; if someone later enters that side and it wins,
///      previewBonus pays them from that surplus (pro-rata among holders, as always). Acceptable by design.
contract ParimutuelVault is IParimutuelVault {
    /// @notice Basis points denominator for `weights` (must sum exactly to this value).
    uint256 public constant WEIGHT_SCALE = 10_000;

    /// @notice Seer Router used for splitPosition / redeemPositions (wraps Conditional Tokens).
    IRouter public immutable router;

    /// @notice Gnosis Conditional Tokens instance (payout numerators, outcome slot count).
    IConditionalTokens public immutable conditionalTokens;

    /// @notice Reality.eth used to enforce the betting window via `getOpeningTS`.
    IReality public immutable reality;

    /// @notice ERC1155 position tokens minted to participants on enter.
    IParimutuelPositions public immutable parimutuelPositions;

    error ZeroAmount();
    error ZeroAddress();
    error InvalidWeightsLength();
    error WeightsMustSumToScale();
    error InvalidAmountsLength();
    error BettingClosed(bytes32 questionId);
    error TransferFailed();
    error ApproveFailed();
    error NotApproved();
    error NotAuthorized();

    constructor(IRouter _router, IReality _reality) {
        router = _router;
        conditionalTokens = IConditionalTokens(_router.conditionalTokens());
        reality = _reality;
        parimutuelPositions = IParimutuelPositions(address(new ParimutuelPositions(address(this))));
    }

    /// @inheritdoc IParimutuelVault
    /// @dev Steps per market:
    ///      1. Validate `weights` (length = numOutcomes, sum = WEIGHT_SCALE).
    ///      2. Require `block.timestamp < getOpeningTS` for every Reality question.
    ///      3. Split via Router (vault receives `amountPerMarket` of every raw outcome token).
    ///      4. Mint ParimutuelPositions for each user share; vault balance retains the raw surplus (unwrapped).
    ///      5. Mint the full INVALID position token amount to the recipient (not part of positioning).
    ///      `markets` is processed in order with no deduplication; duplicate entries debit `amountPerMarket`
    ///      again for the same market. Integrators must pass a correct market list.
    ///      Authorization: caller may differ from `payer` only when `payer == recipient` (e.g. `SlateFactory`
    ///      entering on behalf of a user). This is intentional — any address can invoke `enterPositions(user, …, user)`
    ///      for a user who approved this vault, choosing markets/amounts/weights. Funds cannot be redirected;
    ///      positions always mint to `payer`. Residual risk is griefing within the user's ERC20 allowance, not theft.
    function enterPositions(
        address payer,
        IERC20 collateralToken,
        IMarket[] calldata markets,
        uint256 amountPerMarket,
        uint256[][] calldata weightsPerMarket,
        address recipient
    ) external {
        uint256 marketCount = markets.length;
        if (amountPerMarket == 0) revert ZeroAmount();
        if (payer == address(0) || recipient == address(0)) revert ZeroAddress();
        if (weightsPerMarket.length != marketCount) revert InvalidWeightsLength();
        if (msg.sender != payer && payer != recipient) revert NotAuthorized();

        uint256 total = amountPerMarket * marketCount;
        if (!collateralToken.transferFrom(payer, address(this), total)) revert TransferFailed();
        if (!collateralToken.approve(address(router), total)) revert ApproveFailed();

        for (uint256 i = 0; i < marketCount; i++) {
            _enterPosition(collateralToken, markets[i], amountPerMarket, weightsPerMarket[i], recipient);
        }
    }

    function _enterPosition(
        IERC20 collateralToken,
        IMarket market,
        uint256 amount,
        uint256[] calldata weights,
        address recipient
    ) internal {
        uint256 numOutcomes = market.numOutcomes();
        if (weights.length != numOutcomes) revert InvalidWeightsLength();

        uint256 weightSum;
        for (uint256 i = 0; i < numOutcomes; i++) {
            weightSum += weights[i];
        }
        if (weightSum != WEIGHT_SCALE) revert WeightsMustSumToScale();

        _requireBettingOpen(market);

        router.splitPosition(collateralToken, market, amount);

        // For each positionable outcome i: user gets ParimutuelPositions for amount * weights[i] / WEIGHT_SCALE;
        // vault implicitly keeps amount - userKeeps as raw surplus for later socialized bonus.
        // weights[i] == 0 is allowed: no positions minted on that outcome, but split still deposits raw tokens
        // into the vault surplus pool for that slot (see contract-level note on zero-weight entries).
        for (uint256 i = 0; i < numOutcomes; i++) {
            uint256 userKeeps = amount * weights[i] / WEIGHT_SCALE;
            if (userKeeps > 0) {
                (IERC20 token,) = market.wrappedOutcome(i);
                if (!token.approve(address(parimutuelPositions), userKeeps)) revert ApproveFailed();
                parimutuelPositions.mint(market, i, recipient, userKeeps);
            }
        }

        // INVALID_RESULT: index numOutcomes; never split via weights. Recipient receives 100% as ParimutuelPositions.
        (IERC20 invalidToken,) = market.wrappedOutcome(numOutcomes);
        if (!invalidToken.approve(address(parimutuelPositions), amount)) revert ApproveFailed();
        parimutuelPositions.mint(market, numOutcomes, recipient, amount);

        emit PositionEntered(address(market), address(collateralToken), recipient, amount, weights);
    }

    /// @inheritdoc IParimutuelVault
    /// @dev Steps per market:
    ///      1. Compute per-outcome bonus from vault surplus (previewBonus).
    ///      2. Burn positionOwner's ParimutuelPositions and release raw underlying into this contract.
    ///      3. Redeem (user amount + bonus) per outcome through the Router.
    ///      Payout for all markets is forwarded to positionOwner in one transfer.
    /// @param amountsPerMarket Outer length must equal `markets.length`; inner amounts per outcome slot.
    function redeemPositions(
        address positionOwner,
        IERC20 collateralToken,
        IMarket[] calldata markets,
        uint256[][] calldata amountsPerMarket
    ) external returns (uint256 payout) {
        if (positionOwner == address(0)) revert ZeroAddress();
        if (
            positionOwner != msg.sender
                && !IERC1155(address(parimutuelPositions)).isApprovedForAll(positionOwner, msg.sender)
        ) {
            revert NotApproved();
        }

        uint256 marketCount = markets.length;
        if (amountsPerMarket.length != marketCount) revert InvalidAmountsLength();

        for (uint256 i = 0; i < marketCount; i++) {
            payout += _redeemMarket(collateralToken, markets[i], positionOwner, amountsPerMarket[i]);
        }

        if (payout > 0) {
            if (!collateralToken.transfer(positionOwner, payout)) revert TransferFailed();
        }
    }

    function _redeemMarket(
        IERC20 collateralToken,
        IMarket market,
        address positionOwner,
        uint256[] calldata amounts
    ) internal returns (uint256 payout) {
        uint256 numOutcomes = market.numOutcomes();
        if (amounts.length != numOutcomes + 1) revert InvalidAmountsLength();

        // Bonus is computed before any burn so vault raw balances are stable (CEI).
        uint256[] memory bonuses = _previewBonus(market, amounts);

        for (uint256 i = 0; i < numOutcomes + 1; i++) {
            if (amounts[i] > 0) {
                parimutuelPositions.releasePositions(market, i, positionOwner, amounts[i]);
            }
        }

        // Build sparse arrays for Router.redeemPositions (only non-zero totals).
        uint256 redeemCount;
        for (uint256 i = 0; i < numOutcomes + 1; i++) {
            if (amounts[i] + bonuses[i] > 0) {
                redeemCount++;
            }
        }

        uint256[] memory outcomeIndexes = new uint256[](redeemCount);
        uint256[] memory redeemAmounts = new uint256[](redeemCount);

        uint256 j;
        for (uint256 i = 0; i < numOutcomes + 1; i++) {
            uint256 total = amounts[i] + bonuses[i];
            if (total > 0) {
                outcomeIndexes[j] = i;
                redeemAmounts[j] = total;
                j++;
            }
        }

        for (uint256 k = 0; k < redeemCount; k++) {
            (IERC20 token,) = market.wrappedOutcome(outcomeIndexes[k]);
            if (!token.approve(address(router), redeemAmounts[k])) revert ApproveFailed();
        }

        // Router burns raw outcome tokens and credits collateral to this contract.
        uint256 balanceBefore = collateralToken.balanceOf(address(this));
        router.redeemPositions(collateralToken, market, outcomeIndexes, redeemAmounts);
        payout = collateralToken.balanceOf(address(this)) - balanceBefore;

        emit Redeemed(address(market), address(collateralToken), positionOwner, amounts, payout);
    }

    /// @inheritdoc IParimutuelVault
    /// @notice Socialized bonus for outcome i (in outcome tokens, not collateral):
    ///         bonus_i = amounts[i] * vaultBalance_i / positionCirculating_i
    ///         where positionCirculating_i = parimutuelPositions.totalSupply(tokenId_i).
    /// @dev Skips outcomes with zero payout numerator (losing side after resolution) or zero position supply
    ///      (avoids division by zero; any vault surplus on that slot waits until someone holds positions there).
    ///      Bonus is only paid on redeemable outcomes.
    function previewBonus(IMarket market, uint256[] calldata amounts) public view returns (uint256[] memory bonuses) {
        return _previewBonus(market, amounts);
    }

    function _previewBonus(IMarket market, uint256[] calldata amounts)
        internal
        view
        returns (uint256[] memory bonuses)
    {
        uint256 numOutcomes = market.numOutcomes();
        if (amounts.length != numOutcomes + 1) revert InvalidAmountsLength();

        bytes32 conditionId = market.conditionId();
        bonuses = new uint256[](numOutcomes + 1);

        for (uint256 i = 0; i < numOutcomes + 1; i++) {
            if (amounts[i] == 0) continue;
            if (conditionalTokens.payoutNumerators(conditionId, i) == 0) continue;

            uint256 vaultBal = vaultBalance(market, i);
            uint256 circulating = positionCirculating(market, i);
            if (circulating > 0) {
                bonuses[i] = amounts[i] * vaultBal / circulating;
            }
        }
    }

    /// @inheritdoc IParimutuelVault
    function openInterest(IMarket market) public view returns (uint256) {
        return vaultBalance(market, 0) + positionCirculating(market, 0);
    }

    /// @inheritdoc IParimutuelVault
    /// @notice Surplus raw Seer outcome tokens held by the vault for a given market outcome index.
    function vaultBalance(IMarket market, uint256 outcomeIndex) public view returns (uint256) {
        (IERC20 token,) = market.wrappedOutcome(outcomeIndex);
        return token.balanceOf(address(this));
    }

    /// @inheritdoc IParimutuelVault
    /// @notice Parimutuel position tokens held by users for a given outcome (excludes external Seer mints).
    function positionCirculating(IMarket market, uint256 outcomeIndex) public view returns (uint256) {
        return parimutuelPositions.totalSupply(positionTokenId(market, outcomeIndex));
    }

    /// @inheritdoc IParimutuelVault
    function positionTokenId(IMarket market, uint256 outcomeIndex) public view returns (uint256) {
        return parimutuelPositions.tokenId(market, outcomeIndex);
    }

    /// @dev Reject entries once `block.timestamp >= opening_ts` for any Reality question.
    ///      No ConditionalTokens resolution check is needed: on canonical Seer markets, RealityProxy
    ///      ensures a condition cannot be reported before its opening timestamp, so "resolved in CT but
    ///      opening_ts still in the future" cannot occur.
    function _requireBettingOpen(IMarket market) internal view {
        bytes32[] memory questionIds = market.questionsIds();
        for (uint256 i = 0; i < questionIds.length; i++) {
            _requireBeforeOpeningTs(questionIds[i]);
        }
    }

    function _requireBeforeOpeningTs(bytes32 questionId) internal view {
        uint32 openingTs = reality.getOpeningTS(questionId);
        if (block.timestamp >= openingTs) {
            revert BettingClosed(questionId);
        }
    }
}
