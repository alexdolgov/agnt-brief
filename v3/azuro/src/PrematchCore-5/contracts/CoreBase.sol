// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

import "./interface/IAzuroBet.sol";
import "./interface/ICoreBase.sol";
import "./libraries/CoreTools.sol";
import "./libraries/FixedMath.sol";
import "./libraries/SafeCast.sol";
import "./libraries/Math.sol";
import "./utils/OwnableUpgradeable.sol";

/// @title Base contract for Azuro cores
abstract contract CoreBase is OwnableUpgradeable, ICoreBase {
    uint256 public constant MAX_OUTCOMES_COUNT = 20;

    using FixedMath for *;
    using SafeCast for *;

    mapping(uint256 => Bet) public bets;
    mapping(uint256 => Condition) public conditions;
    // Condition ID => outcome ID => Condition outcome index + 1
    mapping(uint256 => mapping(uint256 => uint256)) public outcomeNumbers;

    IAzuroBet public azuroBet;
    ILP public lp;

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
     * @notice See {ICoreBase-cancelCondition}.
     */
    function cancelCondition(uint256 conditionId) external {
        Condition storage condition = _getCondition(conditionId);
        if (msg.sender != condition.oracle)
            lp.checkAccess(
                msg.sender,
                address(this),
                this.cancelCondition.selector
            );

        if (_isConditionResolved(condition) || _isConditionCanceled(condition))
            revert ConditionAlreadyResolved();

        _resolveCondition(
            condition,
            conditionId,
            ConditionState.CANCELED,
            0,
            condition.totalNetBets
        );
    }

    /**
     * @notice See {ICoreBase-changeOdds}.
     */
    function changeOdds(uint256 conditionId, uint256[] calldata newOdds)
        external
        restricted(this.changeOdds.selector)
    {
        Condition storage condition = _getCondition(conditionId);
        _conditionIsRunning(condition);
        if (newOdds.length != condition.payouts.length)
            revert OutcomesAndOddsCountDiffer();

        _applyOdds(condition, newOdds);
        emit OddsChanged(conditionId, newOdds);
    }

    /**
     * @notice See {ICoreBase-stopCondition}.
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
        uint256 outcomeIndex = getOutcomeIndex(conditionId, outcome);

        uint128[] memory virtualFunds = condition.virtualFunds;
        virtualFunds[outcomeIndex] += amount;
        odds = CoreTools
        .calcOdds(virtualFunds, condition.margin)[outcomeIndex].toUint64();
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
        return conditions[conditionId];
    }

    /**
     * @notice Get the AzuroBet token `tokenId` payout amount.
     * @param  tokenId AzuroBet token ID
     * @return amount payout for the token
     */
    function viewPayout(uint256 tokenId)
        external
        view
        returns (uint128 amount)
    {
        (, amount) = _viewPayout(tokenId);
    }

    /**
     * @notice Get condition's `conditionId` index of outcome `outcome`.
     */
    function getOutcomeIndex(uint256 conditionId, uint64 outcome)
        public
        view
        returns (uint256)
    {
        uint256 outcomeNumber = outcomeNumbers[conditionId][outcome];
        if (outcomeNumber == 0) revert WrongOutcome();

        return outcomeNumber - 1;
    }

    function isConditionCanceled(uint256 conditionId)
        public
        view
        returns (bool)
    {
        return _isConditionCanceled(_getCondition(conditionId));
    }

    /**
     * @notice Register new condition.
     * @param  gameId the game ID the condition belongs
     * @param  conditionId the match or condition ID according to oracle's internal numbering
     * @param  odds start odds for [team 1, ..., team N]
     * @param  outcomes unique outcomes for the condition [outcome 1, ..., outcome N]
     * @param  reinforcement maximum amount of liquidity intended to condition reinforcement
     * @param  margin bookmaker commission
     */
    function _createCondition(
        uint256 gameId,
        uint256 conditionId,
        uint256[] calldata odds,
        uint64[] calldata outcomes,
        uint128 reinforcement,
        uint64 margin
    ) internal {
        if (conditionId == 0) revert IncorrectConditionId();
        if (margin > FixedMath.ONE) revert IncorrectMargin();
        if (outcomes.length < 2 || outcomes.length > MAX_OUTCOMES_COUNT)
            revert IncorrectOutcomesCount();
        if (odds.length != outcomes.length) revert OutcomesAndOddsCountDiffer();

        Condition storage condition = conditions[conditionId];
        if (condition.gameId != 0) revert ConditionAlreadyCreated();

        condition.payouts = new uint128[](outcomes.length);
        condition.virtualFunds = new uint128[](outcomes.length);
        for (uint256 i = 0; i < outcomes.length; ++i) {
            uint64 outcome = outcomes[i];
            if (outcomeNumbers[conditionId][outcome] != 0)
                revert DuplicateOutcomes(outcome);
            outcomeNumbers[conditionId][outcome] = i + 1;
        }

        condition.reinforcement = reinforcement;
        condition.fund = reinforcement;
        condition.gameId = gameId;
        condition.margin = margin;
        condition.oracle = msg.sender;
        condition.lastDepositId = lp.getLastDepositId();
        _applyOdds(condition, odds);

        emit ConditionCreated(gameId, conditionId);
    }

    /**
     * @notice Resolves a condition by updating its state and outcome information, updating Liquidity Pool liquidity and
     *         calculating and distributing payouts and rewards to relevant parties.
     * @param  condition the condition pointer
     * @param  conditionId the condition ID
     * @param  result the ConditionState enum value representing the result of the condition
     * @param  outcomeWin the ID of the winning outcome of the condition. Set as 0 if the condition is canceled
     * @param  payout the payout amount to be distributed between bettors
     */
    function _resolveCondition(
        Condition storage condition,
        uint256 conditionId,
        ConditionState result,
        uint64 outcomeWin,
        uint128 payout
    ) internal {
        condition.state = result;
        condition.outcomeWin = outcomeWin;

        uint128 lockedReserve;
        uint128 profitReserve;
        {
            uint128[] memory payouts = condition.payouts;
            uint128 fund = condition.fund;
            uint128 reinforcement = condition.reinforcement;
            lockedReserve = _calcReserve(
                fund,
                condition.reinforcement,
                payouts,
                condition.totalNetBets
            );
            profitReserve = lockedReserve + fund - reinforcement - payout;
        }

        lp.addReserve(
            condition.gameId,
            lockedReserve,
            profitReserve,
            condition.lastDepositId
        );

        emit ConditionResolved(
            conditionId,
            uint8(result),
            outcomeWin,
            profitReserve.toInt128() - lockedReserve.toInt128()
        );
    }

    /**
     * @notice Calculate the distribution of available fund into [outcome1Fund,..., outcomeNFund] compliant to odds `odds`
     *         and set it as condition virtual funds.
     */
    function _applyOdds(Condition storage condition, uint256[] calldata odds)
        internal
    {
        uint256 oddsSum;
        uint256 length = odds.length;
        for (uint256 i = 0; i < length; ++i) {
            if (odds[i] == 0) revert ZeroOdds();
            oddsSum += odds[i];
        }

        uint256 fund = condition.fund - Math.max(condition.payouts);

        uint256 normalizer;
        for (uint256 i = 0; i < length; ++i) {
            normalizer += FixedMath.ONE.div(odds[i]);
        }

        // Multiplying by "FixedMath.ONE" reduces the gas cost of the loop below
        uint256 normalizedFund = (fund * FixedMath.ONE).div(normalizer);
        for (uint256 i = 0; i < length; ++i) {
            condition.virtualFunds[i] = uint128(normalizedFund / odds[i]);
        }
    }

    /**
     * @notice Change condition funds and update the locked reserve amount according to the new funds value.
     */
    function _changeFunds(
        Condition storage condition,
        uint256 outcomeIndex,
        uint128 deltaFund,
        uint128 deltaPayout,
        uint128 deltaTotalNetBets,
        bool isCashout
    ) internal {
        uint128[] memory payouts = condition.payouts;

        uint256 length = payouts.length;
        uint128[] memory newPayouts = new uint128[](length);
        for (uint256 i = 0; i < length; ++i) newPayouts[i] = payouts[i];

        uint128 fund = condition.fund;
        uint128 newFund;
        uint128 totalNetBets = condition.totalNetBets;
        uint128 newTotalNetBets;

        if (isCashout) {
            newFund = fund - deltaFund;
            newPayouts[outcomeIndex] -= deltaPayout;
            newTotalNetBets = totalNetBets - deltaTotalNetBets;
            if (
                newFund < Math.max(newPayouts) ||
                newFund < condition.totalNetBets
            ) revert InsufficientFund();
        } else {
            newFund = fund + deltaFund;
            newPayouts[outcomeIndex] += deltaPayout;
            newTotalNetBets = totalNetBets + deltaTotalNetBets;
        }

        uint128 reinforcement = condition.reinforcement;
        lp.changeLockedLiquidity(
            condition.gameId,
            _calcReserve(newFund, reinforcement, newPayouts, newTotalNetBets)
                .toInt128() -
                _calcReserve(fund, reinforcement, payouts, totalNetBets)
                    .toInt128()
        );

        condition.fund = newFund;
        condition.payouts[outcomeIndex] = newPayouts[outcomeIndex];
        condition.totalNetBets = newTotalNetBets;
    }

    /**
     * @notice Resolve AzuroBet token `tokenId` payout.
     * @param  caller The address that called the {LP-resolvePayout} function.
     * @param  tokenId AzuroBet token ID
     * @return winning account
     * @return amount of winnings
     */
    function _resolvePayout(address caller, uint256 tokenId)
        internal
        returns (address, uint128)
    {
        (bool isCashout, uint128 payout) = _viewPayout(tokenId);

        Bet storage bet = bets[tokenId];
        address betOwner = azuroBet.ownerOf(tokenId);

        if (isCashout) {
            if (caller != betOwner) revert OnlyBetOwner();

            uint256 conditionId = bet.conditionId;
            Condition storage condition = conditions[conditionId];

            uint128 betAmount = bet.amount;
            uint256 outcomeIndex = getOutcomeIndex(conditionId, bet.outcome);
            uint128[] memory virtualFunds = condition.virtualFunds;
            if (virtualFunds[outcomeIndex] <= betAmount)
                revert InsufficientVirtualFund();

            virtualFunds[outcomeIndex] -= betAmount;

            uint128 betPayout = bet.payout;
            _changeFunds(
                condition,
                outcomeIndex,
                payout,
                betPayout,
                betAmount,
                true
            );

            {
                uint256 virtualFund = Math.sum(virtualFunds);
                uint256 oppositeVirtualFund = virtualFund -
                    virtualFunds[outcomeIndex];
                uint256 deltaPayout = betPayout - betAmount;
                uint256 length = virtualFunds.length;
                for (uint256 i = 0; i < length; ++i) {
                    if (i != outcomeIndex) {
                        virtualFunds[i] += uint128(
                            (deltaPayout * virtualFunds[i]) /
                                oppositeVirtualFund
                        );
                    }
                }

                virtualFund += deltaPayout;
                uint256 newVirtualFund = condition.fund -
                    Math.max(condition.payouts);
                for (uint256 i = 0; i < length; ++i) {
                    virtualFunds[i] = uint128(
                        (newVirtualFund * virtualFunds[i]) / virtualFund
                    );
                    CoreTools.calcProbability(virtualFunds[i], newVirtualFund);
                }
            }

            condition.virtualFunds = virtualFunds;
        }

        bets[tokenId].isPaid = true;
        return (betOwner, payout);
    }

    /**
     * @notice Get the cash-out amount for bet `bet`.
     * @notice The cash-out amount equals:
     *         the potential payout of the bet * probability of winning * (1 - marginality)
     */
    function _calcCashout(uint256 conditionId, Bet storage bet)
        internal
        view
        returns (uint128)
    {
        Condition storage condition = conditions[conditionId];
        uint128[] memory virtualFunds = condition.virtualFunds;
        uint256 probability = CoreTools.calcProbability(
            virtualFunds[getOutcomeIndex(conditionId, bet.outcome)],
            Math.sum(virtualFunds)
        );
        return
            (bet.payout.mul(probability).mul(FixedMath.ONE - condition.margin))
                .toUint128();
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
            revert ConditionNotRunning();
        (uint64 startsAt, bool gameIsCanceled) = lp.getGameInfo(
            condition.gameId
        );
        if (gameIsCanceled || block.timestamp >= startsAt)
            revert ConditionNotRunning();
    }

    /**
     * @notice Calculate the amount of liquidity to be reserved.
     */
    function _calcReserve(
        uint128 fund,
        uint128 reinforcement,
        uint128[] memory payouts,
        uint256 totalNetBets
    ) internal pure returns (uint128) {
        uint256 maxPayout = Math.max(payouts);
        return
            Math
                .diffOrZero(
                    maxPayout > totalNetBets ? maxPayout : totalNetBets,
                    fund - reinforcement
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
     * @notice Check if condition or game it is bound with is cancelled or not.
     */
    function _isConditionCanceled(Condition storage condition)
        internal
        view
        returns (bool)
    {
        return
            lp.isGameCanceled(condition.gameId) ||
            condition.state == ConditionState.CANCELED;
    }

    /**
     * @notice Check if condition is resolved or not.
     */
    function _isConditionResolved(Condition storage condition)
        internal
        view
        returns (bool)
    {
        return condition.state == ConditionState.RESOLVED;
    }

    /**
     * @notice Get the AzuroBet token `tokenId` payout amount.
     * @param  tokenId AzuroBet token ID
     * @return whether the payout is cash-out
     * @return payout for the token
     */
    function _viewPayout(uint256 tokenId)
        internal
        view
        virtual
        returns (bool, uint128)
    {
        Bet storage bet = bets[tokenId];
        if (bet.conditionId == 0) revert BetNotExists();
        if (bet.isPaid) revert AlreadyPaid();

        uint256 conditionId = bet.conditionId;
        Condition storage condition = _getCondition(conditionId);
        if (_isConditionResolved(condition)) {
            if (bet.outcome == condition.outcomeWin) return (false, bet.payout);
            else return (false, 0);
        }
        if (_isConditionCanceled(condition)) return (false, bet.amount);

        _conditionIsRunning(condition);
        return (true, _calcCashout(conditionId, bet));
    }
}
