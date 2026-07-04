pragma solidity ^0.8.0;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./libs/IMasterChefDogs.sol";

contract FounderStaker is Ownable {
    using SafeERC20 for IERC20;

    uint public constant pigStakingPID = 0;
    IERC20 public immutable pigsToken;
    IMasterChefDogs public masterChefDogs;

    event FounderDeposit(address indexed user, uint256 amount);
    event FounderHarvest();
    event FounderWithdraw(address indexed user, uint256 amount);
    event FounderEmergencyWithdraw(address indexed user);

    constructor (IERC20 _pigsToken){
        pigsToken = _pigsToken;
    }

    function setMasterChefDogs(IMasterChefDogs _masterchef) external onlyOwner{
        require(address(_masterchef) != address(0), 'zero address');
        masterChefDogs = _masterchef;
        pigsToken.approve(address(_masterchef), type(uint256).max);
    }

    function harvestBUSD() external onlyOwner {
        masterChefDogs.deposit(pigStakingPID, 0, address(0));
        emit FounderHarvest();
    }

    function depositFounderPigs(uint256 _amount) public onlyOwner {
        masterChefDogs.deposit(pigStakingPID, _amount, address(0));
        emit FounderDeposit(address(this), _amount);
    }

    function depositFounderPigsAll() external onlyOwner {
        uint256 balance = pigsToken.balanceOf(address(this));
        depositFounderPigs(balance);
    }

    function withdrawFounderPigs(uint256 _amount) external onlyOwner {
        masterChefDogs.withdraw(pigStakingPID, _amount);
        emit FounderWithdraw(address(this), _amount);
    }

    function withdrawFounderPigsAll() external onlyOwner {
        IMasterChefDogs.UserInfo memory user = getUserFromMC(address(this));
        masterChefDogs.withdraw(pigStakingPID, user.amount);
    }

    function withdraw(address _token, uint256 _amount, address _to) external onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function emergencyWithdraw() external onlyOwner {
        masterChefDogs.emergencyWithdraw(pigStakingPID);
        emit FounderEmergencyWithdraw(address(this));
    }

    function getUserFromMC(address addr) public view returns (IMasterChefDogs.UserInfo memory user){
        user = masterChefDogs.userInfo(addr);
    }

}