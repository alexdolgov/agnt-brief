// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title TokenVesting
/// @notice Linear vesting with team-controlled schedule updates subject to minimums
contract TokenVesting {
    using SafeERC20 for IERC20;

    uint256 public constant MIN_CLIFF = 1 days;
    uint256 public constant MIN_DURATION = 730 days;

    address public immutable token;
    address public team;

    uint256 public immutable vestingAmount;
    uint256 public immutable vestingBegin;
    uint256 public vestingCliff;
    uint256 public vestingEnd;
    uint256 public lastUpdate;

    event TeamUpdated(address indexed oldTeam, address indexed newTeam);
    event ScheduleUpdated(uint256 newCliff, uint256 newEnd);
    event TokensClaimed(address indexed recipient, uint256 amount);

    error InvalidAddress();
    error InvalidSchedule();
    error Unauthorized();
    error StillInCliff();
    error NoTokens();

    constructor(
        address _token,
        address _team,
        uint256 _vestingAmount,
        uint256 _vestingCliff,
        uint256 _vestingEnd
    ) {
        if (_token == address(0) || _team == address(0)) revert InvalidAddress();
        if (_vestingCliff < block.timestamp + MIN_CLIFF) revert InvalidSchedule();
        if (_vestingEnd < block.timestamp + MIN_DURATION) revert InvalidSchedule();
        if (_vestingEnd < _vestingCliff) revert InvalidSchedule();

        token = _token;
        team = _team;
        vestingAmount = _vestingAmount;
        vestingBegin = block.timestamp;
        vestingCliff = _vestingCliff;
        vestingEnd = _vestingEnd;
        lastUpdate = block.timestamp;
    }

    function updateTeam(address newTeam) external {
        if (msg.sender != team) revert Unauthorized();
        if (newTeam == address(0)) revert InvalidAddress();
        address old = team;
        team = newTeam;
        emit TeamUpdated(old, newTeam);
    }

    function claim() external {
        if (msg.sender != team) revert Unauthorized();
        if (block.timestamp < vestingCliff) revert StillInCliff();

        uint256 amount;
        if (block.timestamp >= vestingEnd) {
            amount = IERC20(token).balanceOf(address(this));
        } else {
            uint256 elapsed = block.timestamp - lastUpdate;
            uint256 duration = vestingEnd - vestingBegin;
            amount = (vestingAmount * elapsed) / duration;
            lastUpdate = block.timestamp;
        }

        if (amount == 0) revert NoTokens();
        IERC20(token).safeTransfer(team, amount);
        emit TokensClaimed(team, amount);
    }

    function claimableAmount() external view returns (uint256) {
        if (block.timestamp < vestingCliff) return 0;
        if (block.timestamp >= vestingEnd) return IERC20(token).balanceOf(address(this));

        uint256 elapsed = block.timestamp - lastUpdate;
        uint256 duration = vestingEnd - vestingBegin;
        return (vestingAmount * elapsed) / duration;
    }
}
