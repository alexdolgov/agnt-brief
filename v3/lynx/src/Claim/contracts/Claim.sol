// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "./interfaces/IClaim.sol";

contract Claim is OwnableUpgradeable, IClaim {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    // Define a struct for the user's claim status
    struct UserClaimStatus {
        uint256 claimedAmount;
        uint256 lastClaimedTime;
        uint256 kolAllocation;
        uint256 privateAllocation;
        uint256 partnerAllocation;
        uint256 seedAllocation;
        uint256 totalAllocation;
    }

    mapping(address => UserClaimStatus) public userClaimStatus;
    uint256 public constant PRECISION = 10000;

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
     * @notice get the release cycle
     * @return the release cycle
     */
    function getReleaseCycle() external view override returns (uint256) {
        return _getReleaseCycle();
    }

    /**
     * @notice get the claimable amount
     * @param user the user
     * @return the claimable amount
     */
    function getClaimable(address user) external view override returns (uint256) {
        return _getClaimable(user);
    }

    /**
     * @notice claim the claimable amount
     */
    function claim() external override {
        address user = msg.sender;
        uint256 blockTimestamp = block.timestamp;
        uint256 claimableAmount = _getClaimable(user);

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
     * @param kolAllocations the kol round allocations
     * @param privateAllocations the private round allocations
     * @param partnerAllocations the partner round allocations
     * @param seedAllocations the seed round allocations
     */
    function setUserClaimStatus(
        address[] memory users,
        uint256[] memory kolAllocations,
        uint256[] memory privateAllocations,
        uint256[] memory partnerAllocations,
        uint256[] memory seedAllocations
    ) external onlyOwner {
        require(
            users.length == kolAllocations.length &&
                users.length == privateAllocations.length &&
                users.length == partnerAllocations.length &&
                users.length == seedAllocations.length,
            "invalid params"
        );

        for (uint256 i = 0; i < users.length; i++) {
            require(kolAllocations[i] >= 0, "kol round allocation is less than 0");
            require(privateAllocations[i] >= 0, "private round allocation is less than 0");
            require(partnerAllocations[i] >= 0, "partner round allocation is less than 0");
            require(seedAllocations[i] >= 0, "seed round allocation is less than 0");

            if (userClaimStatus[users[i]].lastClaimedTime == 0) {
                userClaimStatus[users[i]] = UserClaimStatus(
                    0,
                    0,
                    kolAllocations[i],
                    privateAllocations[i],
                    partnerAllocations[i],
                    seedAllocations[i],
                    kolAllocations[i] + privateAllocations[i] + partnerAllocations[i] + seedAllocations[i]
                );
            }
        }
    }

    function replaceUser(address prevUser, address targetUser) external onlyOwner {
        require(prevUser != targetUser, "same user");

        userClaimStatus[targetUser] = UserClaimStatus(
            userClaimStatus[prevUser].claimedAmount,
            userClaimStatus[prevUser].lastClaimedTime,
            userClaimStatus[prevUser].kolAllocation,
            userClaimStatus[prevUser].privateAllocation,
            userClaimStatus[prevUser].partnerAllocation,
            userClaimStatus[prevUser].seedAllocation,
            userClaimStatus[prevUser].totalAllocation
        );

        userClaimStatus[prevUser].claimedAmount = 0;
        userClaimStatus[prevUser].lastClaimedTime = 0;
        userClaimStatus[prevUser].kolAllocation = 0;
        userClaimStatus[prevUser].privateAllocation = 0;
        userClaimStatus[prevUser].partnerAllocation = 0;
        userClaimStatus[prevUser].seedAllocation = 0;
        userClaimStatus[prevUser].totalAllocation = 0;
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

    function _getReleaseCycle() internal view returns (uint256) {
        uint256 blockTimestamp = block.timestamp;

        if (blockTimestamp < tgeStartTime) {
            return 0;
        }

        return (blockTimestamp - tgeStartTime) / 30 days + 1;
    }

    function _getClaimable(address user) internal view returns (uint256) {
        uint256 claimCycle = _getReleaseCycle();

        if (claimCycle == 0) {
            return 0;
        }

        uint256 totalClaimableAmount = 0;
        UserClaimStatus storage userClaimStatus_ = userClaimStatus[user];

        // KOL Round:
        // 50% will be released in the first month(TGE).
        // Starting from the 2rd month, 10% will be released each month, continuously for 5 months.
        if (userClaimStatus_.kolAllocation > 0) {
            uint256 cycle = claimCycle < 2 ? 0 : claimCycle > 6 ? 5 : claimCycle - 1;

            totalClaimableAmount =
                (userClaimStatus_.kolAllocation * 5000 + userClaimStatus_.kolAllocation * 1000 * cycle) /
                PRECISION;
        }

        // Private Round:
        // 40% will be released in the first month(TGE).
        // Starting from the 3rd month, 10% will be released each month, continuously for 6 months.
        if (userClaimStatus_.privateAllocation > 0) {
            uint256 cycle = claimCycle < 3 ? 0 : claimCycle > 8 ? 6 : claimCycle - 2;

            totalClaimableAmount +=
                (userClaimStatus_.privateAllocation * 4000 + userClaimStatus_.privateAllocation * 1000 * cycle) /
                PRECISION;
        }

        // Partner Round:
        // 30% will be released in the first month(TGE).
        // Starting from the 4th month, 10% will be released each month, continuously for 7 months.
        if (userClaimStatus_.partnerAllocation > 0) {
            uint256 cycle = claimCycle < 4 ? 0 : claimCycle > 10 ? 7 : claimCycle - 3;

            totalClaimableAmount +=
                (userClaimStatus_.partnerAllocation * 3000 + userClaimStatus_.partnerAllocation * 1000 * cycle) /
                PRECISION;
        }

        // Seed Round:
        // 20% will be released in the first month(TGE).
        // Starting from the 5th month, 10% will be released each month, continuously for 8 months.
        if (userClaimStatus_.seedAllocation > 0) {
            uint256 cycle = claimCycle < 5 ? 0 : claimCycle > 12 ? 8 : claimCycle - 4;
            totalClaimableAmount +=
                (userClaimStatus_.seedAllocation * 2000 + userClaimStatus_.seedAllocation * 1000 * cycle) /
                PRECISION;
        }

        require(
            totalClaimableAmount >= userClaimStatus_.claimedAmount,
            "total claimable amount is less than claimed amount"
        );
        require(
            totalClaimableAmount <= userClaimStatus_.totalAllocation,
            "total claimable amount is greater than total allocation"
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
