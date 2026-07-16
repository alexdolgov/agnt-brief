// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

interface IIronChef {
    function poolInfo(uint256 index)
        external
        view
        returns (
            uint256 accRewardPerShare,
            uint256 lastRewardTime,
            uint256 allocPoint
        );

    function lpToken(uint256 idex) external view returns (address);

    function reward() external view returns (address);

    function pendingReward(uint256 _pid, address _user) external view returns (uint256 pending);

    function deposit(
        uint256 pid,
        uint256 amount,
        address to
    ) external;

    function withdraw(
        uint256 pid,
        uint256 amount,
        address to
    ) external;
}
