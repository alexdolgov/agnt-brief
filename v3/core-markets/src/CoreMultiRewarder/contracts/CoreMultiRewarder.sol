// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract CoreMultiRewarder is ReentrancyGuardUpgradeable, OwnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    /* ========== STATE VARIABLES ========== */

    struct Reward {
        uint256 rewardsDuration;
        uint256 periodFinish;
        uint256 rewardRate;
        uint256 lastUpdateTime;
        uint256 rewardPerTokenStored;
        uint256 totalRewarded;
    }

    uint256 public constant defaultRewardsDuration = 1 weeks;
    address public CORE;

    // reward token => reward data
    mapping(address => Reward) public rewardData;
    // reward tokens
    address[] public rewardTokens;
    // reward token => bool
    mapping(address => bool) public isRewardToken;

    // user => reward token => amount
    mapping(address => mapping(address => uint256))
        public userRewardPerTokenPaid;
    mapping(address => mapping(address => uint256)) public rewards;

    uint256 public totalSupply;
    // user => balance
    mapping(address => uint256) public balanceOf;

    /* ========== CONSTRUCTOR ========== */
    constructor() {
        _disableInitializers();
    }

    /* ========== INITIALIZER ========== */
    function initialize(address core_, address rewardToken) public initializer{
        __ReentrancyGuard_init();
        __Ownable_init();
        CORE = core_;

        isRewardToken[rewardToken] = true;
        rewardTokens.push(rewardToken);
        rewardData[rewardToken].rewardsDuration = defaultRewardsDuration;
    }

    /* ========== VIEWS ========== */
    function rewardTokensLength() external view returns (uint256) {
        return rewardTokens.length;
    }

    function getRewardTokens() public view returns( address  [] memory){
        return rewardTokens;
    }

    function lastTimeRewardApplicable(
        address _rewardsToken
    ) public view returns (uint256) {
        return
            block.timestamp < rewardData[_rewardsToken].periodFinish
                ? block.timestamp
                : rewardData[_rewardsToken].periodFinish;
    }

    function rewardPerToken(
        address _rewardsToken
    ) public view returns (uint256) {
        if (totalSupply == 0) {
            return rewardData[_rewardsToken].rewardPerTokenStored;
        }
        return
            rewardData[_rewardsToken].rewardPerTokenStored +
            (((lastTimeRewardApplicable(_rewardsToken) -
                rewardData[_rewardsToken].lastUpdateTime) *
                rewardData[_rewardsToken].rewardRate *
                1e18) / totalSupply);
    }

    function earned(
        address account,
        address _rewardsToken
    ) public view returns (uint256) {
        return
            ((balanceOf[account] *
                (rewardPerToken(_rewardsToken) -
                    userRewardPerTokenPaid[account][_rewardsToken])) / 1e18) +
            rewards[account][_rewardsToken];
    }

    function getRewardForDuration(
        address _rewardsToken
    ) external view returns (uint256) {
        return
            rewardData[_rewardsToken].rewardRate *
            rewardData[_rewardsToken].rewardsDuration;
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function deposit(
        uint256 amount,
        address receiver
    ) external nonReentrant updateReward(receiver) {
        require(amount > 0, "Cannot stake 0");
        IERC20Upgradeable(CORE).safeTransferFrom(_msgSender(), address(this), amount);
        totalSupply += amount;
        balanceOf[receiver] += amount;
        emit Deposit(_msgSender(), amount, receiver);
    }

    function withdraw(
        uint256 amount,
        address to
    ) external nonReentrant updateReward(_msgSender()) {
        require(amount > 0, "Cannot withdraw 0");
        require(amount <= balanceOf[_msgSender()], "Not enough balance");
        IERC20Upgradeable(CORE).safeTransfer(to, amount);
        totalSupply -= amount;
        balanceOf[_msgSender()] -= amount;
        emit Withdraw(_msgSender(), amount, to);
    }

    function getReward() external nonReentrant updateReward(_msgSender()) {
        for (uint256 i; i < rewardTokens.length; i++) {
            address _rewardsToken = rewardTokens[i];
            uint256 reward = rewards[_msgSender()][_rewardsToken];
            if (reward > 0) {
                rewards[_msgSender()][_rewardsToken] = 0;
                IERC20Upgradeable(_rewardsToken).safeTransfer(_msgSender(), reward);
                emit RewardPaid(_msgSender(), _rewardsToken, reward);
            }
        }
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function notifyRewardAmount(
        address[] memory _rewardsTokens,
        uint256[] memory _rewards
    ) external updateReward(address(0)) {
        for (uint8 i = 0; i < _rewardsTokens.length; i++) {
            address _rewardsToken = _rewardsTokens[i];
            uint256 reward = _rewards[i];

            if (reward == 0) continue;

            require(isRewardToken[_rewardsToken], "NOT_WHITELISTED");

            IERC20Upgradeable(_rewardsToken).safeTransferFrom(
                _msgSender(),
                address(this),
                reward
            );

            if (block.timestamp >= rewardData[_rewardsToken].periodFinish) {
                rewardData[_rewardsToken].rewardRate =
                    reward /
                    rewardData[_rewardsToken].rewardsDuration;
            } else {
                uint256 remaining = rewardData[_rewardsToken].periodFinish -
                    block.timestamp;
                uint256 leftover = remaining *
                    rewardData[_rewardsToken].rewardRate;
                rewardData[_rewardsToken].rewardRate =
                    (reward + leftover) /
                    rewardData[_rewardsToken].rewardsDuration;
            }

            rewardData[_rewardsToken].lastUpdateTime = block.timestamp;
            rewardData[_rewardsToken].totalRewarded += reward;
            rewardData[_rewardsToken].periodFinish =
                block.timestamp +
                rewardData[_rewardsToken].rewardsDuration;
        }
        emit RewardAdded(_rewardsTokens, _rewards);
    }

    function updateWhitelist(address token, bool whitelist) external {
        require( _msgSender() == owner(), "NOT_ALLOWED");
        require(isRewardToken[token] != whitelist, "ALREADY_DONE");

        isRewardToken[token] = whitelist;
        if (!whitelist) {
            for (uint256 i; i < rewardTokens.length; i++) {
                if (rewardTokens[i] == token) {
                    rewardTokens[i] = rewardTokens[rewardTokens.length - 1];
                    rewardTokens.pop();
                    break;
                }
            }
        } else {
            rewardTokens.push(token);
            rewardData[token].rewardsDuration = defaultRewardsDuration;
        }

        emit UpdateWhitelist(token, whitelist);
    }

    /* ========== MODIFIERS ========== */

    modifier updateReward(address account) {
        for (uint256 i; i < rewardTokens.length; i++) {
            address token = rewardTokens[i];
            rewardData[token].rewardPerTokenStored = rewardPerToken(token);
            rewardData[token].lastUpdateTime = lastTimeRewardApplicable(token);
            if (account != address(0)) {
                rewards[account][token] = earned(account, token);
                userRewardPerTokenPaid[account][token] = rewardData[token]
                    .rewardPerTokenStored;
            }
        }
        _;
    }

    /* ========== EVENTS ========== */

    event RewardAdded(address[] rewradsToken, uint256[] reward);
    event Deposit(address sender, uint256 amount, address receiver);
    event Withdraw(address sender, uint256 amount, address to);
    event RewardPaid(address user, address rewardsToken, uint256 reward);
    event RewardsDurationUpdated(address token, uint256 newDuration);
    event UpdateWhitelist(address token, bool whitelist);
}