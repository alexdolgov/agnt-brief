// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./CoreBase.sol";
import "./interface/ICore.sol";
import "./libraries/CoreTools.sol";
import "./libraries/FixedMath.sol";
import "./utils/OwnableUpgradeable.sol";

/// @title Azuro internal core managing pre-match conditions and processing bets on them
contract Core is CoreBase, ICore {
    using FixedMath for uint64;

    /**
     * @notice Oracle: See {ICoreBase-createCondition}.
     */
    function createCondition(
        uint256 gameId,
        uint256 oracleConditionId,
        uint64[2] calldata odds,
        uint64[2] calldata outcomes,
        uint128 reinforcement,
        uint64 margin
    ) external override {
        _createCondition(
            gameId,
            oracleConditionId,
            odds,
            outcomes,
            reinforcement,
            margin
        );
    }

    /**
     * @notice Liquidity Pool: See {ICoreBase-putBet}.
     */
    function putBet(
        address bettor,
        uint128 amount,
        BetData calldata data
    ) external override onlyLp {
        Condition storage condition = _getCondition(data.conditionId);
        _conditionIsRunning(condition);

        uint256 outcomeIndex = _getOutcomeIndex(condition, data.outcomeId);
        if (amount <= FixedMath.ONE) revert SmallBet();

        uint128[2] memory virtualFunds = condition.virtualFunds;
        uint64 odds = _calcOdds(condition, virtualFunds, amount, outcomeIndex);
        if (odds < data.minOdds) revert SmallOdds();

        uint128 payout = uint128(odds.mul(amount));
        uint128 deltaPayout = payout - amount;

        virtualFunds[outcomeIndex] += amount;
        virtualFunds[1 - outcomeIndex] -= deltaPayout;
        condition.virtualFunds = virtualFunds;

        uint128[2] memory funds = condition.funds;
        _changeFunds(
            condition,
            funds,
            outcomeIndex == 0
                ? [funds[0] + amount, funds[1] - deltaPayout]
                : [funds[0] - deltaPayout, funds[1] + amount]
        );

        uint256 tokenId = getTokenId(data.conditionId, outcomeIndex);
        azuroBet.mint(bettor, tokenId, amount, payout);

        if (data.affiliate != address(0)) {
            _updateContribution(
                data.affiliate,
                data.conditionId,
                amount,
                payout,
                outcomeIndex
            );
        }

        emit NewBet(
            bettor,
            data.affiliate,
            data.conditionId,
            tokenId,
            data.outcomeId,
            amount,
            odds,
            virtualFunds
        );
    }

    /**
     * @notice Oracle: Indicate outcome `outcomeWin` as happened in oracle's condition `oracleConditionId`.
     * @param  oracleConditionId the match or condition ID in oracle's internal numbering
     * @param  outcomeWin ID of happened condition's outcome
     */
    function resolveCondition(uint256 oracleConditionId, uint64 outcomeWin)
        external
        override
    {
        _resolveCondition(oracleConditionId, outcomeWin);
    }

    /**
     * @notice Liquidity Pool: Resolve AzuroBet token type `tokenId` payout for `account`.
     * @param  account AzuroBet tokens owner
     * @param  tokenId AzuroBet token type ID
     * @return payout amount of winnings of the account
     */
    function resolvePayout(address account, uint256 tokenId)
        external
        override
        onlyLp
        returns (uint128 payout)
    {
        return super._resolvePayout(account, tokenId);
    }
}
