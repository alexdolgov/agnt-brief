// SPDX-License-Identifier: MIT

pragma solidity >=0.4.0;

interface IMasterChef {

    function pendingCake(uint256 _pid, address _user) external view returns (uint256);

    function enterStaking(uint256 _amount) external;

    function leaveStaking(uint256 _amount) external;

}
