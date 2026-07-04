// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {INegRiskMarketResolver, MatchOutcome, OutcomeStatus} from "src/interfaces/INegRiskMarketResolver.sol";
import {IWorldCupViewer, MatchViewResult} from "src/interfaces/IWorldCupViewer.sol";

contract WorldCupViewer is Initializable, AccessControlUpgradeable, IWorldCupViewer {
    bytes32 public constant GUARDIAN_ROLE = keccak256("GUARDIAN_ROLE");
    uint256 public constant TEAM_ID_OTHERS = 49;
    uint256 public constant TEAM_ID_DRAW = 50;

    INegRiskMarketResolver public negRiskMarketResolver;

    uint256 public worldCupWinnerMatchId;
    uint256 public othersWinner;

    string[] public teams;
    mapping(bytes32 => uint256) public requestIdToTeamId;

    function initialize(address _resolver, address _admin, address _guardian, string[] calldata teamNames) external initializer {
        require(_resolver != address(0), "WorldCupViewer: zero resolver");
        require(_admin != address(0), "WorldCupViewer: zero admin");
        require(_guardian != address(0), "WorldCupViewer: zero guardian");
        require(teamNames.length == 48, "WorldCupViewer: expected 48 teams");

        __AccessControl_init();

        negRiskMarketResolver = INegRiskMarketResolver(_resolver);
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(GUARDIAN_ROLE, _guardian);

        teams.push("");
        for (uint256 i = 0; i < teamNames.length; i++) {
            teams.push(teamNames[i]);
        }
    }

    function setNegRiskMarketResolver(address _resolver) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_resolver != address(0), "WorldCupViewer: zero resolver");
        negRiskMarketResolver = INegRiskMarketResolver(_resolver);
    }

    function setWorldCupWinnerMatchId(uint256 matchId) external onlyRole(GUARDIAN_ROLE) {
        worldCupWinnerMatchId = matchId;
    }

    function setOthersWinner(uint256 teamId) external onlyRole(GUARDIAN_ROLE) {
        require(teamId > 0 && teamId < TEAM_ID_OTHERS, "WorldCupViewer: invalid others winner");
        othersWinner = teamId;
    }

    function setRequestTeamIds(bytes32[] calldata requestIds, uint256[] calldata teamIds) external onlyRole(GUARDIAN_ROLE) {
        require(requestIds.length == teamIds.length, "WorldCupViewer: length mismatch");

        for (uint256 i = 0; i < requestIds.length; i++) {
            require(_isValidTeamId(teamIds[i]), "WorldCupViewer: invalid teamId");
            require(requestIdToTeamId[requestIds[i]] == 0, "WorldCupViewer: teamId already set");
            requestIdToTeamId[requestIds[i]] = teamIds[i];
        }
    }

    function setTeamName(uint256 teamId, string calldata teamName) external onlyRole(GUARDIAN_ROLE) {
        require(_isEditableTeamId(teamId), "WorldCupViewer: invalid teamId");
        teams[teamId] = teamName;
    }

    function setTeamNames(uint256[] calldata teamIds, string[] calldata teamNames) external onlyRole(GUARDIAN_ROLE) {
        require(teamIds.length == teamNames.length, "WorldCupViewer: length mismatch");

        for (uint256 i = 0; i < teamIds.length; i++) {
            require(_isEditableTeamId(teamIds[i]), "WorldCupViewer: invalid teamId");
            teams[teamIds[i]] = teamNames[i];
        }
    }

    function getWorldCupWinner() external view returns (MatchViewResult memory) {
        require(worldCupWinnerMatchId != 0, "WorldCupViewer: world cup matchId not set");

        MatchViewResult memory out = _readMatch(worldCupWinnerMatchId);
        if (out.isResolved && out.teamId == TEAM_ID_OTHERS) {
            require(othersWinner != 0, "WorldCupViewer: others winner not set");
            out.teamId = othersWinner;
        }

        out.teamName = _teamName(out.teamId);

        return out;
    }

    function getGroupMatchWinners(uint256 matchId) external view returns (MatchViewResult memory) {
        MatchViewResult memory out = _readMatch(matchId);
        out.teamName = _teamName(out.teamId);
        return out;
    }

    function getMatchResult(uint256 matchId) external view returns (MatchViewResult memory) {
        MatchOutcome memory outcome = negRiskMarketResolver.resolve(matchId);
        uint256 teamId;

        if (outcome.isResolved && outcome.winnerIndex < outcome.statuses.length) {
            OutcomeStatus memory winnerStatus = outcome.statuses[outcome.winnerIndex];
            teamId = requestIdToTeamId[winnerStatus.requestId];
        }

        MatchViewResult memory out = MatchViewResult({
            matchId: outcome.matchId,
            matchName: outcome.matchName,
            isResolved: outcome.isResolved,
            teamId: teamId,
            teamName: ""
        });

        if (out.teamId == TEAM_ID_DRAW) {
            uint256 teamA;
            uint256 teamB;

            for (uint256 i = 0; i < outcome.statuses.length; i++) {
                uint256 id = requestIdToTeamId[outcome.statuses[i].requestId];
                if (id == 0 || id == TEAM_ID_DRAW || id == TEAM_ID_OTHERS) {
                    continue;
                }

                if (teamA == 0) {
                    teamA = id;
                    continue;
                }

                if (id != teamA) {
                    teamB = id;
                    break;
                }
            }

            if (teamA != 0 && teamB != 0) {
                out.teamName = string.concat(
                    _teamName(teamA),
                    "(",
                    _toString(teamA),
                    ") and ",
                    _teamName(teamB),
                    "(",
                    _toString(teamB),
                    ") are tied"
                );
                return out;
            }
        }

        out.teamName = _teamName(out.teamId);
        return out;
    }

    function getTeamName(uint256 teamId) external view returns (string memory) {
        return _teamName(teamId);
    }

    function _readMatch(uint256 matchId) internal view returns (MatchViewResult memory out) {
        MatchOutcome memory outcome = negRiskMarketResolver.resolve(matchId);
        uint256 teamId;

        if (outcome.isResolved && outcome.winnerIndex < outcome.statuses.length) {
            OutcomeStatus memory winnerStatus = outcome.statuses[outcome.winnerIndex];
            teamId = requestIdToTeamId[winnerStatus.requestId];
        }

        out = MatchViewResult({
            matchId: outcome.matchId,
            matchName: outcome.matchName,
            isResolved: outcome.isResolved,
            teamId: teamId,
            teamName: ""
        });
    }

    function _teamName(uint256 teamId) internal view returns (string memory) {
        if (teamId == TEAM_ID_DRAW) {
            return "draw";
        }
        if (teamId == TEAM_ID_OTHERS) {
            return "others";
        }
        if (teamId < teams.length) {
            return teams[teamId];
        }
        return "";
    }

    function _isValidTeamId(uint256 teamId) internal pure returns (bool) {
        return (teamId > 0 && teamId <= TEAM_ID_DRAW);
    }

    function _isEditableTeamId(uint256 teamId) internal pure returns (bool) {
        return (teamId > 0 && teamId < TEAM_ID_OTHERS);
    }

    function _toString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0";
        }

        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }

        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }

        return string(buffer);
    }
}
