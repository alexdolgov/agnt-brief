// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

interface IStrategy {
    event Earned(address indexed _earnedToken, uint256 _amount);
    event Deposited(uint256 _amount);
    event Withdraw(uint256 _amount);

    function owner() external view returns (address);

    function lastEarnBlock() external view returns (uint256);

    function wantAddress() external view returns (address);

    // Total want tokens managed by strategy
    function wantLockedTotal() external view returns (uint256);

    function pendingReward() external view returns (uint256);

    // Main want token compounding function
    function earn() external;

    // Transfer want tokens autoFarm -> strategy
    function deposit(uint256 _wantAmt) external returns (uint256);

    // Transfer want tokens strategy -> autoFarm
    function withdraw(uint256 _wantAmt) external returns (uint256);

    function inCaseTokensGetStuck(
        address _token,
        uint256 _amount,
        address _to
    ) external;

    function setOwner(address _owner) external;
}
