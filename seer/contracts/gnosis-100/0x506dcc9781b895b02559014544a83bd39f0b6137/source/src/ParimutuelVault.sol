// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ParimutuelPositions} from "./ParimutuelPositions.sol";
import {IParimutuelVault} from "./interfaces/IParimutuelVault.sol";
import {IParimutuelPositions} from "./interfaces/IParimutuelPositions.sol";
import {IConditionalTokens} from "./interfaces/IConditionalTokens.sol";
import {IERC1155} from "./interfaces/IERC1155.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMarket} from "./interfaces/IMarket.sol";
import {IRouter} from "./interfaces/IRouter.sol";

/// @title ParimutuelVault
/// @notice Parimutuel Scalar Prediction Market (PSPM) vault for Seer markets.
/// @dev Flow overview (auditors):
///      1. enterPositions: user deposits collateral → Router splits into one unit of each raw Seer outcome
///         token per collateral unit → vault mints ParimutuelPositions (ERC1155) for the user's weighted share of
///         each positionable outcome; raw surplus is credited to `_vaultSurplus[entryDeadline]` for later bonus.
///      2. redeemPositions: user (or approved operator) returns ParimutuelPositions → vault unwraps to raw outcome tokens,
///         adds a proportional share of its deadline-scoped surplus (the bonus) → Router redeems the combined raw amount →
///         collateral is sent to the user.
///      Users never hold raw Seer outcome tokens; only ParimutuelPositions can redeem through this vault.
///      External Router mints produce raw Seer tokens that cannot access the socialized pool here.
///      Invariant: total collateral redeemed across all users equals total collateral deposited,
///      once every position token has been redeemed. Surplus raw tokens held by the vault are not
///      collateral until they are attached to a user's redeem and burned via the Router.
///      On Seer markets `numOutcomes()` excludes INVALID and equals `outcomeSlotCount - 1`.
///      Positionable indices: `0 .. numOutcomes - 1`. INVALID index: `numOutcomes` (`slotCount - 1`).
///      Per deadline cohort and positionable outcome i (while betting is open, before redeems):
///      vaultBalance(entryDeadline, i) + positionCirculating(entryDeadline, i) == openInterest(entryDeadline).
///      `openInterest` is derived from outcome 0 and is intended for the open betting window only.
///      Zero-weight entries: weights may include 0 as long as they sum to WEIGHT_SCALE. A 0% allocation still
///      splits collateral into raw tokens on that outcome; the vault keeps the full amount as surplus with no
///      ParimutuelPositions minted. This is intentional — users may express "no exposure" on an outcome while
///      markets remain open long enough for others to enter that side. Edge case: zero-weight deposits can leave
///      vault surplus on an outcome with no position holders; if someone later enters that side and it wins,
///      previewBonus pays them from that surplus (pro-rata among holders, as always). Acceptable by design.
///      Betting window: entries require `block.timestamp < entryDeadline`. The deadline is set per slate by the
///      creator (e.g. kickoff). On Seer, a Reality question may already be open when the market is created while
///      the underlying event is still far away — Reality timestamps are not used to gate entries. The slate
///      deadline is the sole on-chain close for the parimutuel pool so late entrants cannot dilute the pool once
///      outcomes become knowable. Reality `isFinalized` is intentionally not checked: a malicious early wrong
///      answer would grief the pool by freezing entries.
///      Deadline scoping: `entryDeadline` partitions ParimutuelPositions token ids and `_vaultSurplus` accounting.
///      Same Seer market + same deadline = one parimutuel pool (slates sharing kickoff merge by design).
///      Different deadlines on the same market = independent pools; a late entry with a fake future deadline
///      mints distinct positions and cannot dilute an earlier closed window. `_vaultSurplus` is required because
///      raw outcome ERC20s in this contract are physically fungible across deadline cohorts.
contract ParimutuelVault is IParimutuelVault {
    /// @notice Basis points denominator for `weights` (must sum exactly to this value).
    uint256 public constant WEIGHT_SCALE = 10_000;

    /// @notice Seer Router used for splitPosition / redeemPositions (wraps Conditional Tokens).
    IRouter public immutable router;

    /// @notice Gnosis Conditional Tokens instance (payout numerators, outcome slot count).
    IConditionalTokens public immutable conditionalTokens;

    /// @notice ERC1155 position tokens minted to participants on enter.
    IParimutuelPositions public immutable parimutuelPositions;

    /// @notice Deadline-scoped socialized surplus per market outcome (raw outcome tokens, not collateral).
    mapping(uint32 entryDeadline => mapping(address market => mapping(uint256 outcomeIndex => uint256))) internal
        _vaultSurplus;

    error ZeroAmount();
    error ZeroAddress();
    error InvalidWeightsLength();
    error WeightsMustSumToScale();
    error InvalidAmountsLength();
    error EntryDeadlinePassed(uint32 deadline);
    error TransferFailed();
    error ApproveFailed();
    error NotApproved();
    error NotAuthorized();

    constructor(IRouter _router) {
        router = _router;
        conditionalTokens = IConditionalTokens(_router.conditionalTokens());
        parimutuelPositions = IParimutuelPositions(address(new ParimutuelPositions(address(this))));
    }

    /// @inheritdoc IParimutuelVault
    /// @dev Steps per market:
    ///      1. Validate `weights` (length = numOutcomes, sum = WEIGHT_SCALE).
    ///      2. Require `block.timestamp < entryDeadline` (checked once for the batch).
    ///      3. Split via Router (vault receives `amountPerMarket` of every raw outcome token).
    ///      4. Mint ParimutuelPositions for each user share; credit surplus to `_vaultSurplus[entryDeadline]`.
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
        address recipient,
        uint32 entryDeadline
    ) external {
        if (block.timestamp >= entryDeadline) revert EntryDeadlinePassed(entryDeadline);

        uint256 marketCount = markets.length;
        if (amountPerMarket == 0) revert ZeroAmount();
        if (payer == address(0) || recipient == address(0)) revert ZeroAddress();
        if (weightsPerMarket.length != marketCount) revert InvalidWeightsLength();
        if (msg.sender != payer && payer != recipient) revert NotAuthorized();

        uint256 total = amountPerMarket * marketCount;
        if (!collateralToken.transferFrom(payer, address(this), total)) revert TransferFailed();
        if (!collateralToken.approve(address(router), total)) revert ApproveFailed();

        for (uint256 i = 0; i < marketCount; i++) {
            _enterPosition(
                collateralToken, markets[i], amountPerMarket, weightsPerMarket[i], recipient, entryDeadline
            );
        }
    }

    function _enterPosition(
        IERC20 collateralToken,
        IMarket market,
        uint256 amount,
        uint256[] calldata weights,
        address recipient,
        uint32 entryDeadline
    ) internal {
        uint256 numOutcomes = market.numOutcomes();
        if (weights.length != numOutcomes) revert InvalidWeightsLength();

        uint256 weightSum;
        for (uint256 i = 0; i < numOutcomes; i++) {
            weightSum += weights[i];
        }
        if (weightSum != WEIGHT_SCALE) revert WeightsMustSumToScale();

        router.splitPosition(collateralToken, market, amount);

        address marketAddr = address(market);

        // For each positionable outcome i: user gets ParimutuelPositions for amount * weights[i] / WEIGHT_SCALE;
        // vault credits amount - userKeeps to `_vaultSurplus[entryDeadline]` for later socialized bonus.
        // weights[i] == 0 is allowed: no positions minted on that outcome, but split still deposits raw tokens
        // into the vault surplus pool for that slot (see contract-level note on zero-weight entries).
        for (uint256 i = 0; i < numOutcomes; i++) {
            uint256 userKeeps = amount * weights[i] / WEIGHT_SCALE;
            if (userKeeps > 0) {
                (IERC20 token,) = market.wrappedOutcome(i);
                if (!token.approve(address(parimutuelPositions), userKeeps)) revert ApproveFailed();
                parimutuelPositions.mint(market, i, entryDeadline, recipient, userKeeps);
            }
            uint256 surplus = amount - userKeeps;
            if (surplus > 0) {
                _vaultSurplus[entryDeadline][marketAddr][i] += surplus;
            }
        }

        // INVALID_RESULT: index numOutcomes; never split via weights. Recipient receives 100% as ParimutuelPositions.
        (IERC20 invalidToken,) = market.wrappedOutcome(numOutcomes);
        if (!invalidToken.approve(address(parimutuelPositions), amount)) revert ApproveFailed();
        parimutuelPositions.mint(market, numOutcomes, entryDeadline, recipient, amount);

        emit PositionEntered(entryDeadline, marketAddr, address(collateralToken), recipient, amount, weights);
    }

    /// @inheritdoc IParimutuelVault
    /// @dev Steps per market:
    ///      1. Compute per-outcome bonus from deadline-scoped vault surplus (previewBonus).
    ///      2. Burn positionOwner's ParimutuelPositions and release raw underlying into this contract.
    ///      3. Debit bonuses from `_vaultSurplus[entryDeadline]` and redeem (user amount + bonus) through the Router.
    ///      Payout for all markets is forwarded to positionOwner in one transfer.
    /// @param amountsPerMarket Outer length must equal `markets.length`; inner amounts per outcome slot.
    function redeemPositions(
        address positionOwner,
        IERC20 collateralToken,
        IMarket[] calldata markets,
        uint256[][] calldata amountsPerMarket,
        uint32 entryDeadline
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
            payout += _redeemMarket(collateralToken, markets[i], positionOwner, amountsPerMarket[i], entryDeadline);
        }

        if (payout > 0) {
            if (!collateralToken.transfer(positionOwner, payout)) revert TransferFailed();
        }
    }

    function _redeemMarket(
        IERC20 collateralToken,
        IMarket market,
        address positionOwner,
        uint256[] calldata amounts,
        uint32 entryDeadline
    ) internal returns (uint256 payout) {
        uint256 numOutcomes = market.numOutcomes();
        if (amounts.length != numOutcomes + 1) revert InvalidAmountsLength();

        // Bonus is computed before any burn so vault raw balances are stable (CEI).
        uint256[] memory bonuses = _previewBonus(entryDeadline, market, amounts);

        for (uint256 i = 0; i < numOutcomes + 1; i++) {
            if (amounts[i] > 0) {
                parimutuelPositions.releasePositions(market, i, entryDeadline, positionOwner, amounts[i]);
            }
        }

        _debitSurplus(entryDeadline, market, bonuses);
        payout = _routerRedeem(collateralToken, market, amounts, bonuses);

        emit Redeemed(entryDeadline, address(market), address(collateralToken), positionOwner, amounts, payout);
    }

    function _debitSurplus(uint32 entryDeadline, IMarket market, uint256[] memory bonuses) internal {
        address marketAddr = address(market);
        for (uint256 i = 0; i < bonuses.length; i++) {
            if (bonuses[i] > 0) {
                _vaultSurplus[entryDeadline][marketAddr][i] -= bonuses[i];
            }
        }
    }

    function _routerRedeem(
        IERC20 collateralToken,
        IMarket market,
        uint256[] calldata amounts,
        uint256[] memory bonuses
    ) internal returns (uint256 payout) {
        uint256 numOutcomes = market.numOutcomes();
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
    }

    /// @inheritdoc IParimutuelVault
    /// @notice Socialized bonus for outcome i (in outcome tokens, not collateral):
    ///         bonus_i = amounts[i] * vaultBalance(entryDeadline, i) / positionCirculating(entryDeadline, i)
    ///         where positionCirculating_i = parimutuelPositions.totalSupply(tokenId_i) for the same `entryDeadline`.
    /// @dev Skips outcomes with zero payout numerator (losing side after resolution) or zero position supply
    ///      (avoids division by zero; any vault surplus on that slot waits until someone holds positions there).
    ///      Bonus is only paid on redeemable outcomes.
    function previewBonus(uint32 entryDeadline, IMarket market, uint256[] calldata amounts)
        public
        view
        returns (uint256[] memory bonuses)
    {
        return _previewBonus(entryDeadline, market, amounts);
    }

    function _previewBonus(uint32 entryDeadline, IMarket market, uint256[] calldata amounts)
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

            uint256 vaultBal = vaultBalance(entryDeadline, market, i);
            uint256 circulating = positionCirculating(entryDeadline, market, i);
            if (circulating > 0) {
                bonuses[i] = amounts[i] * vaultBal / circulating;
            }
        }
    }

    /// @inheritdoc IParimutuelVault
    function openInterest(uint32 entryDeadline, IMarket market) public view returns (uint256) {
        return vaultBalance(entryDeadline, market, 0) + positionCirculating(entryDeadline, market, 0);
    }

    /// @inheritdoc IParimutuelVault
    /// @notice Deadline-scoped socialized surplus ledger entry for a market outcome index (not the physical ERC20 balance).
    function vaultBalance(uint32 entryDeadline, IMarket market, uint256 outcomeIndex) public view returns (uint256) {
        return _vaultSurplus[entryDeadline][address(market)][outcomeIndex];
    }

    /// @inheritdoc IParimutuelVault
    /// @notice Parimutuel position tokens held by users for a given outcome (excludes external Seer mints).
    function positionCirculating(uint32 entryDeadline, IMarket market, uint256 outcomeIndex)
        public
        view
        returns (uint256)
    {
        return parimutuelPositions.totalSupply(positionTokenId(entryDeadline, market, outcomeIndex));
    }

    /// @inheritdoc IParimutuelVault
    function positionTokenId(uint32 entryDeadline, IMarket market, uint256 outcomeIndex) public view returns (uint256) {
        return parimutuelPositions.tokenId(market, outcomeIndex, entryDeadline);
    }
}
