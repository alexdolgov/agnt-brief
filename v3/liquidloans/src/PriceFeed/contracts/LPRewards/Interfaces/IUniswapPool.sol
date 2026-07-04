// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;


interface IUniswappool {
    function setParams(address _loanTokenAddress, address _UniswaptokenAddress, uint256 _duration) external;
    function lastTimeRewardApplicable() external view returns (uint256);
    function rewardPerToken() external view returns (uint256);
    function earned(address account) external view returns (uint256);
    function withdrawAndClaim() external;
    function claimReward() external;
    //function notifyRewardAmount(uint256 reward) external;
}
// 2025 Liquid Loans