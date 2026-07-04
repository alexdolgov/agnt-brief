/// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface IMasterchef {
    function deposit(uint256 _pid, uint256 _amount) external;
    function poolLength() external view returns (uint256);
    function pendingSdt(uint256 _pid, address _user) external view returns (uint256);
    function updatePool(uint256 _pid) external;
    function userInfo(uint256 _pid, address _user) external view returns (uint256, uint256);
    function poolInfo(uint256 _pid) external view returns (address, uint256, uint256, uint256);

    function owner() external view returns (address);
    function setSdtPerBlock(uint256 _sdtPerBlock) external;
}
