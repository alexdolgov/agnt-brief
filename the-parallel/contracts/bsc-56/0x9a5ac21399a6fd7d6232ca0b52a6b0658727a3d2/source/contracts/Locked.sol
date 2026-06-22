//V1
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

contract Locked is Pausable, AccessControl {
    bytes32 public constant FACTORY = keccak256("FACTORY");
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    IERC20 public token;
    uint256 public basePoint = 1000 * 1e18;
    uint256 public maxTime = 10 days;
    uint256 public lockedTime = 5 days;
    uint256 public startTime;
    uint256 public endTime;
    uint256 public maxLocked;
    struct User {
        uint256 amount;
        uint256 updatedTime;
        uint256 timeLocked;
        uint256 lastTicket;
    }
    mapping(address => User) public users;

    constructor(
        address _token,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _maxLocked
    ) {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        token = IERC20(_token);
        startTime = _startTime;
        endTime = _endTime;
        maxLocked = _maxLocked;
    }

    function getNumberTicket(address _user) public view returns (uint256) {
        User memory user = users[_user];
        if (block.timestamp < startTime) return 0;
        uint256 time = block.timestamp <= endTime
            ? block.timestamp.sub(user.updatedTime)
            : endTime.sub(user.updatedTime);
        return
            user.lastTicket.add(
                user.amount.mul(time).mul(100).div(basePoint).div(maxTime)
            );
    }

    function locked(uint256 amount) public whenNotPaused {
        require(
            block.timestamp >= startTime && block.timestamp <= endTime,
            "Not in stake time"
        );
        User storage user = users[msg.sender];
        if (user.amount > 0) {
            user.lastTicket = getNumberTicket(msg.sender);
        }
        user.amount = user.amount.add(amount);
        require(user.amount <= maxLocked, "Max locked");
        user.timeLocked = block.timestamp;
        user.updatedTime = block.timestamp;
        token.transferFrom(msg.sender, address(this), amount);
    }

    function unLock() public whenNotPaused {
        User storage user = users[msg.sender];
        require(user.amount > 0, "Not have any token");
        require(user.timeLocked + lockedTime <= block.timestamp, "Locked");
        if (user.amount > 0) {
            user.lastTicket = getNumberTicket(msg.sender);
        }
        token.transfer(msg.sender, user.amount);
        user.amount = 0;
    }

    function useTicket(address account, uint256 amount)
        public
        onlyRole(FACTORY)
        returns (bool)
    {
        uint256 ticket = getNumberTicket(account);
        require(amount.mul(100) <= ticket, "Not enough ticket!");
        User storage user = users[account];
        user.updatedTime = block.timestamp;
        user.lastTicket = ticket.sub(amount.mul(100));
        return true;
    }
}
