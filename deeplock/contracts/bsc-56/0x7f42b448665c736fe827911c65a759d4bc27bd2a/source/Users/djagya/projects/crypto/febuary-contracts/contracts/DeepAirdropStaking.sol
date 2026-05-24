// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

contract DeepAirdropStaking is Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 amount;
        uint unlocks;
    }

    uint constant LOCK_PERIOD = 21 days;
    IERC20 private _token;
    uint public startTime;
    uint public endTime;

    mapping(address => UserInfo) public userInfo;

    event Lock(address indexed user, uint256 amount, uint unlocksAt);
    event Unlock(address indexed user, uint256 amount);

    constructor(IERC20 token, uint _startTime, uint _endTime) public {
        _token = token;
        startTime = _startTime;
        endTime = _endTime;
    }

    function setTime(uint _startTime, uint _endTime) external onlyOwner {
        startTime = _startTime;
        endTime = _endTime;
    }

    function lock(uint256 amount) external {
        require(block.timestamp > startTime, "Locking is not started yet");
        require(block.timestamp < endTime, "Locking is already finished");
        UserInfo storage user = userInfo[msg.sender];

        _token.safeTransferFrom(msg.sender, address(this), amount);

        user.amount = user.amount.add(amount);
        user.unlocks = block.timestamp + LOCK_PERIOD;
        emit Lock(msg.sender, amount, user.unlocks);
    }

    function unlock() external {
        UserInfo storage user = userInfo[msg.sender];
        require(user.amount > 0, "No tokens to unlock");
        require(block.timestamp >= user.unlocks, "Current time is before release time");

        emit Unlock(msg.sender, user.amount);

        _token.safeTransfer(msg.sender, user.amount);
        user.amount = 0;
    }
}