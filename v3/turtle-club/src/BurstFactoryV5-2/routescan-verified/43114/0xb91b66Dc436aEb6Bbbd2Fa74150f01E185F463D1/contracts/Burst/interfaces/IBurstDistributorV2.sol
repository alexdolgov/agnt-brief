// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IBurstDistributorV2 {
    function withdraw(uint256 amount) external;

    function deposit(uint256 amount) external;

    function claimRewards() external returns (uint256);

    function emergencyWithdrawal() external;

    function getCurrentEpoch() external view returns (uint256);

    function getPendingRewards(address owner) external view returns (uint256);

    function initialize(
        address stakeToken_,
        uint256 percentPerEpoch_,
        address burstFactory_
    ) external;

    function setRewardTokens(address burstLP_, uint256 burstLPAmount) external;
}
