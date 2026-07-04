// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IRouter {
    struct Request {
        uint256 amount;
        uint256 timestamp;
    }

    struct Delegates {
        address owner;
        address target;
    }

    function deposit(uint256 _assets, address _receiver, bool _compound) external returns (uint256);
    function multichainDeposit(address _receiver, bool _compound) external returns (uint256);
    function withdrawRequest(uint256 _assetsOrShares, bool _compound, address _receiver, bytes calldata _enforceData)
        external
        returns (uint256);
    function cancelWithdrawRequest(uint256 _assets, bool _compound, address _receiver) external returns (uint256);
    function withdraw(uint256 _assets, bytes calldata _enforceData) external returns (uint256);
    function redeemStable(uint256 _epoch, bytes calldata _enforceData) external returns (uint256);
    function claim(address _receiver) external returns (uint256);
    function compound(uint256 _amount) external returns (uint256);
    function unCompound(uint256 _shares) external returns (uint256);
    function delegateClaim(address _delegator, address _target) external;

    function delegates(address _user) external view returns (address, address);
    function withdrawRequests(address _user) external view returns (uint256, uint256);
    function totalWithdrawRequests() external view returns (uint256);

    function incentiveReceiver() external view returns (address);
    function withdrawCooldown() external view returns (uint256);

    event Deposit(address indexed owner, uint256 assets, address receiver, uint256 shares);
    event WithdrawRequest(address indexed owner, address receiver, uint256 assets);
    event CancelWithdrawRequest(address indexed owner, address receiver, uint256 assets);
    event Withdraw(address indexed owner, uint256 assets, address receiver, uint256 retention);
    event Claim(address indexed _caller, address indexed owner, uint256 rewards, address indexed target);
    event Compound(address indexed owner, uint256 assets, uint256 shares);
    event UnCompound(address indexed owner, uint256 shares, uint256 assets);
    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);

    error ZeroAmount();
    error InsufficientFunds();
    error CallerNotAllowed();
    error InsufficientRewards();
    error CooldownNotMeet();
    error FailSendETH();
    error AlreadyRedemeed();
}
