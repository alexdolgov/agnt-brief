// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IMasterChef {
    function cakePerBlock() external view returns (uint);

    function totalAllocPoint() external view returns (uint);

    function poolInfo(uint _pid)
        external
        view
        returns (
            address lpToken,
            uint allocPoint,
            uint lastRewardBlock,
            uint accCakePerShare
        );

    function userInfo(uint _pid, address _account) external view returns (uint amount, uint rewardDebt);

    function poolLength() external view returns (uint);

    function deposit(uint _pid, uint _amount) external;

    function withdraw(uint _pid, uint _amount) external;

    function emergencyWithdraw(uint _pid) external;

    function enterStaking(uint _amount) external;

    function leaveStaking(uint _amount) external;
}
