// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ICentralVault} from "./interfaces/ICentralVault.sol";
import {IConditionalTokens} from "./interfaces/IConditionalTokens.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMarket} from "./interfaces/IMarket.sol";
import {IReality} from "./interfaces/IReality.sol";
import {IRouter} from "./interfaces/IRouter.sol";

/// @title CentralVault
/// @notice Parimutuel Scalar Prediction Market (PSPM) vault for Seer markets.
/// @dev Flow overview (auditors):
///      1. enterPosition: user deposits collateral → Router splits into one unit of each outcome token
///         per collateral unit → user keeps a weighted fraction of each positionable outcome; the
///         surplus stays in this contract as the "socialized pool".
///      2. redeem: user returns their outcome tokens → vault adds a proportional share of its surplus
///         (the bonus) → Router redeems the combined amount against Conditional Tokens → collateral
///         is sent to the user.
///      Invariant: total collateral redeemed across all users equals total collateral deposited,
///      once every outcome token has been redeemed. Surplus tokens held by the vault are not
///      collateral until they are attached to a user's redeem and burned via the Router.
///      Every Seer market has `numOutcomes()` positionable slots plus one INVALID_RESULT slot at
///      index `outcomeSlotCount - 1` (last slot). Weights apply only to the first `numOutcomes` slots.
contract CentralVault is ICentralVault {
    /// @notice Basis points denominator for `weights` (must sum exactly to this value).
    uint256 public constant WEIGHT_SCALE = 10_000;

    /// @notice Seer Router used for splitPosition / redeemPositions (wraps Conditional Tokens).
    IRouter public immutable router;

    /// @notice Gnosis Conditional Tokens instance (payout numerators, outcome slot count).
    IConditionalTokens public immutable conditionalTokens;

    /// @notice Reality.eth used to enforce the betting window via `getOpeningTS`.
    IReality public immutable reality;

    /// @notice Net collateral still in the system via this vault (entries − payouts).
    mapping(address market => uint256) internal _openInterest;

    error ZeroAmount();
    error InvalidWeightsLength();
    error WeightsMustSumToScale();
    error InvalidAmountsLength();
    error BettingClosed(bytes32 questionId);

    constructor(IRouter _router, IReality _reality) {
        router = _router;
        conditionalTokens = IConditionalTokens(_router.conditionalTokens());
        reality = _reality;
    }

    /// @inheritdoc ICentralVault
    /// @dev Steps:
    ///      1. Validate `weights` (length = numOutcomes, sum = WEIGHT_SCALE).
    ///      2. Require `block.timestamp < getOpeningTS` for every Reality question.
    ///      3. Pull collateral and split via Router (vault receives `amount` of every outcome token).
    ///      4. Transfer each user their positioned share; vault balance retains the surplus.
    ///      5. Transfer the full INVALID token amount to the user (not part of positioning).
    function enterPosition(IERC20 collateralToken, IMarket market, uint256 amount, uint256[] calldata weights)
        external
    {
        if (amount == 0) revert ZeroAmount();

        // Positionable outcomes only (excludes INVALID_RESULT).
        uint256 numOutcomes = market.numOutcomes();
        if (weights.length != numOutcomes) revert InvalidWeightsLength();

        uint256 weightSum;
        for (uint256 i = 0; i < numOutcomes; i++) {
            weightSum += weights[i];
        }
        if (weightSum != WEIGHT_SCALE) revert WeightsMustSumToScale();

        _requireBettingOpen(market);

        // Router pulls collateral from vault and mints wrapped ERC20 outcome tokens to vault.
        require(collateralToken.transferFrom(msg.sender, address(this), amount), "Collateral transfer failed");
        require(collateralToken.approve(address(router), amount), "Collateral approve failed");
        router.splitPosition(collateralToken, market, amount);

        uint256 slotCount = outcomeSlotCount(market);

        // For each positionable outcome i: user gets amount * weights[i] / WEIGHT_SCALE;
        // vault implicitly keeps amount - userKeeps (surplus for later socialized bonus).
        for (uint256 i = 0; i < numOutcomes; i++) {
            (IERC20 token,) = market.wrappedOutcome(i);
            uint256 userKeeps = amount * weights[i] / WEIGHT_SCALE;
            if (userKeeps > 0) {
                require(token.transfer(msg.sender, userKeeps), "Outcome transfer failed");
            }
        }

        // INVALID_RESULT: always the last slot; never split via weights — user receives 100%.
        (IERC20 invalidToken,) = market.wrappedOutcome(slotCount - 1);
        require(invalidToken.transfer(msg.sender, amount), "Invalid outcome transfer failed");

        _openInterest[address(market)] += amount;

        emit PositionEntered(address(market), address(collateralToken), msg.sender, amount, weights);
    }

    /// @inheritdoc ICentralVault
    /// @dev Steps:
    ///      1. Compute per-outcome bonus from vault surplus (previewBonus).
    ///      2. Pull user's outcome tokens into the vault.
    ///      3. Redeem (user amount + bonus) per outcome through the Router.
    ///      4. Forward all collateral received to the user.
    /// @param amounts Length must equal outcomeSlotCount; entry i is the amount the user contributes
    ///                for outcome i (0 if not redeeming that slot). Typically includes INVALID at
    ///                index slotCount - 1 if the user still holds it.
    function redeem(IERC20 collateralToken, IMarket market, uint256[] calldata amounts) external {
        uint256 slotCount = outcomeSlotCount(market);
        if (amounts.length != slotCount) revert InvalidAmountsLength();

        // Bonus is computed before any transfer so balances are stable (CEI).
        uint256[] memory bonuses = previewBonus(market, amounts);

        for (uint256 i = 0; i < slotCount; i++) {
            if (amounts[i] > 0) {
                (IERC20 token,) = market.wrappedOutcome(i);
                require(token.transferFrom(msg.sender, address(this), amounts[i]), "Outcome pull failed");
            }
        }

        // Build sparse arrays for Router.redeemPositions (only non-zero totals).
        uint256 redeemCount;
        for (uint256 i = 0; i < slotCount; i++) {
            if (amounts[i] + bonuses[i] > 0) {
                redeemCount++;
            }
        }

        uint256[] memory outcomeIndexes = new uint256[](redeemCount);
        uint256[] memory redeemAmounts = new uint256[](redeemCount);

        uint256 j;
        for (uint256 i = 0; i < slotCount; i++) {
            uint256 total = amounts[i] + bonuses[i];
            if (total > 0) {
                outcomeIndexes[j] = i;
                redeemAmounts[j] = total;
                j++;
            }
        }

        for (uint256 k = 0; k < redeemCount; k++) {
            (IERC20 token,) = market.wrappedOutcome(outcomeIndexes[k]);
            require(token.approve(address(router), redeemAmounts[k]), "Outcome approve failed");
        }

        // Router burns outcome tokens and credits collateral to this contract.
        uint256 balanceBefore = collateralToken.balanceOf(address(this));
        router.redeemPositions(collateralToken, market, outcomeIndexes, redeemAmounts);
        uint256 payout = collateralToken.balanceOf(address(this)) - balanceBefore;

        if (payout > 0) {
            require(collateralToken.transfer(msg.sender, payout), "Collateral payout failed");
        }

        _openInterest[address(market)] -= payout;

        emit Redeemed(address(market), address(collateralToken), msg.sender, amounts, payout);
    }

    /// @inheritdoc ICentralVault
    /// @notice Socialized bonus for outcome i (in outcome tokens, not collateral):
    ///         bonus_i = amounts[i] * vaultBalance_i / circulating_i
    ///         where circulating_i = totalSupply_i - vaultBalance_i (tokens held outside the vault).
    /// @dev Skips outcomes with zero payout numerator (losing side after resolution) or zero
    ///      circulating supply (avoids division by zero). Bonus is only paid on redeemable outcomes.
    function previewBonus(IMarket market, uint256[] calldata amounts) public view returns (uint256[] memory bonuses) {
        uint256 slotCount = outcomeSlotCount(market);
        if (amounts.length != slotCount) revert InvalidAmountsLength();

        bytes32 conditionId = market.conditionId();
        bonuses = new uint256[](slotCount);

        for (uint256 i = 0; i < slotCount; i++) {
            if (amounts[i] == 0) continue;
            if (conditionalTokens.payoutNumerators(conditionId, i) == 0) continue;

            (IERC20 token,) = market.wrappedOutcome(i);
            uint256 vaultBal = _vaultBalance(market, i);
            uint256 circulating = token.totalSupply() - vaultBal;
            if (circulating > 0) {
                bonuses[i] = amounts[i] * vaultBal / circulating;
            }
        }
    }

    /// @inheritdoc ICentralVault
    function openInterest(IMarket market) external view returns (uint256) {
        return _openInterest[address(market)];
    }

    /// @inheritdoc ICentralVault
    /// @notice Surplus outcome tokens held by the vault for a given market outcome index.
    function vaultBalance(IMarket market, uint256 outcomeIndex) external view returns (uint256) {
        return _vaultBalance(market, outcomeIndex);
    }

    /// @inheritdoc ICentralVault
    /// @notice Outcome tokens held by users from CentralVault entries only (excludes external mints).
    function cvCirculatingSupply(IMarket market, uint256 outcomeIndex) external view returns (uint256) {
        uint256 oi = _openInterest[address(market)];
        uint256 vb = _vaultBalance(market, outcomeIndex);
        return oi > vb ? oi - vb : 0;
    }

    function _vaultBalance(IMarket market, uint256 outcomeIndex) internal view returns (uint256) {
        (IERC20 token,) = market.wrappedOutcome(outcomeIndex);
        return token.balanceOf(address(this));
    }

    /// @dev Includes the INVALID_RESULT slot; equals `market.numOutcomes() + 1` on Seer markets.
    function outcomeSlotCount(IMarket market) internal view returns (uint256) {
        return conditionalTokens.getOutcomeSlotCount(market.conditionId());
    }

    /// @dev Reject entries once `block.timestamp >= opening_ts`.
    function _requireBettingOpen(IMarket market) internal view {
        bytes32[] memory questionIds = market.questionsIds();
        for (uint256 i = 0; i < questionIds.length; i++) {
            _requireBeforeOpeningTs(questionIds[i]);
        }

        if (questionIds.length == 0) {
            bytes32 questionId = market.questionId();
            if (questionId != bytes32(0)) {
                _requireBeforeOpeningTs(questionId);
            }
        }
    }

    function _requireBeforeOpeningTs(bytes32 questionId) internal view {
        uint32 openingTs = reality.getOpeningTS(questionId);
        if (block.timestamp >= openingTs) {
            revert BettingClosed(questionId);
        }
    }
}
