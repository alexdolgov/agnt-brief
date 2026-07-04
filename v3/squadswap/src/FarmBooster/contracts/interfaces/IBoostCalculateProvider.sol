// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

struct BoostCalculateProps {
    address masterChefV2;
    uint256 _totalLiquidity;
    uint256 _amount;
    uint256 _cA;
    uint256 _cB;
}

interface IBoostCalculateProvider {
    function calculateBoost(
        BoostCalculateProps memory _props
    ) external view returns (uint256);
}
