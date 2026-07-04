// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../core/interfaces/IOperators.sol";

contract LuckyTicketReward is ReentrancyGuard {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    struct RewardInfo {
        address account;
        address token;
        uint256 amount;
    }

    IOperators public immutable operators;

    mapping(address => mapping(address => uint256)) public totalRewards; //account => rewardToken => amount
    mapping(address => mapping(address => uint256)) public claimedRewards; //account => rewardToken => amount

    EnumerableSet.AddressSet private rewardTokens;

    event ClaimReward(address indexed account, address indexed token, uint256 rewardAmount);

    modifier onlyOperator(uint256 level) {
        require(operators.getOperatorLevel(msg.sender) >= level, "invalid operator");
        _;
    }

    constructor(address _operators) {
        operators = IOperators(_operators);
    }

    function getClaimableReward(address _account, address _token) public view returns (uint256) {
        return totalRewards[_account][_token] - claimedRewards[_account][_token];
    }

    function getClaimableRewards(address _account) public view returns (RewardInfo[] memory) {
        uint256 length = rewardTokens.length();
        RewardInfo[] memory rewards = new RewardInfo[](length);

        for (uint256 i; i < length; ) {
            address token = rewardTokens.at(i);
            uint256 claimable = getClaimableReward(_account, token);
            rewards[i] = RewardInfo(_account, token, claimable);

            unchecked {
                ++i;
            }
        }

        return rewards;
    }

    function claimReward(address _token) external nonReentrant {
        uint256 claimableReward = getClaimableReward(msg.sender, _token);
        require(claimableReward > 0, "zero amount");

        claimedRewards[msg.sender][_token] += claimableReward;

        IERC20(_token).safeTransfer(msg.sender, claimableReward);
        emit ClaimReward(msg.sender, _token, claimableReward);
    }

    function claimAllRewards() external nonReentrant {
        uint256 length = rewardTokens.length();

        for (uint256 i; i < length; ) {
            address token = rewardTokens.at(i);
            uint256 claimableReward = getClaimableReward(msg.sender, token);

            if (claimableReward > 0) {
                claimedRewards[msg.sender][token] += claimableReward;
                IERC20(token).safeTransfer(msg.sender, claimableReward);
                emit ClaimReward(msg.sender, token, claimableReward);
            }

            unchecked {
                ++i;
            }
        }
    }

    function addRewards(RewardInfo[] calldata _rewardInfos) external onlyOperator(3) {
        uint256 length = _rewardInfos.length;
        for (uint256 i; i < length; ) {
            address account = _rewardInfos[i].account;
            address token = _rewardInfos[i].token;
            uint256 amount = _rewardInfos[i].amount;

            require(isRewardToken(token), "unsupported reward token");

            totalRewards[account][token] += amount;

            unchecked {
                ++i;
            }
        }
    }

    function setRewards(RewardInfo[] calldata _rewardInfos) external onlyOperator(3) {
        uint256 length = _rewardInfos.length;
        for (uint256 i; i < length; ) {
            address account = _rewardInfos[i].account;
            address token = _rewardInfos[i].token;
            uint256 amount = _rewardInfos[i].amount;

            require(isRewardToken(token), "unsupported reward token");

            totalRewards[account][token] = amount;

            unchecked {
                ++i;
            }
        }
    }

    function rescueToken(address _token, uint256 _amount) external onlyOperator(4) {
        IERC20(_token).safeTransfer(msg.sender, _amount);
    }

    function addRewardTokens(address[] memory _tokens) external onlyOperator(3) {
        for (uint256 i = 0; i < _tokens.length; ++i) {
            rewardTokens.add(_tokens[i]);
        }
    }

    function removeRewardTokens(address[] memory _tokens) external onlyOperator(3) {
        for (uint256 i = 0; i < _tokens.length; ++i) {
            rewardTokens.remove(_tokens[i]);
        }
    }

    function isRewardToken(address _token) public view returns (bool) {
        return rewardTokens.contains(_token);
    }
}
