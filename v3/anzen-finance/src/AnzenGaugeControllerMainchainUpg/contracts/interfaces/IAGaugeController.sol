// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.23;

interface IAGaugeController {
    event MarketClaimReward(address indexed market, uint256 amount);

    event ReceiveVotingResults(uint128 indexed wTime, address[] markets, uint256[] anzenAmounts);

    event UpdateMarketReward(address indexed market, uint256 anzenPerSec, uint256 incentiveEndsAt);

    event AddMarket(address market);

    event RemoveMarket(address market);

    function fundAnzen(uint256 amount) external;

    function withdrawAnzen(uint256 amount) external;

    function anzen() external returns (address);

    function redeemMarketReward() external;

    function rewardData(address pool) external view returns (uint128 anzenPerSec, uint128, uint128, uint128);
}
