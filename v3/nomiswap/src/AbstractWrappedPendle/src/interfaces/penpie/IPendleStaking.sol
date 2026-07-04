// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IPendleStaking {

    function harvestMarketReward(address _market, address _caller, uint256 _minEthRecive) external;

}