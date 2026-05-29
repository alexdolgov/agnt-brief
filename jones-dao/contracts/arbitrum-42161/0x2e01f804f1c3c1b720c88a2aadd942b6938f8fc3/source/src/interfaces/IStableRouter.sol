// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IStableRouter {
    struct Request {
        uint256 assets;
        uint256 shares;
        uint256 timestamp;
    }

    function deposit(uint256 _assets, address _receiver) external returns (uint256);
    function multichainDeposit(address _receiver) external returns (uint256);
    function withdrawRequest(uint256 _shares, address _receiver, bytes calldata _enforceData)
        external
        returns (uint256);
    function cancelWithdrawRequest(address _receiver) external returns (uint256);
    function withdraw(bytes calldata _enforceData) external returns (uint256);
    function redeemStable(uint256 _epoch, uint256 _minAmountOut, bytes calldata _enforceData)
        external
        returns (uint256);
    function migratePosition() external returns (uint256, uint256);

    function withdrawRequests(address _user) external view returns (uint256, uint256, uint256);
    function totalWithdrawRequests() external view returns (uint256);

    function incentiveReceiver() external view returns (address);
    function withdrawCooldown() external view returns (uint256);

    event Deposit(address indexed owner, uint256 assets, address receiver, uint256 shares);
    event WithdrawRequest(address indexed owner, address receiver, uint256 assets);
    event CancelWithdrawRequest(address indexed owner, address receiver, uint256 assets, uint256 shares);
    event Withdraw(address indexed owner, uint256 assets, address receiver, uint256 retention);
    event MigratePosition(
        address indexed owner, uint256 oldAssets, uint256 oldjUSDC, uint256 newAssets, uint256 newjUSDC
    );
    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);

    error ZeroAmount();
    error InsufficientFunds();
    error CooldownNotMeet();
    error FailSendETH();
    error AlreadyRedemeed();
    error AlreadyCalled();
    error NotRightCaller();
    error CallerIsNotWhitelisted();
}
