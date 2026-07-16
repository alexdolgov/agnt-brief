// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

interface IUserVeLockStakingRewards {
    function depositForVeLock(uint256 _amount) external; 
    function withdrawForVeLock(uint256 _amount) external;
    function claimForVeLock() external;
}