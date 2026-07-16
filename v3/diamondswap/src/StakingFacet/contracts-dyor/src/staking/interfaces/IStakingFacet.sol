// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Vesting, RewardsClaim } from "../storage/StakingStorage.sol";

interface IStakingFacet {
    struct VestingParams {
        address account;
        uint256 depositAmount;
        uint256 vestedAmount;
        uint256[] vestingIds;
        uint256[] vestingAmounts;
    }

    error Disabled();
    error StakingDisabled();
    error StakingAlreadyInitialized();
    error ExpiredClaim();
    error InvalidBackend();
    error InvalidPoints();
    error InvalidTo();
    error InvalidInput(uint256 index);
    error InvalidAmount();
    error InvalidEndTimestamp();
    error MissingRewardsEndTimestamp();
    error NoRewardsToClaim();

    event Deposit(uint256 depositAmount, address indexed msgSender, address indexed account); //
    event Withdraw(uint256 amount, address indexed msgSender, address indexed account); //
    event ClaimRewards(uint256 amount, address indexed account); //
    event RewardPerShareUpdated(uint256 indexed rewardPerShare); //
    event RewardDebtUpdated(uint256 rewardDebt, address indexed msgSender, address indexed account); //
    event RewardIndexUpdate(uint256 indexed rewardIndex); //
    event RewardsDeposit(
        uint256 index, uint256 amount, uint256 rewardPerSecond, uint256 startTimestamp, uint256 endTimestamp
    );
    event UnclaimedRewardsUpdated(uint256 amount, address indexed account); //
    event VestingStepUpdated(uint256 step);
    event VestInit(VestingParams[] params);
    event VestUpdated(address account, uint256 index, uint256 withdrawnAmount);

    function depositForVesting(VestingParams[] calldata params) external;

    function deposit(uint256 depositAmount) external;

    function withdraw(uint256 amount) external;

    function claimRewards(RewardsClaim calldata claim, bytes calldata signature) external returns (uint256);

    function getPendingRewards(address _address) external view returns (uint256);

    function getUserDepositAmount(address _address) external view returns (uint256);

    function getUserVestedAmount(address _address) external view returns (uint256);

    function getUserTotalUnlockedAmount(address _address) external view returns (uint256);

    function getUserVesting(address _address) external view returns (Vesting[3] memory);

    function getLastRewardTimestamp() external view returns (uint256);

    function getTotalDividends() external view returns (uint256);

    function getCurrentRewards() external view returns (uint256, uint256);

    function getNextRewards() external view returns (uint256, uint256);

    function getRewardPerSecond() external view returns (uint256);
}
