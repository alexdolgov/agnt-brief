// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract VeilAirdrop is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    uint256 public constant CLAIM_PERIOD = 14 days;

    IERC20 public immutable token;
    uint256 public immutable claimDeadline;
    uint256 public totalAllocated;
    uint256 public totalClaimed;

    mapping(address => uint256) public allocations;
    mapping(address => bool) public claimed;

    event AllocationSet(address indexed account, uint256 amount);
    event Claimed(address indexed account, uint256 amount);
    event ClaimDeadlineSet(uint256 claimDeadline);
    event AdminWithdraw(address indexed to, uint256 amount);

    error AlreadyClaimed();
    error AllocationAlreadyClaimed();
    error ClaimPeriodActive();
    error ClaimPeriodEnded();
    error LengthMismatch();
    error NoAllocation();
    error ZeroAddress();

    constructor(address _token) Ownable(msg.sender) {
        if (_token == address(0)) revert ZeroAddress();
        token = IERC20(_token);
        claimDeadline = block.timestamp + CLAIM_PERIOD;
        emit ClaimDeadlineSet(claimDeadline);
    }

    function claim() external nonReentrant {
        address account = msg.sender;
        if (block.timestamp > claimDeadline) revert ClaimPeriodEnded();
        if (claimed[account]) revert AlreadyClaimed();

        uint256 amount = allocations[account];
        if (amount == 0) revert NoAllocation();

        claimed[account] = true;
        totalClaimed += amount;

        token.safeTransfer(account, amount);

        emit Claimed(account, amount);
    }

    function setAllocation(address account, uint256 amount) external onlyOwner {
        if (account == address(0)) revert ZeroAddress();
        if (claimed[account]) revert AllocationAlreadyClaimed();

        uint256 oldAmount = allocations[account];
        allocations[account] = amount;

        if (amount > oldAmount) {
            totalAllocated += amount - oldAmount;
        } else {
            totalAllocated -= oldAmount - amount;
        }

        emit AllocationSet(account, amount);
    }

    function setAllocations(address[] calldata accounts, uint256[] calldata amounts) external onlyOwner {
        if (accounts.length != amounts.length) revert LengthMismatch();
        for (uint256 i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            uint256 amount = amounts[i];
            if (account == address(0)) revert ZeroAddress();
            if (claimed[account]) revert AllocationAlreadyClaimed();

            uint256 oldAmount = allocations[account];
            allocations[account] = amount;

            if (amount > oldAmount) {
                totalAllocated += amount - oldAmount;
            } else {
                totalAllocated -= oldAmount - amount;
            }

            emit AllocationSet(account, amount);
        }
    }

    function adminWithdraw(address to) external onlyOwner nonReentrant {
        if (to == address(0)) revert ZeroAddress();
        if (block.timestamp <= claimDeadline) revert ClaimPeriodActive();
        uint256 balance = token.balanceOf(address(this));
        token.safeTransfer(to, balance);
        emit AdminWithdraw(to, balance);
    }
}
