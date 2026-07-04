// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

import "../library/SafeToken.sol";

import "../interfaces/IBEP20.sol";

contract Vesting is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeToken for address;

    /* ========== CONSTANTS ============= */

    uint256 private constant TOTAL_SHARE = 1e18;

    /* ========== STATE VARIABLES ========== */

    address public lab;

    mapping(address => uint256) public lastUnlockTimestamp;
    mapping(address => uint256) public claimed;

    mapping(address => uint256) public userShare;

    uint256 public startReleaseTimestamp;
    uint256 public endReleaseTimestamp;

    bool public initialized;

    constructor() public {}

    function initialize(address _lab, uint256 _startReleaseTimestamp, uint256 _endReleaseTimestamp) external onlyOwner {
        require(initialized == false, "already initialized");

        lab = _lab;
        startReleaseTimestamp = _startReleaseTimestamp;
        endReleaseTimestamp = _endReleaseTimestamp;

        initialized = true;
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function emergencyWithdraw() external onlyOwner {
        uint256 tokenBalance = IBEP20(lab).balanceOf(address(this));
        lab.safeTransfer(msg.sender, tokenBalance);
    }

    function setUserShare(address[] calldata _users, uint256[] calldata _userShares) external onlyOwner {
        require(_users.length == _userShares.length, "Vesting: invalid userShares length");
        for (uint256 i = 0; i < _userShares.length; i++) {
            userShare[_users[i]] = _userShares[i];
            if (lastUnlockTimestamp[_users[i]] < startReleaseTimestamp) {
                lastUnlockTimestamp[_users[i]] = startReleaseTimestamp;
            }
        }
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function withdrawTokens() external nonReentrant {
        uint256 _tokensToClaim = tokensClaimable(msg.sender);
        require(_tokensToClaim > 0, "Vesting: No tokens to claim");
        claimed[msg.sender] = claimed[msg.sender].add(_tokensToClaim);

        lab.safeTransfer(msg.sender, _tokensToClaim);
        lastUnlockTimestamp[msg.sender] = block.timestamp;
    }

    /* ========== VIEWS ========== */

    function tokensClaimable(address _user) public view returns (uint256 claimableAmount) {
        if (userShare[_user] == 0) {
            return 0;
        }
        uint256 unclaimedTokens = IBEP20(lab).balanceOf(address(this));
        claimableAmount = _getTokenAmount(_user);
        claimableAmount = claimableAmount.sub(claimed[_user]);

        claimableAmount = _canUnlockAmount(_user, claimableAmount);

        if (claimableAmount > unclaimedTokens) {
            claimableAmount = unclaimedTokens;
        }
    }

    function tokensLockable(address _user) public view returns (uint256 lockableAmount) {
        if (userShare[_user] == 0) {
            return 0;
        }
        uint256 unclaimedTokens = IBEP20(lab).balanceOf(address(this));
        lockableAmount = _getTokenAmount(_user);
        lockableAmount = lockableAmount.sub(claimed[_user]);

        if (lockableAmount > unclaimedTokens) {
            lockableAmount = unclaimedTokens;
        }
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _allocationOf(address _user) private view returns (uint256) {
        if (TOTAL_SHARE == 0) {
            return 0;
        } else {
            return userShare[_user].mul(1e18).div(TOTAL_SHARE);
        }
    }

    function _getTokenAmount(address _user) private view returns (uint256) {
        if (TOTAL_SHARE == 0) {
            return 0;
        }

        uint256 tokenBalance = IBEP20(lab).balanceOf(address(this));
        return tokenBalance.mul(_allocationOf(_user)).div(1e18);
    }

    function _canUnlockAmount(address _user, uint256 _unclaimedTokenAmount) private view returns (uint256) {
        if (block.timestamp < startReleaseTimestamp) {
            return 0;
        } else if (block.timestamp >= endReleaseTimestamp) {
            return _unclaimedTokenAmount;
        } else {
            uint256 releasedTimestamp = block.timestamp.sub(lastUnlockTimestamp[_user]);
            uint256 timeLeft = endReleaseTimestamp.sub(lastUnlockTimestamp[_user]);
            return _unclaimedTokenAmount.mul(releasedTimestamp).div(timeLeft);
        }
    }
}