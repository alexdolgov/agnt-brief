// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ISportsSlateFactory} from "./interfaces/ISportsSlateFactory.sol";
import {ISlateFactory} from "./interfaces/ISlateFactory.sol";
import {IMarketFactory} from "./interfaces/IMarketFactory.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {SlateStrings} from "./libs/SlateStrings.sol";

/// @title SportsSlateFactory
/// @notice Creates Seer sports markets per match and registers a slate via SlateFactory.
contract SportsSlateFactory is ISportsSlateFactory {
    uint256 public constant SCALAR_LOWER_BOUND = 0;
    uint256 public constant SCALAR_UPPER_BOUND = 100;

    IMarketFactory public immutable seerFactory;
    ISlateFactory public immutable slateFactory;

    error EmptyName();
    error EmptyMatches();
    error EmptyTeamHome();
    error EmptyTeamAway();
    error EmptyMatchDate();
    error EmptyTournament();
    error EmptyLang();
    error EmptyCategory();

    constructor(IMarketFactory seerFactory_, ISlateFactory slateFactory_) {
        seerFactory = seerFactory_;
        slateFactory = slateFactory_;
    }

    /// @inheritdoc ISportsSlateFactory
    function createSportsSlate(CreateSportsSlateParams calldata params)
        external
        returns (uint256 slateId, address[] memory markets)
    {
        uint256 matchCount = params.matches.length;
        if (bytes(params.name).length == 0) revert EmptyName();
        if (matchCount == 0) revert EmptyMatches();
        if (bytes(params.tournament).length == 0) revert EmptyTournament();
        if (bytes(params.lang).length == 0) revert EmptyLang();
        if (bytes(params.category).length == 0) revert EmptyCategory();

        markets = new address[](matchCount);

        for (uint256 i = 0; i < matchCount; i++) {
            MatchInput calldata matchInput = params.matches[i];
            if (bytes(matchInput.teamHome).length == 0) revert EmptyTeamHome();
            if (bytes(matchInput.teamAway).length == 0) revert EmptyTeamAway();
            if (bytes(matchInput.matchDate).length == 0) revert EmptyMatchDate();

            IMarketFactory.CreateMarketParams memory marketParams = _buildMarketParams(params, matchInput);

            if (params.kind == MarketKind.Categorical) {
                markets[i] = seerFactory.createCategoricalMarket(marketParams);
            } else {
                markets[i] = seerFactory.createScalarMarket(marketParams);
            }
        }

        slateId = slateFactory.createSlate(
            ISlateFactory.CreateSlateParams({
                name: params.name,
                collateral: IERC20(seerFactory.collateralToken()),
                markets: markets,
                entryDeadline: params.openingTime
            })
        );

        emit SportsSlateCreated(slateId, params.name, params.kind, params.tournament, markets, msg.sender);
    }

    function _buildMarketParams(CreateSportsSlateParams calldata params, MatchInput calldata matchInput)
        internal
        pure
        returns (IMarketFactory.CreateMarketParams memory marketParams)
    {
        string memory question = SlateStrings.formatQuestion(
            matchInput.teamHome, matchInput.teamAway, params.tournament, matchInput.matchDate
        );

        marketParams.marketName = question;
        marketParams.questionStart = "";
        marketParams.questionEnd = "";
        marketParams.outcomeType = "";
        marketParams.parentOutcome = 0;
        marketParams.parentMarket = address(0);
        marketParams.category = params.category;
        marketParams.lang = params.lang;
        marketParams.minBond = params.minBond;
        marketParams.openingTime = params.openingTime;

        if (params.kind == MarketKind.Categorical) {
            marketParams.outcomes = _categoricalOutcomes();
            marketParams.tokenNames = _categoricalTokenNames();
            marketParams.lowerBound = 0;
            marketParams.upperBound = 0;
        } else {
            marketParams.outcomes = _scalarOutcomes();
            marketParams.tokenNames = _scalarTokenNames();
            marketParams.lowerBound = SCALAR_LOWER_BOUND;
            marketParams.upperBound = SCALAR_UPPER_BOUND;
        }
    }

    function _scalarOutcomes() private pure returns (string[] memory outcomes) {
        outcomes = new string[](2);
        outcomes[0] = "Home";
        outcomes[1] = "Away";
    }

    function _scalarTokenNames() private pure returns (string[] memory tokenNames) {
        tokenNames = new string[](2);
        tokenNames[0] = "HOME";
        tokenNames[1] = "AWAY";
    }

    function _categoricalOutcomes() private pure returns (string[] memory outcomes) {
        outcomes = new string[](3);
        outcomes[0] = "Home";
        outcomes[1] = "Draw";
        outcomes[2] = "Away";
    }

    function _categoricalTokenNames() private pure returns (string[] memory tokenNames) {
        tokenNames = new string[](3);
        tokenNames[0] = "HOME";
        tokenNames[1] = "DRAW";
        tokenNames[2] = "AWAY";
    }
}
