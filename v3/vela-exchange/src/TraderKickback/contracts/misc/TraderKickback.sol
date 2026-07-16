// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../core/interfaces/IOperators.sol";

contract TraderKickback is ReentrancyGuard {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.UintSet;

    struct RewardInfo {
        uint256 amount;
        bool claimed;
    }

    struct UserRewardInfo {
        address account;
        uint256 amount;
    }

    IERC20 public rewardToken;
    IOperators public immutable operators;

    mapping(address => EnumerableSet.UintSet) private rewardPeriods;
    mapping(address => mapping(uint256 => RewardInfo)) public rewards;

    mapping(address => uint256) public totalRewards;
    mapping(address => uint256) public claimedRewards;

    event ClaimReward(address indexed account, uint256 rewardAmount);

    modifier onlyOperator(uint256 level) {
        require(operators.getOperatorLevel(msg.sender) >= level, "invalid operator");
        _;
    }

    constructor(address _operators, address _rewardToken) {
        operators = IOperators(_operators);
        rewardToken = IERC20(_rewardToken);
    }

    function addRewards(UserRewardInfo[] calldata _rewardInfo, uint256 _timestamp) external onlyOperator(3) {
        uint256 length = _rewardInfo.length;
        for (uint256 i; i < length; ) {
            address account = _rewardInfo[i].account;
            uint256 amount = _rewardInfo[i].amount;

            rewardPeriods[account].add(_timestamp);
            rewards[account][_timestamp] = RewardInfo({amount: amount, claimed: false});

            totalRewards[account] += amount;

            unchecked {
                ++i;
            }
        }
    }

    function claimReward(uint256 _timestamp) external nonReentrant {
        RewardInfo storage info = rewards[msg.sender][_timestamp];
        require(!info.claimed, "Reward already claimed");
        require(info.amount > 0, "No rewards to claim");

        uint256 claimableAmount = info.amount;
        info.claimed = true;

        claimedRewards[msg.sender] += claimableAmount;
        rewardToken.safeTransfer(msg.sender, claimableAmount);

        emit ClaimReward(msg.sender, claimableAmount);
    }

    function claimAllRewards() external nonReentrant {
        uint256 totalClaimable = 0;
        EnumerableSet.UintSet storage periods = rewardPeriods[msg.sender];

        for (uint256 i = 0; i < periods.length(); i++) {
            uint256 period = periods.at(i);
            RewardInfo storage info = rewards[msg.sender][period];

            if (!info.claimed) {
                totalClaimable += info.amount;
                info.claimed = true;
            }
        }

        require(totalClaimable > 0, "No rewards to claim");

        claimedRewards[msg.sender] += totalClaimable;
        rewardToken.safeTransfer(msg.sender, totalClaimable);

        emit ClaimReward(msg.sender, totalClaimable);
    }

    function getRewardsForMonth(
        address _account,
        uint256 _timestamp
    ) public view returns (uint256 totalForMonth, uint256 unclaimedForMonth) {
        RewardInfo memory info = rewards[_account][_timestamp];
        totalForMonth = info.amount;

        if (!info.claimed) {
            unclaimedForMonth = info.amount;
        }
    }

    function getUnclaimedRewards(address _account) public view returns (RewardInfo[] memory) {
        EnumerableSet.UintSet storage periods = rewardPeriods[_account];
        uint256 unclaimedCount = 0;

        for (uint256 i = 0; i < periods.length(); i++) {
            uint256 period = periods.at(i);
            if (!rewards[_account][period].claimed) {
                unclaimedCount++;
            }
        }

        RewardInfo[] memory unclaimed = new RewardInfo[](unclaimedCount);
        uint256 index = 0;

        for (uint256 i = 0; i < periods.length(); i++) {
            uint256 period = periods.at(i);
            if (!rewards[_account][period].claimed) {
                unclaimed[index] = rewards[_account][period];
                index++;
            }
        }

        return unclaimed;
    }

    function rescueToken(address _token, uint256 _amount) external onlyOperator(3) {
        IERC20(_token).safeTransfer(msg.sender, _amount);
    }
}
