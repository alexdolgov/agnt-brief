// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

interface ICommunityIssuance {
    // --- Events ---

    event TotalTokensIssuedUpdated(uint256 _totalTokensIssued);

    // --- Functions ---

    function issueTokens() external returns (uint256);

    function sendTokens(address _account, uint256 _tokensAmount) external;

    function addFundToStabilityPool(uint256 _assignedSupply) external;

    function addFundToStabilityPoolFrom(uint256 _assignedSupply, address _spender) external;

    function setWeeklyTokenDistribution(uint256 _weeklyReward) external;
}
