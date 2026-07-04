// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract RewardPool {
    using SafeMath for uint256;

    address public rewardToken =
        address(0x3969Fe107bAe2537cb58047159a83C33dfbD73f9);

    address public owner;
    mapping(address => bool) public _managers;

    modifier onlyOwner() {
        require(msg.sender == owner, "Owner is only allowed");
        _;
    }

    modifier onlyManager() {
        require(
            _managers[msg.sender] == true,
            "Only managers can call this function"
        );
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function addManager(address manager) external onlyOwner {
        _managers[manager] = true;
    }

    function removeManager(address manager) external onlyOwner {
        _managers[manager] = false;
    }

    function transferOwnerShip(address _owner) external onlyOwner {
        owner = _owner;
    }

    function rewardTo(address _account, uint256 _rewardAmount) external {
        require(
            IERC20(rewardToken).balanceOf(address(this)) > _rewardAmount,
            "Insufficient Balance"
        );
        IERC20(rewardToken).transfer(_account, _rewardAmount);
    }

    function withdrawToken(address token, address _account)
        external
        onlyManager
    {
        uint256 balance = IERC20(token).balanceOf(address(this));
        require(balance > 0, "Insufficient Balance");
        IERC20(token).transfer(_account, balance);
    }
}
