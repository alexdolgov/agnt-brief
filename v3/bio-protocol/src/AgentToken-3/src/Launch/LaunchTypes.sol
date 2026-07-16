// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

struct LaunchCreationParams {
    uint256 startTime;
    uint256 endTime;
    string launchName;
    string launchTicker;
    uint256 coolDownPeriod; // deprecated
    uint256 agentSupply;
    uint256 agentTokenForLaunchClaim;
    uint24 fee;
    ConcentratedRange[] ranges;
}

struct SuccessParams {
    bytes32 usersDataMerkleRoot;
    address creator;
    bool isFailed;
}

struct LaunchInitParams {
    uint256 launchID;
    address factory;
    uint256 startTime;
    uint256 endTime;
    string launchName;
    string launchTicker;
    uint256 coolDownPeriod; // deprecated
    address agentFactoryAddress;
    address bioTokenAddress;
    uint256 reserveAmount;
    uint256 maxContributionBioAmount;
    uint256 agentTokenLpSupply;
    uint256 agentSupply;
    uint256 agentTokenForLaunchClaim;
    uint24 fee;
    ConcentratedRange[] ranges;
}

struct ConcentratedRange {
    int24 tickLower;
    int24 tickUpper;
    uint256 amount0;
    uint256 amount1;
}
