// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @notice Per-outcome oracle status within a match.
struct OutcomeStatus {
    uint256 index;      // 0-based position in the match's team list
    bytes32 requestId;  // oracleQuestionId from predict.fun
    bool    isReported; // reportedAt > 0 on NegRiskOperator
    bool    result;     // true = YES (this outcome won)
    bool    isFlagged;  // flaggedAt > 0 — result disputed
}

/// @notice Return value of resolve().
struct MatchOutcome {
    uint256 matchId;
    string  matchName;
    bool    isResolved;    // true if a definitive winner exists
    uint256 winnerIndex;   // set only when isResolved = true
    OutcomeStatus[] statuses;
}

interface INegRiskMarketResolver {
    // --- Events ---
    event MatchRegistered(uint256 indexed matchId, string name, uint256 teamCount);

    // --- Admin ---

    /// @notice Register a new match from its display name and outcome requestIds.
    ///         matchId is auto-assigned starting at 1.
    function registerMatch(
        string    calldata name,
        bytes32[] calldata requestIds
    ) external returns (uint256 matchId);

    /// @notice Update the NegRiskOperator address.
    function setNegRiskOperator(address negRiskOperator) external;

    function pause()   external;
    function unpause() external;

    // --- Queries ---

    /// @notice Read all outcomes from NegRiskOperator live and return the match result.
    ///         Winner condition: reportedAt > 0 && result == true && flaggedAt == 0.
    /// @dev Reverts when paused or matchId does not exist.
    function resolve(uint256 matchId) external view returns (MatchOutcome memory);

    /// @notice Returns match metadata without reading the oracle.
    function getMatchInfo(uint256 matchId) external view returns (
        string memory name,
        uint256 teamCount
    );

    /// @notice Returns all requestIds for a match.
    function getMatchRequestIds(uint256 matchId) external view returns (bytes32[] memory ids);
}
