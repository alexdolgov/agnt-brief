// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./IAzuroBet.sol";
import "./ILP.sol";
import "./IOrder.sol";

interface ILiveCore is IOrder {
    enum ConditionState {
        CREATED,
        RESOLVED,
        CANCELED
    }

    struct Bet {
        uint256 conditionId;
        uint128 amount;
        uint128 payout;
        uint128 outcomeId;
        uint64 timestamp;
        bool isPaid;
        uint48 lastDepositId;
        ComboPartOdds[] comboParts;
    }

    struct ComboSubBet {
        uint256 conditionId;
        uint128 outcomeId;
    }

    struct TimeBet {
        uint256 time;
        uint256 tokenId;
    }

    struct Condition {
        TimeBet[] timeBets; // timestamps and bets
        uint128[] payouts;
        uint128 totalNetBets;
        uint64 settledAt;
        uint48 lastDepositId;
        uint8 winningOutcomesCount;
        ConditionState state;
        address oracle;
    }

    struct RejectedBet {
        uint256 conditionId;
        uint256[] tokenIds;
    }

    struct RejectedComboBet {
        uint256 tokenId;
        ComboSubBet[] subBets;
    }

    struct ResolveData {
        uint256 conditionId;
        uint128[] winningOutcomes;
        uint64 settledAt;
    }

    event ConditionCreated(
        uint256 indexed gameId,
        uint256 indexed conditionId,
        uint128[] outcomes,
        uint64[] odds,
        uint8 winningOutcomesCount
    );
    event ConditionResolved(
        uint256 indexed conditionId,
        uint8 state,
        uint128[] winningOutcomes,
        int128 lpProfit,
        uint64 settledAt
    );

    error AlreadyPaid();
    error AlreadyRejected();
    error BetNotExists();
    error ConditionAlreadyResolved();
    error ConditionNotFinished();
    error ConditionNotRunning();
    error CobmoBetNotResolved();
    error ComboBetResolvedPartially();
    error DuplicateOutcomes(uint256 outcomeId);
    error IncorrectAmount();
    error IncorrectOutcomesCount();
    error IncorrectSettleDate();
    error IncorrectSubBetsToReset();
    error IncorrectWinningOutcomesCount();
    error InvalidBettorSignature();
    error InvalidChainId();
    error InvalidOracleSignature();
    error OnlyLp();
    error OnlyOracle(address);
    error PotentialLossLimit();
    error SubBetDuplicated();
    error SubBetConditionResolved(uint256 conditionId);
    error WrongOutcome();

    function azuroBet() external view returns (IAzuroBet);

    /**
     * @notice Indicate conditions `conditionIds` as canceled.
     * @notice The condition creator can always cancel it regardless of granted access tokens.
     */
    function cancelConditions(uint256[] calldata conditionIds) external;

    function getCondition(
        uint256 conditionId
    ) external view returns (Condition memory);

    function getOutcomeIndex(
        uint256 conditionId,
        uint128 outcome
    ) external view returns (uint256);

    function initialize(address azuroBet, address lp) external;

    function isConditionCanceled(
        uint256 conditionId
    ) external view returns (bool);

    function isOutcomeWinning(
        uint256 conditionId,
        uint128 outcome
    ) external view returns (bool);

    struct SubBetData {
        uint256 gameId;
        uint256 conditionId;
        ConditionKind conditionKind;
        uint128 outcomeId;
        uint64 odds;
    }

    event NewLiveBet(
        uint256 indexed tokenId,
        address indexed bettor,
        address indexed affiliate,
        BetType betType,
        uint256 nonce,
        uint128 amount,
        SubBetData[] betDatas, // one record for ordinary, many records for combo
        uint128 potentialLossLimit
    );

    event BetRejected(uint256 indexed tokenId);

    error IncorrectBetsConditionsCount();
    error IncorrectConditionIds();
    error IncorrectConditionId();
    error IncorrectOutcomeId();
    error IncorrectBetType();
    error InvalidNonce();
    error OddsTooSmall();
    error SignatureExpired();
    error IncorrectAffiliate();
    error SmallBet();
}
