// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IUserManager {
    function checkIsMember(address account) external view returns (bool);
    function getVoucheeCount(address staker) external view returns (uint256);
    function vouchees(address staker, uint index) external view returns (address);
    function stakers(address stakerAddress) external view returns (bool, uint96, uint96, uint64, uint256, uint256);
    function stake(uint96 amount) external;
    function getLockedStake(address staker, address borrower) external view returns (uint256);
    function debtWriteOff(address staker, address borrower, uint256 amount) external;
}
