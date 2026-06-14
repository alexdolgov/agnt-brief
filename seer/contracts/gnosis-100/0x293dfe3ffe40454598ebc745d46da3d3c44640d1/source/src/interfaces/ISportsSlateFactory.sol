// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice Sports slate: creates Seer markets per match and registers a slate.
interface ISportsSlateFactory {
    enum MarketKind {
        Scalar,
        Categorical
    }

    struct MatchInput {
        string teamHome;
        string teamAway;
        string matchDate;
    }

    struct CreateSportsSlateParams {
        string name;
        MarketKind kind;
        string lang;
        uint256 minBond;
        string category;
        string tournament;
        uint32 openingTime;
        MatchInput[] matches;
    }

    event SportsSlateCreated(
        uint256 indexed slateId,
        string name,
        MarketKind kind,
        string tournament,
        address[] markets,
        address indexed creator
    );

    function createSportsSlate(CreateSportsSlateParams calldata params)
        external
        returns (uint256 slateId, address[] memory markets);
}
