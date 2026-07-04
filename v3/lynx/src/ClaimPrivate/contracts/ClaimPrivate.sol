// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "./interfaces/IClaimPrivate.sol";

import "hardhat/console.sol";

contract ClaimPrivate is OwnableUpgradeable, IClaimPrivate {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    // Define a struct for the user's claim status
    struct UserClaimStatus {
        uint256 claimedAmount;
        uint256 lastClaimedTime;
        uint256 totalAllocation;
    }
 
    mapping(address => UserClaimStatus) public userClaimStatus;
    uint256 public constant DURATION_TIME_SECONDS = 25 * 30 * 86400; // 25 months linear unlocking

    // TGE time
    uint256 public tgeStartTime;
    // Claim token
    address public claimToken;

    event Claimed(address indexed user, address indexed token, uint256 amount, uint256 time);

    function initialize(uint256 _tgeStartTime, address _claimToken) public initializer {
        __Ownable_init();

        tgeStartTime = _tgeStartTime;
        claimToken = _claimToken;
    }

    /**
     * @notice get the claimable amount
     * @param user the user
     * @return the claimable amount
     */
    function getClaimable(address user) external view override returns (uint256) {
        uint256 blockTimestamp = block.timestamp;
        return _getClaimable(user, blockTimestamp);
    }

    /**
     * @notice claim the claimable amount
     */
    function claim() external override {
        address user = msg.sender;
        uint256 blockTimestamp = block.timestamp;
        uint256 claimableAmount = _getClaimable(user, blockTimestamp);

        if (claimableAmount > 0) {
            userClaimStatus[user].claimedAmount += claimableAmount;
            userClaimStatus[user].lastClaimedTime = blockTimestamp;

            _safeTokenTransfer(IERC20Upgradeable(claimToken), user, claimableAmount);
        }

        emit Claimed(user, claimToken, claimableAmount, blockTimestamp);
    }

    /**
     * @notice set the user's claim status
     * @param users the users
     * @param totalAllocation total allocations
     */
    function setUserClaimStatus(address[] memory users, uint256[] memory totalAllocation) external onlyOwner {
        require(users.length == totalAllocation.length, "invalid params");

        for (uint256 i = 0; i < users.length; i++) {
            require(totalAllocation[i] >= 0, "total allocation is less than 0");

            if (userClaimStatus[users[i]].lastClaimedTime == 0) {
                userClaimStatus[users[i]] = UserClaimStatus(0, 0, totalAllocation[i]);
            }
        }
    }

    /**
     * @notice Allows the owner to emergency withdraw the tokens' balances on the contract
     * @param token the token
     */
    function emergencyWithdraw(IERC20Upgradeable token) external onlyOwner {
        uint256 balance = token.balanceOf(address(this));
        // token balance is null
        require(balance > 0, "token balance is null");
        _safeTokenTransfer(token, msg.sender, balance);
    }

    function _getClaimable(address user, uint256 blockTimestamp) internal view returns (uint256) {
        if (blockTimestamp < tgeStartTime) {
            return 0;
        }

        UserClaimStatus storage userClaimStatus_ = userClaimStatus[user];

        if (userClaimStatus_.totalAllocation == 0) {
            return 0;
        }

        uint256 timestamp = (blockTimestamp - tgeStartTime) < DURATION_TIME_SECONDS ? blockTimestamp - tgeStartTime : DURATION_TIME_SECONDS;
        uint256 totalClaimableAmount = (timestamp * userClaimStatus_.totalAllocation) / DURATION_TIME_SECONDS;

        require(
            totalClaimableAmount >= userClaimStatus_.claimedAmount,
            "total claimable amount is less than claimed amount"
        );

        return totalClaimableAmount - userClaimStatus_.claimedAmount;
    }

    function _safeTokenTransfer(IERC20Upgradeable token, address to, uint256 amount) internal {
        if (amount > 0) {
            uint256 tokenBal = token.balanceOf(address(this));
            if (amount > tokenBal) {
                token.safeTransfer(to, tokenBal);
            } else {
                token.safeTransfer(to, amount);
            }
        }
    }
}
