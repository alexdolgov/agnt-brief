// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract Vesting is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    IERC20 public immutable TOKEN;

    uint64 public constant MONTH = 30 days;

    mapping(address => UserInfo) public userInfo;
    mapping(address => uint256) public claimed;

    struct UserInfo {
        uint256 amount;
        uint256 duration; // in months
        uint256 cliff; // in months
        uint64 startTime;
    }

    constructor(address _owner, address _token) Ownable(_owner) {
        TOKEN = IERC20(_token);
    }

    // ownable methods
    function addVestedUsers(
        address[] memory users,
        UserInfo[] memory info
    ) external onlyOwner nonReentrant {
        uint256 len = users.length;
        require(len > 0 && info.length == len, "Vesting: Wrong array length");
        uint256 sum;
        for (uint256 i; i < len; i++) {
            require(userInfo[users[i]].amount == 0, "Vesting: Already registered");
            require(info[i].startTime >= currentTime(), "Vesting: Wrong start time");
            require(info[i].amount > 0, "Vesting: Zero amount");
            require(info[i].duration > 0, "Vesting: Wrong duration");

            sum += info[i].amount;
            userInfo[users[i]] = info[i];
        }

        SafeERC20.safeTransferFrom(TOKEN, _msgSender(), address(this), sum);
    }

    function removeUser(address user) external onlyOwner nonReentrant {
        (, , , uint256 totalVested, , uint256 alreadyClaimed, ) = getUserInfo(
            user
        );
        require(totalVested > 0, "Vesting: Zero amount");
        delete userInfo[user];
        delete claimed[user];
        SafeERC20.safeTransfer(
            TOKEN,
            _msgSender(),
            totalVested - alreadyClaimed
        );
    }

    // public methods

    function claim() external nonReentrant {
        address user = _msgSender();
        (, uint64 end, , , uint256 toClaim, , ) = getUserInfo(user);
        require(toClaim > 0, "Vesting: Zero amount");
        claimed[user] += toClaim;
        if (currentTime() >= end) {
            delete userInfo[user];
            delete claimed[user];
        }
        SafeERC20.safeTransfer(TOKEN, user, toClaim);
    }

    // view methods

    function currentTime() public view returns (uint256) {
        return block.timestamp;
    }

    function available(address user) public view returns (uint256) {
        UserInfo memory info = userInfo[user];
        uint256 realStart = info.startTime + info.cliff * MONTH;
        if (info.amount == 0 || currentTime() < realStart) return 0;
        uint256 monthPassed = (currentTime() - realStart) / MONTH;
        monthPassed = monthPassed > info.duration ? info.duration : monthPassed;
        return info.amount * monthPassed / info.duration - claimed[user];
    }

    function getUserInfo(
        address user
    )
        public
        view
        returns (
            uint64 start,
            uint64 end,
            uint64 nextClaim,
            uint256 totalVested,
            uint256 availableToClaim,
            uint256 alreadyClaimed,
            uint256 toBeClaimed
        )
    {
        UserInfo memory info = userInfo[user];
        if (info.amount > 0) {
            start = uint64(info.startTime + info.cliff * MONTH);
            end = uint64(info.startTime + (info.cliff + info.duration) * MONTH);
            alreadyClaimed = claimed[user];
            info.startTime = uint64(info.startTime + (info.cliff + 1) * MONTH);
            uint256 curTime = currentTime();
            if (curTime < info.startTime) nextClaim = info.startTime;
            else if (curTime >= end) nextClaim = end;
            else
                nextClaim = uint64(
                    info.startTime +
                        ((curTime - info.startTime) / MONTH + 1) *
                        MONTH
                );
            totalVested = info.amount;
            availableToClaim = available(user);
            toBeClaimed = totalVested - availableToClaim - alreadyClaimed;
            toBeClaimed = curTime >= end ? 0 : toBeClaimed;
        }
    }
}
