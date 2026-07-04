// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IEmissionScheduler {
    event NewMinter(address indexed sender, address newMinter);
    event NewTeamEmissionRate(address indexed sender, uint256 oldTeamEmissionRate, uint256 newTeamEmissionRate);
    event NewWeeklyEmissions(uint256 oldEmissions, uint256 newEmission);

    error OnlyMinter();
    error CannotUpdateMinter();
    error TeamEmissionRateAboveMax();

    function initialize(uint256 startTime) external;

    function epochEmission(uint256 pegSupply, uint256 veSupply) external returns (uint256, uint256, uint256);
}
