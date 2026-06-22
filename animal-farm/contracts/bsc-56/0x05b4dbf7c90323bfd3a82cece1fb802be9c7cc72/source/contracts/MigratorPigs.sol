// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./interfaces/IMasterchefPigs.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "hardhat/console.sol";

contract MigratorPigs is Ownable {
    using SafeERC20 for IERC20;

    IMasterchefPigs public MasterChefPigs;
    bool public migrationEnabled = false;

    // Info of each pool.
    struct PoolInfo {
        IERC20 token; // Address of LP token contract.
    }

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    // Info of each user.
    struct UserInfo {
        uint256 amountStaked;
    }

    constructor(IMasterchefPigs _masterchefPigs){
        MasterChefPigs = _masterchefPigs;
    }

    // ADMIN FUNCTIONS
    function toggleMigrationEnabled(bool _state) public onlyOwner {
        migrationEnabled = _state;
    }

    function updateMasterchefDogs(IMasterchefPigs _masterchefPigs) public onlyOwner {
        MasterChefPigs = _masterchefPigs;
    }

    function addPool(IERC20 _token) external onlyOwner {
        poolInfo.push(PoolInfo({token: _token}));
    }

    function addPoolUserData(uint256 _poolIndex, address[] memory _users, uint256[] memory _usersStakeData) external onlyOwner {
        require(_users.length == _usersStakeData.length);
        for (uint256 i = 0; i < _users.length; i++) {
            UserInfo storage user = userInfo[_poolIndex][_users[i]];
            user.amountStaked = _usersStakeData[i];
        }
    }

    function inCaseTokensGetStuck(address _token, uint256 _amount, address _to) external onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
    }

    // EXTERNAL FUNCTIONS
    function migrate(uint256 _pid, uint256 _amount) external {
        UserInfo storage user = userInfo[_pid][msg.sender];

        console.log("_amount: ", _amount);
        console.log("user.amountStaked: ", user.amountStaked);

        require(migrationEnabled, 'migration not enabled');
        require(_amount > 0, 'zero amount');
        require(_amount <= user.amountStaked, 'exceed allowed deposit');
        user.amountStaked -= _amount;

        MasterChefPigs.depositMigrator(msg.sender, _pid, _amount);

    }

    // VIEW FUNCTIONS
    function availableToMigrate(uint256 _pid, address _user) external view returns (uint256){
        return userInfo[_pid][_user].amountStaked;
    }


}