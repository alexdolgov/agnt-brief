// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

struct BoostCalculateProps {
    address masterChefV3;
    uint256 pid;
    uint256 positionLiquidity;
    uint256 totalLiquidity;
    uint256 cA;
    uint256 cB;
    uint256 cBOverride;
    uint256 boostRatioPrecision;
    uint256 boostPrecision;
    uint256 caPrecision;
    uint256 cbPrecision;
}

interface IBoostCalculateProvider {
    function calculateBoost(BoostCalculateProps memory _props) external view returns (uint256);
}
