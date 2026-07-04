// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {Errors} from "../libraries/Errors.sol";
import {SystemEpoch} from "./SystemEpoch.sol";

import {IEmissionScheduler} from "../interfaces/IEmissionScheduler.sol";

contract EmissionScheduler is Ownable, SystemEpoch, IEmissionScheduler {
    using FixedPointMathLib for uint256;

    uint256 public constant EMISSION_PRECISION = 1000;
    uint256 public constant MAX_TEAM_RATE = 5;

    uint256 public weeklyEmissions = 2;
    uint256 public teamEmissionRate = 2;
    uint256 public lastEpoch;
    uint256 public startTime;
    address public minter;

    constructor() {
        _initializeOwner(msg.sender);
    }

    function setWeeklyEmissions(uint256 _newWeeklyEmissions) external onlyOwner {
        emit NewWeeklyEmissions(weeklyEmissions, _newWeeklyEmissions);

        weeklyEmissions = _newWeeklyEmissions;
    }

    function setMinter(address _newMinter) external onlyOwner {
        if (minter != address(0)) {
            revert Errors.MinterAlreadySet();
        }

        minter = _newMinter;

        emit NewMinter(msg.sender, _newMinter);
    }

    function setTeamEmissionRate(uint256 _newTeamEmissionRate) external onlyOwner {
        if (_newTeamEmissionRate > MAX_TEAM_RATE) {
            revert Errors.TeamEmissionsAboveMaxRate();
        }

        uint256 oldTeamEmissionRate = teamEmissionRate;

        teamEmissionRate = _newTeamEmissionRate;

        emit NewTeamEmissionRate(msg.sender, oldTeamEmissionRate, _newTeamEmissionRate);
    }

    function initialize(uint256 _startTime) external {
        _onlyMinter();

        if (startTime != 0) {
            revert Errors.AlreadyInitialized();
        }

        startTime = _startTime;
    }

    function epochEmission(uint256 _pegSupply, uint256 _veSupply) external returns (uint256, uint256, uint256) {
        _onlyMinter();

        uint256 currentEpoch = _currentEpoch();

        if (currentEpoch == lastEpoch) {
            return (0, 0, 0);
        }

        lastEpoch = currentEpoch;

        uint256 toEmit = (_pegSupply - _veSupply).mulDiv(weeklyEmissions, EMISSION_PRECISION);

        uint256 rebase = _calculateRebase(toEmit, _pegSupply, _veSupply);
        uint256 teamEmission = _calculateTeamEmission(toEmit, rebase);

        return (toEmit, rebase, teamEmission);
    }

    function _currentEpoch() internal view returns (uint256) {
        return (block.timestamp - startTime) / EPOCH;
    }

    function _calculateTeamEmission(uint256 _emissions, uint256 _rebase) internal view returns (uint256) {
        uint256 teamRate = teamEmissionRate;
        return teamRate.mulDiv(_emissions + _rebase, EMISSION_PRECISION - teamRate);
    }

    function _calculateRebase(uint256 _emissions, uint256 _pegSupply, uint256 _veSupply)
        internal
        pure
        returns (uint256)
    {
        return (((((_emissions * _veSupply) / _pegSupply) * _veSupply) / _pegSupply) * _veSupply) / _pegSupply / 2;
    }

    function _onlyMinter() internal view {
        if (msg.sender != minter) {
            revert OnlyMinter();
        }
    }
}
