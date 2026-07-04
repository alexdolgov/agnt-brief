// SPDX-License-Identifier: MIT
pragma solidity =0.8.19;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract TokenMigrator is ReentrancyGuard, Ownable {
    event Migrated(address indexed user, uint256 amount);
    event BlacklistUpdated(address indexed user, bool isBlacklisted);
    event RecoveredERC20(address indexed token, uint256 amount);
    event StartTimeUpdated(uint256 newStartTime);
    event EndTimeUpdated(uint256 newEndTime);

    mapping (address => bool) public blacklist;

    IERC20 public immutable oldToken;
    IERC20 public immutable newToken;
    uint256 public startTime;
    uint256 public endTime;

    using SafeERC20 for IERC20;


    modifier nonBlacklisted {
        require(!blacklist[msg.sender], "TokenMigrator: caller is blacklisted");
        _;
    }

    modifier withinMigrationPeriod {
        require((block.timestamp >= startTime && block.timestamp <= endTime), "TokenMigrator: not within migration period");
        _;
    }

    constructor(address _oldToken, address _newToken, uint256 _startTime, uint256 _endTime) {
        oldToken = IERC20(_oldToken);
        newToken = IERC20(_newToken);
        startTime = _startTime;
        endTime = _endTime;
    }

    function migrate() external nonReentrant nonBlacklisted withinMigrationPeriod {
        uint256 remainingAmount = newToken.balanceOf(address(this));
        uint256 amount = oldToken.balanceOf(msg.sender);
        require(amount > 0, "TokenMigrator: no old token to migrate");
        require(amount <= remainingAmount, "TokenMigrator: not enough new token to migrate");

        oldToken.safeTransferFrom(msg.sender, address(this), amount);
        newToken.safeTransfer(msg.sender, amount);
        emit Migrated(msg.sender, amount);
    }

    function setBlacklist(address user, bool isBlacklisted) external onlyOwner {
        blacklist[user] = isBlacklisted;
        emit BlacklistUpdated(user, isBlacklisted);
    }

    function recoverERC20(address tokenAddress, uint256 amount) external onlyOwner {
        require(tokenAddress != address(oldToken), "TokenMigrator: cannot recover old token");
        IERC20(tokenAddress).safeTransfer(owner(), amount);
        emit RecoveredERC20(tokenAddress, amount);
    }

    function setStartTime(uint256 _startTime) external onlyOwner {
        startTime = _startTime;
        emit StartTimeUpdated(_startTime);
    }

    function setEndTime(uint256 _endTime) external onlyOwner {
        require(_endTime > startTime, "TokenMigrator: endTime must be after startTime");
        require(_endTime > block.timestamp, "TokenMigrator: endTime must be in the future");
        endTime = _endTime;

        emit EndTimeUpdated(_endTime);
    }
}
