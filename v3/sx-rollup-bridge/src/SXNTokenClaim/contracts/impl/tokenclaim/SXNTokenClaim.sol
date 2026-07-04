// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @title SXNTokenClaim
/// @notice Token claim contract for legacy SXN token holders
contract SXNTokenClaim is AccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;

    uint256 public _claimDeadline;
    // user => tokenAddress => amount
    mapping(address => mapping(address => uint256)) public _pendingClaim;

    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    modifier onlyBeforeClaimDeadline() {
        require(block.timestamp < _claimDeadline, "Claim deadline has passed");
        _;
    }

    event PendingTokenAmountAdded(
        address user,
        address tokenAddress,
        uint256 amount
    );
    event AdminWithdraw(address tokenAddress, uint256 amount);
    event ClaimDeadlineSet(uint256 claimDeadline, uint256 oldClaimDeadline);
    event TokensClaimed(address user, address tokenAddress, uint256 amount);

    /// ADMIN FUNCTIONS

    function setClaimDeadline(
        uint256 claimDeadline
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 oldClaimDeadline = _claimDeadline;
        require(
            claimDeadline > block.timestamp,
            "Claim deadline must be in the future"
        );
        require(
            claimDeadline > oldClaimDeadline,
            "Claim deadline must be greater than old claim deadline"
        );
        _claimDeadline = claimDeadline;
        emit ClaimDeadlineSet(claimDeadline, oldClaimDeadline);
    }

    /// @notice Adds an amount to the pending claim for a user
    /// @notice Only callable by admin
    /// @param user The address of the user to add the amount to
    /// @param tokenAddress The address of the token to add the amount to
    /// @param amount The amount to add to the pending claim
    function addAmountDue(
        address user,
        address tokenAddress,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20 token = IERC20(tokenAddress);
        token.safeTransferFrom(msg.sender, address(this), amount);
        _pendingClaim[user][tokenAddress] += amount;

        emit PendingTokenAmountAdded(user, tokenAddress, amount);
    }

    /// @notice Withdraws the specified erc20 as admin
    /// @notice Only callable by admin
    /// @param tokenAddress The erc20 token address
    function adminWithdraw(
        address tokenAddress
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            block.timestamp >= _claimDeadline,
            "Claim deadline has not passed"
        );

        IERC20 token = IERC20(tokenAddress);
        uint256 amount = token.balanceOf(address(this));
        token.safeTransfer(msg.sender, amount);

        emit AdminWithdraw(tokenAddress, amount);
    }

    /// USER FUNCTIONS

    function claim(
        address tokenAddress
    ) external nonReentrant onlyBeforeClaimDeadline {
        uint256 amount = _pendingClaim[msg.sender][tokenAddress];
        if (amount == 0) {
            return;
        }
        _pendingClaim[msg.sender][tokenAddress] = 0;
        IERC20 token = IERC20(tokenAddress);
        token.safeTransfer(msg.sender, amount);

        emit TokensClaimed(msg.sender, tokenAddress, amount);
    }
}
