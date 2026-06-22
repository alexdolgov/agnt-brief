// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

interface IPolyCatStrategy {
    function deposit(address _to, uint256 _wantAmt) external returns (uint256);

    function withdraw(address _to, uint256 _wantAmt) external returns (uint256);

    function harvest() external;

    function depositReward(uint256 _depositAmt) external returns (bool);

    function pendingPaw(address _user) external view returns (uint256);
}
