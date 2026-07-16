// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

struct IncentiveProgramDetails {
    uint256 index;
    address rewardToken;
    uint104 emissionPerSecond;
    uint40 lastUpdateTimestamp;
    uint40 distributionEnd;
}

interface IDistributionManager {
    /**
     * @dev Returns the program id for the given program name.
     * This method TRUNCATES the program name to 32 bytes.
     * If provided strings only differ after the 32nd byte they would result in the same ProgramId.
     * Ensure to use inputs that will result in 32 bytes or less.
     * @param _programName The incentives program name
     * @return programId
     */
    function getProgramId(
        string calldata _programName
    ) external pure returns (bytes32 programId);

    /**
     * @dev returns the names of all the incentives programs
     * @return programsNames the names of all the incentives programs
     */
    function getAllProgramsNames() external view returns (string[] memory programsNames);

    /**
     * @dev Returns the configuration of the distribution for a certain incentives program
     * @param _incentivesProgram The incentives program name
     * @return details The configuration of the incentives program
     */
    function incentivesProgram(
        string calldata _incentivesProgram
    ) external view returns (IncentiveProgramDetails memory details);
}
