// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./interface/IAzuroBet.sol";
import "./interface/ICoreBase.sol";
import "./interface/ILP.sol";
import "./libraries/AffiliateHelper.sol";
import "./libraries/CoreTools.sol";
import "./libraries/FixedMath.sol";
import "./libraries/SafeCast.sol";
import "./libraries/Math.sol";
import "./utils/OwnableUpgradeable.sol";

/// @title Base contract for Azuro cores
abstract contract CoreBase is OwnableUpgradeable, ICoreBase {
    using FixedMath for uint256;
    using SafeCast for uint256;
    using SafeCast for uint128;

    mapping(uint256 => Condition) public conditions;

    IAzuroBet public azuroBet;
    ILP public lp;

    AffiliateHelper.Contributions internal contributions;
    AffiliateHelper.ContributedConditionIds internal contributedConditionIds;
    AffiliateHelper.AffiliatedProfits internal affiliatedProfits;

    /**
     * @notice Throw if caller is not the Liquidity Pool.
     */
    modifier onlyLp() {
        _checkOnlyLp();
        _;
    }

    /**
     * @notice Throw if caller have no access to function with selector `selector`.
     */
    modifier restricted(bytes4 selector) {
        lp.checkAccess(msg.sender, address(this), selector);
        _;
    }

    function initialize(address azuroBet_, address lp_)
        external
        virtual
        override
        initializer
    {
        __Ownable_init();
        azuroBet = IAzuroBet(azuroBet_);
        lp = ILP(lp_);
    }

    /**
     * @notice Indicate the condition `conditionId` as canceled.
     */
    function cancelCondition(uint256 conditionId)
        external
        restricted(this.cancelCondition.selector)
    {
        Condition storage condition = _getCondition(conditionId);
        ConditionState state = condition.state;
        uint256 gameId = condition.gameId;
        if (
            state == ConditionState.RESOLVED ||
            state == ConditionState.CANCELED ||
            lp.isGameCanceled(gameId)
        ) revert ConditionAlreadyResolved();

        condition.state = ConditionState.CANCELED;

        AffiliateHelper.delAffiliatedProfit(affiliatedProfits, conditionId);

        uint128 lockedReserve = _calcReserve(
            condition.reinforcement,
            condition.funds
        );
        if (lockedReserve > 0)
            lp.changeLockedLiquidity(gameId, -lockedReserve.toInt128());

        emit ConditionResolved(
            conditionId,
            uint8(ConditionState.CANCELED),
            0,
            0
        );
    }

    /**
     * @notice Change the current condition `conditionId` odds.
     */
    function changeOdds(uint256 conditionId, uint64[2] calldata newOdds)
        external
        restricted(this.changeOdds.selector)
    {
        Condition storage condition = _getCondition(conditionId);
        _conditionIsRunning(condition);

        _applyOdds(condition, newOdds);
        emit OddsChanged(conditionId, newOdds);
    }

    /**
     * @notice Indicate the status of condition `conditionId` bet lock.
     * @param  conditionId the match or condition ID
     * @param  flag if stop receiving bets for the condition or not
     */
    function stopCondition(uint256 conditionId, bool flag)
        external
        restricted(this.stopCondition.selector)
    {
        Condition storage condition = _getCondition(conditionId);
        // only CREATED state can be stopped
        // only PAUSED state can be restored
        ConditionState state = condition.state;
        if (
            (state != ConditionState.CREATED && flag) ||
            (state != ConditionState.PAUSED && !flag) ||
            lp.isGameCanceled(condition.gameId)
        ) revert CantChangeFlag();

        condition.state = flag ? ConditionState.PAUSED : ConditionState.CREATED;

        emit ConditionStopped(conditionId, flag);
    }

    /**
     * @notice Liquidity Pool: Resolve affiliate's contribution to total profit that is not rewarded yet.
     * @param  affiliate address indicated as an affiliate when placing bets
     * @param data core pre-match affiliate params
     * @return reward contribution amount
     */
    function resolveAffiliateReward(address affiliate, bytes calldata data)
        external
        virtual
        override
        onlyLp
        returns (uint256 reward)
    {
        uint256[] storage conditionIds = contributedConditionIds.map[affiliate];

        affiliateParams memory decoded = abi.decode(data, (affiliateParams));

        uint256 start = decoded.start;
        if (conditionIds.length == 0) revert NoPendingReward();
        if (start >= conditionIds.length)
            revert StartOutOfRange(conditionIds.length);

        uint256 conditionId;
        ICondition.Condition memory condition;
        AffiliateHelper.Contribution memory contribution;
        uint256 payout;

        uint256 end = (decoded.count != 0 &&
            start + decoded.count < conditionIds.length)
            ? start + decoded.count
            : conditionIds.length;
        while (start < end) {
            conditionId = conditionIds[start];
            condition = conditions[conditionId];
            ICondition.ConditionState state = condition.state;
            if (state == ICondition.ConditionState.RESOLVED) {
                uint256 affiliatesReward = condition.affiliatesReward;
                if (affiliatesReward > 0) {
                    contribution = contributions.map[affiliate][conditionId];
                    uint256 outcomeWinIndex = condition.outcomeWin ==
                        condition.outcomes[0]
                        ? 0
                        : 1;
                    payout = contribution.payouts[outcomeWinIndex];
                    if (contribution.totalNetBets > payout) {
                        reward +=
                            ((contribution.totalNetBets - payout) *
                                affiliatesReward) /
                            affiliatedProfits.map[conditionId][outcomeWinIndex];
                    }
                }
            } else {
                if (
                    !lp.isGameCanceled(condition.gameId) &&
                    state != ICondition.ConditionState.CANCELED
                ) {
                    start++;
                    continue;
                }
            }
            delete contributions.map[affiliate][conditionId];
            conditionIds[start] = conditionIds[conditionIds.length - 1];
            conditionIds.pop();
            end--;
        }
        return reward;
    }

    /**
     * @notice Calculate the odds of bet with amount `amount` for outcome `outcome` of condition `conditionId`.
     * @param  conditionId the match or condition ID
     * @param  amount amount of tokens to bet
     * @param  outcome predicted outcome
     * @return odds betting odds
     */
    function calcOdds(
        uint256 conditionId,
        uint128 amount,
        uint64 outcome
    ) external view override returns (uint64 odds) {
        Condition storage condition = _getCondition(conditionId);
        odds = _calcOdds(
            condition,
            condition.virtualFunds,
            amount,
            _getOutcomeIndex(condition, outcome)
        );
    }

    /**
     * @notice Get condition by it's ID.
     * @param  conditionId the match or condition ID
     * @return the condition struct
     */
    function getCondition(uint256 conditionId)
        external
        view
        returns (Condition memory)
    {
        return _getCondition(conditionId);
    }

    /**
     * @notice Get AzuroBet token type info by it's ID.
     * @param  tokenId AzuroBet token type ID
     * @return the match or condition ID the token belongs to
     * @return index of the condition outcome the token belongs to
     */
    function getTokenInfo(uint256 tokenId)
        external
        view
        returns (Condition memory, uint256)
    {
        return _getTokenInfo(tokenId);
    }

    /**
     * @notice Get AzuroBet token type `tokenId` payout for `account`.
     * @param  account AzuroBet tokens owner
     * @param  tokenId AzuroBet token type ID
     * @return is bet accepted
     * @return winnings of the sender
     */
    function viewPayout(address account, uint256 tokenId)
        public
        view
        virtual
        returns (bool, uint128)
    {
        (Condition storage condition, uint256 outcomeIndex) = _getTokenInfo(
            tokenId
        );

        uint128 balance = azuroBet.balanceOf(account, tokenId).toUint128();
        if (balance == 0) revert OnlyBetOwner();

        ConditionState state = condition.state;
        if (state == ConditionState.RESOLVED) {
            if (condition.outcomeWin == condition.outcomes[outcomeIndex])
                return (
                    true,
                    azuroBet.balancePayoutOf(account, tokenId).toUint128()
                );
            else return (true, 0);
        }
        if (
            state == ConditionState.CANCELED ||
            lp.isGameCanceled(condition.gameId)
        ) return (false, balance);

        revert ConditionNotFinished();
    }

    /**
     * @notice Get AzuroBet token type ID.
     * @param  conditionId the match or condition ID
     * @param  outcomeIndex index of one of the condition outcomes
     * @return AzuroBet token type ID
     */
    function getTokenId(uint256 conditionId, uint256 outcomeIndex)
        public
        pure
        returns (uint256)
    {
        return conditionId * 10 + outcomeIndex;
    }

    /**
     * @notice Register new condition.
     * @param  gameId the game ID the condition belongs
     * @param  conditionId the match or condition ID according to oracle's internal numbering
     * @param  odds start odds for [team 1, team 2]
     * @param  outcomes unique outcomes for the condition [outcome 1, outcome 2]
     * @param  reinforcement maximum amount of liquidity intended to condition reinforcement
     * @param  margin bookmaker commission
     */
    function _createCondition(
        uint256 gameId,
        uint256 conditionId,
        uint64[2] calldata odds,
        uint64[2] calldata outcomes,
        uint128 reinforcement,
        uint64 margin
    ) internal {
        if (conditionId == 0) revert IncorrectConditionId();
        if (outcomes[0] == outcomes[1]) revert SameOutcomes();
        if (margin > FixedMath.ONE) revert IncorrectMargin();

        Condition storage newCondition = conditions[conditionId];
        if (newCondition.gameId != 0) revert ConditionAlreadyCreated();

        newCondition.funds = [reinforcement, reinforcement];
        _applyOdds(newCondition, odds);
        newCondition.reinforcement = reinforcement;
        newCondition.gameId = gameId;
        newCondition.margin = margin;
        newCondition.outcomes = outcomes;
        newCondition.leaf = lp.getLeaf();

        emit ConditionCreated(gameId, conditionId);
    }

    /**
     * @notice Indicate outcome `outcomeWin` as happened in condition `conditionId`.
     * @param  conditionId the match or condition ID
     * @param  outcomeWin ID of happened condition's outcome
     */
    function _resolveCondition(uint256 conditionId, uint64 outcomeWin)
        internal
    {
        Condition storage condition = _getCondition(conditionId);
        {
            ConditionState state = condition.state;
            (uint64 timeOut, bool gameIsCanceled) = lp.getGameInfo(
                condition.gameId
            );
            if (
                gameIsCanceled ||
                state == ConditionState.CANCELED ||
                state == ConditionState.RESOLVED
            ) revert ConditionAlreadyResolved();

            timeOut += 1 minutes;
            if (block.timestamp < timeOut) revert ResolveTooEarly(timeOut);
        }
        uint256 outcomeIndex = _getOutcomeIndex(condition, outcomeWin);
        uint256 oppositeIndex = 1 - outcomeIndex;

        condition.outcomeWin = outcomeWin;
        condition.state = ConditionState.RESOLVED;

        uint128 lockedReserve;
        uint128 profitReserve;
        {
            uint128 reinforcement = condition.reinforcement;
            uint128[2] memory funds = condition.funds;
            lockedReserve = _calcReserve(reinforcement, funds);
            profitReserve =
                lockedReserve +
                funds[oppositeIndex] -
                reinforcement;
        }

        uint128 affiliatesReward = lp.addReserve(
            condition.gameId,
            lockedReserve,
            profitReserve,
            condition.leaf
        );
        if (affiliatesReward > 0) condition.affiliatesReward = affiliatesReward;

        AffiliateHelper.delAffiliatedProfitOutcome(
            affiliatedProfits,
            conditionId,
            oppositeIndex
        );

        emit ConditionResolved(
            conditionId,
            uint8(ConditionState.RESOLVED),
            outcomeWin,
            profitReserve.toInt128() - lockedReserve.toInt128()
        );
    }

    /**
     * @notice Calculate the distribution of available fund into [outcome1Fund, outcome2Fund] compliant to odds `odds`
     *         and set it as condition virtual funds.
     */
    function _applyOdds(Condition storage condition, uint64[2] calldata odds)
        internal
    {
        if (odds[0] == 0 || odds[1] == 0) revert ZeroOdds();

        uint128 fund = Math.min(condition.funds[0], condition.funds[1]);
        uint128 fund0 = uint128(
            (uint256(fund) * odds[1]) / (odds[0] + odds[1])
        );
        condition.virtualFunds = [fund0, fund - fund0];
    }

    /**
     * @notice Change condition funds and update the locked reserve amount according to the new funds value.
     */
    function _changeFunds(
        Condition storage condition,
        uint128[2] memory funds,
        uint128[2] memory newFunds
    ) internal {
        uint128 reinforcement = condition.reinforcement;
        lp.changeLockedLiquidity(
            condition.gameId,
            _calcReserve(reinforcement, newFunds).toInt128() -
                _calcReserve(reinforcement, funds).toInt128()
        );
        condition.funds = newFunds;
    }

    /**
     * @notice Resolve AzuroBet token type `tokenId` payout for `account`.
     * @param  account AzuroBet tokens owner
     * @param  tokenId AzuroBet token type ID
     * @return amount of winnings of the account
     */
    function _resolvePayout(address account, uint256 tokenId)
        internal
        returns (uint128)
    {
        (bool accepted, uint128 amount) = viewPayout(account, tokenId);
        if (accepted) azuroBet.burnPayout(account, tokenId);
        else azuroBet.burnBalance(account, tokenId);

        return amount;
    }

    /**
     * @notice Add information about the bet made from an affiliate.
     * @param  affiliate_ address indicated as an affiliate when placing bet
     * @param  conditionId the match or condition ID
     * @param  betAmount amount of tokens is bet from the affiliate
     * @param  payout possible bet winnings
     * @param  outcomeIndex index of predicted outcome
     */
    function _updateContribution(
        address affiliate_,
        uint256 conditionId,
        uint128 betAmount,
        uint128 payout,
        uint256 outcomeIndex
    ) internal {
        AffiliateHelper.updateContribution(
            contributions,
            contributedConditionIds,
            affiliatedProfits,
            affiliate_,
            conditionId,
            betAmount,
            payout,
            outcomeIndex
        );
    }

    /**
     * @notice Throw if the condition can't accept any bet now.
     * @notice This can happen because the condition is started, resolved or stopped or
     *         the game the condition is bounded with is canceled.
     * @param  condition the condition pointer
     */
    function _conditionIsRunning(Condition storage condition)
        internal
        view
        virtual
    {
        if (condition.state != ConditionState.CREATED)
            revert ActionNotAllowed();
        (uint64 startsAt, bool gameIsCanceled) = lp.getGameInfo(
            condition.gameId
        );
        if (gameIsCanceled || block.timestamp >= startsAt)
            revert ActionNotAllowed();
    }

    /**
     * @notice Calculate the odds of bet with amount `amount` for outcome `outcome` of condition `conditionId`.
     * @param  condition the condition pointer
     * @param  amount amount of tokens to bet
     * @param  outcomeIndex ID of predicted outcome
     * @return odds betting odds
     */
    function _calcOdds(
        Condition storage condition,
        uint128[2] memory virtualFunds,
        uint128 amount,
        uint256 outcomeIndex
    ) internal view returns (uint64) {
        uint256 odds = uint256(virtualFunds[0] + virtualFunds[1] + amount).div(
            virtualFunds[outcomeIndex] + amount
        );
        if (odds == FixedMath.ONE) revert LargeFundsRatio();

        return CoreTools.marginAdjustedOdds(odds, condition.margin);
    }

    /**
     * @notice Calculate the amount of liquidity to be reserved.
     */
    function _calcReserve(uint128 reinforcement, uint128[2] memory funds)
        internal
        pure
        returns (uint128)
    {
        return
            Math
                .max(
                    Math.diffOrZero(reinforcement, funds[0]),
                    Math.diffOrZero(reinforcement, funds[1])
                )
                .toUint128();
    }

    function _checkOnlyLp() internal view {
        if (msg.sender != address(lp)) revert OnlyLp();
    }

    /**
     * @notice Get condition by it's ID.
     */
    function _getCondition(uint256 conditionId)
        internal
        view
        returns (Condition storage)
    {
        Condition storage condition = conditions[conditionId];
        if (condition.gameId == 0) revert ConditionNotExists();

        return condition;
    }

    /**
     * @notice Get condition's index of outcome `outcome`.
     * @dev    Throw if the condition haven't outcome `outcome` as possible
     * @param  condition the condition pointer
     * @param  outcome outcome ID
     */
    function _getOutcomeIndex(Condition storage condition, uint64 outcome)
        internal
        view
        returns (uint256)
    {
        if (outcome == condition.outcomes[0]) return 0;
        if (outcome == condition.outcomes[1]) return 1;
        revert WrongOutcome();
    }

    /**
     * @notice Get AzuroBet token type info by it's ID.
     * @param  tokenId AzuroBet token type ID
     * @return the match or condition ID the token belongs to
     * @return index of the condition outcome the token belongs to
     */
    function _getTokenInfo(uint256 tokenId)
        internal
        view
        returns (Condition storage, uint256)
    {
        Condition storage condition = conditions[tokenId / 10];
        uint256 outcomeIndex = tokenId % 10;

        if (condition.gameId == 0 || outcomeIndex > 1) revert WrongToken();

        return (condition, outcomeIndex);
    }
}
