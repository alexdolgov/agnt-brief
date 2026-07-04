//V3
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract LockedToken {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    uint256 public startTime = 1640700000;
    uint256 public tgePercent;
    uint256 public lockedTime;
    uint256 public vestingTime;
    uint256 public total;
    uint256 public timePeriod = 7 days;
    uint256 public claimed = 0;
    address public owner;
    string public name;
    IERC20 public token;

    constructor(
        string memory _name,
        address _token,
        uint256 _amount,
        uint256 _tgePercent,
        uint256 _lockedTime,
        uint256 _vestingTime
    ) {
        name = _name;
        token = IERC20(_token);
        total = _amount;
        tgePercent = _tgePercent;
        lockedTime = _lockedTime;
        vestingTime = _vestingTime;
        owner = msg.sender;
    }

    function getClaimAmount() public view returns (uint256) {
        if (block.timestamp < startTime) return 0;
        uint256 claimable = total.mul(tgePercent).div(100);
        if (block.timestamp.sub(startTime) > lockedTime) {
            uint256 unlockAmount = total
                .sub(claimable)
                .mul(
                    (block.timestamp.sub(startTime).sub(lockedTime)).div(
                        timePeriod
                    )
                )
                .div((vestingTime).div(timePeriod));
            claimable = claimable.add(unlockAmount);
        }
        if (claimable > total) {
            claimable = total;
        }
        return claimable - claimed;
    }

    function claim() public {
        uint256 amount = getClaimAmount();
        require(amount > 0, "Must be > 0");
        claimed = claimed.add(amount);
        token.safeTransfer(owner, amount);
    }
}
