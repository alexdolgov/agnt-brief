// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IStakingStorage {
    function init(
        address _rewardStorage,
        string[] memory _validators,
        uint256[] memory _targetAmounts
    ) external;

    function distributeStake() external payable;

    function distributeUnstake(uint256 amount) external;

    function claimRewards() external;

    function withdrawFreeBalance(uint256 amount) external;

    function totalStake() external view returns (uint256);

    function getFreeBalance() external view returns (uint256);

    function refreshUnstake() external;

    function getOrderIndex() external view returns (uint256);

    function orderStartTime(uint256 index) external view returns (uint256);

    function setValidatorPriority(
        string[] memory _priorityList,
        bool _isInPriority
    ) external;

    function setValidatorTargetAmount(
        string[] memory _validators,
        uint256[] memory _targetAmount
    ) external;

    function addValidator(
        string memory validator,
        uint256 targetAmount
    ) external;

    function removeValidator(string memory validator) external;

    function redistribute(
        string memory from,
        string memory to,
        uint256 amount
    ) external;

    function setUnstakeValidators(string[] memory _unstakeValidators) external;
}
