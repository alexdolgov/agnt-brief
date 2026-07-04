// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

interface IPancakeAMLHelper {
    error AddressZero();
    error AlreadyExist();
    error DeactivatePool();
    error InvalidAmount();
    error InvalidTokenId();

    event Initialized(uint8 version);
    event NewDeposit(address indexed _user, address indexed _pool, uint256 _amount0, uint256 _amount1);
    event NewWithdraw(address indexed _user, address indexed _pool, uint256 _amount);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event Paused(address account);
    event Unpaused(address account);

    function __PancakeAMLHelper_init(address _pancakeStaking) external;
    function balance(address _pool, address _address) external view returns (uint256);
    function deposit(address _pool, uint256 _amount0, uint256 _amount1) external;
    function harvest(address _pool) external;
    function masterCakepie() external view returns (address);
    function owner() external view returns (address);
    function pancakeStaking() external view returns (address);
    function paused() external view returns (bool);
    function renounceOwnership() external;
    function setMasterCakepie(address _masterCakepie) external;
    function totalStaked(address _pool) external view returns (uint256);
    function transferOwnership(address newOwner) external;
    function withdrawAndClaim(address _pool, uint256 _amount, bool _isClaim) external;
}
