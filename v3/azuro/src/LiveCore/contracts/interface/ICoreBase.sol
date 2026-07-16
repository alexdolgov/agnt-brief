// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./IOwnable.sol";
import "./ICondition.sol";
import "./IContribution.sol";

interface ICoreBase is ICondition, IOwnable, IContribution {
    struct BetData {
        address affiliate;
        uint256 conditionId;
        uint64 outcomeId;
        uint64 minOdds;
    }

    struct affiliateParams {
        uint256 start;
        uint256 count;
    }

    event ConditionCreated(
        uint256 indexed gameId,
        uint256 indexed oracleConditionId,
        uint256 indexed conditionId
    );
    event ConditionResolved(
        uint256 indexed conditionId,
        uint8 state,
        uint64 outcomeWin,
        int128 lpProfit
    );
    event ConditionStopped(uint256 indexed conditionId, bool flag);

    event OddsChanged(uint256 indexed conditionId, uint64[2] newOdds);

    error OnlyBetOwner();
    error OnlyLp();

    error IncorrectMargin();
    error IncorrectTimestamp();
    error LargeFundsRatio();
    error NoPendingReward();
    error SameOutcomes();
    error SmallBet();
    error SmallOdds();
    error StartOutOfRange(uint256 pendingRewardsCount);
    error WrongOutcome();
    error WrongToken();
    error ZeroOdds();

    error ActionNotAllowed();
    error CantChangeFlag();
    error ConditionAlreadyCreated();
    error ConditionAlreadyResolved();
    error ConditionNotExists();
    error ConditionNotFinished();
    error GameAlreadyStarted();
    error ResolveTooEarly(uint64 waitTime);

    function initialize(address azuroBet, address lp) external;

    function calcOdds(
        uint256 conditionId,
        uint128 amount,
        uint64 outcome
    ) external view returns (uint64 odds);

    /**
     * @notice Register new bet.
     * @param  bettor wallet for emitting bet token(s)
     * @param  amount amount of tokens to bet
     * @param  data customized bet data
     */
    function putBet(
        address bettor,
        uint128 amount,
        BetData calldata data
    ) external returns (uint256 tokenId);

    /**
     * @notice Register new condition.
     * @param  gameId the game ID the condition belongs
     * @param  oracleConditionId the match or condition ID according to oracle's internal numbering
     * @param  odds start odds for [team 1, team 2]
     * @param  outcomes unique outcomes for the condition [outcome 1, outcome 2]
     * @param  reinforcement maximum amount of liquidity intended to condition reinforcement
     * @param  margin bookmaker commission
     */
    function createCondition(
        uint256 gameId,
        uint256 oracleConditionId,
        uint64[2] calldata odds,
        uint64[2] calldata outcomes,
        uint128 reinforcement,
        uint64 margin
    ) external;

    function resolvePayout(address account, uint256 tokenId)
        external
        returns (uint128 payout);

    function viewPayout(address account, uint256 tokenId)
        external
        view
        returns (bool accepted, uint128 payout);

    function resolveAffiliateReward(address affiliate, bytes calldata data)
        external
        returns (uint256 contribution);
}
